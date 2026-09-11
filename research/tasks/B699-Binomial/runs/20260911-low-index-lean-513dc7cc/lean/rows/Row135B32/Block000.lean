import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row135_height : HeightCertificateDatum := { i := 135, r := 44, s := 95, n0Power10 := 8 }

def row135_goods : List GoodSegment := [
  { lower := 272, upper := 405, witness := RowWitness.topPrime 271 },
  { lower := 406, upper := 535, witness := RowWitness.topPrime 401 },
  { lower := 536, upper := 657, witness := RowWitness.topPrime 523 },
  { lower := 658, upper := 787, witness := RowWitness.topPrime 653 },
  { lower := 788, upper := 921, witness := RowWitness.topPrime 787 },
  { lower := 922, upper := 1053, witness := RowWitness.topPrime 919 },
  { lower := 1054, upper := 1185, witness := RowWitness.topPrime 1051 },
  { lower := 1186, upper := 1315, witness := RowWitness.topPrime 1181 },
  { lower := 1316, upper := 1441, witness := RowWitness.topPrime 1307 },
  { lower := 1442, upper := 1573, witness := RowWitness.topPrime 1439 },
  { lower := 1574, upper := 1705, witness := RowWitness.topPrime 1571 },
  { lower := 1706, upper := 1833, witness := RowWitness.topPrime 1699 },
  { lower := 1834, upper := 1965, witness := RowWitness.topPrime 1831 },
  { lower := 1966, upper := 2085, witness := RowWitness.topPrime 1951 },
  { lower := 2086, upper := 2217, witness := RowWitness.topPrime 2083 },
  { lower := 2218, upper := 2347, witness := RowWitness.topPrime 2213 },
  { lower := 2348, upper := 2481, witness := RowWitness.topPrime 2347 },
  { lower := 2482, upper := 2611, witness := RowWitness.topPrime 2477 },
  { lower := 2612, upper := 2743, witness := RowWitness.topPrime 2609 },
  { lower := 2744, upper := 2875, witness := RowWitness.topPrime 2741 },
  { lower := 2876, upper := 2995, witness := RowWitness.topPrime 2861 },
  { lower := 2996, upper := 3105, witness := RowWitness.topPrime 2971 },
  { lower := 3106, upper := 3223, witness := RowWitness.topPrime 3089 },
  { lower := 3224, upper := 3355, witness := RowWitness.topPrime 3221 },
  { lower := 3356, upper := 3481, witness := RowWitness.topPrime 3347 },
  { lower := 3482, upper := 3603, witness := RowWitness.topPrime 3469 },
  { lower := 3604, upper := 3727, witness := RowWitness.topPrime 3593 },
  { lower := 3728, upper := 3861, witness := RowWitness.topPrime 3727 },
  { lower := 3862, upper := 3987, witness := RowWitness.topPrime 3853 },
  { lower := 3988, upper := 4101, witness := RowWitness.topPrime 3967 },
  { lower := 4102, upper := 4233, witness := RowWitness.topPrime 4099 },
  { lower := 4234, upper := 4365, witness := RowWitness.topPrime 4231 },
  { lower := 4366, upper := 4497, witness := RowWitness.topPrime 4363 },
  { lower := 4498, upper := 4627, witness := RowWitness.topPrime 4493 },
  { lower := 4628, upper := 4755, witness := RowWitness.topPrime 4621 },
  { lower := 4756, upper := 4885, witness := RowWitness.topPrime 4751 },
  { lower := 4886, upper := 5011, witness := RowWitness.topPrime 4877 },
  { lower := 5012, upper := 5145, witness := RowWitness.topPrime 5011 },
  { lower := 5146, upper := 5253, witness := RowWitness.topPrime 5119 },
  { lower := 5254, upper := 5371, witness := RowWitness.topPrime 5237 },
  { lower := 5372, upper := 5485, witness := RowWitness.topPrime 5351 },
  { lower := 5486, upper := 5617, witness := RowWitness.topPrime 5483 },
  { lower := 5618, upper := 5725, witness := RowWitness.topPrime 5591 },
  { lower := 5726, upper := 5851, witness := RowWitness.topPrime 5717 },
  { lower := 5852, upper := 5985, witness := RowWitness.topPrime 5851 },
  { lower := 5986, upper := 6115, witness := RowWitness.topPrime 5981 },
  { lower := 6116, upper := 6247, witness := RowWitness.topPrime 6113 },
  { lower := 6248, upper := 6381, witness := RowWitness.topPrime 6247 },
  { lower := 6382, upper := 6513, witness := RowWitness.topPrime 6379 },
  { lower := 6514, upper := 6625, witness := RowWitness.topPrime 6491 },
  { lower := 6626, upper := 6753, witness := RowWitness.topPrime 6619 },
  { lower := 6754, upper := 6871, witness := RowWitness.topPrime 6737 },
  { lower := 6872, upper := 7005, witness := RowWitness.topPrime 6871 },
  { lower := 7006, upper := 7135, witness := RowWitness.topPrime 7001 },
  { lower := 7136, upper := 7263, witness := RowWitness.topPrime 7129 },
  { lower := 7264, upper := 7387, witness := RowWitness.topPrime 7253 },
  { lower := 7388, upper := 7503, witness := RowWitness.topPrime 7369 },
  { lower := 7504, upper := 7633, witness := RowWitness.topPrime 7499 },
  { lower := 7634, upper := 7755, witness := RowWitness.topPrime 7621 },
  { lower := 7756, upper := 7887, witness := RowWitness.topPrime 7753 },
  { lower := 7888, upper := 8017, witness := RowWitness.topPrime 7883 },
  { lower := 8018, upper := 8151, witness := RowWitness.topPrime 8017 },
  { lower := 8152, upper := 8281, witness := RowWitness.topPrime 8147 },
  { lower := 8282, upper := 8407, witness := RowWitness.topPrime 8273 },
  { lower := 8408, upper := 8523, witness := RowWitness.topPrime 8389 },
  { lower := 8524, upper := 8655, witness := RowWitness.topPrime 8521 },
  { lower := 8656, upper := 8781, witness := RowWitness.topPrime 8647 },
  { lower := 8782, upper := 8913, witness := RowWitness.topPrime 8779 },
  { lower := 8914, upper := 9027, witness := RowWitness.topPrime 8893 },
  { lower := 9028, upper := 9147, witness := RowWitness.topPrime 9013 },
  { lower := 9148, upper := 9271, witness := RowWitness.topPrime 9137 },
  { lower := 9272, upper := 9391, witness := RowWitness.topPrime 9257 },
  { lower := 9392, upper := 9525, witness := RowWitness.topPrime 9391 },
  { lower := 9526, upper := 9655, witness := RowWitness.topPrime 9521 },
  { lower := 9656, upper := 9783, witness := RowWitness.topPrime 9649 },
  { lower := 9784, upper := 9915, witness := RowWitness.topPrime 9781 },
  { lower := 9916, upper := 10041, witness := RowWitness.topPrime 9907 },
  { lower := 10042, upper := 10173, witness := RowWitness.topPrime 10039 },
  { lower := 10174, upper := 10303, witness := RowWitness.topPrime 10169 },
  { lower := 10304, upper := 10437, witness := RowWitness.topPrime 10303 },
  { lower := 10438, upper := 10567, witness := RowWitness.topPrime 10433 },
  { lower := 10568, upper := 10701, witness := RowWitness.topPrime 10567 },
  { lower := 10702, upper := 10825, witness := RowWitness.topPrime 10691 },
  { lower := 10826, upper := 10933, witness := RowWitness.topPrime 10799 },
  { lower := 10934, upper := 11043, witness := RowWitness.topPrime 10909 },
  { lower := 11044, upper := 11161, witness := RowWitness.topPrime 11027 },
  { lower := 11162, upper := 11295, witness := RowWitness.topPrime 11161 },
  { lower := 11296, upper := 11421, witness := RowWitness.topPrime 11287 },
  { lower := 11422, upper := 11545, witness := RowWitness.topPrime 11411 },
  { lower := 11546, upper := 11661, witness := RowWitness.topPrime 11527 },
  { lower := 11662, upper := 11791, witness := RowWitness.topPrime 11657 },
  { lower := 11792, upper := 11923, witness := RowWitness.topPrime 11789 },
  { lower := 11924, upper := 12057, witness := RowWitness.topPrime 11923 },
  { lower := 12058, upper := 12183, witness := RowWitness.topPrime 12049 },
  { lower := 12184, upper := 12297, witness := RowWitness.topPrime 12163 },
  { lower := 12298, upper := 12423, witness := RowWitness.topPrime 12289 },
  { lower := 12424, upper := 12555, witness := RowWitness.topPrime 12421 },
  { lower := 12556, upper := 12687, witness := RowWitness.topPrime 12553 },
  { lower := 12688, upper := 12805, witness := RowWitness.topPrime 12671 },
  { lower := 12806, upper := 12933, witness := RowWitness.topPrime 12799 },
  { lower := 12934, upper := 13057, witness := RowWitness.topPrime 12923 },
  { lower := 13058, upper := 13183, witness := RowWitness.topPrime 13049 },
  { lower := 13184, upper := 13317, witness := RowWitness.topPrime 13183 },
  { lower := 13318, upper := 13447, witness := RowWitness.topPrime 13313 },
  { lower := 13448, upper := 13575, witness := RowWitness.topPrime 13441 },
  { lower := 13576, upper := 13701, witness := RowWitness.topPrime 13567 },
  { lower := 13702, upper := 13831, witness := RowWitness.topPrime 13697 },
  { lower := 13832, upper := 13965, witness := RowWitness.topPrime 13831 },
  { lower := 13966, upper := 14097, witness := RowWitness.topPrime 13963 },
  { lower := 14098, upper := 14221, witness := RowWitness.topPrime 14087 },
  { lower := 14222, upper := 14355, witness := RowWitness.topPrime 14221 },
  { lower := 14356, upper := 14481, witness := RowWitness.topPrime 14347 },
  { lower := 14482, upper := 14613, witness := RowWitness.topPrime 14479 },
  { lower := 14614, upper := 14727, witness := RowWitness.topPrime 14593 },
  { lower := 14728, upper := 14857, witness := RowWitness.topPrime 14723 },
  { lower := 14858, upper := 14985, witness := RowWitness.topPrime 14851 },
  { lower := 14986, upper := 15117, witness := RowWitness.topPrime 14983 },
  { lower := 15118, upper := 15241, witness := RowWitness.topPrime 15107 },
  { lower := 15242, upper := 15375, witness := RowWitness.topPrime 15241 },
  { lower := 15376, upper := 15507, witness := RowWitness.topPrime 15373 },
  { lower := 15508, upper := 15631, witness := RowWitness.topPrime 15497 },
  { lower := 15632, upper := 15763, witness := RowWitness.topPrime 15629 },
  { lower := 15764, upper := 15895, witness := RowWitness.topPrime 15761 },
  { lower := 15896, upper := 16023, witness := RowWitness.topPrime 15889 },
  { lower := 16024, upper := 16141, witness := RowWitness.topPrime 16007 },
  { lower := 16142, upper := 16275, witness := RowWitness.topPrime 16141 },
  { lower := 16276, upper := 16407, witness := RowWitness.topPrime 16273 },
  { lower := 16408, upper := 16515, witness := RowWitness.topPrime 16381 },
  { lower := 16516, upper := 16627, witness := RowWitness.topPrime 16493 },
  { lower := 16628, upper := 16753, witness := RowWitness.topPrime 16619 },
  { lower := 16754, upper := 16881, witness := RowWitness.topPrime 16747 },
  { lower := 16882, upper := 17013, witness := RowWitness.topPrime 16879 },
  { lower := 17014, upper := 17145, witness := RowWitness.topPrime 17011 },
  { lower := 17146, upper := 17271, witness := RowWitness.topPrime 17137 },
  { lower := 17272, upper := 17391, witness := RowWitness.topPrime 17257 },
  { lower := 17392, upper := 17523, witness := RowWitness.topPrime 17389 },
  { lower := 17524, upper := 17653, witness := RowWitness.topPrime 17519 },
  { lower := 17654, upper := 17761, witness := RowWitness.topPrime 17627 },
  { lower := 17762, upper := 17895, witness := RowWitness.topPrime 17761 },
  { lower := 17896, upper := 18025, witness := RowWitness.topPrime 17891 },
  { lower := 18026, upper := 18089, witness := RowWitness.topPrime 18013 },
  { lower := 18490, upper := 18615, witness := RowWitness.topPrime 18481 },
  { lower := 18616, upper := 18625, witness := RowWitness.topPrime 18593 },
  { lower := 18634, upper := 18751, witness := RowWitness.topPrime 18617 },
  { lower := 18752, upper := 18768, witness := RowWitness.topPrime 18749 },
  { lower := 18818, upper := 18857, witness := RowWitness.topPrime 18803 },
  { lower := 19208, upper := 19300, witness := RowWitness.topPrime 19207 },
  { lower := 19663, upper := 19795, witness := RowWitness.topPrime 19661 },
  { lower := 19796, upper := 19797, witness := RowWitness.topPrime 19793 },
  { lower := 19881, upper := 19907, witness := RowWitness.topPrime 19867 },
  { lower := 19965, upper := 20015, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20295, witness := RowWitness.topPrime 20161 },
  { lower := 20296, upper := 20298, witness := RowWitness.topPrime 20287 },
  { lower := 20402, upper := 20473, witness := RowWitness.topPrime 20399 },
  { lower := 20480, upper := 20613, witness := RowWitness.topPrime 20479 },
  { lower := 20614, upper := 20711, witness := RowWitness.topPrime 20611 },
  { lower := 21296, upper := 21417, witness := RowWitness.topPrime 21283 },
  { lower := 21418, upper := 21430, witness := RowWitness.topPrime 21407 },
  { lower := 21904, upper := 22027, witness := RowWitness.topPrime 21893 },
  { lower := 22028, upper := 22038, witness := RowWitness.topPrime 22027 },
  { lower := 22090, upper := 22104, witness := RowWitness.topPrime 22079 },
  { lower := 22188, upper := 22224, witness := RowWitness.topPrime 22171 },
  { lower := 22445, upper := 22460, witness := RowWitness.topPrime 22441 },
  { lower := 22472, upper := 22603, witness := RowWitness.topPrime 22469 },
  { lower := 22604, upper := 22606, witness := RowWitness.topPrime 22573 },
  { lower := 23763, upper := 23895, witness := RowWitness.topPrime 23761 },
  { lower := 23896, upper := 23896, witness := RowWitness.topPrime 23893 },
  { lower := 24037, upper := 24144, witness := RowWitness.topPrime 24029 },
  { lower := 24167, upper := 24171, witness := RowWitness.topPrime 24151 },
  { lower := 24299, upper := 24301, witness := RowWitness.topPrime 24281 },
  { lower := 24334, upper := 24463, witness := RowWitness.topPrime 24329 },
  { lower := 24464, upper := 24501, witness := RowWitness.topPrime 24443 },
  { lower := 24576, upper := 24699, witness := RowWitness.topPrime 24571 },
  { lower := 25215, upper := 25323, witness := RowWitness.topPrime 25189 },
  { lower := 25324, upper := 25349, witness := RowWitness.topPrime 25321 },
  { lower := 26411, upper := 26498, witness := RowWitness.topPrime 26407 },
  { lower := 26508, upper := 26545, witness := RowWitness.topPrime 26501 },
  { lower := 26624, upper := 26642, witness := RowWitness.topPrime 26597 },
  { lower := 26645, upper := 26758, witness := RowWitness.topPrime 26641 },
  { lower := 26934, upper := 27030, witness := RowWitness.topPrime 26927 },
  { lower := 27556, upper := 27570, witness := RowWitness.topPrime 27551 },
  { lower := 27848, upper := 27869, witness := RowWitness.topPrime 27847 },
  { lower := 28672, upper := 28695, witness := RowWitness.topPrime 28669 },
  { lower := 28717, upper := 28806, witness := RowWitness.topPrime 28711 },
  { lower := 28812, upper := 28851, witness := RowWitness.topPrime 28807 },
  { lower := 29584, upper := 29612, witness := RowWitness.topPrime 29581 },
  { lower := 29791, upper := 29902, witness := RowWitness.topPrime 29789 },
  { lower := 30720, upper := 30737, witness := RowWitness.topPrime 30713 },
  { lower := 30758, upper := 30854, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 31033, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31327, witness := RowWitness.topPrime 31193 },
  { lower := 31328, upper := 31384, witness := RowWitness.topPrime 31327 },
  { lower := 31423, upper := 31463, witness := RowWitness.topPrime 31397 },
  { lower := 33614, upper := 33623, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33748, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34453, witness := RowWitness.topPrime 34319 },
  { lower := 34454, upper := 34525, witness := RowWitness.topPrime 34439 },
  { lower := 35344, upper := 35421, witness := RowWitness.topPrime 35339 },
  { lower := 36015, upper := 36046, witness := RowWitness.topPrime 36013 },
  { lower := 37303, upper := 37344, witness := RowWitness.topPrime 37277 },
  { lower := 38307, upper := 38425, witness := RowWitness.topPrime 38303 },
  { lower := 40401, upper := 40462, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 40938, witness := RowWitness.topPrime 40927 },
  { lower := 40960, upper := 41065, witness := RowWitness.topPrime 40949 },
  { lower := 47526, upper := 47655, witness := RowWitness.topPrime 47521 },
  { lower := 47656, upper := 47658, witness := RowWitness.topPrime 47653 },
  { lower := 48013, upper := 48095, witness := RowWitness.topPrime 47981 },
  { lower := 48778, upper := 48802, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49264, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50544, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51139, witness := RowWitness.topPrime 51071 },
  { lower := 55451, upper := 55575, witness := RowWitness.topPrime 55441 },
  { lower := 55576, upper := 55581, witness := RowWitness.topPrime 55547 },
  { lower := 57245, upper := 57256, witness := RowWitness.topPrime 57241 },
  { lower := 57344, upper := 57379, witness := RowWitness.topPrime 57331 },
  { lower := 58619, upper := 58698, witness := RowWitness.topPrime 58613 },
  { lower := 63948, upper := 63979, witness := RowWitness.topPrime 63929 },
  { lower := 68644, upper := 68773, witness := RowWitness.topPrime 68639 },
  { lower := 68774, upper := 68785, witness := RowWitness.topPrime 68771 },
  { lower := 68921, upper := 69024, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71421, witness := RowWitness.topPrime 71287 },
  { lower := 71422, upper := 71423, witness := RowWitness.topPrime 71419 },
  { lower := 73205, upper := 73301, witness := RowWitness.topPrime 73189 },
  { lower := 85805, upper := 85817, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89507, witness := RowWitness.topPrime 89381 },
  { lower := 103041, upper := 103100, witness := RowWitness.topPrime 103007 },
  { lower := 148955, upper := 149011, witness := RowWitness.topPrime 148949 }
]

