import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row079_height : HeightCertificateDatum := { i := 79, r := 26, s := 55, n0Power10 := 10 }

def row079_goods : List GoodSegment := [
  { lower := 160, upper := 235, witness := RowWitness.topPrime 157 },
  { lower := 236, upper := 311, witness := RowWitness.topPrime 233 },
  { lower := 312, upper := 389, witness := RowWitness.topPrime 311 },
  { lower := 390, upper := 467, witness := RowWitness.topPrime 389 },
  { lower := 468, upper := 545, witness := RowWitness.topPrime 467 },
  { lower := 546, upper := 619, witness := RowWitness.topPrime 541 },
  { lower := 620, upper := 697, witness := RowWitness.topPrime 619 },
  { lower := 698, upper := 769, witness := RowWitness.topPrime 691 },
  { lower := 770, upper := 847, witness := RowWitness.topPrime 769 },
  { lower := 848, upper := 917, witness := RowWitness.topPrime 839 },
  { lower := 918, upper := 989, witness := RowWitness.topPrime 911 },
  { lower := 990, upper := 1061, witness := RowWitness.topPrime 983 },
  { lower := 1062, upper := 1139, witness := RowWitness.topPrime 1061 },
  { lower := 1140, upper := 1207, witness := RowWitness.topPrime 1129 },
  { lower := 1208, upper := 1279, witness := RowWitness.topPrime 1201 },
  { lower := 1280, upper := 1357, witness := RowWitness.topPrime 1279 },
  { lower := 1358, upper := 1405, witness := RowWitness.topPrime 1327 },
  { lower := 1406, upper := 1477, witness := RowWitness.topPrime 1399 },
  { lower := 1478, upper := 1549, witness := RowWitness.topPrime 1471 },
  { lower := 1550, upper := 1627, witness := RowWitness.topPrime 1549 },
  { lower := 1628, upper := 1705, witness := RowWitness.topPrime 1627 },
  { lower := 1706, upper := 1777, witness := RowWitness.topPrime 1699 },
  { lower := 1778, upper := 1855, witness := RowWitness.topPrime 1777 },
  { lower := 1856, upper := 1925, witness := RowWitness.topPrime 1847 },
  { lower := 1926, upper := 1991, witness := RowWitness.topPrime 1913 },
  { lower := 1992, upper := 2065, witness := RowWitness.topPrime 1987 },
  { lower := 2066, upper := 2141, witness := RowWitness.topPrime 2063 },
  { lower := 2142, upper := 2219, witness := RowWitness.topPrime 2141 },
  { lower := 2220, upper := 2291, witness := RowWitness.topPrime 2213 },
  { lower := 2292, upper := 2365, witness := RowWitness.topPrime 2287 },
  { lower := 2366, upper := 2435, witness := RowWitness.topPrime 2357 },
  { lower := 2436, upper := 2501, witness := RowWitness.topPrime 2423 },
  { lower := 2502, upper := 2555, witness := RowWitness.topPrime 2477 },
  { lower := 2556, upper := 2629, witness := RowWitness.topPrime 2551 },
  { lower := 2630, upper := 2699, witness := RowWitness.topPrime 2621 },
  { lower := 2700, upper := 2777, witness := RowWitness.topPrime 2699 },
  { lower := 2778, upper := 2855, witness := RowWitness.topPrime 2777 },
  { lower := 2856, upper := 2929, witness := RowWitness.topPrime 2851 },
  { lower := 2930, upper := 3005, witness := RowWitness.topPrime 2927 },
  { lower := 3006, upper := 3079, witness := RowWitness.topPrime 3001 },
  { lower := 3080, upper := 3157, witness := RowWitness.topPrime 3079 },
  { lower := 3158, upper := 3215, witness := RowWitness.topPrime 3137 },
  { lower := 3216, upper := 3287, witness := RowWitness.topPrime 3209 },
  { lower := 3288, upper := 3349, witness := RowWitness.topPrime 3271 },
  { lower := 3350, upper := 3425, witness := RowWitness.topPrime 3347 },
  { lower := 3426, upper := 3491, witness := RowWitness.topPrime 3413 },
  { lower := 3492, upper := 3569, witness := RowWitness.topPrime 3491 },
  { lower := 3570, upper := 3637, witness := RowWitness.topPrime 3559 },
  { lower := 3638, upper := 3715, witness := RowWitness.topPrime 3637 },
  { lower := 3716, upper := 3787, witness := RowWitness.topPrime 3709 },
  { lower := 3788, upper := 3857, witness := RowWitness.topPrime 3779 },
  { lower := 3858, upper := 3931, witness := RowWitness.topPrime 3853 },
  { lower := 3932, upper := 4009, witness := RowWitness.topPrime 3931 },
  { lower := 4010, upper := 4085, witness := RowWitness.topPrime 4007 },
  { lower := 4086, upper := 4157, witness := RowWitness.topPrime 4079 },
  { lower := 4158, upper := 4235, witness := RowWitness.topPrime 4157 },
  { lower := 4236, upper := 4309, witness := RowWitness.topPrime 4231 },
  { lower := 4310, upper := 4375, witness := RowWitness.topPrime 4297 },
  { lower := 4376, upper := 4451, witness := RowWitness.topPrime 4373 },
  { lower := 4452, upper := 4529, witness := RowWitness.topPrime 4451 },
  { lower := 4530, upper := 4601, witness := RowWitness.topPrime 4523 },
  { lower := 4602, upper := 4675, witness := RowWitness.topPrime 4597 },
  { lower := 4676, upper := 4751, witness := RowWitness.topPrime 4673 },
  { lower := 4752, upper := 4829, witness := RowWitness.topPrime 4751 },
  { lower := 4830, upper := 4895, witness := RowWitness.topPrime 4817 },
  { lower := 4896, upper := 4967, witness := RowWitness.topPrime 4889 },
  { lower := 4968, upper := 5045, witness := RowWitness.topPrime 4967 },
  { lower := 5046, upper := 5117, witness := RowWitness.topPrime 5039 },
  { lower := 5118, upper := 5191, witness := RowWitness.topPrime 5113 },
  { lower := 5192, upper := 5267, witness := RowWitness.topPrime 5189 },
  { lower := 5268, upper := 5339, witness := RowWitness.topPrime 5261 },
  { lower := 5340, upper := 5411, witness := RowWitness.topPrime 5333 },
  { lower := 5412, upper := 5485, witness := RowWitness.topPrime 5407 },
  { lower := 5486, upper := 5561, witness := RowWitness.topPrime 5483 },
  { lower := 5562, upper := 5635, witness := RowWitness.topPrime 5557 },
  { lower := 5636, upper := 5701, witness := RowWitness.topPrime 5623 },
  { lower := 5702, upper := 5779, witness := RowWitness.topPrime 5701 },
  { lower := 5780, upper := 5857, witness := RowWitness.topPrime 5779 },
  { lower := 5858, upper := 5935, witness := RowWitness.topPrime 5857 },
  { lower := 5936, upper := 6005, witness := RowWitness.topPrime 5927 },
  { lower := 6006, upper := 6065, witness := RowWitness.topPrime 5987 },
  { lower := 6066, upper := 6131, witness := RowWitness.topPrime 6053 },
  { lower := 6132, upper := 6209, witness := RowWitness.topPrime 6131 },
  { lower := 6210, upper := 6222, witness := RowWitness.topPrime 6203 },
  { lower := 6250, upper := 6252, witness := RowWitness.topPrime 6247 },
  { lower := 6358, upper := 6431, witness := RowWitness.topPrime 6353 },
  { lower := 6432, upper := 6436, witness := RowWitness.topPrime 6427 },
  { lower := 6517, upper := 6569, witness := RowWitness.topPrime 6491 },
  { lower := 6570, upper := 6647, witness := RowWitness.topPrime 6569 },
  { lower := 6648, upper := 6715, witness := RowWitness.topPrime 6637 },
  { lower := 6716, upper := 6787, witness := RowWitness.topPrime 6709 },
  { lower := 6788, upper := 6805, witness := RowWitness.topPrime 6781 },
  { lower := 6859, upper := 6935, witness := RowWitness.topPrime 6857 },
  { lower := 6936, upper := 6955, witness := RowWitness.topPrime 6917 },
  { lower := 6962, upper := 7014, witness := RowWitness.topPrime 6961 },
  { lower := 7203, upper := 7271, witness := RowWitness.topPrime 7193 },
  { lower := 7272, upper := 7303, witness := RowWitness.topPrime 7253 },
  { lower := 7406, upper := 7471, witness := RowWitness.topPrime 7393 },
  { lower := 7472, upper := 7484, witness := RowWitness.topPrime 7459 },
  { lower := 7500, upper := 7520, witness := RowWitness.topPrime 7499 },
  { lower := 7546, upper := 7619, witness := RowWitness.topPrime 7541 },
  { lower := 7620, upper := 7647, witness := RowWitness.topPrime 7607 },
  { lower := 7688, upper := 7758, witness := RowWitness.topPrime 7687 },
  { lower := 7935, upper := 8011, witness := RowWitness.topPrime 7933 },
  { lower := 8012, upper := 8064, witness := RowWitness.topPrime 8011 },
  { lower := 8192, upper := 8203, witness := RowWitness.topPrime 8191 },
  { lower := 8214, upper := 8287, witness := RowWitness.topPrime 8209 },
  { lower := 8288, upper := 8292, witness := RowWitness.topPrime 8287 },
  { lower := 8303, upper := 8310, witness := RowWitness.topPrime 8297 },
  { lower := 8410, upper := 8467, witness := RowWitness.topPrime 8389 },
  { lower := 8468, upper := 8505, witness := RowWitness.topPrime 8467 },
  { lower := 8649, upper := 8653, witness := RowWitness.topPrime 8647 },
  { lower := 8664, upper := 8741, witness := RowWitness.topPrime 8663 },
  { lower := 8742, upper := 8742, witness := RowWitness.topPrime 8741 },
  { lower := 8748, upper := 8825, witness := RowWitness.topPrime 8747 },
  { lower := 8826, upper := 8828, witness := RowWitness.topPrime 8821 },
  { lower := 8836, upper := 8866, witness := RowWitness.topPrime 8831 },
  { lower := 8993, upper := 9049, witness := RowWitness.topPrime 8971 },
  { lower := 9050, upper := 9071, witness := RowWitness.topPrime 9049 },
  { lower := 9245, upper := 9319, witness := RowWitness.topPrime 9241 },
  { lower := 9320, upper := 9329, witness := RowWitness.topPrime 9319 },
  { lower := 9375, upper := 9395, witness := RowWitness.topPrime 9371 },
  { lower := 9522, upper := 9555, witness := RowWitness.topPrime 9521 },
  { lower := 9583, upper := 9600, witness := RowWitness.topPrime 9551 },
  { lower := 9604, upper := 9679, witness := RowWitness.topPrime 9601 },
  { lower := 9680, upper := 9682, witness := RowWitness.topPrime 9679 },
  { lower := 10051, upper := 10078, witness := RowWitness.topPrime 10039 },
  { lower := 10082, upper := 10157, witness := RowWitness.topPrime 10079 },
  { lower := 10158, upper := 10164, witness := RowWitness.topPrime 10151 },
  { lower := 10240, upper := 10284, witness := RowWitness.topPrime 10223 },
  { lower := 10580, upper := 10645, witness := RowWitness.topPrime 10567 },
  { lower := 10646, upper := 10717, witness := RowWitness.topPrime 10639 },
  { lower := 10718, upper := 10726, witness := RowWitness.topPrime 10711 },
  { lower := 10935, upper := 10987, witness := RowWitness.topPrime 10909 },
  { lower := 10988, upper := 11030, witness := RowWitness.topPrime 10987 },
  { lower := 11045, upper := 11063, witness := RowWitness.topPrime 11027 },
  { lower := 11094, upper := 11171, witness := RowWitness.topPrime 11093 },
  { lower := 11172, upper := 11187, witness := RowWitness.topPrime 11171 },
  { lower := 11236, upper := 11241, witness := RowWitness.topPrime 11213 },
  { lower := 11250, upper := 11321, witness := RowWitness.topPrime 11243 },
  { lower := 11322, upper := 11328, witness := RowWitness.topPrime 11321 },
  { lower := 11664, upper := 11716, witness := RowWitness.topPrime 11657 },
  { lower := 11774, upper := 11821, witness := RowWitness.topPrime 11743 },
  { lower := 11822, upper := 11852, witness := RowWitness.topPrime 11821 },
  { lower := 12005, upper := 12057, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12366, witness := RowWitness.topPrime 12301 },
  { lower := 12393, upper := 12399, witness := RowWitness.topPrime 12391 },
  { lower := 12500, upper := 12571, witness := RowWitness.topPrime 12497 },
  { lower := 13125, upper := 13199, witness := RowWitness.topPrime 13121 },
  { lower := 13200, upper := 13203, witness := RowWitness.topPrime 13187 },
  { lower := 13254, upper := 13260, witness := RowWitness.topPrime 13249 },
  { lower := 13310, upper := 13387, witness := RowWitness.topPrime 13309 },
  { lower := 13388, upper := 13388, witness := RowWitness.topPrime 13381 },
  { lower := 13454, upper := 13529, witness := RowWitness.topPrime 13451 },
  { lower := 13530, upper := 13534, witness := RowWitness.topPrime 13523 },
  { lower := 13718, upper := 13768, witness := RowWitness.topPrime 13711 },
  { lower := 13924, upper := 13929, witness := RowWitness.topPrime 13921 },
  { lower := 14336, upper := 14375, witness := RowWitness.topPrime 14327 },
  { lower := 14406, upper := 14479, witness := RowWitness.topPrime 14401 },
  { lower := 14480, upper := 14484, witness := RowWitness.topPrime 14479 },
  { lower := 14641, upper := 14658, witness := RowWitness.topPrime 14639 },
  { lower := 14792, upper := 14817, witness := RowWitness.topPrime 14783 },
  { lower := 15123, upper := 15199, witness := RowWitness.topPrime 15121 },
  { lower := 15200, upper := 15207, witness := RowWitness.topPrime 15199 },
  { lower := 15360, upper := 15437, witness := RowWitness.topPrime 15359 },
  { lower := 15438, upper := 15454, witness := RowWitness.topPrime 15427 },
  { lower := 15979, upper := 16051, witness := RowWitness.topPrime 15973 },
  { lower := 16052, upper := 16057, witness := RowWitness.topPrime 16033 },
  { lower := 16384, upper := 16415, witness := RowWitness.topPrime 16381 },
  { lower := 16428, upper := 16462, witness := RowWitness.topPrime 16427 },
  { lower := 16810, upper := 16865, witness := RowWitness.topPrime 16787 },
  { lower := 16866, upper := 16898, witness := RowWitness.topPrime 16843 },
  { lower := 17303, upper := 17376, witness := RowWitness.topPrime 17299 },
  { lower := 17408, upper := 17479, witness := RowWitness.topPrime 17401 },
  { lower := 17480, upper := 17483, witness := RowWitness.topPrime 17477 },
  { lower := 17672, upper := 17739, witness := RowWitness.topPrime 17669 },
  { lower := 18490, upper := 18559, witness := RowWitness.topPrime 18481 },
  { lower := 18560, upper := 18568, witness := RowWitness.topPrime 18553 },
  { lower := 18634, upper := 18683, witness := RowWitness.topPrime 18617 },
  { lower := 19208, upper := 19285, witness := RowWitness.topPrime 19207 },
  { lower := 19286, upper := 19286, witness := RowWitness.topPrime 19273 },
  { lower := 19663, upper := 19739, witness := RowWitness.topPrime 19661 },
  { lower := 19740, upper := 19741, witness := RowWitness.topPrime 19739 },
  { lower := 20172, upper := 20239, witness := RowWitness.topPrime 20161 },
  { lower := 20240, upper := 20250, witness := RowWitness.topPrime 20233 },
  { lower := 20535, upper := 20558, witness := RowWitness.topPrime 20533 },
  { lower := 20577, upper := 20613, witness := RowWitness.topPrime 20563 },
  { lower := 21316, upper := 21374, witness := RowWitness.topPrime 21313 },
  { lower := 21870, upper := 21941, witness := RowWitness.topPrime 21863 },
  { lower := 21942, upper := 21953, witness := RowWitness.topPrime 21937 },
  { lower := 21970, upper := 21982, witness := RowWitness.topPrime 21961 },
  { lower := 22472, upper := 22523, witness := RowWitness.topPrime 22469 },
  { lower := 22528, upper := 22550, witness := RowWitness.topPrime 22511 },
  { lower := 24010, upper := 24085, witness := RowWitness.topPrime 24007 },
  { lower := 24086, upper := 24115, witness := RowWitness.topPrime 24083 },
  { lower := 24334, upper := 24407, witness := RowWitness.topPrime 24329 },
  { lower := 24408, upper := 24445, witness := RowWitness.topPrime 24407 },
  { lower := 24576, upper := 24649, witness := RowWitness.topPrime 24571 },
  { lower := 24650, upper := 24654, witness := RowWitness.topPrime 24631 },
  { lower := 25215, upper := 25267, witness := RowWitness.topPrime 25189 },
  { lower := 25268, upper := 25293, witness := RowWitness.topPrime 25261 },
  { lower := 26411, upper := 26442, witness := RowWitness.topPrime 26407 },
  { lower := 26645, upper := 26702, witness := RowWitness.topPrime 26641 },
  { lower := 26934, upper := 26974, witness := RowWitness.topPrime 26927 },
  { lower := 28125, upper := 28168, witness := RowWitness.topPrime 28123 },
  { lower := 28577, upper := 28639, witness := RowWitness.topPrime 28573 },
  { lower := 28717, upper := 28750, witness := RowWitness.topPrime 28711 },
  { lower := 29791, upper := 29846, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30324, witness := RowWitness.topPrime 30253 },
  { lower := 30758, upper := 30798, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 30977, witness := RowWitness.topPrime 30911 },
  { lower := 31250, upper := 31291, witness := RowWitness.topPrime 31249 },
  { lower := 31433, upper := 31475, witness := RowWitness.topPrime 31397 },
  { lower := 31476, upper := 31501, witness := RowWitness.topPrime 31469 },
  { lower := 32805, upper := 32846, witness := RowWitness.topPrime 32803 },
  { lower := 34391, upper := 34453, witness := RowWitness.topPrime 34381 },
  { lower := 34816, upper := 34885, witness := RowWitness.topPrime 34807 },
  { lower := 34886, upper := 34888, witness := RowWitness.topPrime 34883 },
  { lower := 35344, upper := 35365, witness := RowWitness.topPrime 35339 },
  { lower := 36517, upper := 36575, witness := RowWitness.topPrime 36497 },
  { lower := 36576, upper := 36579, witness := RowWitness.topPrime 36571 },
  { lower := 37210, upper := 37257, witness := RowWitness.topPrime 37201 },
  { lower := 37349, upper := 37381, witness := RowWitness.topPrime 37339 },
  { lower := 37553, upper := 37578, witness := RowWitness.topPrime 37549 },
  { lower := 39326, upper := 39401, witness := RowWitness.topPrime 39323 },
  { lower := 39402, upper := 39404, witness := RowWitness.topPrime 39397 },
  { lower := 40401, upper := 40406, witness := RowWitness.topPrime 40387 },
  { lower := 40960, upper := 41009, witness := RowWitness.topPrime 40949 },
  { lower := 44944, upper := 44968, witness := RowWitness.topPrime 44939 },
  { lower := 48013, upper := 48039, witness := RowWitness.topPrime 47981 },
  { lower := 48734, upper := 48746, witness := RowWitness.topPrime 48733 },
  { lower := 48778, upper := 48812, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49208, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50488, witness := RowWitness.topPrime 50417 },
  { lower := 53290, upper := 53326, witness := RowWitness.topPrime 53281 },
  { lower := 58619, upper := 58642, witness := RowWitness.topPrime 58613 },
  { lower := 65536, upper := 65599, witness := RowWitness.topPrime 65521 },
  { lower := 65600, upper := 65614, witness := RowWitness.topPrime 65599 },
  { lower := 73205, upper := 73245, witness := RowWitness.topPrime 73189 },
  { lower := 73728, upper := 73773, witness := RowWitness.topPrime 73727 },
  { lower := 137842, upper := 137859, witness := RowWitness.topPrime 137831 },
  { lower := 146410, upper := 146412, witness := RowWitness.topPrime 146407 },
  { lower := 148955, upper := 148955, witness := RowWitness.topPrime 148949 },
  { lower := 327701, upper := 327758, witness := RowWitness.topPrime 327689 }
]

