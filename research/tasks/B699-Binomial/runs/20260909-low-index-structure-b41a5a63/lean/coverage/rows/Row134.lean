import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def row134_height : HeightCertificateDatum := { i := 134, r := 44, s := 94, n0Power10 := 8 }

def row134_goods : List GoodSegment := [
  { lower := 270, upper := 402, witness := RowWitness.topPrime 269 },
  { lower := 403, upper := 534, witness := RowWitness.topPrime 401 },
  { lower := 535, upper := 656, witness := RowWitness.topPrime 523 },
  { lower := 657, upper := 786, witness := RowWitness.topPrime 653 },
  { lower := 787, upper := 920, witness := RowWitness.topPrime 787 },
  { lower := 921, upper := 1052, witness := RowWitness.topPrime 919 },
  { lower := 1053, upper := 1184, witness := RowWitness.topPrime 1051 },
  { lower := 1185, upper := 1314, witness := RowWitness.topPrime 1181 },
  { lower := 1315, upper := 1440, witness := RowWitness.topPrime 1307 },
  { lower := 1441, upper := 1572, witness := RowWitness.topPrime 1439 },
  { lower := 1573, upper := 1704, witness := RowWitness.topPrime 1571 },
  { lower := 1705, upper := 1832, witness := RowWitness.topPrime 1699 },
  { lower := 1833, upper := 1964, witness := RowWitness.topPrime 1831 },
  { lower := 1965, upper := 2084, witness := RowWitness.topPrime 1951 },
  { lower := 2085, upper := 2216, witness := RowWitness.topPrime 2083 },
  { lower := 2217, upper := 2346, witness := RowWitness.topPrime 2213 },
  { lower := 2347, upper := 2480, witness := RowWitness.topPrime 2347 },
  { lower := 2481, upper := 2610, witness := RowWitness.topPrime 2477 },
  { lower := 2611, upper := 2742, witness := RowWitness.topPrime 2609 },
  { lower := 2743, upper := 2874, witness := RowWitness.topPrime 2741 },
  { lower := 2875, upper := 2994, witness := RowWitness.topPrime 2861 },
  { lower := 2995, upper := 3104, witness := RowWitness.topPrime 2971 },
  { lower := 3105, upper := 3222, witness := RowWitness.topPrime 3089 },
  { lower := 3223, upper := 3354, witness := RowWitness.topPrime 3221 },
  { lower := 3355, upper := 3480, witness := RowWitness.topPrime 3347 },
  { lower := 3481, upper := 3602, witness := RowWitness.topPrime 3469 },
  { lower := 3603, upper := 3726, witness := RowWitness.topPrime 3593 },
  { lower := 3727, upper := 3860, witness := RowWitness.topPrime 3727 },
  { lower := 3861, upper := 3986, witness := RowWitness.topPrime 3853 },
  { lower := 3987, upper := 4100, witness := RowWitness.topPrime 3967 },
  { lower := 4101, upper := 4232, witness := RowWitness.topPrime 4099 },
  { lower := 4233, upper := 4364, witness := RowWitness.topPrime 4231 },
  { lower := 4365, upper := 4496, witness := RowWitness.topPrime 4363 },
  { lower := 4497, upper := 4626, witness := RowWitness.topPrime 4493 },
  { lower := 4627, upper := 4754, witness := RowWitness.topPrime 4621 },
  { lower := 4755, upper := 4884, witness := RowWitness.topPrime 4751 },
  { lower := 4885, upper := 5010, witness := RowWitness.topPrime 4877 },
  { lower := 5011, upper := 5144, witness := RowWitness.topPrime 5011 },
  { lower := 5145, upper := 5252, witness := RowWitness.topPrime 5119 },
  { lower := 5253, upper := 5370, witness := RowWitness.topPrime 5237 },
  { lower := 5371, upper := 5484, witness := RowWitness.topPrime 5351 },
  { lower := 5485, upper := 5616, witness := RowWitness.topPrime 5483 },
  { lower := 5617, upper := 5724, witness := RowWitness.topPrime 5591 },
  { lower := 5725, upper := 5850, witness := RowWitness.topPrime 5717 },
  { lower := 5851, upper := 5984, witness := RowWitness.topPrime 5851 },
  { lower := 5985, upper := 6114, witness := RowWitness.topPrime 5981 },
  { lower := 6115, upper := 6246, witness := RowWitness.topPrime 6113 },
  { lower := 6247, upper := 6380, witness := RowWitness.topPrime 6247 },
  { lower := 6381, upper := 6512, witness := RowWitness.topPrime 6379 },
  { lower := 6513, upper := 6624, witness := RowWitness.topPrime 6491 },
  { lower := 6625, upper := 6752, witness := RowWitness.topPrime 6619 },
  { lower := 6753, upper := 6870, witness := RowWitness.topPrime 6737 },
  { lower := 6871, upper := 7004, witness := RowWitness.topPrime 6871 },
  { lower := 7005, upper := 7134, witness := RowWitness.topPrime 7001 },
  { lower := 7135, upper := 7262, witness := RowWitness.topPrime 7129 },
  { lower := 7263, upper := 7386, witness := RowWitness.topPrime 7253 },
  { lower := 7387, upper := 7502, witness := RowWitness.topPrime 7369 },
  { lower := 7503, upper := 7632, witness := RowWitness.topPrime 7499 },
  { lower := 7633, upper := 7754, witness := RowWitness.topPrime 7621 },
  { lower := 7755, upper := 7886, witness := RowWitness.topPrime 7753 },
  { lower := 7887, upper := 8016, witness := RowWitness.topPrime 7883 },
  { lower := 8017, upper := 8150, witness := RowWitness.topPrime 8017 },
  { lower := 8151, upper := 8280, witness := RowWitness.topPrime 8147 },
  { lower := 8281, upper := 8406, witness := RowWitness.topPrime 8273 },
  { lower := 8407, upper := 8522, witness := RowWitness.topPrime 8389 },
  { lower := 8523, upper := 8654, witness := RowWitness.topPrime 8521 },
  { lower := 8655, upper := 8780, witness := RowWitness.topPrime 8647 },
  { lower := 8781, upper := 8912, witness := RowWitness.topPrime 8779 },
  { lower := 8913, upper := 9026, witness := RowWitness.topPrime 8893 },
  { lower := 9027, upper := 9146, witness := RowWitness.topPrime 9013 },
  { lower := 9147, upper := 9270, witness := RowWitness.topPrime 9137 },
  { lower := 9271, upper := 9390, witness := RowWitness.topPrime 9257 },
  { lower := 9391, upper := 9524, witness := RowWitness.topPrime 9391 },
  { lower := 9525, upper := 9654, witness := RowWitness.topPrime 9521 },
  { lower := 9655, upper := 9782, witness := RowWitness.topPrime 9649 },
  { lower := 9783, upper := 9914, witness := RowWitness.topPrime 9781 },
  { lower := 9915, upper := 10040, witness := RowWitness.topPrime 9907 },
  { lower := 10041, upper := 10172, witness := RowWitness.topPrime 10039 },
  { lower := 10173, upper := 10302, witness := RowWitness.topPrime 10169 },
  { lower := 10303, upper := 10436, witness := RowWitness.topPrime 10303 },
  { lower := 10437, upper := 10566, witness := RowWitness.topPrime 10433 },
  { lower := 10567, upper := 10700, witness := RowWitness.topPrime 10567 },
  { lower := 10701, upper := 10824, witness := RowWitness.topPrime 10691 },
  { lower := 10825, upper := 10932, witness := RowWitness.topPrime 10799 },
  { lower := 10933, upper := 11042, witness := RowWitness.topPrime 10909 },
  { lower := 11043, upper := 11160, witness := RowWitness.topPrime 11027 },
  { lower := 11161, upper := 11294, witness := RowWitness.topPrime 11161 },
  { lower := 11295, upper := 11420, witness := RowWitness.topPrime 11287 },
  { lower := 11421, upper := 11544, witness := RowWitness.topPrime 11411 },
  { lower := 11545, upper := 11660, witness := RowWitness.topPrime 11527 },
  { lower := 11661, upper := 11790, witness := RowWitness.topPrime 11657 },
  { lower := 11791, upper := 11922, witness := RowWitness.topPrime 11789 },
  { lower := 11923, upper := 12056, witness := RowWitness.topPrime 11923 },
  { lower := 12057, upper := 12182, witness := RowWitness.topPrime 12049 },
  { lower := 12183, upper := 12296, witness := RowWitness.topPrime 12163 },
  { lower := 12297, upper := 12422, witness := RowWitness.topPrime 12289 },
  { lower := 12423, upper := 12554, witness := RowWitness.topPrime 12421 },
  { lower := 12555, upper := 12686, witness := RowWitness.topPrime 12553 },
  { lower := 12687, upper := 12804, witness := RowWitness.topPrime 12671 },
  { lower := 12805, upper := 12932, witness := RowWitness.topPrime 12799 },
  { lower := 12933, upper := 13056, witness := RowWitness.topPrime 12923 },
  { lower := 13057, upper := 13182, witness := RowWitness.topPrime 13049 },
  { lower := 13183, upper := 13316, witness := RowWitness.topPrime 13183 },
  { lower := 13317, upper := 13446, witness := RowWitness.topPrime 13313 },
  { lower := 13447, upper := 13574, witness := RowWitness.topPrime 13441 },
  { lower := 13575, upper := 13700, witness := RowWitness.topPrime 13567 },
  { lower := 13701, upper := 13830, witness := RowWitness.topPrime 13697 },
  { lower := 13831, upper := 13964, witness := RowWitness.topPrime 13831 },
  { lower := 13965, upper := 14096, witness := RowWitness.topPrime 13963 },
  { lower := 14097, upper := 14220, witness := RowWitness.topPrime 14087 },
  { lower := 14221, upper := 14354, witness := RowWitness.topPrime 14221 },
  { lower := 14355, upper := 14480, witness := RowWitness.topPrime 14347 },
  { lower := 14481, upper := 14612, witness := RowWitness.topPrime 14479 },
  { lower := 14613, upper := 14726, witness := RowWitness.topPrime 14593 },
  { lower := 14727, upper := 14856, witness := RowWitness.topPrime 14723 },
  { lower := 14857, upper := 14984, witness := RowWitness.topPrime 14851 },
  { lower := 14985, upper := 15116, witness := RowWitness.topPrime 14983 },
  { lower := 15117, upper := 15240, witness := RowWitness.topPrime 15107 },
  { lower := 15241, upper := 15374, witness := RowWitness.topPrime 15241 },
  { lower := 15375, upper := 15506, witness := RowWitness.topPrime 15373 },
  { lower := 15507, upper := 15630, witness := RowWitness.topPrime 15497 },
  { lower := 15631, upper := 15762, witness := RowWitness.topPrime 15629 },
  { lower := 15763, upper := 15894, witness := RowWitness.topPrime 15761 },
  { lower := 15895, upper := 16022, witness := RowWitness.topPrime 15889 },
  { lower := 16023, upper := 16140, witness := RowWitness.topPrime 16007 },
  { lower := 16141, upper := 16274, witness := RowWitness.topPrime 16141 },
  { lower := 16275, upper := 16406, witness := RowWitness.topPrime 16273 },
  { lower := 16407, upper := 16514, witness := RowWitness.topPrime 16381 },
  { lower := 16515, upper := 16626, witness := RowWitness.topPrime 16493 },
  { lower := 16627, upper := 16752, witness := RowWitness.topPrime 16619 },
  { lower := 16753, upper := 16880, witness := RowWitness.topPrime 16747 },
  { lower := 16881, upper := 17012, witness := RowWitness.topPrime 16879 },
  { lower := 17013, upper := 17144, witness := RowWitness.topPrime 17011 },
  { lower := 17145, upper := 17270, witness := RowWitness.topPrime 17137 },
  { lower := 17271, upper := 17390, witness := RowWitness.topPrime 17257 },
  { lower := 17391, upper := 17522, witness := RowWitness.topPrime 17389 },
  { lower := 17523, upper := 17652, witness := RowWitness.topPrime 17519 },
  { lower := 17653, upper := 17760, witness := RowWitness.topPrime 17627 },
  { lower := 17761, upper := 17821, witness := RowWitness.topPrime 17761 },
  { lower := 18491, upper := 18614, witness := RowWitness.topPrime 18481 },
  { lower := 18615, upper := 18624, witness := RowWitness.topPrime 18593 },
  { lower := 18634, upper := 18750, witness := RowWitness.topPrime 18617 },
  { lower := 18751, upper := 18882, witness := RowWitness.topPrime 18749 },
  { lower := 18883, upper := 18883, witness := RowWitness.topPrime 18869 },
  { lower := 19208, upper := 19299, witness := RowWitness.topPrime 19207 },
  { lower := 19663, upper := 19794, witness := RowWitness.topPrime 19661 },
  { lower := 19795, upper := 19816, witness := RowWitness.topPrime 19793 },
  { lower := 19881, upper := 19906, witness := RowWitness.topPrime 19867 },
  { lower := 19965, upper := 20014, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20294, witness := RowWitness.topPrime 20161 },
  { lower := 20295, upper := 20297, witness := RowWitness.topPrime 20287 },
  { lower := 20402, upper := 20472, witness := RowWitness.topPrime 20399 },
  { lower := 20480, upper := 20612, witness := RowWitness.topPrime 20479 },
  { lower := 20613, upper := 20710, witness := RowWitness.topPrime 20611 },
  { lower := 21296, upper := 21416, witness := RowWitness.topPrime 21283 },
  { lower := 21417, upper := 21429, witness := RowWitness.topPrime 21407 },
  { lower := 21870, upper := 21996, witness := RowWitness.topPrime 21863 },
  { lower := 21997, upper := 22037, witness := RowWitness.topPrime 21997 },
  { lower := 22090, upper := 22103, witness := RowWitness.topPrime 22079 },
  { lower := 22188, upper := 22223, witness := RowWitness.topPrime 22171 },
  { lower := 23763, upper := 23894, witness := RowWitness.topPrime 23761 },
  { lower := 23895, upper := 23895, witness := RowWitness.topPrime 23893 },
  { lower := 24037, upper := 24162, witness := RowWitness.topPrime 24029 },
  { lower := 24163, upper := 24190, witness := RowWitness.topPrime 24151 },
  { lower := 24299, upper := 24300, witness := RowWitness.topPrime 24281 },
  { lower := 24334, upper := 24462, witness := RowWitness.topPrime 24329 },
  { lower := 24463, upper := 24500, witness := RowWitness.topPrime 24443 },
  { lower := 24576, upper := 24698, witness := RowWitness.topPrime 24571 },
  { lower := 25000, upper := 25097, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25322, witness := RowWitness.topPrime 25189 },
  { lower := 25323, upper := 25348, witness := RowWitness.topPrime 25321 },
  { lower := 26364, upper := 26377, witness := RowWitness.topPrime 26357 },
  { lower := 26411, upper := 26497, witness := RowWitness.topPrime 26407 },
  { lower := 26508, upper := 26544, witness := RowWitness.topPrime 26501 },
  { lower := 27556, upper := 27569, witness := RowWitness.topPrime 27551 },
  { lower := 27848, upper := 27868, witness := RowWitness.topPrime 27847 },
  { lower := 28125, upper := 28223, witness := RowWitness.topPrime 28123 },
  { lower := 28227, upper := 28258, witness := RowWitness.topPrime 28219 },
  { lower := 28561, upper := 28564, witness := RowWitness.topPrime 28559 },
  { lower := 28577, upper := 28706, witness := RowWitness.topPrime 28573 },
  { lower := 28707, upper := 28710, witness := RowWitness.topPrime 28703 },
  { lower := 28717, upper := 28805, witness := RowWitness.topPrime 28711 },
  { lower := 28812, upper := 28850, witness := RowWitness.topPrime 28807 },
  { lower := 29584, upper := 29611, witness := RowWitness.topPrime 29581 },
  { lower := 29791, upper := 29901, witness := RowWitness.topPrime 29789 },
  { lower := 30618, upper := 30726, witness := RowWitness.topPrime 30593 },
  { lower := 30727, upper := 30736, witness := RowWitness.topPrime 30727 },
  { lower := 30926, upper := 31032, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31326, witness := RowWitness.topPrime 31193 },
  { lower := 31327, upper := 31383, witness := RowWitness.topPrime 31327 },
  { lower := 31433, upper := 31462, witness := RowWitness.topPrime 31397 },
  { lower := 32805, upper := 32901, witness := RowWitness.topPrime 32803 },
  { lower := 33614, upper := 33622, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33747, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34452, witness := RowWitness.topPrime 34319 },
  { lower := 34453, upper := 34524, witness := RowWitness.topPrime 34439 },
  { lower := 35344, upper := 35420, witness := RowWitness.topPrime 35339 },
  { lower := 36517, upper := 36630, witness := RowWitness.topPrime 36497 },
  { lower := 36631, upper := 36634, witness := RowWitness.topPrime 36629 },
  { lower := 37303, upper := 37343, witness := RowWitness.topPrime 37277 },
  { lower := 37500, upper := 37579, witness := RowWitness.topPrime 37493 },
  { lower := 38307, upper := 38424, witness := RowWitness.topPrime 38303 },
  { lower := 39366, upper := 39437, witness := RowWitness.topPrime 39359 },
  { lower := 40931, upper := 40937, witness := RowWitness.topPrime 40927 },
  { lower := 40960, upper := 41064, witness := RowWitness.topPrime 40949 },
  { lower := 45369, upper := 45386, witness := RowWitness.topPrime 45361 },
  { lower := 45927, upper := 45929, witness := RowWitness.topPrime 45893 },
  { lower := 47526, upper := 47654, witness := RowWitness.topPrime 47521 },
  { lower := 47655, upper := 47657, witness := RowWitness.topPrime 47653 },
  { lower := 48013, upper := 48094, witness := RowWitness.topPrime 47981 },
  { lower := 48387, upper := 48506, witness := RowWitness.topPrime 48383 },
  { lower := 48778, upper := 48801, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49263, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50543, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51138, witness := RowWitness.topPrime 51071 },
  { lower := 55451, upper := 55574, witness := RowWitness.topPrime 55441 },
  { lower := 55575, upper := 55580, witness := RowWitness.topPrime 55547 },
  { lower := 57245, upper := 57255, witness := RowWitness.topPrime 57241 },
  { lower := 58619, upper := 58697, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59089, witness := RowWitness.topPrime 59029 },
  { lower := 62500, upper := 62543, witness := RowWitness.topPrime 62497 },
  { lower := 63869, upper := 63996, witness := RowWitness.topPrime 63863 },
  { lower := 63997, upper := 64002, witness := RowWitness.topPrime 63997 },
  { lower := 65536, upper := 65654, witness := RowWitness.topPrime 65521 },
  { lower := 65655, upper := 65669, witness := RowWitness.topPrime 65651 },
  { lower := 68644, upper := 68772, witness := RowWitness.topPrime 68639 },
  { lower := 68773, upper := 68784, witness := RowWitness.topPrime 68771 },
  { lower := 68921, upper := 69023, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71420, witness := RowWitness.topPrime 71287 },
  { lower := 71421, upper := 71422, witness := RowWitness.topPrime 71419 },
  { lower := 73205, upper := 73300, witness := RowWitness.topPrime 73189 },
  { lower := 85805, upper := 85816, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89506, witness := RowWitness.topPrime 89381 },
  { lower := 98415, upper := 98437, witness := RowWitness.topPrime 98411 },
  { lower := 103041, upper := 103099, witness := RowWitness.topPrime 103007 },
  { lower := 109503, upper := 109508, witness := RowWitness.topPrime 109481 },
  { lower := 137842, upper := 137914, witness := RowWitness.topPrime 137831 },
  { lower := 148955, upper := 149010, witness := RowWitness.topPrime 148949 }
]

