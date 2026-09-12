import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

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


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_good000_checked :
    goodSegmentCheck 134 44 94
      { lower := 270, upper := 402, witness := RowWitness.topPrime 269 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good001_checked :
    goodSegmentCheck 134 44 94
      { lower := 403, upper := 534, witness := RowWitness.topPrime 401 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good002_checked :
    goodSegmentCheck 134 44 94
      { lower := 535, upper := 656, witness := RowWitness.topPrime 523 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good003_checked :
    goodSegmentCheck 134 44 94
      { lower := 657, upper := 786, witness := RowWitness.topPrime 653 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good004_checked :
    goodSegmentCheck 134 44 94
      { lower := 787, upper := 920, witness := RowWitness.topPrime 787 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good005_checked :
    goodSegmentCheck 134 44 94
      { lower := 921, upper := 1052, witness := RowWitness.topPrime 919 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good006_checked :
    goodSegmentCheck 134 44 94
      { lower := 1053, upper := 1184, witness := RowWitness.topPrime 1051 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good007_checked :
    goodSegmentCheck 134 44 94
      { lower := 1185, upper := 1314, witness := RowWitness.topPrime 1181 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good008_checked :
    goodSegmentCheck 134 44 94
      { lower := 1315, upper := 1440, witness := RowWitness.topPrime 1307 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good009_checked :
    goodSegmentCheck 134 44 94
      { lower := 1441, upper := 1572, witness := RowWitness.topPrime 1439 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good010_checked :
    goodSegmentCheck 134 44 94
      { lower := 1573, upper := 1704, witness := RowWitness.topPrime 1571 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good011_checked :
    goodSegmentCheck 134 44 94
      { lower := 1705, upper := 1832, witness := RowWitness.topPrime 1699 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good012_checked :
    goodSegmentCheck 134 44 94
      { lower := 1833, upper := 1964, witness := RowWitness.topPrime 1831 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good013_checked :
    goodSegmentCheck 134 44 94
      { lower := 1965, upper := 2084, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good014_checked :
    goodSegmentCheck 134 44 94
      { lower := 2085, upper := 2216, witness := RowWitness.topPrime 2083 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good015_checked :
    goodSegmentCheck 134 44 94
      { lower := 2217, upper := 2346, witness := RowWitness.topPrime 2213 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_good016_checked :
    goodSegmentCheck 134 44 94
      { lower := 2347, upper := 2480, witness := RowWitness.topPrime 2347 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good017_checked :
    goodSegmentCheck 134 44 94
      { lower := 2481, upper := 2610, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good018_checked :
    goodSegmentCheck 134 44 94
      { lower := 2611, upper := 2742, witness := RowWitness.topPrime 2609 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good019_checked :
    goodSegmentCheck 134 44 94
      { lower := 2743, upper := 2874, witness := RowWitness.topPrime 2741 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good020_checked :
    goodSegmentCheck 134 44 94
      { lower := 2875, upper := 2994, witness := RowWitness.topPrime 2861 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good021_checked :
    goodSegmentCheck 134 44 94
      { lower := 2995, upper := 3104, witness := RowWitness.topPrime 2971 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good022_checked :
    goodSegmentCheck 134 44 94
      { lower := 3105, upper := 3222, witness := RowWitness.topPrime 3089 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good023_checked :
    goodSegmentCheck 134 44 94
      { lower := 3223, upper := 3354, witness := RowWitness.topPrime 3221 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good024_checked :
    goodSegmentCheck 134 44 94
      { lower := 3355, upper := 3480, witness := RowWitness.topPrime 3347 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good025_checked :
    goodSegmentCheck 134 44 94
      { lower := 3481, upper := 3602, witness := RowWitness.topPrime 3469 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good026_checked :
    goodSegmentCheck 134 44 94
      { lower := 3603, upper := 3726, witness := RowWitness.topPrime 3593 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good027_checked :
    goodSegmentCheck 134 44 94
      { lower := 3727, upper := 3860, witness := RowWitness.topPrime 3727 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good028_checked :
    goodSegmentCheck 134 44 94
      { lower := 3861, upper := 3986, witness := RowWitness.topPrime 3853 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good029_checked :
    goodSegmentCheck 134 44 94
      { lower := 3987, upper := 4100, witness := RowWitness.topPrime 3967 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good030_checked :
    goodSegmentCheck 134 44 94
      { lower := 4101, upper := 4232, witness := RowWitness.topPrime 4099 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good031_checked :
    goodSegmentCheck 134 44 94
      { lower := 4233, upper := 4364, witness := RowWitness.topPrime 4231 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_good032_checked :
    goodSegmentCheck 134 44 94
      { lower := 4365, upper := 4496, witness := RowWitness.topPrime 4363 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good033_checked :
    goodSegmentCheck 134 44 94
      { lower := 4497, upper := 4626, witness := RowWitness.topPrime 4493 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good034_checked :
    goodSegmentCheck 134 44 94
      { lower := 4627, upper := 4754, witness := RowWitness.topPrime 4621 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good035_checked :
    goodSegmentCheck 134 44 94
      { lower := 4755, upper := 4884, witness := RowWitness.topPrime 4751 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good036_checked :
    goodSegmentCheck 134 44 94
      { lower := 4885, upper := 5010, witness := RowWitness.topPrime 4877 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good037_checked :
    goodSegmentCheck 134 44 94
      { lower := 5011, upper := 5144, witness := RowWitness.topPrime 5011 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good038_checked :
    goodSegmentCheck 134 44 94
      { lower := 5145, upper := 5252, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good039_checked :
    goodSegmentCheck 134 44 94
      { lower := 5253, upper := 5370, witness := RowWitness.topPrime 5237 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good040_checked :
    goodSegmentCheck 134 44 94
      { lower := 5371, upper := 5484, witness := RowWitness.topPrime 5351 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good041_checked :
    goodSegmentCheck 134 44 94
      { lower := 5485, upper := 5616, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good042_checked :
    goodSegmentCheck 134 44 94
      { lower := 5617, upper := 5724, witness := RowWitness.topPrime 5591 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good043_checked :
    goodSegmentCheck 134 44 94
      { lower := 5725, upper := 5850, witness := RowWitness.topPrime 5717 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good044_checked :
    goodSegmentCheck 134 44 94
      { lower := 5851, upper := 5984, witness := RowWitness.topPrime 5851 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good045_checked :
    goodSegmentCheck 134 44 94
      { lower := 5985, upper := 6114, witness := RowWitness.topPrime 5981 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good046_checked :
    goodSegmentCheck 134 44 94
      { lower := 6115, upper := 6246, witness := RowWitness.topPrime 6113 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good047_checked :
    goodSegmentCheck 134 44 94
      { lower := 6247, upper := 6380, witness := RowWitness.topPrime 6247 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_good048_checked :
    goodSegmentCheck 134 44 94
      { lower := 6381, upper := 6512, witness := RowWitness.topPrime 6379 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good049_checked :
    goodSegmentCheck 134 44 94
      { lower := 6513, upper := 6624, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good050_checked :
    goodSegmentCheck 134 44 94
      { lower := 6625, upper := 6752, witness := RowWitness.topPrime 6619 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good051_checked :
    goodSegmentCheck 134 44 94
      { lower := 6753, upper := 6870, witness := RowWitness.topPrime 6737 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good052_checked :
    goodSegmentCheck 134 44 94
      { lower := 6871, upper := 7004, witness := RowWitness.topPrime 6871 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good053_checked :
    goodSegmentCheck 134 44 94
      { lower := 7005, upper := 7134, witness := RowWitness.topPrime 7001 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good054_checked :
    goodSegmentCheck 134 44 94
      { lower := 7135, upper := 7262, witness := RowWitness.topPrime 7129 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good055_checked :
    goodSegmentCheck 134 44 94
      { lower := 7263, upper := 7386, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good056_checked :
    goodSegmentCheck 134 44 94
      { lower := 7387, upper := 7502, witness := RowWitness.topPrime 7369 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good057_checked :
    goodSegmentCheck 134 44 94
      { lower := 7503, upper := 7632, witness := RowWitness.topPrime 7499 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good058_checked :
    goodSegmentCheck 134 44 94
      { lower := 7633, upper := 7754, witness := RowWitness.topPrime 7621 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good059_checked :
    goodSegmentCheck 134 44 94
      { lower := 7755, upper := 7886, witness := RowWitness.topPrime 7753 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good060_checked :
    goodSegmentCheck 134 44 94
      { lower := 7887, upper := 8016, witness := RowWitness.topPrime 7883 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good061_checked :
    goodSegmentCheck 134 44 94
      { lower := 8017, upper := 8150, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good062_checked :
    goodSegmentCheck 134 44 94
      { lower := 8151, upper := 8280, witness := RowWitness.topPrime 8147 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good063_checked :
    goodSegmentCheck 134 44 94
      { lower := 8281, upper := 8406, witness := RowWitness.topPrime 8273 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_good064_checked :
    goodSegmentCheck 134 44 94
      { lower := 8407, upper := 8522, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good065_checked :
    goodSegmentCheck 134 44 94
      { lower := 8523, upper := 8654, witness := RowWitness.topPrime 8521 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good066_checked :
    goodSegmentCheck 134 44 94
      { lower := 8655, upper := 8780, witness := RowWitness.topPrime 8647 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good067_checked :
    goodSegmentCheck 134 44 94
      { lower := 8781, upper := 8912, witness := RowWitness.topPrime 8779 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good068_checked :
    goodSegmentCheck 134 44 94
      { lower := 8913, upper := 9026, witness := RowWitness.topPrime 8893 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good069_checked :
    goodSegmentCheck 134 44 94
      { lower := 9027, upper := 9146, witness := RowWitness.topPrime 9013 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good070_checked :
    goodSegmentCheck 134 44 94
      { lower := 9147, upper := 9270, witness := RowWitness.topPrime 9137 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good071_checked :
    goodSegmentCheck 134 44 94
      { lower := 9271, upper := 9390, witness := RowWitness.topPrime 9257 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good072_checked :
    goodSegmentCheck 134 44 94
      { lower := 9391, upper := 9524, witness := RowWitness.topPrime 9391 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good073_checked :
    goodSegmentCheck 134 44 94
      { lower := 9525, upper := 9654, witness := RowWitness.topPrime 9521 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good074_checked :
    goodSegmentCheck 134 44 94
      { lower := 9655, upper := 9782, witness := RowWitness.topPrime 9649 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good075_checked :
    goodSegmentCheck 134 44 94
      { lower := 9783, upper := 9914, witness := RowWitness.topPrime 9781 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good076_checked :
    goodSegmentCheck 134 44 94
      { lower := 9915, upper := 10040, witness := RowWitness.topPrime 9907 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good077_checked :
    goodSegmentCheck 134 44 94
      { lower := 10041, upper := 10172, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good078_checked :
    goodSegmentCheck 134 44 94
      { lower := 10173, upper := 10302, witness := RowWitness.topPrime 10169 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good079_checked :
    goodSegmentCheck 134 44 94
      { lower := 10303, upper := 10436, witness := RowWitness.topPrime 10303 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_good080_checked :
    goodSegmentCheck 134 44 94
      { lower := 10437, upper := 10566, witness := RowWitness.topPrime 10433 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good081_checked :
    goodSegmentCheck 134 44 94
      { lower := 10567, upper := 10700, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good082_checked :
    goodSegmentCheck 134 44 94
      { lower := 10701, upper := 10824, witness := RowWitness.topPrime 10691 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good083_checked :
    goodSegmentCheck 134 44 94
      { lower := 10825, upper := 10932, witness := RowWitness.topPrime 10799 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good084_checked :
    goodSegmentCheck 134 44 94
      { lower := 10933, upper := 11042, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good085_checked :
    goodSegmentCheck 134 44 94
      { lower := 11043, upper := 11160, witness := RowWitness.topPrime 11027 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good086_checked :
    goodSegmentCheck 134 44 94
      { lower := 11161, upper := 11294, witness := RowWitness.topPrime 11161 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good087_checked :
    goodSegmentCheck 134 44 94
      { lower := 11295, upper := 11420, witness := RowWitness.topPrime 11287 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good088_checked :
    goodSegmentCheck 134 44 94
      { lower := 11421, upper := 11544, witness := RowWitness.topPrime 11411 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good089_checked :
    goodSegmentCheck 134 44 94
      { lower := 11545, upper := 11660, witness := RowWitness.topPrime 11527 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good090_checked :
    goodSegmentCheck 134 44 94
      { lower := 11661, upper := 11790, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good091_checked :
    goodSegmentCheck 134 44 94
      { lower := 11791, upper := 11922, witness := RowWitness.topPrime 11789 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good092_checked :
    goodSegmentCheck 134 44 94
      { lower := 11923, upper := 12056, witness := RowWitness.topPrime 11923 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good093_checked :
    goodSegmentCheck 134 44 94
      { lower := 12057, upper := 12182, witness := RowWitness.topPrime 12049 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good094_checked :
    goodSegmentCheck 134 44 94
      { lower := 12183, upper := 12296, witness := RowWitness.topPrime 12163 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good095_checked :
    goodSegmentCheck 134 44 94
      { lower := 12297, upper := 12422, witness := RowWitness.topPrime 12289 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_good096_checked :
    goodSegmentCheck 134 44 94
      { lower := 12423, upper := 12554, witness := RowWitness.topPrime 12421 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good097_checked :
    goodSegmentCheck 134 44 94
      { lower := 12555, upper := 12686, witness := RowWitness.topPrime 12553 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good098_checked :
    goodSegmentCheck 134 44 94
      { lower := 12687, upper := 12804, witness := RowWitness.topPrime 12671 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good099_checked :
    goodSegmentCheck 134 44 94
      { lower := 12805, upper := 12932, witness := RowWitness.topPrime 12799 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good100_checked :
    goodSegmentCheck 134 44 94
      { lower := 12933, upper := 13056, witness := RowWitness.topPrime 12923 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good101_checked :
    goodSegmentCheck 134 44 94
      { lower := 13057, upper := 13182, witness := RowWitness.topPrime 13049 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good102_checked :
    goodSegmentCheck 134 44 94
      { lower := 13183, upper := 13316, witness := RowWitness.topPrime 13183 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good103_checked :
    goodSegmentCheck 134 44 94
      { lower := 13317, upper := 13446, witness := RowWitness.topPrime 13313 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good104_checked :
    goodSegmentCheck 134 44 94
      { lower := 13447, upper := 13574, witness := RowWitness.topPrime 13441 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good105_checked :
    goodSegmentCheck 134 44 94
      { lower := 13575, upper := 13700, witness := RowWitness.topPrime 13567 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good106_checked :
    goodSegmentCheck 134 44 94
      { lower := 13701, upper := 13830, witness := RowWitness.topPrime 13697 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good107_checked :
    goodSegmentCheck 134 44 94
      { lower := 13831, upper := 13964, witness := RowWitness.topPrime 13831 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good108_checked :
    goodSegmentCheck 134 44 94
      { lower := 13965, upper := 14096, witness := RowWitness.topPrime 13963 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good109_checked :
    goodSegmentCheck 134 44 94
      { lower := 14097, upper := 14220, witness := RowWitness.topPrime 14087 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good110_checked :
    goodSegmentCheck 134 44 94
      { lower := 14221, upper := 14354, witness := RowWitness.topPrime 14221 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good111_checked :
    goodSegmentCheck 134 44 94
      { lower := 14355, upper := 14480, witness := RowWitness.topPrime 14347 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_good112_checked :
    goodSegmentCheck 134 44 94
      { lower := 14481, upper := 14612, witness := RowWitness.topPrime 14479 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good113_checked :
    goodSegmentCheck 134 44 94
      { lower := 14613, upper := 14726, witness := RowWitness.topPrime 14593 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good114_checked :
    goodSegmentCheck 134 44 94
      { lower := 14727, upper := 14856, witness := RowWitness.topPrime 14723 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good115_checked :
    goodSegmentCheck 134 44 94
      { lower := 14857, upper := 14984, witness := RowWitness.topPrime 14851 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good116_checked :
    goodSegmentCheck 134 44 94
      { lower := 14985, upper := 15116, witness := RowWitness.topPrime 14983 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good117_checked :
    goodSegmentCheck 134 44 94
      { lower := 15117, upper := 15240, witness := RowWitness.topPrime 15107 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good118_checked :
    goodSegmentCheck 134 44 94
      { lower := 15241, upper := 15374, witness := RowWitness.topPrime 15241 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good119_checked :
    goodSegmentCheck 134 44 94
      { lower := 15375, upper := 15506, witness := RowWitness.topPrime 15373 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good120_checked :
    goodSegmentCheck 134 44 94
      { lower := 15507, upper := 15630, witness := RowWitness.topPrime 15497 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good121_checked :
    goodSegmentCheck 134 44 94
      { lower := 15631, upper := 15762, witness := RowWitness.topPrime 15629 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good122_checked :
    goodSegmentCheck 134 44 94
      { lower := 15763, upper := 15894, witness := RowWitness.topPrime 15761 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good123_checked :
    goodSegmentCheck 134 44 94
      { lower := 15895, upper := 16022, witness := RowWitness.topPrime 15889 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good124_checked :
    goodSegmentCheck 134 44 94
      { lower := 16023, upper := 16140, witness := RowWitness.topPrime 16007 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good125_checked :
    goodSegmentCheck 134 44 94
      { lower := 16141, upper := 16274, witness := RowWitness.topPrime 16141 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good126_checked :
    goodSegmentCheck 134 44 94
      { lower := 16275, upper := 16406, witness := RowWitness.topPrime 16273 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good127_checked :
    goodSegmentCheck 134 44 94
      { lower := 16407, upper := 16514, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_good128_checked :
    goodSegmentCheck 134 44 94
      { lower := 16515, upper := 16626, witness := RowWitness.topPrime 16493 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good129_checked :
    goodSegmentCheck 134 44 94
      { lower := 16627, upper := 16752, witness := RowWitness.topPrime 16619 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good130_checked :
    goodSegmentCheck 134 44 94
      { lower := 16753, upper := 16880, witness := RowWitness.topPrime 16747 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good131_checked :
    goodSegmentCheck 134 44 94
      { lower := 16881, upper := 17012, witness := RowWitness.topPrime 16879 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good132_checked :
    goodSegmentCheck 134 44 94
      { lower := 17013, upper := 17144, witness := RowWitness.topPrime 17011 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good133_checked :
    goodSegmentCheck 134 44 94
      { lower := 17145, upper := 17270, witness := RowWitness.topPrime 17137 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good134_checked :
    goodSegmentCheck 134 44 94
      { lower := 17271, upper := 17390, witness := RowWitness.topPrime 17257 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good135_checked :
    goodSegmentCheck 134 44 94
      { lower := 17391, upper := 17522, witness := RowWitness.topPrime 17389 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good136_checked :
    goodSegmentCheck 134 44 94
      { lower := 17523, upper := 17652, witness := RowWitness.topPrime 17519 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good137_checked :
    goodSegmentCheck 134 44 94
      { lower := 17653, upper := 17760, witness := RowWitness.topPrime 17627 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good138_checked :
    goodSegmentCheck 134 44 94
      { lower := 17761, upper := 17821, witness := RowWitness.topPrime 17761 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good139_checked :
    goodSegmentCheck 134 44 94
      { lower := 18491, upper := 18614, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good140_checked :
    goodSegmentCheck 134 44 94
      { lower := 18615, upper := 18624, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good141_checked :
    goodSegmentCheck 134 44 94
      { lower := 18634, upper := 18750, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good142_checked :
    goodSegmentCheck 134 44 94
      { lower := 18751, upper := 18882, witness := RowWitness.topPrime 18749 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good143_checked :
    goodSegmentCheck 134 44 94
      { lower := 18883, upper := 18883, witness := RowWitness.topPrime 18869 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_good144_checked :
    goodSegmentCheck 134 44 94
      { lower := 19208, upper := 19299, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good145_checked :
    goodSegmentCheck 134 44 94
      { lower := 19663, upper := 19794, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good146_checked :
    goodSegmentCheck 134 44 94
      { lower := 19795, upper := 19816, witness := RowWitness.topPrime 19793 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good147_checked :
    goodSegmentCheck 134 44 94
      { lower := 19881, upper := 19906, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good148_checked :
    goodSegmentCheck 134 44 94
      { lower := 19965, upper := 20014, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good149_checked :
    goodSegmentCheck 134 44 94
      { lower := 20172, upper := 20294, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good150_checked :
    goodSegmentCheck 134 44 94
      { lower := 20295, upper := 20297, witness := RowWitness.topPrime 20287 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good151_checked :
    goodSegmentCheck 134 44 94
      { lower := 20402, upper := 20472, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good152_checked :
    goodSegmentCheck 134 44 94
      { lower := 20480, upper := 20612, witness := RowWitness.topPrime 20479 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good153_checked :
    goodSegmentCheck 134 44 94
      { lower := 20613, upper := 20710, witness := RowWitness.topPrime 20611 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good154_checked :
    goodSegmentCheck 134 44 94
      { lower := 21296, upper := 21416, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good155_checked :
    goodSegmentCheck 134 44 94
      { lower := 21417, upper := 21429, witness := RowWitness.topPrime 21407 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good156_checked :
    goodSegmentCheck 134 44 94
      { lower := 21870, upper := 21996, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good157_checked :
    goodSegmentCheck 134 44 94
      { lower := 21997, upper := 22037, witness := RowWitness.topPrime 21997 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good158_checked :
    goodSegmentCheck 134 44 94
      { lower := 22090, upper := 22103, witness := RowWitness.topPrime 22079 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good159_checked :
    goodSegmentCheck 134 44 94
      { lower := 22188, upper := 22223, witness := RowWitness.topPrime 22171 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_good160_checked :
    goodSegmentCheck 134 44 94
      { lower := 23763, upper := 23894, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good161_checked :
    goodSegmentCheck 134 44 94
      { lower := 23895, upper := 23895, witness := RowWitness.topPrime 23893 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good162_checked :
    goodSegmentCheck 134 44 94
      { lower := 24037, upper := 24162, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good163_checked :
    goodSegmentCheck 134 44 94
      { lower := 24163, upper := 24190, witness := RowWitness.topPrime 24151 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good164_checked :
    goodSegmentCheck 134 44 94
      { lower := 24299, upper := 24300, witness := RowWitness.topPrime 24281 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good165_checked :
    goodSegmentCheck 134 44 94
      { lower := 24334, upper := 24462, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good166_checked :
    goodSegmentCheck 134 44 94
      { lower := 24463, upper := 24500, witness := RowWitness.topPrime 24443 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good167_checked :
    goodSegmentCheck 134 44 94
      { lower := 24576, upper := 24698, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good168_checked :
    goodSegmentCheck 134 44 94
      { lower := 25000, upper := 25097, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good169_checked :
    goodSegmentCheck 134 44 94
      { lower := 25215, upper := 25322, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good170_checked :
    goodSegmentCheck 134 44 94
      { lower := 25323, upper := 25348, witness := RowWitness.topPrime 25321 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good171_checked :
    goodSegmentCheck 134 44 94
      { lower := 26364, upper := 26377, witness := RowWitness.topPrime 26357 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good172_checked :
    goodSegmentCheck 134 44 94
      { lower := 26411, upper := 26497, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good173_checked :
    goodSegmentCheck 134 44 94
      { lower := 26508, upper := 26544, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good174_checked :
    goodSegmentCheck 134 44 94
      { lower := 27556, upper := 27569, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good175_checked :
    goodSegmentCheck 134 44 94
      { lower := 27848, upper := 27868, witness := RowWitness.topPrime 27847 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_good176_checked :
    goodSegmentCheck 134 44 94
      { lower := 28125, upper := 28223, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good177_checked :
    goodSegmentCheck 134 44 94
      { lower := 28227, upper := 28258, witness := RowWitness.topPrime 28219 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good178_checked :
    goodSegmentCheck 134 44 94
      { lower := 28561, upper := 28564, witness := RowWitness.topPrime 28559 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good179_checked :
    goodSegmentCheck 134 44 94
      { lower := 28577, upper := 28706, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good180_checked :
    goodSegmentCheck 134 44 94
      { lower := 28707, upper := 28710, witness := RowWitness.topPrime 28703 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good181_checked :
    goodSegmentCheck 134 44 94
      { lower := 28717, upper := 28805, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good182_checked :
    goodSegmentCheck 134 44 94
      { lower := 28812, upper := 28850, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good183_checked :
    goodSegmentCheck 134 44 94
      { lower := 29584, upper := 29611, witness := RowWitness.topPrime 29581 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good184_checked :
    goodSegmentCheck 134 44 94
      { lower := 29791, upper := 29901, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good185_checked :
    goodSegmentCheck 134 44 94
      { lower := 30618, upper := 30726, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good186_checked :
    goodSegmentCheck 134 44 94
      { lower := 30727, upper := 30736, witness := RowWitness.topPrime 30727 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good187_checked :
    goodSegmentCheck 134 44 94
      { lower := 30926, upper := 31032, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good188_checked :
    goodSegmentCheck 134 44 94
      { lower := 31213, upper := 31326, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good189_checked :
    goodSegmentCheck 134 44 94
      { lower := 31327, upper := 31383, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good190_checked :
    goodSegmentCheck 134 44 94
      { lower := 31433, upper := 31462, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good191_checked :
    goodSegmentCheck 134 44 94
      { lower := 32805, upper := 32901, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_good192_checked :
    goodSegmentCheck 134 44 94
      { lower := 33614, upper := 33622, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good193_checked :
    goodSegmentCheck 134 44 94
      { lower := 33708, upper := 33747, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good194_checked :
    goodSegmentCheck 134 44 94
      { lower := 34322, upper := 34452, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good195_checked :
    goodSegmentCheck 134 44 94
      { lower := 34453, upper := 34524, witness := RowWitness.topPrime 34439 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good196_checked :
    goodSegmentCheck 134 44 94
      { lower := 35344, upper := 35420, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good197_checked :
    goodSegmentCheck 134 44 94
      { lower := 36517, upper := 36630, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good198_checked :
    goodSegmentCheck 134 44 94
      { lower := 36631, upper := 36634, witness := RowWitness.topPrime 36629 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good199_checked :
    goodSegmentCheck 134 44 94
      { lower := 37303, upper := 37343, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good200_checked :
    goodSegmentCheck 134 44 94
      { lower := 37500, upper := 37579, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good201_checked :
    goodSegmentCheck 134 44 94
      { lower := 38307, upper := 38424, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good202_checked :
    goodSegmentCheck 134 44 94
      { lower := 39366, upper := 39437, witness := RowWitness.topPrime 39359 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good203_checked :
    goodSegmentCheck 134 44 94
      { lower := 40931, upper := 40937, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good204_checked :
    goodSegmentCheck 134 44 94
      { lower := 40960, upper := 41064, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good205_checked :
    goodSegmentCheck 134 44 94
      { lower := 45369, upper := 45386, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good206_checked :
    goodSegmentCheck 134 44 94
      { lower := 45927, upper := 45929, witness := RowWitness.topPrime 45893 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good207_checked :
    goodSegmentCheck 134 44 94
      { lower := 47526, upper := 47654, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_good208_checked :
    goodSegmentCheck 134 44 94
      { lower := 47655, upper := 47657, witness := RowWitness.topPrime 47653 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good209_checked :
    goodSegmentCheck 134 44 94
      { lower := 48013, upper := 48094, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good210_checked :
    goodSegmentCheck 134 44 94
      { lower := 48387, upper := 48506, witness := RowWitness.topPrime 48383 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good211_checked :
    goodSegmentCheck 134 44 94
      { lower := 48778, upper := 48801, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good212_checked :
    goodSegmentCheck 134 44 94
      { lower := 49152, upper := 49263, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good213_checked :
    goodSegmentCheck 134 44 94
      { lower := 50421, upper := 50543, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good214_checked :
    goodSegmentCheck 134 44 94
      { lower := 51076, upper := 51138, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good215_checked :
    goodSegmentCheck 134 44 94
      { lower := 55451, upper := 55574, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good216_checked :
    goodSegmentCheck 134 44 94
      { lower := 55575, upper := 55580, witness := RowWitness.topPrime 55547 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good217_checked :
    goodSegmentCheck 134 44 94
      { lower := 57245, upper := 57255, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good218_checked :
    goodSegmentCheck 134 44 94
      { lower := 58619, upper := 58697, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good219_checked :
    goodSegmentCheck 134 44 94
      { lower := 59049, upper := 59089, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good220_checked :
    goodSegmentCheck 134 44 94
      { lower := 62500, upper := 62543, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good221_checked :
    goodSegmentCheck 134 44 94
      { lower := 63869, upper := 63996, witness := RowWitness.topPrime 63863 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good222_checked :
    goodSegmentCheck 134 44 94
      { lower := 63997, upper := 64002, witness := RowWitness.topPrime 63997 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good223_checked :
    goodSegmentCheck 134 44 94
      { lower := 65536, upper := 65654, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_good224_checked :
    goodSegmentCheck 134 44 94
      { lower := 65655, upper := 65669, witness := RowWitness.topPrime 65651 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good225_checked :
    goodSegmentCheck 134 44 94
      { lower := 68644, upper := 68772, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good226_checked :
    goodSegmentCheck 134 44 94
      { lower := 68773, upper := 68784, witness := RowWitness.topPrime 68771 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good227_checked :
    goodSegmentCheck 134 44 94
      { lower := 68921, upper := 69023, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good228_checked :
    goodSegmentCheck 134 44 94
      { lower := 71289, upper := 71420, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good229_checked :
    goodSegmentCheck 134 44 94
      { lower := 71421, upper := 71422, witness := RowWitness.topPrime 71419 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good230_checked :
    goodSegmentCheck 134 44 94
      { lower := 73205, upper := 73300, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good231_checked :
    goodSegmentCheck 134 44 94
      { lower := 85805, upper := 85816, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good232_checked :
    goodSegmentCheck 134 44 94
      { lower := 89383, upper := 89506, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good233_checked :
    goodSegmentCheck 134 44 94
      { lower := 98415, upper := 98437, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good234_checked :
    goodSegmentCheck 134 44 94
      { lower := 103041, upper := 103099, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good235_checked :
    goodSegmentCheck 134 44 94
      { lower := 109503, upper := 109508, witness := RowWitness.topPrime 109481 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good236_checked :
    goodSegmentCheck 134 44 94
      { lower := 137842, upper := 137914, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row134_good237_checked :
    goodSegmentCheck 134 44 94
      { lower := 148955, upper := 149010, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 134) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_good237_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_goods_checked :
    row134.goods.all (goodSegmentCheck row134.height.i row134.height.r row134.height.s) = true := by
  change row134_goods.all (goodSegmentCheck 134 44 94) = true
  simp only [row134_goods, List.all_cons, List.all_nil,
    row134_good000_checked,
    row134_good001_checked,
    row134_good002_checked,
    row134_good003_checked,
    row134_good004_checked,
    row134_good005_checked,
    row134_good006_checked,
    row134_good007_checked,
    row134_good008_checked,
    row134_good009_checked,
    row134_good010_checked,
    row134_good011_checked,
    row134_good012_checked,
    row134_good013_checked,
    row134_good014_checked,
    row134_good015_checked,
    row134_good016_checked,
    row134_good017_checked,
    row134_good018_checked,
    row134_good019_checked,
    row134_good020_checked,
    row134_good021_checked,
    row134_good022_checked,
    row134_good023_checked,
    row134_good024_checked,
    row134_good025_checked,
    row134_good026_checked,
    row134_good027_checked,
    row134_good028_checked,
    row134_good029_checked,
    row134_good030_checked,
    row134_good031_checked,
    row134_good032_checked,
    row134_good033_checked,
    row134_good034_checked,
    row134_good035_checked,
    row134_good036_checked,
    row134_good037_checked,
    row134_good038_checked,
    row134_good039_checked,
    row134_good040_checked,
    row134_good041_checked,
    row134_good042_checked,
    row134_good043_checked,
    row134_good044_checked,
    row134_good045_checked,
    row134_good046_checked,
    row134_good047_checked,
    row134_good048_checked,
    row134_good049_checked,
    row134_good050_checked,
    row134_good051_checked,
    row134_good052_checked,
    row134_good053_checked,
    row134_good054_checked,
    row134_good055_checked,
    row134_good056_checked,
    row134_good057_checked,
    row134_good058_checked,
    row134_good059_checked,
    row134_good060_checked,
    row134_good061_checked,
    row134_good062_checked,
    row134_good063_checked,
    row134_good064_checked,
    row134_good065_checked,
    row134_good066_checked,
    row134_good067_checked,
    row134_good068_checked,
    row134_good069_checked,
    row134_good070_checked,
    row134_good071_checked,
    row134_good072_checked,
    row134_good073_checked,
    row134_good074_checked,
    row134_good075_checked,
    row134_good076_checked,
    row134_good077_checked,
    row134_good078_checked,
    row134_good079_checked,
    row134_good080_checked,
    row134_good081_checked,
    row134_good082_checked,
    row134_good083_checked,
    row134_good084_checked,
    row134_good085_checked,
    row134_good086_checked,
    row134_good087_checked,
    row134_good088_checked,
    row134_good089_checked,
    row134_good090_checked,
    row134_good091_checked,
    row134_good092_checked,
    row134_good093_checked,
    row134_good094_checked,
    row134_good095_checked,
    row134_good096_checked,
    row134_good097_checked,
    row134_good098_checked,
    row134_good099_checked,
    row134_good100_checked,
    row134_good101_checked,
    row134_good102_checked,
    row134_good103_checked,
    row134_good104_checked,
    row134_good105_checked,
    row134_good106_checked,
    row134_good107_checked,
    row134_good108_checked,
    row134_good109_checked,
    row134_good110_checked,
    row134_good111_checked,
    row134_good112_checked,
    row134_good113_checked,
    row134_good114_checked,
    row134_good115_checked,
    row134_good116_checked,
    row134_good117_checked,
    row134_good118_checked,
    row134_good119_checked,
    row134_good120_checked,
    row134_good121_checked,
    row134_good122_checked,
    row134_good123_checked,
    row134_good124_checked,
    row134_good125_checked,
    row134_good126_checked,
    row134_good127_checked,
    row134_good128_checked,
    row134_good129_checked,
    row134_good130_checked,
    row134_good131_checked,
    row134_good132_checked,
    row134_good133_checked,
    row134_good134_checked,
    row134_good135_checked,
    row134_good136_checked,
    row134_good137_checked,
    row134_good138_checked,
    row134_good139_checked,
    row134_good140_checked,
    row134_good141_checked,
    row134_good142_checked,
    row134_good143_checked,
    row134_good144_checked,
    row134_good145_checked,
    row134_good146_checked,
    row134_good147_checked,
    row134_good148_checked,
    row134_good149_checked,
    row134_good150_checked,
    row134_good151_checked,
    row134_good152_checked,
    row134_good153_checked,
    row134_good154_checked,
    row134_good155_checked,
    row134_good156_checked,
    row134_good157_checked,
    row134_good158_checked,
    row134_good159_checked,
    row134_good160_checked,
    row134_good161_checked,
    row134_good162_checked,
    row134_good163_checked,
    row134_good164_checked,
    row134_good165_checked,
    row134_good166_checked,
    row134_good167_checked,
    row134_good168_checked,
    row134_good169_checked,
    row134_good170_checked,
    row134_good171_checked,
    row134_good172_checked,
    row134_good173_checked,
    row134_good174_checked,
    row134_good175_checked,
    row134_good176_checked,
    row134_good177_checked,
    row134_good178_checked,
    row134_good179_checked,
    row134_good180_checked,
    row134_good181_checked,
    row134_good182_checked,
    row134_good183_checked,
    row134_good184_checked,
    row134_good185_checked,
    row134_good186_checked,
    row134_good187_checked,
    row134_good188_checked,
    row134_good189_checked,
    row134_good190_checked,
    row134_good191_checked,
    row134_good192_checked,
    row134_good193_checked,
    row134_good194_checked,
    row134_good195_checked,
    row134_good196_checked,
    row134_good197_checked,
    row134_good198_checked,
    row134_good199_checked,
    row134_good200_checked,
    row134_good201_checked,
    row134_good202_checked,
    row134_good203_checked,
    row134_good204_checked,
    row134_good205_checked,
    row134_good206_checked,
    row134_good207_checked,
    row134_good208_checked,
    row134_good209_checked,
    row134_good210_checked,
    row134_good211_checked,
    row134_good212_checked,
    row134_good213_checked,
    row134_good214_checked,
    row134_good215_checked,
    row134_good216_checked,
    row134_good217_checked,
    row134_good218_checked,
    row134_good219_checked,
    row134_good220_checked,
    row134_good221_checked,
    row134_good222_checked,
    row134_good223_checked,
    row134_good224_checked,
    row134_good225_checked,
    row134_good226_checked,
    row134_good227_checked,
    row134_good228_checked,
    row134_good229_checked,
    row134_good230_checked,
    row134_good231_checked,
    row134_good232_checked,
    row134_good233_checked,
    row134_good234_checked,
    row134_good235_checked,
    row134_good236_checked,
    row134_good237_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_registered :
    decide (row134.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row134_small_checked :
    coverCheck (2 * row134.height.i + 2) (row134.height.i * (row134.height.i - 1) - 1)
      (row134.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row134_layerCover_checked :
    coverCheck (row134.height.i * (row134.height.i - 1)) (row134.height.n0 - 1)
      (row134.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row134_bounds : List NatInterval :=
  [(270, 402), (403, 534), (535, 656), (657, 786), (787, 920), (921, 1052), (1053, 1184), (1185, 1314), (1315, 1440), (1441, 1572), (1573, 1704), (1705, 1832), (1833, 1964), (1965, 2084), (2085, 2216), (2217, 2346), (2347, 2480), (2481, 2610), (2611, 2742), (2743, 2874), (2875, 2994), (2995, 3104), (3105, 3222), (3223, 3354), (3355, 3480), (3481, 3602), (3603, 3726), (3727, 3860), (3861, 3986), (3987, 4100), (4101, 4232), (4233, 4364), (4365, 4496), (4497, 4626), (4627, 4754), (4755, 4884), (4885, 5010), (5011, 5144), (5145, 5252), (5253, 5370), (5371, 5484), (5485, 5616), (5617, 5724), (5725, 5850), (5851, 5984), (5985, 6114), (6115, 6246), (6247, 6380), (6381, 6512), (6513, 6624), (6625, 6752), (6753, 6870), (6871, 7004), (7005, 7134), (7135, 7262), (7263, 7386), (7387, 7502), (7503, 7632), (7633, 7754), (7755, 7886), (7887, 8016), (8017, 8150), (8151, 8280), (8281, 8406), (8407, 8522), (8523, 8654), (8655, 8780), (8781, 8912), (8913, 9026), (9027, 9146), (9147, 9270), (9271, 9390), (9391, 9524), (9525, 9654), (9655, 9782), (9783, 9914), (9915, 10040), (10041, 10172), (10173, 10302), (10303, 10436), (10437, 10566), (10567, 10700), (10701, 10824), (10825, 10932), (10933, 11042), (11043, 11160), (11161, 11294), (11295, 11420), (11421, 11544), (11545, 11660), (11661, 11790), (11791, 11922), (11923, 12056), (12057, 12182), (12183, 12296), (12297, 12422), (12423, 12554), (12555, 12686), (12687, 12804), (12805, 12932), (12933, 13056), (13057, 13182), (13183, 13316), (13317, 13446), (13447, 13574), (13575, 13700), (13701, 13830), (13831, 13964), (13965, 14096), (14097, 14220), (14221, 14354), (14355, 14480), (14481, 14612), (14613, 14726), (14727, 14856), (14857, 14984), (14985, 15116), (15117, 15240), (15241, 15374), (15375, 15506), (15507, 15630), (15631, 15762), (15763, 15894), (15895, 16022), (16023, 16140), (16141, 16274), (16275, 16406), (16407, 16514), (16515, 16626), (16627, 16752), (16753, 16880), (16881, 17012), (17013, 17144), (17145, 17270), (17271, 17390), (17391, 17522), (17523, 17652), (17653, 17760), (17761, 17821), (18491, 18614), (18615, 18624), (18634, 18750), (18751, 18882), (18883, 18883), (19208, 19299), (19663, 19794), (19795, 19816), (19881, 19906), (19965, 20014), (20172, 20294), (20295, 20297), (20402, 20472), (20480, 20612), (20613, 20710), (21296, 21416), (21417, 21429), (21870, 21996), (21997, 22037), (22090, 22103), (22188, 22223), (23763, 23894), (23895, 23895), (24037, 24162), (24163, 24190), (24299, 24300), (24334, 24462), (24463, 24500), (24576, 24698), (25000, 25097), (25215, 25322), (25323, 25348), (26364, 26377), (26411, 26497), (26508, 26544), (27556, 27569), (27848, 27868), (28125, 28223), (28227, 28258), (28561, 28564), (28577, 28706), (28707, 28710), (28717, 28805), (28812, 28850), (29584, 29611), (29791, 29901), (30618, 30726), (30727, 30736), (30926, 31032), (31213, 31326), (31327, 31383), (31433, 31462), (32805, 32901), (33614, 33622), (33708, 33747), (34322, 34452), (34453, 34524), (35344, 35420), (36517, 36630), (36631, 36634), (37303, 37343), (37500, 37579), (38307, 38424), (39366, 39437), (40931, 40937), (40960, 41064), (45369, 45386), (45927, 45929), (47526, 47654), (47655, 47657), (48013, 48094), (48387, 48506), (48778, 48801), (49152, 49263), (50421, 50543), (51076, 51138), (55451, 55574), (55575, 55580), (57245, 57255), (58619, 58697), (59049, 59089), (62500, 62543), (63869, 63996), (63997, 64002), (65536, 65654), (65655, 65669), (68644, 68772), (68773, 68784), (68921, 69023), (71289, 71420), (71421, 71422), (73205, 73300), (85805, 85816), (89383, 89506), (98415, 98437), (103041, 103099), (109503, 109508), (137842, 137914), (148955, 149010)]

theorem row134_bounds_eq : row134.goods.map goodSegmentBounds = row134_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row134_layer000_intervals : List ColouredInterval :=
  [(2, 20480, 20613), (2, 24576, 24709), (2, 28672, 28805), (2, 32768, 32901), (2, 24576, 24709), (2, 32768, 32901), (2, 32768, 32901), (2, 32768, 32901), (3, 19683, 19816), (3, 21870, 22003), (3, 24057, 24190), (3, 26244, 26377), (3, 28431, 28564), (3, 30618, 30751), (3, 32805, 32938), (3, 34992, 35125), (3, 19683, 19816), (3, 26244, 26377), (3, 32805, 32938), (3, 19683, 19816), (5, 18750, 18883), (5, 21875, 22008), (5, 25000, 25133), (5, 28125, 28258), (5, 31250, 31383), (5, 34375, 34508), (5, 31250, 31383), (7, 19208, 19341), (7, 21609, 21742), (7, 24010, 24143), (7, 26411, 26544), (7, 28812, 28945), (7, 31213, 31346), (7, 33614, 33747), (7, 33614, 33747), (11, 18634, 18767), (11, 19965, 20098), (11, 21296, 21429), (11, 22627, 22760), (11, 29282, 29415), (13, 19773, 19906), (13, 21970, 22103), (13, 24167, 24300), (13, 26364, 26497), (13, 28561, 28694), (13, 30758, 30891), (13, 32955, 33088), (13, 35152, 35285), (13, 28561, 28694), (17, 19652, 19785), (17, 24565, 24698), (17, 29478, 29611), (17, 34391, 34524), (19, 20577, 20710), (19, 27436, 27569), (19, 34295, 34428), (23, 24334, 24467), (29, 24389, 24522), (31, 29791, 29924), (37, 17822, 17930), (37, 19166, 19299), (37, 20535, 20668), (37, 21904, 22037), (37, 23273, 23406), (41, 18491, 18624), (41, 20172, 20305), (41, 21853, 21986), (41, 23534, 23667), (41, 25215, 25348), (41, 26896, 27029), (41, 28577, 28710), (43, 18490, 18623), (43, 20339, 20472), (43, 22188, 22321), (43, 24037, 24170), (43, 25886, 26019), (43, 27735, 27868), (43, 29584, 29717), (43, 31433, 31566), (47, 19881, 20014), (47, 22090, 22223), (47, 24299, 24432), (47, 26508, 26641), (47, 28717, 28850), (47, 30926, 31059), (47, 33135, 33268), (47, 35344, 35477), (53, 19663, 19796), (53, 22472, 22605), (53, 25281, 25414), (53, 28090, 28223), (53, 30899, 31032), (53, 33708, 33841), (59, 20886, 21019), (59, 24367, 24500), (59, 27848, 27981), (59, 31329, 31462), (59, 34810, 34943), (61, 18605, 18738), (61, 22326, 22459), (61, 26047, 26180), (61, 29768, 29901), (61, 33489, 33622), (71, 20164, 20297), (71, 25205, 25338), (71, 30246, 30379), (71, 35287, 35420), (73, 21316, 21449), (73, 26645, 26778), (73, 31974, 32107), (79, 18723, 18856), (79, 24964, 25097), (79, 31205, 31338), (83, 20667, 20800), (83, 27556, 27689), (83, 34445, 34578), (89, 23763, 23896), (89, 31684, 31817), (97, 18818, 18951), (97, 28227, 28360), (101, 20402, 20535), (101, 30603, 30736), (103, 21218, 21351), (103, 31827, 31960), (107, 22898, 23031), (107, 34347, 34480), (109, 23762, 23895), (109, 35643, 35643), (113, 25538, 25671), (127, 32258, 32391), (131, 34322, 34455)]

def row134_layer000_block000 : List ColouredInterval :=
  [(2, 20480, 20613), (2, 24576, 24709), (2, 28672, 28805), (2, 32768, 32901), (2, 24576, 24709), (2, 32768, 32901), (2, 32768, 32901), (2, 32768, 32901), (3, 19683, 19816), (3, 21870, 22003), (3, 24057, 24190), (3, 26244, 26377), (3, 28431, 28564), (3, 30618, 30751), (3, 32805, 32938)]

def row134_layer000_block001 : List ColouredInterval :=
  [(3, 34992, 35125), (3, 19683, 19816), (3, 26244, 26377), (3, 32805, 32938), (3, 19683, 19816), (5, 18750, 18883), (5, 21875, 22008), (5, 25000, 25133), (5, 28125, 28258), (5, 31250, 31383), (5, 34375, 34508), (5, 31250, 31383), (7, 19208, 19341), (7, 21609, 21742), (7, 24010, 24143)]

def row134_layer000_block002 : List ColouredInterval :=
  [(7, 26411, 26544), (7, 28812, 28945), (7, 31213, 31346), (7, 33614, 33747), (7, 33614, 33747), (11, 18634, 18767), (11, 19965, 20098), (11, 21296, 21429), (11, 22627, 22760), (11, 29282, 29415), (13, 19773, 19906), (13, 21970, 22103), (13, 24167, 24300), (13, 26364, 26497), (13, 28561, 28694)]

def row134_layer000_block003 : List ColouredInterval :=
  [(13, 30758, 30891), (13, 32955, 33088), (13, 35152, 35285), (13, 28561, 28694), (17, 19652, 19785), (17, 24565, 24698), (17, 29478, 29611), (17, 34391, 34524), (19, 20577, 20710), (19, 27436, 27569), (19, 34295, 34428), (23, 24334, 24467), (29, 24389, 24522), (31, 29791, 29924), (37, 17822, 17930)]

def row134_layer000_block004 : List ColouredInterval :=
  [(37, 19166, 19299), (37, 20535, 20668), (37, 21904, 22037), (37, 23273, 23406), (41, 18491, 18624), (41, 20172, 20305), (41, 21853, 21986), (41, 23534, 23667), (41, 25215, 25348), (41, 26896, 27029), (41, 28577, 28710), (43, 18490, 18623), (43, 20339, 20472), (43, 22188, 22321), (43, 24037, 24170)]

def row134_layer000_block005 : List ColouredInterval :=
  [(43, 25886, 26019), (43, 27735, 27868), (43, 29584, 29717), (43, 31433, 31566), (47, 19881, 20014), (47, 22090, 22223), (47, 24299, 24432), (47, 26508, 26641), (47, 28717, 28850), (47, 30926, 31059), (47, 33135, 33268), (47, 35344, 35477), (53, 19663, 19796), (53, 22472, 22605), (53, 25281, 25414)]

def row134_layer000_block006 : List ColouredInterval :=
  [(53, 28090, 28223), (53, 30899, 31032), (53, 33708, 33841), (59, 20886, 21019), (59, 24367, 24500), (59, 27848, 27981), (59, 31329, 31462), (59, 34810, 34943), (61, 18605, 18738), (61, 22326, 22459), (61, 26047, 26180), (61, 29768, 29901), (61, 33489, 33622), (71, 20164, 20297), (71, 25205, 25338)]

def row134_layer000_block007 : List ColouredInterval :=
  [(71, 30246, 30379), (71, 35287, 35420), (73, 21316, 21449), (73, 26645, 26778), (73, 31974, 32107), (79, 18723, 18856), (79, 24964, 25097), (79, 31205, 31338), (83, 20667, 20800), (83, 27556, 27689), (83, 34445, 34578), (89, 23763, 23896), (89, 31684, 31817), (97, 18818, 18951), (97, 28227, 28360)]

def row134_layer000_block008 : List ColouredInterval :=
  [(101, 20402, 20535), (101, 30603, 30736), (103, 21218, 21351), (103, 31827, 31960), (107, 22898, 23031), (107, 34347, 34480), (109, 23762, 23895), (109, 35643, 35643), (113, 25538, 25671), (127, 32258, 32391), (131, 34322, 34455)]

def row134_layer000_chunks : List (List ColouredInterval) :=
  [row134_layer000_block000, row134_layer000_block001, row134_layer000_block002, row134_layer000_block003, row134_layer000_block004, row134_layer000_block005, row134_layer000_block006, row134_layer000_block007, row134_layer000_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layer000_arithmetic : LayerArithmeticValid row134.height { lower := 17822, upper := 35644, M := 17 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layer000_enumeration :
    activePowerIntervalList 134 17 17822 35644 = row134_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layer000_pairs000 :
    row134_layer000_block000.all (fun I => row134_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row134_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layer000_pairs001 :
    row134_layer000_block001.all (fun I => row134_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row134_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layer000_pairs002 :
    row134_layer000_block002.all (fun I => row134_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row134_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layer000_pairs003 :
    row134_layer000_block003.all (fun I => row134_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row134_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layer000_pairs004 :
    row134_layer000_block004.all (fun I => row134_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row134_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layer000_pairs005 :
    row134_layer000_block005.all (fun I => row134_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row134_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layer000_pairs006 :
    row134_layer000_block006.all (fun I => row134_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row134_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layer000_pairs007 :
    row134_layer000_block007.all (fun I => row134_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row134_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layer000_pairs008 :
    row134_layer000_block008.all (fun I => row134_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row134_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer000_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layer000_chunks_eq : row134_layer000_chunks.flatten = row134_layer000_intervals := by
  rfl

theorem row134_layer000_pairs : pairCoverCheck row134_layer000_intervals row134_bounds = true := by
  apply pairCoverCheck_of_chunks row134_layer000_chunks_eq
  intro block hblock
  simp only [row134_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row134_layer000_pairs000
  · exact row134_layer000_pairs001
  · exact row134_layer000_pairs002
  · exact row134_layer000_pairs003
  · exact row134_layer000_pairs004
  · exact row134_layer000_pairs005
  · exact row134_layer000_pairs006
  · exact row134_layer000_pairs007
  · exact row134_layer000_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer000_pairs