def row079_layers : List CoverLayer := [
  { lower := 6162, upper := 12324, M := 25 },
  { lower := 12324, upper := 24648, M := 21 },
  { lower := 24648, upper := 49296, M := 18 },
  { lower := 49296, upper := 98592, M := 15 },
  { lower := 98592, upper := 197184, M := 13 },
  { lower := 197184, upper := 394368, M := 11 },
  { lower := 394368, upper := 788736, M := 9 },
  { lower := 788736, upper := 1577472, M := 8 },
  { lower := 1577472, upper := 3154944, M := 7 },
  { lower := 3154944, upper := 6309888, M := 6 },
  { lower := 6309888, upper := 12619776, M := 5 },
  { lower := 12619776, upper := 25239552, M := 4 },
  { lower := 25239552, upper := 50479104, M := 4 },
  { lower := 50479104, upper := 100958208, M := 3 },
  { lower := 100958208, upper := 201916416, M := 3 },
  { lower := 201916416, upper := 403832832, M := 2 },
  { lower := 403832832, upper := 807665664, M := 2 },
  { lower := 807665664, upper := 1615331328, M := 2 },
  { lower := 1615331328, upper := 3230662656, M := 2 },
  { lower := 3230662656, upper := 6461325312, M := 1 },
  { lower := 6461325312, upper := 10000000000, M := 1 }
]

