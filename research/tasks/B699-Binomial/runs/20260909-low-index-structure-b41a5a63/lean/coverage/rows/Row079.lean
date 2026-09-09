import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

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

theorem row079_registered :
    decide (row079.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row079_goods_checked :
    row079.goods.all (goodSegmentCheck row079.height.i row079.height.r row079.height.s) = true := by
  decide +kernel

theorem row079_small_checked :
    coverCheck (2 * row079.height.i + 2) (row079.height.i * (row079.height.i - 1) - 1)
      (row079.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row079_layerCover_checked :
    coverCheck (row079.height.i * (row079.height.i - 1)) (row079.height.n0 - 1)
      (row079.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row079_layer000_checked :
    coverLayerCheck row079.height row079.goods { lower := 6162, upper := 12324, M := 25 } = true := by
  decide +kernel

theorem row079_layer001_checked :
    coverLayerCheck row079.height row079.goods { lower := 12324, upper := 24648, M := 21 } = true := by
  decide +kernel

theorem row079_layer002_checked :
    coverLayerCheck row079.height row079.goods { lower := 24648, upper := 49296, M := 18 } = true := by
  decide +kernel

theorem row079_layer003_checked :
    coverLayerCheck row079.height row079.goods { lower := 49296, upper := 98592, M := 15 } = true := by
  decide +kernel

theorem row079_layer004_checked :
    coverLayerCheck row079.height row079.goods { lower := 98592, upper := 197184, M := 13 } = true := by
  decide +kernel

theorem row079_layer005_checked :
    coverLayerCheck row079.height row079.goods { lower := 197184, upper := 394368, M := 11 } = true := by
  decide +kernel

theorem row079_layer006_checked :
    coverLayerCheck row079.height row079.goods { lower := 394368, upper := 788736, M := 9 } = true := by
  decide +kernel

theorem row079_layer007_checked :
    coverLayerCheck row079.height row079.goods { lower := 788736, upper := 1577472, M := 8 } = true := by
  decide +kernel

theorem row079_layer008_checked :
    coverLayerCheck row079.height row079.goods { lower := 1577472, upper := 3154944, M := 7 } = true := by
  decide +kernel

theorem row079_layer009_checked :
    coverLayerCheck row079.height row079.goods { lower := 3154944, upper := 6309888, M := 6 } = true := by
  decide +kernel

theorem row079_layer010_checked :
    coverLayerCheck row079.height row079.goods { lower := 6309888, upper := 12619776, M := 5 } = true := by
  decide +kernel

theorem row079_layer011_checked :
    coverLayerCheck row079.height row079.goods { lower := 12619776, upper := 25239552, M := 4 } = true := by
  decide +kernel

theorem row079_layer012_checked :
    coverLayerCheck row079.height row079.goods { lower := 25239552, upper := 50479104, M := 4 } = true := by
  decide +kernel

theorem row079_layer013_checked :
    coverLayerCheck row079.height row079.goods { lower := 50479104, upper := 100958208, M := 3 } = true := by
  decide +kernel

theorem row079_layer014_checked :
    coverLayerCheck row079.height row079.goods { lower := 100958208, upper := 201916416, M := 3 } = true := by
  decide +kernel

theorem row079_layer015_checked :
    coverLayerCheck row079.height row079.goods { lower := 201916416, upper := 403832832, M := 2 } = true := by
  decide +kernel

theorem row079_layer016_checked :
    coverLayerCheck row079.height row079.goods { lower := 403832832, upper := 807665664, M := 2 } = true := by
  decide +kernel

theorem row079_layer017_checked :
    coverLayerCheck row079.height row079.goods { lower := 807665664, upper := 1615331328, M := 2 } = true := by
  decide +kernel

theorem row079_layer018_checked :
    coverLayerCheck row079.height row079.goods { lower := 1615331328, upper := 3230662656, M := 2 } = true := by
  decide +kernel

theorem row079_layer019_checked :
    coverLayerCheck row079.height row079.goods { lower := 3230662656, upper := 6461325312, M := 1 } = true := by
  decide +kernel

theorem row079_layer020_checked :
    coverLayerCheck row079.height row079.goods { lower := 6461325312, upper := 10000000000, M := 1 } = true := by
  decide +kernel

theorem row079_layers_checked :
    row079.layers.all (coverLayerCheck row079.height row079.goods) = true := by
  change List.all [
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
  ] (coverLayerCheck row079.height row079.goods) = true
  simp only [List.all_cons, List.all_nil,
    row079_layer000_checked,
    row079_layer001_checked,
    row079_layer002_checked,
    row079_layer003_checked,
    row079_layer004_checked,
    row079_layer005_checked,
    row079_layer006_checked,
    row079_layer007_checked,
    row079_layer008_checked,
    row079_layer009_checked,
    row079_layer010_checked,
    row079_layer011_checked,
    row079_layer012_checked,
    row079_layer013_checked,
    row079_layer014_checked,
    row079_layer015_checked,
    row079_layer016_checked,
    row079_layer017_checked,
    row079_layer018_checked,
    row079_layer019_checked,
    row079_layer020_checked,
    Bool.true_and]

theorem row079_checked : finiteCoverRowCheck row079 = true := by
  simp only [finiteCoverRowCheck, row079_registered, row079_goods_checked,
    row079_small_checked, row079_layerCover_checked, row079_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row079_checked

end B699LowIndex