def row135_layers : List CoverLayer := [
  { lower := 18090, upper := 36180, M := 16 },
  { lower := 36180, upper := 72360, M := 12 },
  { lower := 72360, upper := 144720, M := 9 },
  { lower := 144720, upper := 289440, M := 7 },
  { lower := 289440, upper := 578880, M := 6 },
  { lower := 578880, upper := 1157760, M := 4 },
  { lower := 1157760, upper := 2315520, M := 3 },
  { lower := 2315520, upper := 4631040, M := 3 },
  { lower := 4631040, upper := 9262080, M := 2 },
  { lower := 9262080, upper := 18524160, M := 2 },
  { lower := 18524160, upper := 37048320, M := 1 },
  { lower := 37048320, upper := 74096640, M := 1 },
  { lower := 74096640, upper := 100000000, M := 1 }
]

def row135 : FiniteCoverRow := {
  height := row135_height,
  goods := row135_goods,
  layers := row135_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row135

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row135_good000_checked :
    goodSegmentCheck 135 44 95
      { lower := 272, upper := 405, witness := RowWitness.topPrime 271 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good001_checked :
    goodSegmentCheck 135 44 95
      { lower := 406, upper := 535, witness := RowWitness.topPrime 401 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good002_checked :
    goodSegmentCheck 135 44 95
      { lower := 536, upper := 657, witness := RowWitness.topPrime 523 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good003_checked :
    goodSegmentCheck 135 44 95
      { lower := 658, upper := 787, witness := RowWitness.topPrime 653 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good004_checked :
    goodSegmentCheck 135 44 95
      { lower := 788, upper := 921, witness := RowWitness.topPrime 787 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good005_checked :
    goodSegmentCheck 135 44 95
      { lower := 922, upper := 1053, witness := RowWitness.topPrime 919 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good006_checked :
    goodSegmentCheck 135 44 95
      { lower := 1054, upper := 1185, witness := RowWitness.topPrime 1051 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good007_checked :
    goodSegmentCheck 135 44 95
      { lower := 1186, upper := 1315, witness := RowWitness.topPrime 1181 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good008_checked :
    goodSegmentCheck 135 44 95
      { lower := 1316, upper := 1441, witness := RowWitness.topPrime 1307 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good009_checked :
    goodSegmentCheck 135 44 95
      { lower := 1442, upper := 1573, witness := RowWitness.topPrime 1439 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good010_checked :
    goodSegmentCheck 135 44 95
      { lower := 1574, upper := 1705, witness := RowWitness.topPrime 1571 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good011_checked :
    goodSegmentCheck 135 44 95
      { lower := 1706, upper := 1833, witness := RowWitness.topPrime 1699 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good012_checked :
    goodSegmentCheck 135 44 95
      { lower := 1834, upper := 1965, witness := RowWitness.topPrime 1831 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good013_checked :
    goodSegmentCheck 135 44 95
      { lower := 1966, upper := 2085, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good014_checked :
    goodSegmentCheck 135 44 95
      { lower := 2086, upper := 2217, witness := RowWitness.topPrime 2083 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good015_checked :
    goodSegmentCheck 135 44 95
      { lower := 2218, upper := 2347, witness := RowWitness.topPrime 2213 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row135_good016_checked :
    goodSegmentCheck 135 44 95
      { lower := 2348, upper := 2481, witness := RowWitness.topPrime 2347 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good017_checked :
    goodSegmentCheck 135 44 95
      { lower := 2482, upper := 2611, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good018_checked :
    goodSegmentCheck 135 44 95
      { lower := 2612, upper := 2743, witness := RowWitness.topPrime 2609 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good019_checked :
    goodSegmentCheck 135 44 95
      { lower := 2744, upper := 2875, witness := RowWitness.topPrime 2741 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good020_checked :
    goodSegmentCheck 135 44 95
      { lower := 2876, upper := 2995, witness := RowWitness.topPrime 2861 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good021_checked :
    goodSegmentCheck 135 44 95
      { lower := 2996, upper := 3105, witness := RowWitness.topPrime 2971 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good022_checked :
    goodSegmentCheck 135 44 95
      { lower := 3106, upper := 3223, witness := RowWitness.topPrime 3089 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good023_checked :
    goodSegmentCheck 135 44 95
      { lower := 3224, upper := 3355, witness := RowWitness.topPrime 3221 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good024_checked :
    goodSegmentCheck 135 44 95
      { lower := 3356, upper := 3481, witness := RowWitness.topPrime 3347 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good025_checked :
    goodSegmentCheck 135 44 95
      { lower := 3482, upper := 3603, witness := RowWitness.topPrime 3469 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good026_checked :
    goodSegmentCheck 135 44 95
      { lower := 3604, upper := 3727, witness := RowWitness.topPrime 3593 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good027_checked :
    goodSegmentCheck 135 44 95
      { lower := 3728, upper := 3861, witness := RowWitness.topPrime 3727 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good028_checked :
    goodSegmentCheck 135 44 95
      { lower := 3862, upper := 3987, witness := RowWitness.topPrime 3853 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good029_checked :
    goodSegmentCheck 135 44 95
      { lower := 3988, upper := 4101, witness := RowWitness.topPrime 3967 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good030_checked :
    goodSegmentCheck 135 44 95
      { lower := 4102, upper := 4233, witness := RowWitness.topPrime 4099 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good031_checked :
    goodSegmentCheck 135 44 95
      { lower := 4234, upper := 4365, witness := RowWitness.topPrime 4231 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row135_good032_checked :
    goodSegmentCheck 135 44 95
      { lower := 4366, upper := 4497, witness := RowWitness.topPrime 4363 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good033_checked :
    goodSegmentCheck 135 44 95
      { lower := 4498, upper := 4627, witness := RowWitness.topPrime 4493 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good034_checked :
    goodSegmentCheck 135 44 95
      { lower := 4628, upper := 4755, witness := RowWitness.topPrime 4621 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good035_checked :
    goodSegmentCheck 135 44 95
      { lower := 4756, upper := 4885, witness := RowWitness.topPrime 4751 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good036_checked :
    goodSegmentCheck 135 44 95
      { lower := 4886, upper := 5011, witness := RowWitness.topPrime 4877 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good037_checked :
    goodSegmentCheck 135 44 95
      { lower := 5012, upper := 5145, witness := RowWitness.topPrime 5011 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good038_checked :
    goodSegmentCheck 135 44 95
      { lower := 5146, upper := 5253, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good039_checked :
    goodSegmentCheck 135 44 95
      { lower := 5254, upper := 5371, witness := RowWitness.topPrime 5237 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good040_checked :
    goodSegmentCheck 135 44 95
      { lower := 5372, upper := 5485, witness := RowWitness.topPrime 5351 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good041_checked :
    goodSegmentCheck 135 44 95
      { lower := 5486, upper := 5617, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good042_checked :
    goodSegmentCheck 135 44 95
      { lower := 5618, upper := 5725, witness := RowWitness.topPrime 5591 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good043_checked :
    goodSegmentCheck 135 44 95
      { lower := 5726, upper := 5851, witness := RowWitness.topPrime 5717 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good044_checked :
    goodSegmentCheck 135 44 95
      { lower := 5852, upper := 5985, witness := RowWitness.topPrime 5851 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good045_checked :
    goodSegmentCheck 135 44 95
      { lower := 5986, upper := 6115, witness := RowWitness.topPrime 5981 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good046_checked :
    goodSegmentCheck 135 44 95
      { lower := 6116, upper := 6247, witness := RowWitness.topPrime 6113 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good047_checked :
    goodSegmentCheck 135 44 95
      { lower := 6248, upper := 6381, witness := RowWitness.topPrime 6247 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row135_good048_checked :
    goodSegmentCheck 135 44 95
      { lower := 6382, upper := 6513, witness := RowWitness.topPrime 6379 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good049_checked :
    goodSegmentCheck 135 44 95
      { lower := 6514, upper := 6625, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good050_checked :
    goodSegmentCheck 135 44 95
      { lower := 6626, upper := 6753, witness := RowWitness.topPrime 6619 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good051_checked :
    goodSegmentCheck 135 44 95
      { lower := 6754, upper := 6871, witness := RowWitness.topPrime 6737 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good052_checked :
    goodSegmentCheck 135 44 95
      { lower := 6872, upper := 7005, witness := RowWitness.topPrime 6871 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good053_checked :
    goodSegmentCheck 135 44 95
      { lower := 7006, upper := 7135, witness := RowWitness.topPrime 7001 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good054_checked :
    goodSegmentCheck 135 44 95
      { lower := 7136, upper := 7263, witness := RowWitness.topPrime 7129 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good055_checked :
    goodSegmentCheck 135 44 95
      { lower := 7264, upper := 7387, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good056_checked :
    goodSegmentCheck 135 44 95
      { lower := 7388, upper := 7503, witness := RowWitness.topPrime 7369 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good057_checked :
    goodSegmentCheck 135 44 95
      { lower := 7504, upper := 7633, witness := RowWitness.topPrime 7499 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good058_checked :
    goodSegmentCheck 135 44 95
      { lower := 7634, upper := 7755, witness := RowWitness.topPrime 7621 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good059_checked :
    goodSegmentCheck 135 44 95
      { lower := 7756, upper := 7887, witness := RowWitness.topPrime 7753 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good060_checked :
    goodSegmentCheck 135 44 95
      { lower := 7888, upper := 8017, witness := RowWitness.topPrime 7883 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good061_checked :
    goodSegmentCheck 135 44 95
      { lower := 8018, upper := 8151, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good062_checked :
    goodSegmentCheck 135 44 95
      { lower := 8152, upper := 8281, witness := RowWitness.topPrime 8147 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good063_checked :
    goodSegmentCheck 135 44 95
      { lower := 8282, upper := 8407, witness := RowWitness.topPrime 8273 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row135_good064_checked :
    goodSegmentCheck 135 44 95
      { lower := 8408, upper := 8523, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good065_checked :
    goodSegmentCheck 135 44 95
      { lower := 8524, upper := 8655, witness := RowWitness.topPrime 8521 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good066_checked :
    goodSegmentCheck 135 44 95
      { lower := 8656, upper := 8781, witness := RowWitness.topPrime 8647 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good067_checked :
    goodSegmentCheck 135 44 95
      { lower := 8782, upper := 8913, witness := RowWitness.topPrime 8779 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good068_checked :
    goodSegmentCheck 135 44 95
      { lower := 8914, upper := 9027, witness := RowWitness.topPrime 8893 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good069_checked :
    goodSegmentCheck 135 44 95
      { lower := 9028, upper := 9147, witness := RowWitness.topPrime 9013 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good070_checked :
    goodSegmentCheck 135 44 95
      { lower := 9148, upper := 9271, witness := RowWitness.topPrime 9137 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good071_checked :
    goodSegmentCheck 135 44 95
      { lower := 9272, upper := 9391, witness := RowWitness.topPrime 9257 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good072_checked :
    goodSegmentCheck 135 44 95
      { lower := 9392, upper := 9525, witness := RowWitness.topPrime 9391 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good073_checked :
    goodSegmentCheck 135 44 95
      { lower := 9526, upper := 9655, witness := RowWitness.topPrime 9521 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good074_checked :
    goodSegmentCheck 135 44 95
      { lower := 9656, upper := 9783, witness := RowWitness.topPrime 9649 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good075_checked :
    goodSegmentCheck 135 44 95
      { lower := 9784, upper := 9915, witness := RowWitness.topPrime 9781 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good076_checked :
    goodSegmentCheck 135 44 95
      { lower := 9916, upper := 10041, witness := RowWitness.topPrime 9907 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good077_checked :
    goodSegmentCheck 135 44 95
      { lower := 10042, upper := 10173, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good078_checked :
    goodSegmentCheck 135 44 95
      { lower := 10174, upper := 10303, witness := RowWitness.topPrime 10169 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good079_checked :
    goodSegmentCheck 135 44 95
      { lower := 10304, upper := 10437, witness := RowWitness.topPrime 10303 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row135_good080_checked :
    goodSegmentCheck 135 44 95
      { lower := 10438, upper := 10567, witness := RowWitness.topPrime 10433 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good081_checked :
    goodSegmentCheck 135 44 95
      { lower := 10568, upper := 10701, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good082_checked :
    goodSegmentCheck 135 44 95
      { lower := 10702, upper := 10825, witness := RowWitness.topPrime 10691 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good083_checked :
    goodSegmentCheck 135 44 95
      { lower := 10826, upper := 10933, witness := RowWitness.topPrime 10799 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good084_checked :
    goodSegmentCheck 135 44 95
      { lower := 10934, upper := 11043, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good085_checked :
    goodSegmentCheck 135 44 95
      { lower := 11044, upper := 11161, witness := RowWitness.topPrime 11027 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good086_checked :
    goodSegmentCheck 135 44 95
      { lower := 11162, upper := 11295, witness := RowWitness.topPrime 11161 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good087_checked :
    goodSegmentCheck 135 44 95
      { lower := 11296, upper := 11421, witness := RowWitness.topPrime 11287 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good088_checked :
    goodSegmentCheck 135 44 95
      { lower := 11422, upper := 11545, witness := RowWitness.topPrime 11411 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good089_checked :
    goodSegmentCheck 135 44 95
      { lower := 11546, upper := 11661, witness := RowWitness.topPrime 11527 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good090_checked :
    goodSegmentCheck 135 44 95
      { lower := 11662, upper := 11791, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good091_checked :
    goodSegmentCheck 135 44 95
      { lower := 11792, upper := 11923, witness := RowWitness.topPrime 11789 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good092_checked :
    goodSegmentCheck 135 44 95
      { lower := 11924, upper := 12057, witness := RowWitness.topPrime 11923 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good093_checked :
    goodSegmentCheck 135 44 95
      { lower := 12058, upper := 12183, witness := RowWitness.topPrime 12049 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good094_checked :
    goodSegmentCheck 135 44 95
      { lower := 12184, upper := 12297, witness := RowWitness.topPrime 12163 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good095_checked :
    goodSegmentCheck 135 44 95
      { lower := 12298, upper := 12423, witness := RowWitness.topPrime 12289 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row135_good096_checked :
    goodSegmentCheck 135 44 95
      { lower := 12424, upper := 12555, witness := RowWitness.topPrime 12421 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good097_checked :
    goodSegmentCheck 135 44 95
      { lower := 12556, upper := 12687, witness := RowWitness.topPrime 12553 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good098_checked :
    goodSegmentCheck 135 44 95
      { lower := 12688, upper := 12805, witness := RowWitness.topPrime 12671 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good099_checked :
    goodSegmentCheck 135 44 95
      { lower := 12806, upper := 12933, witness := RowWitness.topPrime 12799 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good100_checked :
    goodSegmentCheck 135 44 95
      { lower := 12934, upper := 13057, witness := RowWitness.topPrime 12923 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good101_checked :
    goodSegmentCheck 135 44 95
      { lower := 13058, upper := 13183, witness := RowWitness.topPrime 13049 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good102_checked :
    goodSegmentCheck 135 44 95
      { lower := 13184, upper := 13317, witness := RowWitness.topPrime 13183 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good103_checked :
    goodSegmentCheck 135 44 95
      { lower := 13318, upper := 13447, witness := RowWitness.topPrime 13313 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good104_checked :
    goodSegmentCheck 135 44 95
      { lower := 13448, upper := 13575, witness := RowWitness.topPrime 13441 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good105_checked :
    goodSegmentCheck 135 44 95
      { lower := 13576, upper := 13701, witness := RowWitness.topPrime 13567 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good106_checked :
    goodSegmentCheck 135 44 95
      { lower := 13702, upper := 13831, witness := RowWitness.topPrime 13697 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good107_checked :
    goodSegmentCheck 135 44 95
      { lower := 13832, upper := 13965, witness := RowWitness.topPrime 13831 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good108_checked :
    goodSegmentCheck 135 44 95
      { lower := 13966, upper := 14097, witness := RowWitness.topPrime 13963 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good109_checked :
    goodSegmentCheck 135 44 95
      { lower := 14098, upper := 14221, witness := RowWitness.topPrime 14087 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good110_checked :
    goodSegmentCheck 135 44 95
      { lower := 14222, upper := 14355, witness := RowWitness.topPrime 14221 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good111_checked :
    goodSegmentCheck 135 44 95
      { lower := 14356, upper := 14481, witness := RowWitness.topPrime 14347 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row135_good112_checked :
    goodSegmentCheck 135 44 95
      { lower := 14482, upper := 14613, witness := RowWitness.topPrime 14479 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good113_checked :
    goodSegmentCheck 135 44 95
      { lower := 14614, upper := 14727, witness := RowWitness.topPrime 14593 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good114_checked :
    goodSegmentCheck 135 44 95
      { lower := 14728, upper := 14857, witness := RowWitness.topPrime 14723 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good115_checked :
    goodSegmentCheck 135 44 95
      { lower := 14858, upper := 14985, witness := RowWitness.topPrime 14851 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good116_checked :
    goodSegmentCheck 135 44 95
      { lower := 14986, upper := 15117, witness := RowWitness.topPrime 14983 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good117_checked :
    goodSegmentCheck 135 44 95
      { lower := 15118, upper := 15241, witness := RowWitness.topPrime 15107 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good118_checked :
    goodSegmentCheck 135 44 95
      { lower := 15242, upper := 15375, witness := RowWitness.topPrime 15241 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good119_checked :
    goodSegmentCheck 135 44 95
      { lower := 15376, upper := 15507, witness := RowWitness.topPrime 15373 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good120_checked :
    goodSegmentCheck 135 44 95
      { lower := 15508, upper := 15631, witness := RowWitness.topPrime 15497 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good121_checked :
    goodSegmentCheck 135 44 95
      { lower := 15632, upper := 15763, witness := RowWitness.topPrime 15629 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good122_checked :
    goodSegmentCheck 135 44 95
      { lower := 15764, upper := 15895, witness := RowWitness.topPrime 15761 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good123_checked :
    goodSegmentCheck 135 44 95
      { lower := 15896, upper := 16023, witness := RowWitness.topPrime 15889 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good124_checked :
    goodSegmentCheck 135 44 95
      { lower := 16024, upper := 16141, witness := RowWitness.topPrime 16007 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good125_checked :
    goodSegmentCheck 135 44 95
      { lower := 16142, upper := 16275, witness := RowWitness.topPrime 16141 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good126_checked :
    goodSegmentCheck 135 44 95
      { lower := 16276, upper := 16407, witness := RowWitness.topPrime 16273 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good127_checked :
    goodSegmentCheck 135 44 95
      { lower := 16408, upper := 16515, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row135_good128_checked :
    goodSegmentCheck 135 44 95
      { lower := 16516, upper := 16627, witness := RowWitness.topPrime 16493 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good129_checked :
    goodSegmentCheck 135 44 95
      { lower := 16628, upper := 16753, witness := RowWitness.topPrime 16619 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good130_checked :
    goodSegmentCheck 135 44 95
      { lower := 16754, upper := 16881, witness := RowWitness.topPrime 16747 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good131_checked :
    goodSegmentCheck 135 44 95
      { lower := 16882, upper := 17013, witness := RowWitness.topPrime 16879 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good132_checked :
    goodSegmentCheck 135 44 95
      { lower := 17014, upper := 17145, witness := RowWitness.topPrime 17011 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good133_checked :
    goodSegmentCheck 135 44 95
      { lower := 17146, upper := 17271, witness := RowWitness.topPrime 17137 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good134_checked :
    goodSegmentCheck 135 44 95
      { lower := 17272, upper := 17391, witness := RowWitness.topPrime 17257 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good135_checked :
    goodSegmentCheck 135 44 95
      { lower := 17392, upper := 17523, witness := RowWitness.topPrime 17389 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good136_checked :
    goodSegmentCheck 135 44 95
      { lower := 17524, upper := 17653, witness := RowWitness.topPrime 17519 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good137_checked :
    goodSegmentCheck 135 44 95
      { lower := 17654, upper := 17761, witness := RowWitness.topPrime 17627 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good138_checked :
    goodSegmentCheck 135 44 95
      { lower := 17762, upper := 17895, witness := RowWitness.topPrime 17761 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good139_checked :
    goodSegmentCheck 135 44 95
      { lower := 17896, upper := 18025, witness := RowWitness.topPrime 17891 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good140_checked :
    goodSegmentCheck 135 44 95
      { lower := 18026, upper := 18089, witness := RowWitness.topPrime 18013 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good141_checked :
    goodSegmentCheck 135 44 95
      { lower := 18490, upper := 18615, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good142_checked :
    goodSegmentCheck 135 44 95
      { lower := 18616, upper := 18625, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good143_checked :
    goodSegmentCheck 135 44 95
      { lower := 18634, upper := 18751, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row135_good144_checked :
    goodSegmentCheck 135 44 95
      { lower := 18752, upper := 18768, witness := RowWitness.topPrime 18749 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good145_checked :
    goodSegmentCheck 135 44 95
      { lower := 18818, upper := 18857, witness := RowWitness.topPrime 18803 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good146_checked :
    goodSegmentCheck 135 44 95
      { lower := 19208, upper := 19300, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good147_checked :
    goodSegmentCheck 135 44 95
      { lower := 19663, upper := 19795, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good148_checked :
    goodSegmentCheck 135 44 95
      { lower := 19796, upper := 19797, witness := RowWitness.topPrime 19793 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good149_checked :
    goodSegmentCheck 135 44 95
      { lower := 19881, upper := 19907, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good150_checked :
    goodSegmentCheck 135 44 95
      { lower := 19965, upper := 20015, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good151_checked :
    goodSegmentCheck 135 44 95
      { lower := 20172, upper := 20295, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good152_checked :
    goodSegmentCheck 135 44 95
      { lower := 20296, upper := 20298, witness := RowWitness.topPrime 20287 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good153_checked :
    goodSegmentCheck 135 44 95
      { lower := 20402, upper := 20473, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good154_checked :
    goodSegmentCheck 135 44 95
      { lower := 20480, upper := 20613, witness := RowWitness.topPrime 20479 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good155_checked :
    goodSegmentCheck 135 44 95
      { lower := 20614, upper := 20711, witness := RowWitness.topPrime 20611 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good156_checked :
    goodSegmentCheck 135 44 95
      { lower := 21296, upper := 21417, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good157_checked :
    goodSegmentCheck 135 44 95
      { lower := 21418, upper := 21430, witness := RowWitness.topPrime 21407 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good158_checked :
    goodSegmentCheck 135 44 95
      { lower := 21904, upper := 22027, witness := RowWitness.topPrime 21893 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good159_checked :
    goodSegmentCheck 135 44 95
      { lower := 22028, upper := 22038, witness := RowWitness.topPrime 22027 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row135_good160_checked :
    goodSegmentCheck 135 44 95
      { lower := 22090, upper := 22104, witness := RowWitness.topPrime 22079 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good161_checked :
    goodSegmentCheck 135 44 95
      { lower := 22188, upper := 22224, witness := RowWitness.topPrime 22171 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good162_checked :
    goodSegmentCheck 135 44 95
      { lower := 22445, upper := 22460, witness := RowWitness.topPrime 22441 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good163_checked :
    goodSegmentCheck 135 44 95
      { lower := 22472, upper := 22603, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good164_checked :
    goodSegmentCheck 135 44 95
      { lower := 22604, upper := 22606, witness := RowWitness.topPrime 22573 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good165_checked :
    goodSegmentCheck 135 44 95
      { lower := 23763, upper := 23895, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good166_checked :
    goodSegmentCheck 135 44 95
      { lower := 23896, upper := 23896, witness := RowWitness.topPrime 23893 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good167_checked :
    goodSegmentCheck 135 44 95
      { lower := 24037, upper := 24144, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good168_checked :
    goodSegmentCheck 135 44 95
      { lower := 24167, upper := 24171, witness := RowWitness.topPrime 24151 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good169_checked :
    goodSegmentCheck 135 44 95
      { lower := 24299, upper := 24301, witness := RowWitness.topPrime 24281 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good170_checked :
    goodSegmentCheck 135 44 95
      { lower := 24334, upper := 24463, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good171_checked :
    goodSegmentCheck 135 44 95
      { lower := 24464, upper := 24501, witness := RowWitness.topPrime 24443 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good172_checked :
    goodSegmentCheck 135 44 95
      { lower := 24576, upper := 24699, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good173_checked :
    goodSegmentCheck 135 44 95
      { lower := 25215, upper := 25323, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good174_checked :
    goodSegmentCheck 135 44 95
      { lower := 25324, upper := 25349, witness := RowWitness.topPrime 25321 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good175_checked :
    goodSegmentCheck 135 44 95
      { lower := 26411, upper := 26498, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row135_good176_checked :
    goodSegmentCheck 135 44 95
      { lower := 26508, upper := 26545, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good177_checked :
    goodSegmentCheck 135 44 95
      { lower := 26624, upper := 26642, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good178_checked :
    goodSegmentCheck 135 44 95
      { lower := 26645, upper := 26758, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good179_checked :
    goodSegmentCheck 135 44 95
      { lower := 26934, upper := 27030, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good180_checked :
    goodSegmentCheck 135 44 95
      { lower := 27556, upper := 27570, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good181_checked :
    goodSegmentCheck 135 44 95
      { lower := 27848, upper := 27869, witness := RowWitness.topPrime 27847 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good182_checked :
    goodSegmentCheck 135 44 95
      { lower := 28672, upper := 28695, witness := RowWitness.topPrime 28669 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good183_checked :
    goodSegmentCheck 135 44 95
      { lower := 28717, upper := 28806, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good184_checked :
    goodSegmentCheck 135 44 95
      { lower := 28812, upper := 28851, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good185_checked :
    goodSegmentCheck 135 44 95
      { lower := 29584, upper := 29612, witness := RowWitness.topPrime 29581 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good186_checked :
    goodSegmentCheck 135 44 95
      { lower := 29791, upper := 29902, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good187_checked :
    goodSegmentCheck 135 44 95
      { lower := 30720, upper := 30737, witness := RowWitness.topPrime 30713 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good188_checked :
    goodSegmentCheck 135 44 95
      { lower := 30758, upper := 30854, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good189_checked :
    goodSegmentCheck 135 44 95
      { lower := 30926, upper := 31033, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good190_checked :
    goodSegmentCheck 135 44 95
      { lower := 31213, upper := 31327, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good191_checked :
    goodSegmentCheck 135 44 95
      { lower := 31328, upper := 31384, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row135_good192_checked :
    goodSegmentCheck 135 44 95
      { lower := 31423, upper := 31463, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good193_checked :
    goodSegmentCheck 135 44 95
      { lower := 33614, upper := 33623, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good194_checked :
    goodSegmentCheck 135 44 95
      { lower := 33708, upper := 33748, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good195_checked :
    goodSegmentCheck 135 44 95
      { lower := 34322, upper := 34453, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good196_checked :
    goodSegmentCheck 135 44 95
      { lower := 34454, upper := 34525, witness := RowWitness.topPrime 34439 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good197_checked :
    goodSegmentCheck 135 44 95
      { lower := 35344, upper := 35421, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good198_checked :
    goodSegmentCheck 135 44 95
      { lower := 36015, upper := 36046, witness := RowWitness.topPrime 36013 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good199_checked :
    goodSegmentCheck 135 44 95
      { lower := 37303, upper := 37344, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good200_checked :
    goodSegmentCheck 135 44 95
      { lower := 38307, upper := 38425, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good201_checked :
    goodSegmentCheck 135 44 95
      { lower := 40401, upper := 40462, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good202_checked :
    goodSegmentCheck 135 44 95
      { lower := 40931, upper := 40938, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good203_checked :
    goodSegmentCheck 135 44 95
      { lower := 40960, upper := 41065, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good204_checked :
    goodSegmentCheck 135 44 95
      { lower := 47526, upper := 47655, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good205_checked :
    goodSegmentCheck 135 44 95
      { lower := 47656, upper := 47658, witness := RowWitness.topPrime 47653 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good206_checked :
    goodSegmentCheck 135 44 95
      { lower := 48013, upper := 48095, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good207_checked :
    goodSegmentCheck 135 44 95
      { lower := 48778, upper := 48802, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row135_good208_checked :
    goodSegmentCheck 135 44 95
      { lower := 49152, upper := 49264, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good209_checked :
    goodSegmentCheck 135 44 95
      { lower := 50421, upper := 50544, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good210_checked :
    goodSegmentCheck 135 44 95
      { lower := 51076, upper := 51139, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good211_checked :
    goodSegmentCheck 135 44 95
      { lower := 55451, upper := 55575, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good212_checked :
    goodSegmentCheck 135 44 95
      { lower := 55576, upper := 55581, witness := RowWitness.topPrime 55547 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good213_checked :
    goodSegmentCheck 135 44 95
      { lower := 57245, upper := 57256, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good214_checked :
    goodSegmentCheck 135 44 95
      { lower := 57344, upper := 57379, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good215_checked :
    goodSegmentCheck 135 44 95
      { lower := 58619, upper := 58698, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good216_checked :
    goodSegmentCheck 135 44 95
      { lower := 63948, upper := 63979, witness := RowWitness.topPrime 63929 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good217_checked :
    goodSegmentCheck 135 44 95
      { lower := 68644, upper := 68773, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good218_checked :
    goodSegmentCheck 135 44 95
      { lower := 68774, upper := 68785, witness := RowWitness.topPrime 68771 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good219_checked :
    goodSegmentCheck 135 44 95
      { lower := 68921, upper := 69024, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good220_checked :
    goodSegmentCheck 135 44 95
      { lower := 71289, upper := 71421, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good221_checked :
    goodSegmentCheck 135 44 95
      { lower := 71422, upper := 71423, witness := RowWitness.topPrime 71419 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good222_checked :
    goodSegmentCheck 135 44 95
      { lower := 73205, upper := 73301, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good223_checked :
    goodSegmentCheck 135 44 95
      { lower := 85805, upper := 85817, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row135_good224_checked :
    goodSegmentCheck 135 44 95
      { lower := 89383, upper := 89507, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good225_checked :
    goodSegmentCheck 135 44 95
      { lower := 103041, upper := 103100, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good226_checked :
    goodSegmentCheck 135 44 95
      { lower := 148955, upper := 149011, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good226_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row135_goods_checked :
    row135.goods.all (goodSegmentCheck row135.height.i row135.height.r row135.height.s) = true := by
  change row135_goods.all (goodSegmentCheck 135 44 95) = true
  simp only [row135_goods, List.all_cons, List.all_nil,
    row135_good000_checked,
    row135_good001_checked,
    row135_good002_checked,
    row135_good003_checked,
    row135_good004_checked,
    row135_good005_checked,
    row135_good006_checked,
    row135_good007_checked,
    row135_good008_checked,
    row135_good009_checked,
    row135_good010_checked,
    row135_good011_checked,
    row135_good012_checked,
    row135_good013_checked,
    row135_good014_checked,
    row135_good015_checked,
    row135_good016_checked,
    row135_good017_checked,
    row135_good018_checked,
    row135_good019_checked,
    row135_good020_checked,
    row135_good021_checked,
    row135_good022_checked,
    row135_good023_checked,
    row135_good024_checked,
    row135_good025_checked,
    row135_good026_checked,
    row135_good027_checked,
    row135_good028_checked,
    row135_good029_checked,
    row135_good030_checked,
    row135_good031_checked,
    row135_good032_checked,
    row135_good033_checked,
    row135_good034_checked,
    row135_good035_checked,
    row135_good036_checked,
    row135_good037_checked,
    row135_good038_checked,
    row135_good039_checked,
    row135_good040_checked,
    row135_good041_checked,
    row135_good042_checked,
    row135_good043_checked,
    row135_good044_checked,
    row135_good045_checked,
    row135_good046_checked,
    row135_good047_checked,
    row135_good048_checked,
    row135_good049_checked,
    row135_good050_checked,
    row135_good051_checked,
    row135_good052_checked,
    row135_good053_checked,
    row135_good054_checked,
    row135_good055_checked,
    row135_good056_checked,
    row135_good057_checked,
    row135_good058_checked,
    row135_good059_checked,
    row135_good060_checked,
    row135_good061_checked,
    row135_good062_checked,
    row135_good063_checked,
    row135_good064_checked,
    row135_good065_checked,
    row135_good066_checked,
    row135_good067_checked,
    row135_good068_checked,
    row135_good069_checked,
    row135_good070_checked,
    row135_good071_checked,
    row135_good072_checked,
    row135_good073_checked,
    row135_good074_checked,
    row135_good075_checked,
    row135_good076_checked,
    row135_good077_checked,
    row135_good078_checked,
    row135_good079_checked,
    row135_good080_checked,
    row135_good081_checked,
    row135_good082_checked,
    row135_good083_checked,
    row135_good084_checked,
    row135_good085_checked,
    row135_good086_checked,
    row135_good087_checked,
    row135_good088_checked,
    row135_good089_checked,
    row135_good090_checked,
    row135_good091_checked,
    row135_good092_checked,
    row135_good093_checked,
    row135_good094_checked,
    row135_good095_checked,
    row135_good096_checked,
    row135_good097_checked,
    row135_good098_checked,
    row135_good099_checked,
    row135_good100_checked,
    row135_good101_checked,
    row135_good102_checked,
    row135_good103_checked,
    row135_good104_checked,
    row135_good105_checked,
    row135_good106_checked,
    row135_good107_checked,
    row135_good108_checked,
    row135_good109_checked,
    row135_good110_checked,
    row135_good111_checked,
    row135_good112_checked,
    row135_good113_checked,
    row135_good114_checked,
    row135_good115_checked,
    row135_good116_checked,
    row135_good117_checked,
    row135_good118_checked,
    row135_good119_checked,
    row135_good120_checked,
    row135_good121_checked,
    row135_good122_checked,
    row135_good123_checked,
    row135_good124_checked,
    row135_good125_checked,
    row135_good126_checked,
    row135_good127_checked,
    row135_good128_checked,
    row135_good129_checked,
    row135_good130_checked,
    row135_good131_checked,
    row135_good132_checked,
    row135_good133_checked,
    row135_good134_checked,
    row135_good135_checked,
    row135_good136_checked,
    row135_good137_checked,
    row135_good138_checked,
    row135_good139_checked,
    row135_good140_checked,
    row135_good141_checked,
    row135_good142_checked,
    row135_good143_checked,
    row135_good144_checked,
    row135_good145_checked,
    row135_good146_checked,
    row135_good147_checked,
    row135_good148_checked,
    row135_good149_checked,
    row135_good150_checked,
    row135_good151_checked,
    row135_good152_checked,
    row135_good153_checked,
    row135_good154_checked,
    row135_good155_checked,
    row135_good156_checked,
    row135_good157_checked,
    row135_good158_checked,
    row135_good159_checked,
    row135_good160_checked,
    row135_good161_checked,
    row135_good162_checked,
    row135_good163_checked,
    row135_good164_checked,
    row135_good165_checked,
    row135_good166_checked,
    row135_good167_checked,
    row135_good168_checked,
    row135_good169_checked,
    row135_good170_checked,
    row135_good171_checked,
    row135_good172_checked,
    row135_good173_checked,
    row135_good174_checked,
    row135_good175_checked,
    row135_good176_checked,
    row135_good177_checked,
    row135_good178_checked,
    row135_good179_checked,
    row135_good180_checked,
    row135_good181_checked,
    row135_good182_checked,
    row135_good183_checked,
    row135_good184_checked,
    row135_good185_checked,
    row135_good186_checked,
    row135_good187_checked,
    row135_good188_checked,
    row135_good189_checked,
    row135_good190_checked,
    row135_good191_checked,
    row135_good192_checked,
    row135_good193_checked,
    row135_good194_checked,
    row135_good195_checked,
    row135_good196_checked,
    row135_good197_checked,
    row135_good198_checked,
    row135_good199_checked,
    row135_good200_checked,
    row135_good201_checked,
    row135_good202_checked,
    row135_good203_checked,
    row135_good204_checked,
    row135_good205_checked,
    row135_good206_checked,
    row135_good207_checked,
    row135_good208_checked,
    row135_good209_checked,
    row135_good210_checked,
    row135_good211_checked,
    row135_good212_checked,
    row135_good213_checked,
    row135_good214_checked,
    row135_good215_checked,
    row135_good216_checked,
    row135_good217_checked,
    row135_good218_checked,
    row135_good219_checked,
    row135_good220_checked,
    row135_good221_checked,
    row135_good222_checked,
    row135_good223_checked,
    row135_good224_checked,
    row135_good225_checked,
    row135_good226_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row135_registered :
    decide (row135.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row135_small_checked :
    coverCheck (2 * row135.height.i + 2) (row135.height.i * (row135.height.i - 1) - 1)
      (row135.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row135_layerCover_checked :
    coverCheck (row135.height.i * (row135.height.i - 1)) (row135.height.n0 - 1)
      (row135.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row135_bounds : List NatInterval :=
  [(272, 405), (406, 535), (536, 657), (658, 787), (788, 921), (922, 1053), (1054, 1185), (1186, 1315), (1316, 1441), (1442, 1573), (1574, 1705), (1706, 1833), (1834, 1965), (1966, 2085), (2086, 2217), (2218, 2347), (2348, 2481), (2482, 2611), (2612, 2743), (2744, 2875), (2876, 2995), (2996, 3105), (3106, 3223), (3224, 3355), (3356, 3481), (3482, 3603), (3604, 3727), (3728, 3861), (3862, 3987), (3988, 4101), (4102, 4233), (4234, 4365), (4366, 4497), (4498, 4627), (4628, 4755), (4756, 4885), (4886, 5011), (5012, 5145), (5146, 5253), (5254, 5371), (5372, 5485), (5486, 5617), (5618, 5725), (5726, 5851), (5852, 5985), (5986, 6115), (6116, 6247), (6248, 6381), (6382, 6513), (6514, 6625), (6626, 6753), (6754, 6871), (6872, 7005), (7006, 7135), (7136, 7263), (7264, 7387), (7388, 7503), (7504, 7633), (7634, 7755), (7756, 7887), (7888, 8017), (8018, 8151), (8152, 8281), (8282, 8407), (8408, 8523), (8524, 8655), (8656, 8781), (8782, 8913), (8914, 9027), (9028, 9147), (9148, 9271), (9272, 9391), (9392, 9525), (9526, 9655), (9656, 9783), (9784, 9915), (9916, 10041), (10042, 10173), (10174, 10303), (10304, 10437), (10438, 10567), (10568, 10701), (10702, 10825), (10826, 10933), (10934, 11043), (11044, 11161), (11162, 11295), (11296, 11421), (11422, 11545), (11546, 11661), (11662, 11791), (11792, 11923), (11924, 12057), (12058, 12183), (12184, 12297), (12298, 12423), (12424, 12555), (12556, 12687), (12688, 12805), (12806, 12933), (12934, 13057), (13058, 13183), (13184, 13317), (13318, 13447), (13448, 13575), (13576, 13701), (13702, 13831), (13832, 13965), (13966, 14097), (14098, 14221), (14222, 14355), (14356, 14481), (14482, 14613), (14614, 14727), (14728, 14857), (14858, 14985), (14986, 15117), (15118, 15241), (15242, 15375), (15376, 15507), (15508, 15631), (15632, 15763), (15764, 15895), (15896, 16023), (16024, 16141), (16142, 16275), (16276, 16407), (16408, 16515), (16516, 16627), (16628, 16753), (16754, 16881), (16882, 17013), (17014, 17145), (17146, 17271), (17272, 17391), (17392, 17523), (17524, 17653), (17654, 17761), (17762, 17895), (17896, 18025), (18026, 18089), (18490, 18615), (18616, 18625), (18634, 18751), (18752, 18768), (18818, 18857), (19208, 19300), (19663, 19795), (19796, 19797), (19881, 19907), (19965, 20015), (20172, 20295), (20296, 20298), (20402, 20473), (20480, 20613), (20614, 20711), (21296, 21417), (21418, 21430), (21904, 22027), (22028, 22038), (22090, 22104), (22188, 22224), (22445, 22460), (22472, 22603), (22604, 22606), (23763, 23895), (23896, 23896), (24037, 24144), (24167, 24171), (24299, 24301), (24334, 24463), (24464, 24501), (24576, 24699), (25215, 25323), (25324, 25349), (26411, 26498), (26508, 26545), (26624, 26642), (26645, 26758), (26934, 27030), (27556, 27570), (27848, 27869), (28672, 28695), (28717, 28806), (28812, 28851), (29584, 29612), (29791, 29902), (30720, 30737), (30758, 30854), (30926, 31033), (31213, 31327), (31328, 31384), (31423, 31463), (33614, 33623), (33708, 33748), (34322, 34453), (34454, 34525), (35344, 35421), (36015, 36046), (37303, 37344), (38307, 38425), (40401, 40462), (40931, 40938), (40960, 41065), (47526, 47655), (47656, 47658), (48013, 48095), (48778, 48802), (49152, 49264), (50421, 50544), (51076, 51139), (55451, 55575), (55576, 55581), (57245, 57256), (57344, 57379), (58619, 58698), (63948, 63979), (68644, 68773), (68774, 68785), (68921, 69024), (71289, 71421), (71422, 71423), (73205, 73301), (85805, 85817), (89383, 89507), (103041, 103100), (148955, 149011)]

theorem row135_bounds_eq : row135.goods.map goodSegmentBounds = row135_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row135_layer000_intervals : List ColouredInterval :=
  [(2, 18432, 18566), (2, 20480, 20614), (2, 22528, 22662), (2, 24576, 24710), (2, 26624, 26758), (2, 28672, 28806), (2, 30720, 30854), (2, 32768, 32902), (2, 20480, 20614), (2, 24576, 24710), (2, 28672, 28806), (2, 32768, 32902), (2, 24576, 24710), (2, 32768, 32902), (2, 32768, 32902), (2, 32768, 32902), (5, 31250, 31384), (7, 19208, 19342), (7, 21609, 21743), (7, 24010, 24144), (7, 26411, 26545), (7, 28812, 28946), (7, 31213, 31347), (7, 33614, 33748), (7, 36015, 36149), (7, 33614, 33748), (11, 18634, 18768), (11, 19965, 20099), (11, 21296, 21430), (11, 29282, 29416), (13, 19773, 19907), (13, 21970, 22104), (13, 24167, 24301), (13, 26364, 26498), (13, 28561, 28695), (13, 30758, 30892), (13, 32955, 33089), (13, 35152, 35286), (13, 28561, 28695), (17, 19652, 19786), (17, 24565, 24699), (17, 29478, 29612), (17, 34391, 34525), (19, 20577, 20711), (19, 27436, 27570), (19, 34295, 34429), (23, 24334, 24468), (29, 24389, 24523), (31, 29791, 29925), (37, 19166, 19300), (37, 20535, 20669), (37, 21904, 22038), (41, 18491, 18625), (41, 20172, 20306), (41, 21853, 21987), (41, 23534, 23668), (41, 25215, 25349), (41, 26896, 27030), (43, 18490, 18624), (43, 20339, 20473), (43, 22188, 22322), (43, 24037, 24171), (43, 25886, 26020), (43, 27735, 27869), (43, 29584, 29718), (47, 19881, 20015), (47, 22090, 22224), (47, 24299, 24433), (47, 26508, 26642), (47, 28717, 28851), (47, 30926, 31060), (47, 33135, 33269), (47, 35344, 35478), (53, 19663, 19797), (53, 22472, 22606), (53, 25281, 25415), (53, 28090, 28224), (53, 30899, 31033), (53, 33708, 33842), (59, 20886, 21020), (59, 24367, 24501), (59, 27848, 27982), (59, 31329, 31463), (59, 34810, 34944), (61, 18605, 18739), (61, 22326, 22460), (61, 26047, 26181), (61, 29768, 29902), (61, 33489, 33623), (67, 18090, 18090), (67, 22445, 22579), (67, 26934, 27068), (67, 31423, 31557), (67, 35912, 36046), (71, 20164, 20298), (71, 25205, 25339), (71, 30246, 30380), (71, 35287, 35421), (73, 21316, 21450), (73, 26645, 26779), (73, 31974, 32108), (79, 18723, 18857), (79, 24964, 25098), (79, 31205, 31339), (83, 20667, 20801), (83, 27556, 27690), (83, 34445, 34579), (89, 23763, 23897), (89, 31684, 31818), (97, 18818, 18952), (97, 28227, 28361), (101, 20402, 20536), (101, 30603, 30737), (103, 21218, 21352), (103, 31827, 31961), (107, 22898, 23032), (107, 34347, 34481), (109, 23762, 23896), (109, 35643, 35777), (113, 25538, 25672), (127, 32258, 32392), (131, 34322, 34456)]

def row135_layer000_block000 : List ColouredInterval :=
  [(2, 18432, 18566), (2, 20480, 20614), (2, 22528, 22662), (2, 24576, 24710), (2, 26624, 26758), (2, 28672, 28806), (2, 30720, 30854), (2, 32768, 32902), (2, 20480, 20614), (2, 24576, 24710), (2, 28672, 28806), (2, 32768, 32902), (2, 24576, 24710), (2, 32768, 32902), (2, 32768, 32902), (2, 32768, 32902)]

def row135_layer000_block001 : List ColouredInterval :=
  [(5, 31250, 31384), (7, 19208, 19342), (7, 21609, 21743), (7, 24010, 24144), (7, 26411, 26545), (7, 28812, 28946), (7, 31213, 31347), (7, 33614, 33748), (7, 36015, 36149), (7, 33614, 33748), (11, 18634, 18768), (11, 19965, 20099), (11, 21296, 21430), (11, 29282, 29416), (13, 19773, 19907), (13, 21970, 22104)]

def row135_layer000_block002 : List ColouredInterval :=
  [(13, 24167, 24301), (13, 26364, 26498), (13, 28561, 28695), (13, 30758, 30892), (13, 32955, 33089), (13, 35152, 35286), (13, 28561, 28695), (17, 19652, 19786), (17, 24565, 24699), (17, 29478, 29612), (17, 34391, 34525), (19, 20577, 20711), (19, 27436, 27570), (19, 34295, 34429), (23, 24334, 24468), (29, 24389, 24523)]

def row135_layer000_block003 : List ColouredInterval :=
  [(31, 29791, 29925), (37, 19166, 19300), (37, 20535, 20669), (37, 21904, 22038), (41, 18491, 18625), (41, 20172, 20306), (41, 21853, 21987), (41, 23534, 23668), (41, 25215, 25349), (41, 26896, 27030), (43, 18490, 18624), (43, 20339, 20473), (43, 22188, 22322), (43, 24037, 24171), (43, 25886, 26020), (43, 27735, 27869)]

def row135_layer000_block004 : List ColouredInterval :=
  [(43, 29584, 29718), (47, 19881, 20015), (47, 22090, 22224), (47, 24299, 24433), (47, 26508, 26642), (47, 28717, 28851), (47, 30926, 31060), (47, 33135, 33269), (47, 35344, 35478), (53, 19663, 19797), (53, 22472, 22606), (53, 25281, 25415), (53, 28090, 28224), (53, 30899, 31033), (53, 33708, 33842), (59, 20886, 21020)]

def row135_layer000_block005 : List ColouredInterval :=
  [(59, 24367, 24501), (59, 27848, 27982), (59, 31329, 31463), (59, 34810, 34944), (61, 18605, 18739), (61, 22326, 22460), (61, 26047, 26181), (61, 29768, 29902), (61, 33489, 33623), (67, 18090, 18090), (67, 22445, 22579), (67, 26934, 27068), (67, 31423, 31557), (67, 35912, 36046), (71, 20164, 20298), (71, 25205, 25339)]

def row135_layer000_block006 : List ColouredInterval :=
  [(71, 30246, 30380), (71, 35287, 35421), (73, 21316, 21450), (73, 26645, 26779), (73, 31974, 32108), (79, 18723, 18857), (79, 24964, 25098), (79, 31205, 31339), (83, 20667, 20801), (83, 27556, 27690), (83, 34445, 34579), (89, 23763, 23897), (89, 31684, 31818), (97, 18818, 18952), (97, 28227, 28361), (101, 20402, 20536)]

def row135_layer000_block007 : List ColouredInterval :=
  [(101, 30603, 30737), (103, 21218, 21352), (103, 31827, 31961), (107, 22898, 23032), (107, 34347, 34481), (109, 23762, 23896), (109, 35643, 35777), (113, 25538, 25672), (127, 32258, 32392), (131, 34322, 34456)]

def row135_layer000_chunks : List (List ColouredInterval) :=
  [row135_layer000_block000, row135_layer000_block001, row135_layer000_block002, row135_layer000_block003, row135_layer000_block004, row135_layer000_block005, row135_layer000_block006, row135_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row135_layer000_arithmetic : LayerArithmeticValid row135.height { lower := 18090, upper := 36180, M := 16 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row135_layer000_enumeration :
    activePowerIntervalList 135 16 18090 36180 = row135_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row135_layer000_pairs000 :
    row135_layer000_block000.all (fun I => row135_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row135_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row135_layer000_pairs001 :
    row135_layer000_block001.all (fun I => row135_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row135_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row135_layer000_pairs002 :
    row135_layer000_block002.all (fun I => row135_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row135_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row135_layer000_pairs003 :
    row135_layer000_block003.all (fun I => row135_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row135_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row135_layer000_pairs004 :
    row135_layer000_block004.all (fun I => row135_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row135_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row135_layer000_pairs005 :
    row135_layer000_block005.all (fun I => row135_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row135_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row135_layer000_pairs006 :
    row135_layer000_block006.all (fun I => row135_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row135_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row135_layer000_pairs007 :
    row135_layer000_block007.all (fun I => row135_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row135_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row135_layer000_chunks_eq : row135_layer000_chunks.flatten = row135_layer000_intervals := by
  rfl

theorem row135_layer000_pairs : pairCoverCheck row135_layer000_intervals row135_bounds = true := by
  apply pairCoverCheck_of_chunks row135_layer000_chunks_eq
  intro block hblock
  simp only [row135_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row135_layer000_pairs000
  · exact row135_layer000_pairs001
  · exact row135_layer000_pairs002
  · exact row135_layer000_pairs003
  · exact row135_layer000_pairs004
  · exact row135_layer000_pairs005
  · exact row135_layer000_pairs006
  · exact row135_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row135_layer000_checked :
    coverLayerCheck row135.height row135.goods { lower := 18090, upper := 36180, M := 16 } = true := by
  exact coverLayerCheck_of_parts row135_layer000_arithmetic row135_layer000_enumeration row135_bounds_eq row135_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_layer000_checked