def row134_layers : List CoverLayer := [
  { lower := 17822, upper := 35644, M := 17 },
  { lower := 35644, upper := 71288, M := 13 },
  { lower := 71288, upper := 142576, M := 10 },
  { lower := 142576, upper := 285152, M := 8 },
  { lower := 285152, upper := 570304, M := 6 },
  { lower := 570304, upper := 1140608, M := 5 },
  { lower := 1140608, upper := 2281216, M := 4 },
  { lower := 2281216, upper := 4562432, M := 3 },
  { lower := 4562432, upper := 9124864, M := 2 },
  { lower := 9124864, upper := 18249728, M := 2 },
  { lower := 18249728, upper := 36499456, M := 2 },
  { lower := 36499456, upper := 72998912, M := 1 },
  { lower := 72998912, upper := 100000000, M := 1 }
]

def row134 : FiniteCoverRow := {
  height := row134_height,
  goods := row134_goods,
  layers := row134_layers
}

theorem row134_registered :
    decide (row134.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row134_goods_checked :
    row134.goods.all (goodSegmentCheck row134.height.i row134.height.r row134.height.s) = true := by
  decide +kernel

theorem row134_small_checked :
    coverCheck (2 * row134.height.i + 2) (row134.height.i * (row134.height.i - 1) - 1)
      (row134.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row134_layerCover_checked :
    coverCheck (row134.height.i * (row134.height.i - 1)) (row134.height.n0 - 1)
      (row134.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row134_layer000_checked :
    coverLayerCheck row134.height row134.goods { lower := 17822, upper := 35644, M := 17 } = true := by
  decide +kernel

theorem row134_layer001_checked :
    coverLayerCheck row134.height row134.goods { lower := 35644, upper := 71288, M := 13 } = true := by
  decide +kernel

theorem row134_layer002_checked :
    coverLayerCheck row134.height row134.goods { lower := 71288, upper := 142576, M := 10 } = true := by
  decide +kernel

theorem row134_layer003_checked :
    coverLayerCheck row134.height row134.goods { lower := 142576, upper := 285152, M := 8 } = true := by
  decide +kernel

theorem row134_layer004_checked :
    coverLayerCheck row134.height row134.goods { lower := 285152, upper := 570304, M := 6 } = true := by
  decide +kernel

theorem row134_layer005_checked :
    coverLayerCheck row134.height row134.goods { lower := 570304, upper := 1140608, M := 5 } = true := by
  decide +kernel

theorem row134_layer006_checked :
    coverLayerCheck row134.height row134.goods { lower := 1140608, upper := 2281216, M := 4 } = true := by
  decide +kernel

theorem row134_layer007_checked :
    coverLayerCheck row134.height row134.goods { lower := 2281216, upper := 4562432, M := 3 } = true := by
  decide +kernel

theorem row134_layer008_checked :
    coverLayerCheck row134.height row134.goods { lower := 4562432, upper := 9124864, M := 2 } = true := by
  decide +kernel

theorem row134_layer009_checked :
    coverLayerCheck row134.height row134.goods { lower := 9124864, upper := 18249728, M := 2 } = true := by
  decide +kernel

theorem row134_layer010_checked :
    coverLayerCheck row134.height row134.goods { lower := 18249728, upper := 36499456, M := 2 } = true := by
  decide +kernel

theorem row134_layer011_checked :
    coverLayerCheck row134.height row134.goods { lower := 36499456, upper := 72998912, M := 1 } = true := by
  decide +kernel

theorem row134_layer012_checked :
    coverLayerCheck row134.height row134.goods { lower := 72998912, upper := 100000000, M := 1 } = true := by
  decide +kernel

theorem row134_layers_checked :
    row134.layers.all (coverLayerCheck row134.height row134.goods) = true := by
  change List.all [
    { lower := 17822, upper := 35644, M := 17 },
    { lower := 35644, upper := 71288, M := 13 },
    { lower := 71288, upper := 142576, M := 10 },
    { lower := 142576, upper := 285152, M := 8 },
    { lower := 285152, upper := 570304, M := 6 },
    { lower := 570304, upper := 1140608, M := 5 },
    { lower := 1140608, upper := 2281216, M := 4 },
    { lower := 2281216, upper := 4562432, M := 3 },
    { lower := 4562432, upper := 9124864, M := 2 },
    { lower := 9124864, upper := 18249728, M := 2 },
    { lower := 18249728, upper := 36499456, M := 2 },
    { lower := 36499456, upper := 72998912, M := 1 },
    { lower := 72998912, upper := 100000000, M := 1 }
  ] (coverLayerCheck row134.height row134.goods) = true
  simp only [List.all_cons, List.all_nil,
    row134_layer000_checked,
    row134_layer001_checked,
    row134_layer002_checked,
    row134_layer003_checked,
    row134_layer004_checked,
    row134_layer005_checked,
    row134_layer006_checked,
    row134_layer007_checked,
    row134_layer008_checked,
    row134_layer009_checked,
    row134_layer010_checked,
    row134_layer011_checked,
    row134_layer012_checked,
    Bool.true_and]

theorem row134_checked : finiteCoverRowCheck row134 = true := by
  simp only [finiteCoverRowCheck, row134_registered, row134_goods_checked,
    row134_small_checked, row134_layerCover_checked, row134_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row134_checked

end B699LowIndex