def row079 : FiniteCoverRow := {
  height := row079_height,
  goods := row079_goods,
  layers := row079_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_good000_checked :
    goodSegmentCheck 79 26 55
      { lower := 160, upper := 235, witness := RowWitness.topPrime 157 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good001_checked :
    goodSegmentCheck 79 26 55
      { lower := 236, upper := 311, witness := RowWitness.topPrime 233 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good002_checked :
    goodSegmentCheck 79 26 55
      { lower := 312, upper := 389, witness := RowWitness.topPrime 311 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good003_checked :
    goodSegmentCheck 79 26 55
      { lower := 390, upper := 467, witness := RowWitness.topPrime 389 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good004_checked :
    goodSegmentCheck 79 26 55
      { lower := 468, upper := 545, witness := RowWitness.topPrime 467 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good005_checked :
    goodSegmentCheck 79 26 55
      { lower := 546, upper := 619, witness := RowWitness.topPrime 541 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good006_checked :
    goodSegmentCheck 79 26 55
      { lower := 620, upper := 697, witness := RowWitness.topPrime 619 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good007_checked :
    goodSegmentCheck 79 26 55
      { lower := 698, upper := 769, witness := RowWitness.topPrime 691 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good008_checked :
    goodSegmentCheck 79 26 55
      { lower := 770, upper := 847, witness := RowWitness.topPrime 769 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good009_checked :
    goodSegmentCheck 79 26 55
      { lower := 848, upper := 917, witness := RowWitness.topPrime 839 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good010_checked :
    goodSegmentCheck 79 26 55
      { lower := 918, upper := 989, witness := RowWitness.topPrime 911 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good011_checked :
    goodSegmentCheck 79 26 55
      { lower := 990, upper := 1061, witness := RowWitness.topPrime 983 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good012_checked :
    goodSegmentCheck 79 26 55
      { lower := 1062, upper := 1139, witness := RowWitness.topPrime 1061 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good013_checked :
    goodSegmentCheck 79 26 55
      { lower := 1140, upper := 1207, witness := RowWitness.topPrime 1129 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good014_checked :
    goodSegmentCheck 79 26 55
      { lower := 1208, upper := 1279, witness := RowWitness.topPrime 1201 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good015_checked :
    goodSegmentCheck 79 26 55
      { lower := 1280, upper := 1357, witness := RowWitness.topPrime 1279 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_good016_checked :
    goodSegmentCheck 79 26 55
      { lower := 1358, upper := 1405, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good017_checked :
    goodSegmentCheck 79 26 55
      { lower := 1406, upper := 1477, witness := RowWitness.topPrime 1399 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good018_checked :
    goodSegmentCheck 79 26 55
      { lower := 1478, upper := 1549, witness := RowWitness.topPrime 1471 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good019_checked :
    goodSegmentCheck 79 26 55
      { lower := 1550, upper := 1627, witness := RowWitness.topPrime 1549 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good020_checked :
    goodSegmentCheck 79 26 55
      { lower := 1628, upper := 1705, witness := RowWitness.topPrime 1627 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good021_checked :
    goodSegmentCheck 79 26 55
      { lower := 1706, upper := 1777, witness := RowWitness.topPrime 1699 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good022_checked :
    goodSegmentCheck 79 26 55
      { lower := 1778, upper := 1855, witness := RowWitness.topPrime 1777 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good023_checked :
    goodSegmentCheck 79 26 55
      { lower := 1856, upper := 1925, witness := RowWitness.topPrime 1847 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good024_checked :
    goodSegmentCheck 79 26 55
      { lower := 1926, upper := 1991, witness := RowWitness.topPrime 1913 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good025_checked :
    goodSegmentCheck 79 26 55
      { lower := 1992, upper := 2065, witness := RowWitness.topPrime 1987 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good026_checked :
    goodSegmentCheck 79 26 55
      { lower := 2066, upper := 2141, witness := RowWitness.topPrime 2063 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good027_checked :
    goodSegmentCheck 79 26 55
      { lower := 2142, upper := 2219, witness := RowWitness.topPrime 2141 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good028_checked :
    goodSegmentCheck 79 26 55
      { lower := 2220, upper := 2291, witness := RowWitness.topPrime 2213 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good029_checked :
    goodSegmentCheck 79 26 55
      { lower := 2292, upper := 2365, witness := RowWitness.topPrime 2287 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good030_checked :
    goodSegmentCheck 79 26 55
      { lower := 2366, upper := 2435, witness := RowWitness.topPrime 2357 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good031_checked :
    goodSegmentCheck 79 26 55
      { lower := 2436, upper := 2501, witness := RowWitness.topPrime 2423 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_good032_checked :
    goodSegmentCheck 79 26 55
      { lower := 2502, upper := 2555, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good033_checked :
    goodSegmentCheck 79 26 55
      { lower := 2556, upper := 2629, witness := RowWitness.topPrime 2551 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good034_checked :
    goodSegmentCheck 79 26 55
      { lower := 2630, upper := 2699, witness := RowWitness.topPrime 2621 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good035_checked :
    goodSegmentCheck 79 26 55
      { lower := 2700, upper := 2777, witness := RowWitness.topPrime 2699 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good036_checked :
    goodSegmentCheck 79 26 55
      { lower := 2778, upper := 2855, witness := RowWitness.topPrime 2777 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good037_checked :
    goodSegmentCheck 79 26 55
      { lower := 2856, upper := 2929, witness := RowWitness.topPrime 2851 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good038_checked :
    goodSegmentCheck 79 26 55
      { lower := 2930, upper := 3005, witness := RowWitness.topPrime 2927 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good039_checked :
    goodSegmentCheck 79 26 55
      { lower := 3006, upper := 3079, witness := RowWitness.topPrime 3001 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good040_checked :
    goodSegmentCheck 79 26 55
      { lower := 3080, upper := 3157, witness := RowWitness.topPrime 3079 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good041_checked :
    goodSegmentCheck 79 26 55
      { lower := 3158, upper := 3215, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good042_checked :
    goodSegmentCheck 79 26 55
      { lower := 3216, upper := 3287, witness := RowWitness.topPrime 3209 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good043_checked :
    goodSegmentCheck 79 26 55
      { lower := 3288, upper := 3349, witness := RowWitness.topPrime 3271 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good044_checked :
    goodSegmentCheck 79 26 55
      { lower := 3350, upper := 3425, witness := RowWitness.topPrime 3347 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good045_checked :
    goodSegmentCheck 79 26 55
      { lower := 3426, upper := 3491, witness := RowWitness.topPrime 3413 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good046_checked :
    goodSegmentCheck 79 26 55
      { lower := 3492, upper := 3569, witness := RowWitness.topPrime 3491 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good047_checked :
    goodSegmentCheck 79 26 55
      { lower := 3570, upper := 3637, witness := RowWitness.topPrime 3559 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_good048_checked :
    goodSegmentCheck 79 26 55
      { lower := 3638, upper := 3715, witness := RowWitness.topPrime 3637 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good049_checked :
    goodSegmentCheck 79 26 55
      { lower := 3716, upper := 3787, witness := RowWitness.topPrime 3709 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good050_checked :
    goodSegmentCheck 79 26 55
      { lower := 3788, upper := 3857, witness := RowWitness.topPrime 3779 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good051_checked :
    goodSegmentCheck 79 26 55
      { lower := 3858, upper := 3931, witness := RowWitness.topPrime 3853 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good052_checked :
    goodSegmentCheck 79 26 55
      { lower := 3932, upper := 4009, witness := RowWitness.topPrime 3931 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good053_checked :
    goodSegmentCheck 79 26 55
      { lower := 4010, upper := 4085, witness := RowWitness.topPrime 4007 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good054_checked :
    goodSegmentCheck 79 26 55
      { lower := 4086, upper := 4157, witness := RowWitness.topPrime 4079 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good055_checked :
    goodSegmentCheck 79 26 55
      { lower := 4158, upper := 4235, witness := RowWitness.topPrime 4157 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good056_checked :
    goodSegmentCheck 79 26 55
      { lower := 4236, upper := 4309, witness := RowWitness.topPrime 4231 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good057_checked :
    goodSegmentCheck 79 26 55
      { lower := 4310, upper := 4375, witness := RowWitness.topPrime 4297 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good058_checked :
    goodSegmentCheck 79 26 55
      { lower := 4376, upper := 4451, witness := RowWitness.topPrime 4373 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good059_checked :
    goodSegmentCheck 79 26 55
      { lower := 4452, upper := 4529, witness := RowWitness.topPrime 4451 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good060_checked :
    goodSegmentCheck 79 26 55
      { lower := 4530, upper := 4601, witness := RowWitness.topPrime 4523 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good061_checked :
    goodSegmentCheck 79 26 55
      { lower := 4602, upper := 4675, witness := RowWitness.topPrime 4597 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good062_checked :
    goodSegmentCheck 79 26 55
      { lower := 4676, upper := 4751, witness := RowWitness.topPrime 4673 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good063_checked :
    goodSegmentCheck 79 26 55
      { lower := 4752, upper := 4829, witness := RowWitness.topPrime 4751 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_good064_checked :
    goodSegmentCheck 79 26 55
      { lower := 4830, upper := 4895, witness := RowWitness.topPrime 4817 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good065_checked :
    goodSegmentCheck 79 26 55
      { lower := 4896, upper := 4967, witness := RowWitness.topPrime 4889 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good066_checked :
    goodSegmentCheck 79 26 55
      { lower := 4968, upper := 5045, witness := RowWitness.topPrime 4967 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good067_checked :
    goodSegmentCheck 79 26 55
      { lower := 5046, upper := 5117, witness := RowWitness.topPrime 5039 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good068_checked :
    goodSegmentCheck 79 26 55
      { lower := 5118, upper := 5191, witness := RowWitness.topPrime 5113 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good069_checked :
    goodSegmentCheck 79 26 55
      { lower := 5192, upper := 5267, witness := RowWitness.topPrime 5189 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good070_checked :
    goodSegmentCheck 79 26 55
      { lower := 5268, upper := 5339, witness := RowWitness.topPrime 5261 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good071_checked :
    goodSegmentCheck 79 26 55
      { lower := 5340, upper := 5411, witness := RowWitness.topPrime 5333 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good072_checked :
    goodSegmentCheck 79 26 55
      { lower := 5412, upper := 5485, witness := RowWitness.topPrime 5407 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good073_checked :
    goodSegmentCheck 79 26 55
      { lower := 5486, upper := 5561, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good074_checked :
    goodSegmentCheck 79 26 55
      { lower := 5562, upper := 5635, witness := RowWitness.topPrime 5557 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good075_checked :
    goodSegmentCheck 79 26 55
      { lower := 5636, upper := 5701, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good076_checked :
    goodSegmentCheck 79 26 55
      { lower := 5702, upper := 5779, witness := RowWitness.topPrime 5701 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good077_checked :
    goodSegmentCheck 79 26 55
      { lower := 5780, upper := 5857, witness := RowWitness.topPrime 5779 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good078_checked :
    goodSegmentCheck 79 26 55
      { lower := 5858, upper := 5935, witness := RowWitness.topPrime 5857 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good079_checked :
    goodSegmentCheck 79 26 55
      { lower := 5936, upper := 6005, witness := RowWitness.topPrime 5927 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_good080_checked :
    goodSegmentCheck 79 26 55
      { lower := 6006, upper := 6065, witness := RowWitness.topPrime 5987 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good081_checked :
    goodSegmentCheck 79 26 55
      { lower := 6066, upper := 6131, witness := RowWitness.topPrime 6053 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good082_checked :
    goodSegmentCheck 79 26 55
      { lower := 6132, upper := 6209, witness := RowWitness.topPrime 6131 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good083_checked :
    goodSegmentCheck 79 26 55
      { lower := 6210, upper := 6222, witness := RowWitness.topPrime 6203 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good084_checked :
    goodSegmentCheck 79 26 55
      { lower := 6250, upper := 6252, witness := RowWitness.topPrime 6247 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good085_checked :
    goodSegmentCheck 79 26 55
      { lower := 6358, upper := 6431, witness := RowWitness.topPrime 6353 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good086_checked :
    goodSegmentCheck 79 26 55
      { lower := 6432, upper := 6436, witness := RowWitness.topPrime 6427 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good087_checked :
    goodSegmentCheck 79 26 55
      { lower := 6517, upper := 6569, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good088_checked :
    goodSegmentCheck 79 26 55
      { lower := 6570, upper := 6647, witness := RowWitness.topPrime 6569 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good089_checked :
    goodSegmentCheck 79 26 55
      { lower := 6648, upper := 6715, witness := RowWitness.topPrime 6637 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good090_checked :
    goodSegmentCheck 79 26 55
      { lower := 6716, upper := 6787, witness := RowWitness.topPrime 6709 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good091_checked :
    goodSegmentCheck 79 26 55
      { lower := 6788, upper := 6805, witness := RowWitness.topPrime 6781 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good092_checked :
    goodSegmentCheck 79 26 55
      { lower := 6859, upper := 6935, witness := RowWitness.topPrime 6857 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good093_checked :
    goodSegmentCheck 79 26 55
      { lower := 6936, upper := 6955, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good094_checked :
    goodSegmentCheck 79 26 55
      { lower := 6962, upper := 7014, witness := RowWitness.topPrime 6961 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good095_checked :
    goodSegmentCheck 79 26 55
      { lower := 7203, upper := 7271, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_good096_checked :
    goodSegmentCheck 79 26 55
      { lower := 7272, upper := 7303, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good097_checked :
    goodSegmentCheck 79 26 55
      { lower := 7406, upper := 7471, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good098_checked :
    goodSegmentCheck 79 26 55
      { lower := 7472, upper := 7484, witness := RowWitness.topPrime 7459 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good099_checked :
    goodSegmentCheck 79 26 55
      { lower := 7500, upper := 7520, witness := RowWitness.topPrime 7499 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good100_checked :
    goodSegmentCheck 79 26 55
      { lower := 7546, upper := 7619, witness := RowWitness.topPrime 7541 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good101_checked :
    goodSegmentCheck 79 26 55
      { lower := 7620, upper := 7647, witness := RowWitness.topPrime 7607 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good102_checked :
    goodSegmentCheck 79 26 55
      { lower := 7688, upper := 7758, witness := RowWitness.topPrime 7687 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good103_checked :
    goodSegmentCheck 79 26 55
      { lower := 7935, upper := 8011, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good104_checked :
    goodSegmentCheck 79 26 55
      { lower := 8012, upper := 8064, witness := RowWitness.topPrime 8011 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good105_checked :
    goodSegmentCheck 79 26 55
      { lower := 8192, upper := 8203, witness := RowWitness.topPrime 8191 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good106_checked :
    goodSegmentCheck 79 26 55
      { lower := 8214, upper := 8287, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good107_checked :
    goodSegmentCheck 79 26 55
      { lower := 8288, upper := 8292, witness := RowWitness.topPrime 8287 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good108_checked :
    goodSegmentCheck 79 26 55
      { lower := 8303, upper := 8310, witness := RowWitness.topPrime 8297 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good109_checked :
    goodSegmentCheck 79 26 55
      { lower := 8410, upper := 8467, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good110_checked :
    goodSegmentCheck 79 26 55
      { lower := 8468, upper := 8505, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good111_checked :
    goodSegmentCheck 79 26 55
      { lower := 8649, upper := 8653, witness := RowWitness.topPrime 8647 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_good112_checked :
    goodSegmentCheck 79 26 55
      { lower := 8664, upper := 8741, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good113_checked :
    goodSegmentCheck 79 26 55
      { lower := 8742, upper := 8742, witness := RowWitness.topPrime 8741 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good114_checked :
    goodSegmentCheck 79 26 55
      { lower := 8748, upper := 8825, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good115_checked :
    goodSegmentCheck 79 26 55
      { lower := 8826, upper := 8828, witness := RowWitness.topPrime 8821 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good116_checked :
    goodSegmentCheck 79 26 55
      { lower := 8836, upper := 8866, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good117_checked :
    goodSegmentCheck 79 26 55
      { lower := 8993, upper := 9049, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good118_checked :
    goodSegmentCheck 79 26 55
      { lower := 9050, upper := 9071, witness := RowWitness.topPrime 9049 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good119_checked :
    goodSegmentCheck 79 26 55
      { lower := 9245, upper := 9319, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good120_checked :
    goodSegmentCheck 79 26 55
      { lower := 9320, upper := 9329, witness := RowWitness.topPrime 9319 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good121_checked :
    goodSegmentCheck 79 26 55
      { lower := 9375, upper := 9395, witness := RowWitness.topPrime 9371 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good122_checked :
    goodSegmentCheck 79 26 55
      { lower := 9522, upper := 9555, witness := RowWitness.topPrime 9521 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good123_checked :
    goodSegmentCheck 79 26 55
      { lower := 9583, upper := 9600, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good124_checked :
    goodSegmentCheck 79 26 55
      { lower := 9604, upper := 9679, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good125_checked :
    goodSegmentCheck 79 26 55
      { lower := 9680, upper := 9682, witness := RowWitness.topPrime 9679 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good126_checked :
    goodSegmentCheck 79 26 55
      { lower := 10051, upper := 10078, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good127_checked :
    goodSegmentCheck 79 26 55
      { lower := 10082, upper := 10157, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_good128_checked :
    goodSegmentCheck 79 26 55
      { lower := 10158, upper := 10164, witness := RowWitness.topPrime 10151 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good129_checked :
    goodSegmentCheck 79 26 55
      { lower := 10240, upper := 10284, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good130_checked :
    goodSegmentCheck 79 26 55
      { lower := 10580, upper := 10645, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good131_checked :
    goodSegmentCheck 79 26 55
      { lower := 10646, upper := 10717, witness := RowWitness.topPrime 10639 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good132_checked :
    goodSegmentCheck 79 26 55
      { lower := 10718, upper := 10726, witness := RowWitness.topPrime 10711 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good133_checked :
    goodSegmentCheck 79 26 55
      { lower := 10935, upper := 10987, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good134_checked :
    goodSegmentCheck 79 26 55
      { lower := 10988, upper := 11030, witness := RowWitness.topPrime 10987 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good135_checked :
    goodSegmentCheck 79 26 55
      { lower := 11045, upper := 11063, witness := RowWitness.topPrime 11027 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good136_checked :
    goodSegmentCheck 79 26 55
      { lower := 11094, upper := 11171, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good137_checked :
    goodSegmentCheck 79 26 55
      { lower := 11172, upper := 11187, witness := RowWitness.topPrime 11171 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good138_checked :
    goodSegmentCheck 79 26 55
      { lower := 11236, upper := 11241, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good139_checked :
    goodSegmentCheck 79 26 55
      { lower := 11250, upper := 11321, witness := RowWitness.topPrime 11243 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good140_checked :
    goodSegmentCheck 79 26 55
      { lower := 11322, upper := 11328, witness := RowWitness.topPrime 11321 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good141_checked :
    goodSegmentCheck 79 26 55
      { lower := 11664, upper := 11716, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good142_checked :
    goodSegmentCheck 79 26 55
      { lower := 11774, upper := 11821, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good143_checked :
    goodSegmentCheck 79 26 55
      { lower := 11822, upper := 11852, witness := RowWitness.topPrime 11821 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_good144_checked :
    goodSegmentCheck 79 26 55
      { lower := 12005, upper := 12057, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good145_checked :
    goodSegmentCheck 79 26 55
      { lower := 12321, upper := 12366, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good146_checked :
    goodSegmentCheck 79 26 55
      { lower := 12393, upper := 12399, witness := RowWitness.topPrime 12391 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good147_checked :
    goodSegmentCheck 79 26 55
      { lower := 12500, upper := 12571, witness := RowWitness.topPrime 12497 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good148_checked :
    goodSegmentCheck 79 26 55
      { lower := 13125, upper := 13199, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good149_checked :
    goodSegmentCheck 79 26 55
      { lower := 13200, upper := 13203, witness := RowWitness.topPrime 13187 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good150_checked :
    goodSegmentCheck 79 26 55
      { lower := 13254, upper := 13260, witness := RowWitness.topPrime 13249 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good151_checked :
    goodSegmentCheck 79 26 55
      { lower := 13310, upper := 13387, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good152_checked :
    goodSegmentCheck 79 26 55
      { lower := 13388, upper := 13388, witness := RowWitness.topPrime 13381 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good153_checked :
    goodSegmentCheck 79 26 55
      { lower := 13454, upper := 13529, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good154_checked :
    goodSegmentCheck 79 26 55
      { lower := 13530, upper := 13534, witness := RowWitness.topPrime 13523 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good155_checked :
    goodSegmentCheck 79 26 55
      { lower := 13718, upper := 13768, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good156_checked :
    goodSegmentCheck 79 26 55
      { lower := 13924, upper := 13929, witness := RowWitness.topPrime 13921 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good157_checked :
    goodSegmentCheck 79 26 55
      { lower := 14336, upper := 14375, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good158_checked :
    goodSegmentCheck 79 26 55
      { lower := 14406, upper := 14479, witness := RowWitness.topPrime 14401 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good159_checked :
    goodSegmentCheck 79 26 55
      { lower := 14480, upper := 14484, witness := RowWitness.topPrime 14479 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_good160_checked :
    goodSegmentCheck 79 26 55
      { lower := 14641, upper := 14658, witness := RowWitness.topPrime 14639 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good161_checked :
    goodSegmentCheck 79 26 55
      { lower := 14792, upper := 14817, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good162_checked :
    goodSegmentCheck 79 26 55
      { lower := 15123, upper := 15199, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good163_checked :
    goodSegmentCheck 79 26 55
      { lower := 15200, upper := 15207, witness := RowWitness.topPrime 15199 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good164_checked :
    goodSegmentCheck 79 26 55
      { lower := 15360, upper := 15437, witness := RowWitness.topPrime 15359 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good165_checked :
    goodSegmentCheck 79 26 55
      { lower := 15438, upper := 15454, witness := RowWitness.topPrime 15427 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good166_checked :
    goodSegmentCheck 79 26 55
      { lower := 15979, upper := 16051, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good167_checked :
    goodSegmentCheck 79 26 55
      { lower := 16052, upper := 16057, witness := RowWitness.topPrime 16033 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good168_checked :
    goodSegmentCheck 79 26 55
      { lower := 16384, upper := 16415, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good169_checked :
    goodSegmentCheck 79 26 55
      { lower := 16428, upper := 16462, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good170_checked :
    goodSegmentCheck 79 26 55
      { lower := 16810, upper := 16865, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good171_checked :
    goodSegmentCheck 79 26 55
      { lower := 16866, upper := 16898, witness := RowWitness.topPrime 16843 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good172_checked :
    goodSegmentCheck 79 26 55
      { lower := 17303, upper := 17376, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good173_checked :
    goodSegmentCheck 79 26 55
      { lower := 17408, upper := 17479, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good174_checked :
    goodSegmentCheck 79 26 55
      { lower := 17480, upper := 17483, witness := RowWitness.topPrime 17477 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good175_checked :
    goodSegmentCheck 79 26 55
      { lower := 17672, upper := 17739, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_good176_checked :
    goodSegmentCheck 79 26 55
      { lower := 18490, upper := 18559, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good177_checked :
    goodSegmentCheck 79 26 55
      { lower := 18560, upper := 18568, witness := RowWitness.topPrime 18553 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good178_checked :
    goodSegmentCheck 79 26 55
      { lower := 18634, upper := 18683, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good179_checked :
    goodSegmentCheck 79 26 55
      { lower := 19208, upper := 19285, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good180_checked :
    goodSegmentCheck 79 26 55
      { lower := 19286, upper := 19286, witness := RowWitness.topPrime 19273 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good181_checked :
    goodSegmentCheck 79 26 55
      { lower := 19663, upper := 19739, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good182_checked :
    goodSegmentCheck 79 26 55
      { lower := 19740, upper := 19741, witness := RowWitness.topPrime 19739 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good183_checked :
    goodSegmentCheck 79 26 55
      { lower := 20172, upper := 20239, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good184_checked :
    goodSegmentCheck 79 26 55
      { lower := 20240, upper := 20250, witness := RowWitness.topPrime 20233 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good185_checked :
    goodSegmentCheck 79 26 55
      { lower := 20535, upper := 20558, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good186_checked :
    goodSegmentCheck 79 26 55
      { lower := 20577, upper := 20613, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good187_checked :
    goodSegmentCheck 79 26 55
      { lower := 21316, upper := 21374, witness := RowWitness.topPrime 21313 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good188_checked :
    goodSegmentCheck 79 26 55
      { lower := 21870, upper := 21941, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good189_checked :
    goodSegmentCheck 79 26 55
      { lower := 21942, upper := 21953, witness := RowWitness.topPrime 21937 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good190_checked :
    goodSegmentCheck 79 26 55
      { lower := 21970, upper := 21982, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good191_checked :
    goodSegmentCheck 79 26 55
      { lower := 22472, upper := 22523, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_good192_checked :
    goodSegmentCheck 79 26 55
      { lower := 22528, upper := 22550, witness := RowWitness.topPrime 22511 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good193_checked :
    goodSegmentCheck 79 26 55
      { lower := 24010, upper := 24085, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good194_checked :
    goodSegmentCheck 79 26 55
      { lower := 24086, upper := 24115, witness := RowWitness.topPrime 24083 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good195_checked :
    goodSegmentCheck 79 26 55
      { lower := 24334, upper := 24407, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good196_checked :
    goodSegmentCheck 79 26 55
      { lower := 24408, upper := 24445, witness := RowWitness.topPrime 24407 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good197_checked :
    goodSegmentCheck 79 26 55
      { lower := 24576, upper := 24649, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good198_checked :
    goodSegmentCheck 79 26 55
      { lower := 24650, upper := 24654, witness := RowWitness.topPrime 24631 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good199_checked :
    goodSegmentCheck 79 26 55
      { lower := 25215, upper := 25267, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good200_checked :
    goodSegmentCheck 79 26 55
      { lower := 25268, upper := 25293, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good201_checked :
    goodSegmentCheck 79 26 55
      { lower := 26411, upper := 26442, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good202_checked :
    goodSegmentCheck 79 26 55
      { lower := 26645, upper := 26702, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good203_checked :
    goodSegmentCheck 79 26 55
      { lower := 26934, upper := 26974, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good204_checked :
    goodSegmentCheck 79 26 55
      { lower := 28125, upper := 28168, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good205_checked :
    goodSegmentCheck 79 26 55
      { lower := 28577, upper := 28639, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good206_checked :
    goodSegmentCheck 79 26 55
      { lower := 28717, upper := 28750, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good207_checked :
    goodSegmentCheck 79 26 55
      { lower := 29791, upper := 29846, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_good208_checked :
    goodSegmentCheck 79 26 55
      { lower := 30258, upper := 30324, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good209_checked :
    goodSegmentCheck 79 26 55
      { lower := 30758, upper := 30798, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good210_checked :
    goodSegmentCheck 79 26 55
      { lower := 30926, upper := 30977, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good211_checked :
    goodSegmentCheck 79 26 55
      { lower := 31250, upper := 31291, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good212_checked :
    goodSegmentCheck 79 26 55
      { lower := 31433, upper := 31475, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good213_checked :
    goodSegmentCheck 79 26 55
      { lower := 31476, upper := 31501, witness := RowWitness.topPrime 31469 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good214_checked :
    goodSegmentCheck 79 26 55
      { lower := 32805, upper := 32846, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good215_checked :
    goodSegmentCheck 79 26 55
      { lower := 34391, upper := 34453, witness := RowWitness.topPrime 34381 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good216_checked :
    goodSegmentCheck 79 26 55
      { lower := 34816, upper := 34885, witness := RowWitness.topPrime 34807 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good217_checked :
    goodSegmentCheck 79 26 55
      { lower := 34886, upper := 34888, witness := RowWitness.topPrime 34883 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good218_checked :
    goodSegmentCheck 79 26 55
      { lower := 35344, upper := 35365, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good219_checked :
    goodSegmentCheck 79 26 55
      { lower := 36517, upper := 36575, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good220_checked :
    goodSegmentCheck 79 26 55
      { lower := 36576, upper := 36579, witness := RowWitness.topPrime 36571 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good221_checked :
    goodSegmentCheck 79 26 55
      { lower := 37210, upper := 37257, witness := RowWitness.topPrime 37201 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good222_checked :
    goodSegmentCheck 79 26 55
      { lower := 37349, upper := 37381, witness := RowWitness.topPrime 37339 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good223_checked :
    goodSegmentCheck 79 26 55
      { lower := 37553, upper := 37578, witness := RowWitness.topPrime 37549 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_good224_checked :
    goodSegmentCheck 79 26 55
      { lower := 39326, upper := 39401, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good225_checked :
    goodSegmentCheck 79 26 55
      { lower := 39402, upper := 39404, witness := RowWitness.topPrime 39397 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good226_checked :
    goodSegmentCheck 79 26 55
      { lower := 40401, upper := 40406, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good227_checked :
    goodSegmentCheck 79 26 55
      { lower := 40960, upper := 41009, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good228_checked :
    goodSegmentCheck 79 26 55
      { lower := 44944, upper := 44968, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good229_checked :
    goodSegmentCheck 79 26 55
      { lower := 48013, upper := 48039, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good230_checked :
    goodSegmentCheck 79 26 55
      { lower := 48734, upper := 48746, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good231_checked :
    goodSegmentCheck 79 26 55
      { lower := 48778, upper := 48812, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good232_checked :
    goodSegmentCheck 79 26 55
      { lower := 49152, upper := 49208, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good233_checked :
    goodSegmentCheck 79 26 55
      { lower := 50421, upper := 50488, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good234_checked :
    goodSegmentCheck 79 26 55
      { lower := 53290, upper := 53326, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good235_checked :
    goodSegmentCheck 79 26 55
      { lower := 58619, upper := 58642, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good236_checked :
    goodSegmentCheck 79 26 55
      { lower := 65536, upper := 65599, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good237_checked :
    goodSegmentCheck 79 26 55
      { lower := 65600, upper := 65614, witness := RowWitness.topPrime 65599 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good238_checked :
    goodSegmentCheck 79 26 55
      { lower := 73205, upper := 73245, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good239_checked :
    goodSegmentCheck 79 26 55
      { lower := 73728, upper := 73773, witness := RowWitness.topPrime 73727 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_good240_checked :
    goodSegmentCheck 79 26 55
      { lower := 137842, upper := 137859, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good241_checked :
    goodSegmentCheck 79 26 55
      { lower := 146410, upper := 146412, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good242_checked :
    goodSegmentCheck 79 26 55
      { lower := 148955, upper := 148955, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good243_checked :
    goodSegmentCheck 79 26 55
      { lower := 327701, upper := 327758, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good243_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_goods_checked :
    row079.goods.all (goodSegmentCheck row079.height.i row079.height.r row079.height.s) = true := by
  change row079_goods.all (goodSegmentCheck 79 26 55) = true
  simp only [row079_goods, List.all_cons, List.all_nil,
    row079_good000_checked,
    row079_good001_checked,
    row079_good002_checked,
    row079_good003_checked,
    row079_good004_checked,
    row079_good005_checked,
    row079_good006_checked,
    row079_good007_checked,
    row079_good008_checked,
    row079_good009_checked,
    row079_good010_checked,
    row079_good011_checked,
    row079_good012_checked,
    row079_good013_checked,
    row079_good014_checked,
    row079_good015_checked,
    row079_good016_checked,
    row079_good017_checked,
    row079_good018_checked,
    row079_good019_checked,
    row079_good020_checked,
    row079_good021_checked,
    row079_good022_checked,
    row079_good023_checked,
    row079_good024_checked,
    row079_good025_checked,
    row079_good026_checked,
    row079_good027_checked,
    row079_good028_checked,
    row079_good029_checked,
    row079_good030_checked,
    row079_good031_checked,
    row079_good032_checked,
    row079_good033_checked,
    row079_good034_checked,
    row079_good035_checked,
    row079_good036_checked,
    row079_good037_checked,
    row079_good038_checked,
    row079_good039_checked,
    row079_good040_checked,
    row079_good041_checked,
    row079_good042_checked,
    row079_good043_checked,
    row079_good044_checked,
    row079_good045_checked,
    row079_good046_checked,
    row079_good047_checked,
    row079_good048_checked,
    row079_good049_checked,
    row079_good050_checked,
    row079_good051_checked,
    row079_good052_checked,
    row079_good053_checked,
    row079_good054_checked,
    row079_good055_checked,
    row079_good056_checked,
    row079_good057_checked,
    row079_good058_checked,
    row079_good059_checked,
    row079_good060_checked,
    row079_good061_checked,
    row079_good062_checked,
    row079_good063_checked,
    row079_good064_checked,
    row079_good065_checked,
    row079_good066_checked,
    row079_good067_checked,
    row079_good068_checked,
    row079_good069_checked,
    row079_good070_checked,
    row079_good071_checked,
    row079_good072_checked,
    row079_good073_checked,
    row079_good074_checked,
    row079_good075_checked,
    row079_good076_checked,
    row079_good077_checked,
    row079_good078_checked,
    row079_good079_checked,
    row079_good080_checked,
    row079_good081_checked,
    row079_good082_checked,
    row079_good083_checked,
    row079_good084_checked,
    row079_good085_checked,
    row079_good086_checked,
    row079_good087_checked,
    row079_good088_checked,
    row079_good089_checked,
    row079_good090_checked,
    row079_good091_checked,
    row079_good092_checked,
    row079_good093_checked,
    row079_good094_checked,
    row079_good095_checked,
    row079_good096_checked,
    row079_good097_checked,
    row079_good098_checked,
    row079_good099_checked,
    row079_good100_checked,
    row079_good101_checked,
    row079_good102_checked,
    row079_good103_checked,
    row079_good104_checked,
    row079_good105_checked,
    row079_good106_checked,
    row079_good107_checked,
    row079_good108_checked,
    row079_good109_checked,
    row079_good110_checked,
    row079_good111_checked,
    row079_good112_checked,
    row079_good113_checked,
    row079_good114_checked,
    row079_good115_checked,
    row079_good116_checked,
    row079_good117_checked,
    row079_good118_checked,
    row079_good119_checked,
    row079_good120_checked,
    row079_good121_checked,
    row079_good122_checked,
    row079_good123_checked,
    row079_good124_checked,
    row079_good125_checked,
    row079_good126_checked,
    row079_good127_checked,
    row079_good128_checked,
    row079_good129_checked,
    row079_good130_checked,
    row079_good131_checked,
    row079_good132_checked,
    row079_good133_checked,
    row079_good134_checked,
    row079_good135_checked,
    row079_good136_checked,
    row079_good137_checked,
    row079_good138_checked,
    row079_good139_checked,
    row079_good140_checked,
    row079_good141_checked,
    row079_good142_checked,
    row079_good143_checked,
    row079_good144_checked,
    row079_good145_checked,
    row079_good146_checked,
    row079_good147_checked,
    row079_good148_checked,
    row079_good149_checked,
    row079_good150_checked,
    row079_good151_checked,
    row079_good152_checked,
    row079_good153_checked,
    row079_good154_checked,
    row079_good155_checked,
    row079_good156_checked,
    row079_good157_checked,
    row079_good158_checked,
    row079_good159_checked,
    row079_good160_checked,
    row079_good161_checked,
    row079_good162_checked,
    row079_good163_checked,
    row079_good164_checked,
    row079_good165_checked,
    row079_good166_checked,
    row079_good167_checked,
    row079_good168_checked,
    row079_good169_checked,
    row079_good170_checked,
    row079_good171_checked,
    row079_good172_checked,
    row079_good173_checked,
    row079_good174_checked,
    row079_good175_checked,
    row079_good176_checked,
    row079_good177_checked,
    row079_good178_checked,
    row079_good179_checked,
    row079_good180_checked,
    row079_good181_checked,
    row079_good182_checked,
    row079_good183_checked,
    row079_good184_checked,
    row079_good185_checked,
    row079_good186_checked,
    row079_good187_checked,
    row079_good188_checked,
    row079_good189_checked,
    row079_good190_checked,
    row079_good191_checked,
    row079_good192_checked,
    row079_good193_checked,
    row079_good194_checked,
    row079_good195_checked,
    row079_good196_checked,
    row079_good197_checked,
    row079_good198_checked,
    row079_good199_checked,
    row079_good200_checked,
    row079_good201_checked,
    row079_good202_checked,
    row079_good203_checked,
    row079_good204_checked,
    row079_good205_checked,
    row079_good206_checked,
    row079_good207_checked,
    row079_good208_checked,
    row079_good209_checked,
    row079_good210_checked,
    row079_good211_checked,
    row079_good212_checked,
    row079_good213_checked,
    row079_good214_checked,
    row079_good215_checked,
    row079_good216_checked,
    row079_good217_checked,
    row079_good218_checked,
    row079_good219_checked,
    row079_good220_checked,
    row079_good221_checked,
    row079_good222_checked,
    row079_good223_checked,
    row079_good224_checked,
    row079_good225_checked,
    row079_good226_checked,
    row079_good227_checked,
    row079_good228_checked,
    row079_good229_checked,
    row079_good230_checked,
    row079_good231_checked,
    row079_good232_checked,
    row079_good233_checked,
    row079_good234_checked,
    row079_good235_checked,
    row079_good236_checked,
    row079_good237_checked,
    row079_good238_checked,
    row079_good239_checked,
    row079_good240_checked,
    row079_good241_checked,
    row079_good242_checked,
    row079_good243_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_registered :
    decide (row079.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row079_small_checked :
    coverCheck (2 * row079.height.i + 2) (row079.height.i * (row079.height.i - 1) - 1)
      (row079.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row079_layerCover_checked :
    coverCheck (row079.height.i * (row079.height.i - 1)) (row079.height.n0 - 1)
      (row079.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row079_bounds : List NatInterval :=
  [(160, 235), (236, 311), (312, 389), (390, 467), (468, 545), (546, 619), (620, 697), (698, 769), (770, 847), (848, 917), (918, 989), (990, 1061), (1062, 1139), (1140, 1207), (1208, 1279), (1280, 1357), (1358, 1405), (1406, 1477), (1478, 1549), (1550, 1627), (1628, 1705), (1706, 1777), (1778, 1855), (1856, 1925), (1926, 1991), (1992, 2065), (2066, 2141), (2142, 2219), (2220, 2291), (2292, 2365), (2366, 2435), (2436, 2501), (2502, 2555), (2556, 2629), (2630, 2699), (2700, 2777), (2778, 2855), (2856, 2929), (2930, 3005), (3006, 3079), (3080, 3157), (3158, 3215), (3216, 3287), (3288, 3349), (3350, 3425), (3426, 3491), (3492, 3569), (3570, 3637), (3638, 3715), (3716, 3787), (3788, 3857), (3858, 3931), (3932, 4009), (4010, 4085), (4086, 4157), (4158, 4235), (4236, 4309), (4310, 4375), (4376, 4451), (4452, 4529), (4530, 4601), (4602, 4675), (4676, 4751), (4752, 4829), (4830, 4895), (4896, 4967), (4968, 5045), (5046, 5117), (5118, 5191), (5192, 5267), (5268, 5339), (5340, 5411), (5412, 5485), (5486, 5561), (5562, 5635), (5636, 5701), (5702, 5779), (5780, 5857), (5858, 5935), (5936, 6005), (6006, 6065), (6066, 6131), (6132, 6209), (6210, 6222), (6250, 6252), (6358, 6431), (6432, 6436), (6517, 6569), (6570, 6647), (6648, 6715), (6716, 6787), (6788, 6805), (6859, 6935), (6936, 6955), (6962, 7014), (7203, 7271), (7272, 7303), (7406, 7471), (7472, 7484), (7500, 7520), (7546, 7619), (7620, 7647), (7688, 7758), (7935, 8011), (8012, 8064), (8192, 8203), (8214, 8287), (8288, 8292), (8303, 8310), (8410, 8467), (8468, 8505), (8649, 8653), (8664, 8741), (8742, 8742), (8748, 8825), (8826, 8828), (8836, 8866), (8993, 9049), (9050, 9071), (9245, 9319), (9320, 9329), (9375, 9395), (9522, 9555), (9583, 9600), (9604, 9679), (9680, 9682), (10051, 10078), (10082, 10157), (10158, 10164), (10240, 10284), (10580, 10645), (10646, 10717), (10718, 10726), (10935, 10987), (10988, 11030), (11045, 11063), (11094, 11171), (11172, 11187), (11236, 11241), (11250, 11321), (11322, 11328), (11664, 11716), (11774, 11821), (11822, 11852), (12005, 12057), (12321, 12366), (12393, 12399), (12500, 12571), (13125, 13199), (13200, 13203), (13254, 13260), (13310, 13387), (13388, 13388), (13454, 13529), (13530, 13534), (13718, 13768), (13924, 13929), (14336, 14375), (14406, 14479), (14480, 14484), (14641, 14658), (14792, 14817), (15123, 15199), (15200, 15207), (15360, 15437), (15438, 15454), (15979, 16051), (16052, 16057), (16384, 16415), (16428, 16462), (16810, 16865), (16866, 16898), (17303, 17376), (17408, 17479), (17480, 17483), (17672, 17739), (18490, 18559), (18560, 18568), (18634, 18683), (19208, 19285), (19286, 19286), (19663, 19739), (19740, 19741), (20172, 20239), (20240, 20250), (20535, 20558), (20577, 20613), (21316, 21374), (21870, 21941), (21942, 21953), (21970, 21982), (22472, 22523), (22528, 22550), (24010, 24085), (24086, 24115), (24334, 24407), (24408, 24445), (24576, 24649), (24650, 24654), (25215, 25267), (25268, 25293), (26411, 26442), (26645, 26702), (26934, 26974), (28125, 28168), (28577, 28639), (28717, 28750), (29791, 29846), (30258, 30324), (30758, 30798), (30926, 30977), (31250, 31291), (31433, 31475), (31476, 31501), (32805, 32846), (34391, 34453), (34816, 34885), (34886, 34888), (35344, 35365), (36517, 36575), (36576, 36579), (37210, 37257), (37349, 37381), (37553, 37578), (39326, 39401), (39402, 39404), (40401, 40406), (40960, 41009), (44944, 44968), (48013, 48039), (48734, 48746), (48778, 48812), (49152, 49208), (50421, 50488), (53290, 53326), (58619, 58642), (65536, 65599), (65600, 65614), (73205, 73245), (73728, 73773), (137842, 137859), (146410, 146412), (148955, 148955), (327701, 327758)]

theorem row079_bounds_eq : row079.goods.map goodSegmentBounds = row079_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row079_layer000_intervals : List ColouredInterval :=
  [(2, 6162, 6222), (2, 6400, 6478), (2, 6162, 6222), (2, 6656, 6734), (2, 7168, 7246), (2, 7680, 7758), (2, 8192, 8270), (2, 8704, 8782), (2, 9216, 9294), (2, 9728, 9806), (2, 10240, 10318), (2, 10752, 10830), (2, 11264, 11342), (2, 11776, 11854), (2, 12288, 12323), (2, 6162, 6222), (2, 7168, 7246), (2, 8192, 8270), (2, 9216, 9294), (2, 10240, 10318), (2, 11264, 11342), (2, 12288, 12323), (2, 6162, 6222), (2, 8192, 8270), (2, 10240, 10318), (2, 12288, 12323), (2, 8192, 8270), (2, 12288, 12323), (2, 8192, 8270), (3, 6561, 6639), (3, 7290, 7368), (3, 8019, 8097), (3, 8748, 8826), (3, 9477, 9555), (3, 10206, 10284), (3, 10935, 11013), (3, 11664, 11742), (3, 6561, 6639), (3, 8748, 8826), (3, 10935, 11013), (3, 6561, 6639), (5, 6250, 6328), (5, 6875, 6953), (5, 7500, 7578), (5, 8125, 8203), (5, 8750, 8828), (5, 9375, 9453), (5, 10000, 10078), (5, 10625, 10703), (5, 11250, 11328), (5, 11875, 11953), (5, 6250, 6328), (5, 9375, 9453), (7, 6174, 6252), (7, 6517, 6595), (7, 6860, 6938), (7, 7203, 7281), (7, 7546, 7624), (7, 7889, 7967), (7, 8232, 8310), (7, 8575, 8653), (7, 7203, 7281), (7, 9604, 9682), (7, 12005, 12083), (11, 6655, 6733), (11, 7986, 8064), (11, 9317, 9395), (11, 10648, 10726), (11, 11979, 12057), (13, 6591, 6669), (13, 8788, 8866), (13, 10985, 11063), (17, 6358, 6436), (17, 6647, 6725), (17, 6936, 7014), (17, 7225, 7303), (17, 9826, 9904), (19, 6162, 6215), (19, 6498, 6576), (19, 6859, 6937), (19, 7220, 7298), (19, 7581, 7659), (19, 7942, 8020), (19, 8303, 8381), (19, 8664, 8742), (19, 9025, 9103), (19, 6859, 6937), (23, 6348, 6426), (23, 6877, 6955), (23, 7406, 7484), (23, 7935, 8013), (23, 8464, 8542), (23, 8993, 9071), (23, 9522, 9600), (23, 10051, 10129), (23, 10580, 10658), (23, 11109, 11187), (23, 11638, 11716), (23, 12167, 12245), (23, 12167, 12245), (29, 6728, 6806), (29, 7569, 7647), (29, 8410, 8488), (29, 9251, 9329), (29, 10092, 10170), (29, 10933, 11011), (29, 11774, 11852), (31, 6727, 6805), (31, 7688, 7766), (31, 8649, 8727), (31, 9610, 9688), (31, 10571, 10649), (31, 11532, 11610), (37, 6845, 6923), (37, 8214, 8292), (37, 9583, 9661), (37, 10952, 11030), (37, 12321, 12323), (41, 6724, 6802), (41, 8405, 8483), (41, 10086, 10164), (41, 11767, 11845), (43, 7396, 7474), (43, 9245, 9323), (43, 11094, 11172), (47, 6627, 6705), (47, 8836, 8914), (47, 11045, 11123), (53, 8427, 8505), (53, 11236, 11314), (59, 6962, 7040), (59, 10443, 10521), (61, 7442, 7520), (61, 11163, 11241), (67, 8978, 9056), (71, 10082, 10160), (73, 10658, 10736)]

def row079_layer000_block000 : List ColouredInterval :=
  [(2, 6162, 6222), (2, 6400, 6478), (2, 6162, 6222), (2, 6656, 6734), (2, 7168, 7246), (2, 7680, 7758), (2, 8192, 8270), (2, 8704, 8782), (2, 9216, 9294), (2, 9728, 9806), (2, 10240, 10318), (2, 10752, 10830), (2, 11264, 11342), (2, 11776, 11854)]

def row079_layer000_block001 : List ColouredInterval :=
  [(2, 12288, 12323), (2, 6162, 6222), (2, 7168, 7246), (2, 8192, 8270), (2, 9216, 9294), (2, 10240, 10318), (2, 11264, 11342), (2, 12288, 12323), (2, 6162, 6222), (2, 8192, 8270), (2, 10240, 10318), (2, 12288, 12323), (2, 8192, 8270), (2, 12288, 12323)]

def row079_layer000_block002 : List ColouredInterval :=
  [(2, 8192, 8270), (3, 6561, 6639), (3, 7290, 7368), (3, 8019, 8097), (3, 8748, 8826), (3, 9477, 9555), (3, 10206, 10284), (3, 10935, 11013), (3, 11664, 11742), (3, 6561, 6639), (3, 8748, 8826), (3, 10935, 11013), (3, 6561, 6639), (5, 6250, 6328)]

def row079_layer000_block003 : List ColouredInterval :=
  [(5, 6875, 6953), (5, 7500, 7578), (5, 8125, 8203), (5, 8750, 8828), (5, 9375, 9453), (5, 10000, 10078), (5, 10625, 10703), (5, 11250, 11328), (5, 11875, 11953), (5, 6250, 6328), (5, 9375, 9453), (7, 6174, 6252), (7, 6517, 6595), (7, 6860, 6938)]

def row079_layer000_block004 : List ColouredInterval :=
  [(7, 7203, 7281), (7, 7546, 7624), (7, 7889, 7967), (7, 8232, 8310), (7, 8575, 8653), (7, 7203, 7281), (7, 9604, 9682), (7, 12005, 12083), (11, 6655, 6733), (11, 7986, 8064), (11, 9317, 9395), (11, 10648, 10726), (11, 11979, 12057), (13, 6591, 6669)]

def row079_layer000_block005 : List ColouredInterval :=
  [(13, 8788, 8866), (13, 10985, 11063), (17, 6358, 6436), (17, 6647, 6725), (17, 6936, 7014), (17, 7225, 7303), (17, 9826, 9904), (19, 6162, 6215), (19, 6498, 6576), (19, 6859, 6937), (19, 7220, 7298), (19, 7581, 7659), (19, 7942, 8020), (19, 8303, 8381)]

def row079_layer000_block006 : List ColouredInterval :=
  [(19, 8664, 8742), (19, 9025, 9103), (19, 6859, 6937), (23, 6348, 6426), (23, 6877, 6955), (23, 7406, 7484), (23, 7935, 8013), (23, 8464, 8542), (23, 8993, 9071), (23, 9522, 9600), (23, 10051, 10129), (23, 10580, 10658), (23, 11109, 11187), (23, 11638, 11716)]

def row079_layer000_block007 : List ColouredInterval :=
  [(23, 12167, 12245), (23, 12167, 12245), (29, 6728, 6806), (29, 7569, 7647), (29, 8410, 8488), (29, 9251, 9329), (29, 10092, 10170), (29, 10933, 11011), (29, 11774, 11852), (31, 6727, 6805), (31, 7688, 7766), (31, 8649, 8727), (31, 9610, 9688), (31, 10571, 10649)]

def row079_layer000_block008 : List ColouredInterval :=
  [(31, 11532, 11610), (37, 6845, 6923), (37, 8214, 8292), (37, 9583, 9661), (37, 10952, 11030), (37, 12321, 12323), (41, 6724, 6802), (41, 8405, 8483), (41, 10086, 10164), (41, 11767, 11845), (43, 7396, 7474), (43, 9245, 9323), (43, 11094, 11172), (47, 6627, 6705)]

def row079_layer000_block009 : List ColouredInterval :=
  [(47, 8836, 8914), (47, 11045, 11123), (53, 8427, 8505), (53, 11236, 11314), (59, 6962, 7040), (59, 10443, 10521), (61, 7442, 7520), (61, 11163, 11241), (67, 8978, 9056), (71, 10082, 10160), (73, 10658, 10736)]

def row079_layer000_chunks : List (List ColouredInterval) :=
  [row079_layer000_block000, row079_layer000_block001, row079_layer000_block002, row079_layer000_block003, row079_layer000_block004, row079_layer000_block005, row079_layer000_block006, row079_layer000_block007, row079_layer000_block008, row079_layer000_block009]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer000_arithmetic : LayerArithmeticValid row079.height { lower := 6162, upper := 12324, M := 25 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer000_enumeration :
    activePowerIntervalList 79 25 6162 12324 = row079_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer000_pairs000 :
    row079_layer000_block000.all (fun I => row079_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row079_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer000_pairs001 :
    row079_layer000_block001.all (fun I => row079_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row079_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer000_pairs002 :
    row079_layer000_block002.all (fun I => row079_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row079_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer000_pairs003 :
    row079_layer000_block003.all (fun I => row079_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row079_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer000_pairs004 :
    row079_layer000_block004.all (fun I => row079_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row079_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer000_pairs005 :
    row079_layer000_block005.all (fun I => row079_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row079_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer000_pairs006 :
    row079_layer000_block006.all (fun I => row079_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row079_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer000_pairs007 :
    row079_layer000_block007.all (fun I => row079_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row079_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer000_pairs008 :
    row079_layer000_block008.all (fun I => row079_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row079_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer000_pairs008
