import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row133_height : HeightCertificateDatum := { i := 133, r := 44, s := 94, n0Power10 := 8 }

def row133_goods : List GoodSegment := [
  { lower := 268, upper := 395, witness := RowWitness.topPrime 263 },
  { lower := 396, upper := 521, witness := RowWitness.topPrime 389 },
  { lower := 522, upper := 653, witness := RowWitness.topPrime 521 },
  { lower := 654, upper := 785, witness := RowWitness.topPrime 653 },
  { lower := 786, upper := 905, witness := RowWitness.topPrime 773 },
  { lower := 906, upper := 1019, witness := RowWitness.topPrime 887 },
  { lower := 1020, upper := 1151, witness := RowWitness.topPrime 1019 },
  { lower := 1152, upper := 1283, witness := RowWitness.topPrime 1151 },
  { lower := 1284, upper := 1415, witness := RowWitness.topPrime 1283 },
  { lower := 1416, upper := 1541, witness := RowWitness.topPrime 1409 },
  { lower := 1542, upper := 1663, witness := RowWitness.topPrime 1531 },
  { lower := 1664, upper := 1795, witness := RowWitness.topPrime 1663 },
  { lower := 1796, upper := 1921, witness := RowWitness.topPrime 1789 },
  { lower := 1922, upper := 2045, witness := RowWitness.topPrime 1913 },
  { lower := 2046, upper := 2171, witness := RowWitness.topPrime 2039 },
  { lower := 2172, upper := 2293, witness := RowWitness.topPrime 2161 },
  { lower := 2294, upper := 2425, witness := RowWitness.topPrime 2293 },
  { lower := 2426, upper := 2555, witness := RowWitness.topPrime 2423 },
  { lower := 2556, upper := 2683, witness := RowWitness.topPrime 2551 },
  { lower := 2684, upper := 2815, witness := RowWitness.topPrime 2683 },
  { lower := 2816, upper := 2935, witness := RowWitness.topPrime 2803 },
  { lower := 2936, upper := 3059, witness := RowWitness.topPrime 2927 },
  { lower := 3060, upper := 3181, witness := RowWitness.topPrime 3049 },
  { lower := 3182, upper := 3313, witness := RowWitness.topPrime 3181 },
  { lower := 3314, upper := 3445, witness := RowWitness.topPrime 3313 },
  { lower := 3446, upper := 3565, witness := RowWitness.topPrime 3433 },
  { lower := 3566, upper := 3691, witness := RowWitness.topPrime 3559 },
  { lower := 3692, upper := 3823, witness := RowWitness.topPrime 3691 },
  { lower := 3824, upper := 3955, witness := RowWitness.topPrime 3823 },
  { lower := 3956, upper := 4079, witness := RowWitness.topPrime 3947 },
  { lower := 4080, upper := 4211, witness := RowWitness.topPrime 4079 },
  { lower := 4212, upper := 4343, witness := RowWitness.topPrime 4211 },
  { lower := 4344, upper := 4471, witness := RowWitness.topPrime 4339 },
  { lower := 4472, upper := 4595, witness := RowWitness.topPrime 4463 },
  { lower := 4596, upper := 4723, witness := RowWitness.topPrime 4591 },
  { lower := 4724, upper := 4855, witness := RowWitness.topPrime 4723 },
  { lower := 4856, upper := 4963, witness := RowWitness.topPrime 4831 },
  { lower := 4964, upper := 5089, witness := RowWitness.topPrime 4957 },
  { lower := 5090, upper := 5219, witness := RowWitness.topPrime 5087 },
  { lower := 5220, upper := 5341, witness := RowWitness.topPrime 5209 },
  { lower := 5342, upper := 5465, witness := RowWitness.topPrime 5333 },
  { lower := 5466, upper := 5581, witness := RowWitness.topPrime 5449 },
  { lower := 5582, upper := 5713, witness := RowWitness.topPrime 5581 },
  { lower := 5714, upper := 5843, witness := RowWitness.topPrime 5711 },
  { lower := 5844, upper := 5975, witness := RowWitness.topPrime 5843 },
  { lower := 5976, upper := 6085, witness := RowWitness.topPrime 5953 },
  { lower := 6086, upper := 6211, witness := RowWitness.topPrime 6079 },
  { lower := 6212, upper := 6343, witness := RowWitness.topPrime 6211 },
  { lower := 6344, upper := 6475, witness := RowWitness.topPrime 6343 },
  { lower := 6476, upper := 6605, witness := RowWitness.topPrime 6473 },
  { lower := 6606, upper := 6731, witness := RowWitness.topPrime 6599 },
  { lower := 6732, upper := 6851, witness := RowWitness.topPrime 6719 },
  { lower := 6852, upper := 6973, witness := RowWitness.topPrime 6841 },
  { lower := 6974, upper := 7103, witness := RowWitness.topPrime 6971 },
  { lower := 7104, upper := 7235, witness := RowWitness.topPrime 7103 },
  { lower := 7236, upper := 7361, witness := RowWitness.topPrime 7229 },
  { lower := 7362, upper := 7483, witness := RowWitness.topPrime 7351 },
  { lower := 7484, upper := 7613, witness := RowWitness.topPrime 7481 },
  { lower := 7614, upper := 7739, witness := RowWitness.topPrime 7607 },
  { lower := 7740, upper := 7859, witness := RowWitness.topPrime 7727 },
  { lower := 7860, upper := 7985, witness := RowWitness.topPrime 7853 },
  { lower := 7986, upper := 8095, witness := RowWitness.topPrime 7963 },
  { lower := 8096, upper := 8225, witness := RowWitness.topPrime 8093 },
  { lower := 8226, upper := 8353, witness := RowWitness.topPrime 8221 },
  { lower := 8354, upper := 8485, witness := RowWitness.topPrime 8353 },
  { lower := 8486, upper := 8599, witness := RowWitness.topPrime 8467 },
  { lower := 8600, upper := 8731, witness := RowWitness.topPrime 8599 },
  { lower := 8732, upper := 8863, witness := RowWitness.topPrime 8731 },
  { lower := 8864, upper := 8995, witness := RowWitness.topPrime 8863 },
  { lower := 8996, upper := 9103, witness := RowWitness.topPrime 8971 },
  { lower := 9104, upper := 9235, witness := RowWitness.topPrime 9103 },
  { lower := 9236, upper := 9359, witness := RowWitness.topPrime 9227 },
  { lower := 9360, upper := 9481, witness := RowWitness.topPrime 9349 },
  { lower := 9482, upper := 9611, witness := RowWitness.topPrime 9479 },
  { lower := 9612, upper := 9733, witness := RowWitness.topPrime 9601 },
  { lower := 9734, upper := 9865, witness := RowWitness.topPrime 9733 },
  { lower := 9866, upper := 9991, witness := RowWitness.topPrime 9859 },
  { lower := 9992, upper := 10105, witness := RowWitness.topPrime 9973 },
  { lower := 10106, upper := 10235, witness := RowWitness.topPrime 10103 },
  { lower := 10236, upper := 10355, witness := RowWitness.topPrime 10223 },
  { lower := 10356, upper := 10475, witness := RowWitness.topPrime 10343 },
  { lower := 10476, upper := 10595, witness := RowWitness.topPrime 10463 },
  { lower := 10596, upper := 10721, witness := RowWitness.topPrime 10589 },
  { lower := 10722, upper := 10843, witness := RowWitness.topPrime 10711 },
  { lower := 10844, upper := 10969, witness := RowWitness.topPrime 10837 },
  { lower := 10970, upper := 11089, witness := RowWitness.topPrime 10957 },
  { lower := 11090, upper := 11219, witness := RowWitness.topPrime 11087 },
  { lower := 11220, upper := 11345, witness := RowWitness.topPrime 11213 },
  { lower := 11346, upper := 11461, witness := RowWitness.topPrime 11329 },
  { lower := 11462, upper := 11579, witness := RowWitness.topPrime 11447 },
  { lower := 11580, upper := 11711, witness := RowWitness.topPrime 11579 },
  { lower := 11712, upper := 11833, witness := RowWitness.topPrime 11701 },
  { lower := 11834, upper := 11965, witness := RowWitness.topPrime 11833 },
  { lower := 11966, upper := 12091, witness := RowWitness.topPrime 11959 },
  { lower := 12092, upper := 12205, witness := RowWitness.topPrime 12073 },
  { lower := 12206, upper := 12335, witness := RowWitness.topPrime 12203 },
  { lower := 12336, upper := 12461, witness := RowWitness.topPrime 12329 },
  { lower := 12462, upper := 12589, witness := RowWitness.topPrime 12457 },
  { lower := 12590, upper := 12721, witness := RowWitness.topPrime 12589 },
  { lower := 12722, upper := 12853, witness := RowWitness.topPrime 12721 },
  { lower := 12854, upper := 12985, witness := RowWitness.topPrime 12853 },
  { lower := 12986, upper := 13115, witness := RowWitness.topPrime 12983 },
  { lower := 13116, upper := 13241, witness := RowWitness.topPrime 13109 },
  { lower := 13242, upper := 13373, witness := RowWitness.topPrime 13241 },
  { lower := 13374, upper := 13499, witness := RowWitness.topPrime 13367 },
  { lower := 13500, upper := 13631, witness := RowWitness.topPrime 13499 },
  { lower := 13632, upper := 13759, witness := RowWitness.topPrime 13627 },
  { lower := 13760, upper := 13891, witness := RowWitness.topPrime 13759 },
  { lower := 13892, upper := 14015, witness := RowWitness.topPrime 13883 },
  { lower := 14016, upper := 14143, witness := RowWitness.topPrime 14011 },
  { lower := 14144, upper := 14275, witness := RowWitness.topPrime 14143 },
  { lower := 14276, upper := 14383, witness := RowWitness.topPrime 14251 },
  { lower := 14384, upper := 14501, witness := RowWitness.topPrime 14369 },
  { lower := 14502, upper := 14621, witness := RowWitness.topPrime 14489 },
  { lower := 14622, upper := 14753, witness := RowWitness.topPrime 14621 },
  { lower := 14754, upper := 14885, witness := RowWitness.topPrime 14753 },
  { lower := 14886, upper := 15011, witness := RowWitness.topPrime 14879 },
  { lower := 15012, upper := 15115, witness := RowWitness.topPrime 14983 },
  { lower := 15116, upper := 15239, witness := RowWitness.topPrime 15107 },
  { lower := 15240, upper := 15365, witness := RowWitness.topPrime 15233 },
  { lower := 15366, upper := 15493, witness := RowWitness.topPrime 15361 },
  { lower := 15494, upper := 15625, witness := RowWitness.topPrime 15493 },
  { lower := 15626, upper := 15751, witness := RowWitness.topPrime 15619 },
  { lower := 15752, upper := 15881, witness := RowWitness.topPrime 15749 },
  { lower := 15882, upper := 16013, witness := RowWitness.topPrime 15881 },
  { lower := 16014, upper := 16139, witness := RowWitness.topPrime 16007 },
  { lower := 16140, upper := 16271, witness := RowWitness.topPrime 16139 },
  { lower := 16272, upper := 16399, witness := RowWitness.topPrime 16267 },
  { lower := 16400, upper := 16513, witness := RowWitness.topPrime 16381 },
  { lower := 16514, upper := 16625, witness := RowWitness.topPrime 16493 },
  { lower := 16626, upper := 16751, witness := RowWitness.topPrime 16619 },
  { lower := 16752, upper := 16879, witness := RowWitness.topPrime 16747 },
  { lower := 16880, upper := 17011, witness := RowWitness.topPrime 16879 },
  { lower := 17012, upper := 17143, witness := RowWitness.topPrime 17011 },
  { lower := 17144, upper := 17269, witness := RowWitness.topPrime 17137 },
  { lower := 17270, upper := 17389, witness := RowWitness.topPrime 17257 },
  { lower := 17390, upper := 17521, witness := RowWitness.topPrime 17389 },
  { lower := 17522, upper := 17555, witness := RowWitness.topPrime 17519 },
  { lower := 17576, upper := 17628, witness := RowWitness.topPrime 17573 },
  { lower := 17672, upper := 17708, witness := RowWitness.topPrime 17669 },
  { lower := 17797, upper := 17804, witness := RowWitness.topPrime 17791 },
  { lower := 18490, upper := 18613, witness := RowWitness.topPrime 18481 },
  { lower := 18614, upper := 18623, witness := RowWitness.topPrime 18593 },
  { lower := 18634, upper := 18749, witness := RowWitness.topPrime 18617 },
  { lower := 18750, upper := 18881, witness := RowWitness.topPrime 18749 },
  { lower := 18882, upper := 18882, witness := RowWitness.topPrime 18869 },
  { lower := 19663, upper := 19793, witness := RowWitness.topPrime 19661 },
  { lower := 19794, upper := 19815, witness := RowWitness.topPrime 19793 },
  { lower := 19881, upper := 19905, witness := RowWitness.topPrime 19867 },
  { lower := 19965, upper := 20013, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20293, witness := RowWitness.topPrime 20161 },
  { lower := 20294, upper := 20296, witness := RowWitness.topPrime 20287 },
  { lower := 20402, upper := 20471, witness := RowWitness.topPrime 20399 },
  { lower := 20480, upper := 20611, witness := RowWitness.topPrime 20479 },
  { lower := 20612, upper := 20612, witness := RowWitness.topPrime 20611 },
  { lower := 20667, upper := 20667, witness := RowWitness.topPrime 20663 },
  { lower := 21296, upper := 21415, witness := RowWitness.topPrime 21283 },
  { lower := 21416, upper := 21428, witness := RowWitness.topPrime 21407 },
  { lower := 21870, upper := 21995, witness := RowWitness.topPrime 21863 },
  { lower := 21996, upper := 22036, witness := RowWitness.topPrime 21991 },
  { lower := 22090, upper := 22102, witness := RowWitness.topPrime 22079 },
  { lower := 22188, upper := 22222, witness := RowWitness.topPrime 22171 },
  { lower := 22445, upper := 22458, witness := RowWitness.topPrime 22441 },
  { lower := 22472, upper := 22601, witness := RowWitness.topPrime 22469 },
  { lower := 22602, upper := 22604, witness := RowWitness.topPrime 22573 },
  { lower := 22627, upper := 22660, witness := RowWitness.topPrime 22621 },
  { lower := 23763, upper := 23893, witness := RowWitness.topPrime 23761 },
  { lower := 23894, upper := 23894, witness := RowWitness.topPrime 23893 },
  { lower := 24037, upper := 24161, witness := RowWitness.topPrime 24029 },
  { lower := 24162, upper := 24189, witness := RowWitness.topPrime 24151 },
  { lower := 24299, upper := 24299, witness := RowWitness.topPrime 24281 },
  { lower := 24334, upper := 24461, witness := RowWitness.topPrime 24329 },
  { lower := 24462, upper := 24499, witness := RowWitness.topPrime 24443 },
  { lower := 24576, upper := 24703, witness := RowWitness.topPrime 24571 },
  { lower := 24704, upper := 24708, witness := RowWitness.topPrime 24697 },
  { lower := 25000, upper := 25096, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25321, witness := RowWitness.topPrime 25189 },
  { lower := 25322, upper := 25347, witness := RowWitness.topPrime 25321 },
  { lower := 26364, upper := 26376, witness := RowWitness.topPrime 26357 },
  { lower := 26624, upper := 26640, witness := RowWitness.topPrime 26597 },
  { lower := 26645, upper := 26756, witness := RowWitness.topPrime 26641 },
  { lower := 26934, upper := 27028, witness := RowWitness.topPrime 26927 },
  { lower := 27848, upper := 27867, witness := RowWitness.topPrime 27847 },
  { lower := 28125, upper := 28222, witness := RowWitness.topPrime 28123 },
  { lower := 28227, upper := 28257, witness := RowWitness.topPrime 28219 },
  { lower := 28561, upper := 28563, witness := RowWitness.topPrime 28559 },
  { lower := 28577, upper := 28705, witness := RowWitness.topPrime 28573 },
  { lower := 28706, upper := 28709, witness := RowWitness.topPrime 28703 },
  { lower := 28717, upper := 28804, witness := RowWitness.topPrime 28711 },
  { lower := 29584, upper := 29610, witness := RowWitness.topPrime 29581 },
  { lower := 29791, upper := 29900, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30378, witness := RowWitness.topPrime 30253 },
  { lower := 30618, upper := 30725, witness := RowWitness.topPrime 30593 },
  { lower := 30726, upper := 30750, witness := RowWitness.topPrime 30713 },
  { lower := 30758, upper := 30852, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 31031, witness := RowWitness.topPrime 30911 },
  { lower := 31250, upper := 31381, witness := RowWitness.topPrime 31249 },
  { lower := 31382, upper := 31382, witness := RowWitness.topPrime 31379 },
  { lower := 31423, upper := 31529, witness := RowWitness.topPrime 31397 },
  { lower := 31530, upper := 31555, witness := RowWitness.topPrime 31517 },
  { lower := 32805, upper := 32900, witness := RowWitness.topPrime 32803 },
  { lower := 33614, upper := 33621, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33746, witness := RowWitness.topPrime 33703 },
  { lower := 34347, upper := 34469, witness := RowWitness.topPrime 34337 },
  { lower := 34470, upper := 34523, witness := RowWitness.topPrime 34469 },
  { lower := 34816, upper := 34939, witness := RowWitness.topPrime 34807 },
  { lower := 34940, upper := 34942, witness := RowWitness.topPrime 34939 },
  { lower := 36517, upper := 36629, witness := RowWitness.topPrime 36497 },
  { lower := 36630, upper := 36633, witness := RowWitness.topPrime 36629 },
  { lower := 37303, upper := 37342, witness := RowWitness.topPrime 37277 },
  { lower := 37500, upper := 37578, witness := RowWitness.topPrime 37493 },
  { lower := 38307, upper := 38423, witness := RowWitness.topPrime 38303 },
  { lower := 39326, upper := 39455, witness := RowWitness.topPrime 39323 },
  { lower := 39456, upper := 39458, witness := RowWitness.topPrime 39451 },
  { lower := 40401, upper := 40460, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 40936, witness := RowWitness.topPrime 40927 },
  { lower := 40960, upper := 41063, witness := RowWitness.topPrime 40949 },
  { lower := 43750, upper := 43819, witness := RowWitness.topPrime 43721 },
  { lower := 45369, upper := 45385, witness := RowWitness.topPrime 45361 },
  { lower := 45927, upper := 45928, witness := RowWitness.topPrime 45893 },
  { lower := 47526, upper := 47653, witness := RowWitness.topPrime 47521 },
  { lower := 47654, upper := 47656, witness := RowWitness.topPrime 47653 },
  { lower := 48387, upper := 48505, witness := RowWitness.topPrime 48383 },
  { lower := 48734, upper := 48865, witness := RowWitness.topPrime 48733 },
  { lower := 48866, upper := 48866, witness := RowWitness.topPrime 48859 },
  { lower := 49152, upper := 49262, witness := RowWitness.topPrime 49139 },
  { lower := 51076, upper := 51137, witness := RowWitness.topPrime 51071 },
  { lower := 53290, upper := 53380, witness := RowWitness.topPrime 53281 },
  { lower := 55451, upper := 55573, witness := RowWitness.topPrime 55441 },
  { lower := 55574, upper := 55579, witness := RowWitness.topPrime 55547 },
  { lower := 57245, upper := 57254, witness := RowWitness.topPrime 57241 },
  { lower := 57344, upper := 57377, witness := RowWitness.topPrime 57331 },
  { lower := 58619, upper := 58696, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59088, witness := RowWitness.topPrime 59029 },
  { lower := 62500, upper := 62542, witness := RowWitness.topPrime 62497 },
  { lower := 63869, upper := 63995, witness := RowWitness.topPrime 63863 },
  { lower := 63996, upper := 64001, witness := RowWitness.topPrime 63977 },
  { lower := 65536, upper := 65653, witness := RowWitness.topPrime 65521 },
  { lower := 65654, upper := 65668, witness := RowWitness.topPrime 65651 },
  { lower := 68651, upper := 68771, witness := RowWitness.topPrime 68639 },
  { lower := 68772, upper := 68826, witness := RowWitness.topPrime 68771 },
  { lower := 68890, upper := 68914, witness := RowWitness.topPrime 68881 },
  { lower := 68921, upper := 69022, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71419, witness := RowWitness.topPrime 71287 },
  { lower := 71420, upper := 71421, witness := RowWitness.topPrime 71419 },
  { lower := 73205, upper := 73299, witness := RowWitness.topPrime 73189 },
  { lower := 85805, upper := 85815, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89505, witness := RowWitness.topPrime 89381 },
  { lower := 98415, upper := 98436, witness := RowWitness.topPrime 98411 },
  { lower := 103041, upper := 103098, witness := RowWitness.topPrime 103007 },
  { lower := 109503, upper := 109507, witness := RowWitness.topPrime 109481 },
  { lower := 137842, upper := 137913, witness := RowWitness.topPrime 137831 },
  { lower := 148955, upper := 149009, witness := RowWitness.topPrime 148949 }
]

def row133_layers : List CoverLayer := [
  { lower := 17556, upper := 35112, M := 18 },
  { lower := 35112, upper := 70224, M := 14 },
  { lower := 70224, upper := 140448, M := 11 },
  { lower := 140448, upper := 280896, M := 8 },
  { lower := 280896, upper := 561792, M := 6 },
  { lower := 561792, upper := 1123584, M := 5 },
  { lower := 1123584, upper := 2247168, M := 4 },
  { lower := 2247168, upper := 4494336, M := 3 },
  { lower := 4494336, upper := 8988672, M := 3 },
  { lower := 8988672, upper := 17977344, M := 2 },
  { lower := 17977344, upper := 35954688, M := 2 },
  { lower := 35954688, upper := 71909376, M := 1 },
  { lower := 71909376, upper := 100000000, M := 1 }
]

def row133 : FiniteCoverRow := {
  height := row133_height,
  goods := row133_goods,
  layers := row133_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_good000_checked :
    goodSegmentCheck 133 44 94
      { lower := 268, upper := 395, witness := RowWitness.topPrime 263 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good001_checked :
    goodSegmentCheck 133 44 94
      { lower := 396, upper := 521, witness := RowWitness.topPrime 389 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good002_checked :
    goodSegmentCheck 133 44 94
      { lower := 522, upper := 653, witness := RowWitness.topPrime 521 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good003_checked :
    goodSegmentCheck 133 44 94
      { lower := 654, upper := 785, witness := RowWitness.topPrime 653 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good004_checked :
    goodSegmentCheck 133 44 94
      { lower := 786, upper := 905, witness := RowWitness.topPrime 773 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good005_checked :
    goodSegmentCheck 133 44 94
      { lower := 906, upper := 1019, witness := RowWitness.topPrime 887 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good006_checked :
    goodSegmentCheck 133 44 94
      { lower := 1020, upper := 1151, witness := RowWitness.topPrime 1019 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good007_checked :
    goodSegmentCheck 133 44 94
      { lower := 1152, upper := 1283, witness := RowWitness.topPrime 1151 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good008_checked :
    goodSegmentCheck 133 44 94
      { lower := 1284, upper := 1415, witness := RowWitness.topPrime 1283 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good009_checked :
    goodSegmentCheck 133 44 94
      { lower := 1416, upper := 1541, witness := RowWitness.topPrime 1409 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good010_checked :
    goodSegmentCheck 133 44 94
      { lower := 1542, upper := 1663, witness := RowWitness.topPrime 1531 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good011_checked :
    goodSegmentCheck 133 44 94
      { lower := 1664, upper := 1795, witness := RowWitness.topPrime 1663 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good012_checked :
    goodSegmentCheck 133 44 94
      { lower := 1796, upper := 1921, witness := RowWitness.topPrime 1789 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good013_checked :
    goodSegmentCheck 133 44 94
      { lower := 1922, upper := 2045, witness := RowWitness.topPrime 1913 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good014_checked :
    goodSegmentCheck 133 44 94
      { lower := 2046, upper := 2171, witness := RowWitness.topPrime 2039 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good015_checked :
    goodSegmentCheck 133 44 94
      { lower := 2172, upper := 2293, witness := RowWitness.topPrime 2161 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_good016_checked :
    goodSegmentCheck 133 44 94
      { lower := 2294, upper := 2425, witness := RowWitness.topPrime 2293 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good017_checked :
    goodSegmentCheck 133 44 94
      { lower := 2426, upper := 2555, witness := RowWitness.topPrime 2423 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good018_checked :
    goodSegmentCheck 133 44 94
      { lower := 2556, upper := 2683, witness := RowWitness.topPrime 2551 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good019_checked :
    goodSegmentCheck 133 44 94
      { lower := 2684, upper := 2815, witness := RowWitness.topPrime 2683 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good020_checked :
    goodSegmentCheck 133 44 94
      { lower := 2816, upper := 2935, witness := RowWitness.topPrime 2803 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good021_checked :
    goodSegmentCheck 133 44 94
      { lower := 2936, upper := 3059, witness := RowWitness.topPrime 2927 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good022_checked :
    goodSegmentCheck 133 44 94
      { lower := 3060, upper := 3181, witness := RowWitness.topPrime 3049 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good023_checked :
    goodSegmentCheck 133 44 94
      { lower := 3182, upper := 3313, witness := RowWitness.topPrime 3181 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good024_checked :
    goodSegmentCheck 133 44 94
      { lower := 3314, upper := 3445, witness := RowWitness.topPrime 3313 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good025_checked :
    goodSegmentCheck 133 44 94
      { lower := 3446, upper := 3565, witness := RowWitness.topPrime 3433 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good026_checked :
    goodSegmentCheck 133 44 94
      { lower := 3566, upper := 3691, witness := RowWitness.topPrime 3559 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good027_checked :
    goodSegmentCheck 133 44 94
      { lower := 3692, upper := 3823, witness := RowWitness.topPrime 3691 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good028_checked :
    goodSegmentCheck 133 44 94
      { lower := 3824, upper := 3955, witness := RowWitness.topPrime 3823 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good029_checked :
    goodSegmentCheck 133 44 94
      { lower := 3956, upper := 4079, witness := RowWitness.topPrime 3947 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good030_checked :
    goodSegmentCheck 133 44 94
      { lower := 4080, upper := 4211, witness := RowWitness.topPrime 4079 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good031_checked :
    goodSegmentCheck 133 44 94
      { lower := 4212, upper := 4343, witness := RowWitness.topPrime 4211 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_good032_checked :
    goodSegmentCheck 133 44 94
      { lower := 4344, upper := 4471, witness := RowWitness.topPrime 4339 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good033_checked :
    goodSegmentCheck 133 44 94
      { lower := 4472, upper := 4595, witness := RowWitness.topPrime 4463 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good034_checked :
    goodSegmentCheck 133 44 94
      { lower := 4596, upper := 4723, witness := RowWitness.topPrime 4591 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good035_checked :
    goodSegmentCheck 133 44 94
      { lower := 4724, upper := 4855, witness := RowWitness.topPrime 4723 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good036_checked :
    goodSegmentCheck 133 44 94
      { lower := 4856, upper := 4963, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good037_checked :
    goodSegmentCheck 133 44 94
      { lower := 4964, upper := 5089, witness := RowWitness.topPrime 4957 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good038_checked :
    goodSegmentCheck 133 44 94
      { lower := 5090, upper := 5219, witness := RowWitness.topPrime 5087 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good039_checked :
    goodSegmentCheck 133 44 94
      { lower := 5220, upper := 5341, witness := RowWitness.topPrime 5209 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good040_checked :
    goodSegmentCheck 133 44 94
      { lower := 5342, upper := 5465, witness := RowWitness.topPrime 5333 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good041_checked :
    goodSegmentCheck 133 44 94
      { lower := 5466, upper := 5581, witness := RowWitness.topPrime 5449 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good042_checked :
    goodSegmentCheck 133 44 94
      { lower := 5582, upper := 5713, witness := RowWitness.topPrime 5581 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good043_checked :
    goodSegmentCheck 133 44 94
      { lower := 5714, upper := 5843, witness := RowWitness.topPrime 5711 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good044_checked :
    goodSegmentCheck 133 44 94
      { lower := 5844, upper := 5975, witness := RowWitness.topPrime 5843 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good045_checked :
    goodSegmentCheck 133 44 94
      { lower := 5976, upper := 6085, witness := RowWitness.topPrime 5953 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good046_checked :
    goodSegmentCheck 133 44 94
      { lower := 6086, upper := 6211, witness := RowWitness.topPrime 6079 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good047_checked :
    goodSegmentCheck 133 44 94
      { lower := 6212, upper := 6343, witness := RowWitness.topPrime 6211 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_good048_checked :
    goodSegmentCheck 133 44 94
      { lower := 6344, upper := 6475, witness := RowWitness.topPrime 6343 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good049_checked :
    goodSegmentCheck 133 44 94
      { lower := 6476, upper := 6605, witness := RowWitness.topPrime 6473 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good050_checked :
    goodSegmentCheck 133 44 94
      { lower := 6606, upper := 6731, witness := RowWitness.topPrime 6599 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good051_checked :
    goodSegmentCheck 133 44 94
      { lower := 6732, upper := 6851, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good052_checked :
    goodSegmentCheck 133 44 94
      { lower := 6852, upper := 6973, witness := RowWitness.topPrime 6841 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good053_checked :
    goodSegmentCheck 133 44 94
      { lower := 6974, upper := 7103, witness := RowWitness.topPrime 6971 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good054_checked :
    goodSegmentCheck 133 44 94
      { lower := 7104, upper := 7235, witness := RowWitness.topPrime 7103 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good055_checked :
    goodSegmentCheck 133 44 94
      { lower := 7236, upper := 7361, witness := RowWitness.topPrime 7229 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good056_checked :
    goodSegmentCheck 133 44 94
      { lower := 7362, upper := 7483, witness := RowWitness.topPrime 7351 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good057_checked :
    goodSegmentCheck 133 44 94
      { lower := 7484, upper := 7613, witness := RowWitness.topPrime 7481 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good058_checked :
    goodSegmentCheck 133 44 94
      { lower := 7614, upper := 7739, witness := RowWitness.topPrime 7607 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good059_checked :
    goodSegmentCheck 133 44 94
      { lower := 7740, upper := 7859, witness := RowWitness.topPrime 7727 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good060_checked :
    goodSegmentCheck 133 44 94
      { lower := 7860, upper := 7985, witness := RowWitness.topPrime 7853 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good061_checked :
    goodSegmentCheck 133 44 94
      { lower := 7986, upper := 8095, witness := RowWitness.topPrime 7963 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good062_checked :
    goodSegmentCheck 133 44 94
      { lower := 8096, upper := 8225, witness := RowWitness.topPrime 8093 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good063_checked :
    goodSegmentCheck 133 44 94
      { lower := 8226, upper := 8353, witness := RowWitness.topPrime 8221 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_good064_checked :
    goodSegmentCheck 133 44 94
      { lower := 8354, upper := 8485, witness := RowWitness.topPrime 8353 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good065_checked :
    goodSegmentCheck 133 44 94
      { lower := 8486, upper := 8599, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good066_checked :
    goodSegmentCheck 133 44 94
      { lower := 8600, upper := 8731, witness := RowWitness.topPrime 8599 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good067_checked :
    goodSegmentCheck 133 44 94
      { lower := 8732, upper := 8863, witness := RowWitness.topPrime 8731 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good068_checked :
    goodSegmentCheck 133 44 94
      { lower := 8864, upper := 8995, witness := RowWitness.topPrime 8863 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good069_checked :
    goodSegmentCheck 133 44 94
      { lower := 8996, upper := 9103, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good070_checked :
    goodSegmentCheck 133 44 94
      { lower := 9104, upper := 9235, witness := RowWitness.topPrime 9103 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good071_checked :
    goodSegmentCheck 133 44 94
      { lower := 9236, upper := 9359, witness := RowWitness.topPrime 9227 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good072_checked :
    goodSegmentCheck 133 44 94
      { lower := 9360, upper := 9481, witness := RowWitness.topPrime 9349 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good073_checked :
    goodSegmentCheck 133 44 94
      { lower := 9482, upper := 9611, witness := RowWitness.topPrime 9479 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good074_checked :
    goodSegmentCheck 133 44 94
      { lower := 9612, upper := 9733, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good075_checked :
    goodSegmentCheck 133 44 94
      { lower := 9734, upper := 9865, witness := RowWitness.topPrime 9733 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good076_checked :
    goodSegmentCheck 133 44 94
      { lower := 9866, upper := 9991, witness := RowWitness.topPrime 9859 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good077_checked :
    goodSegmentCheck 133 44 94
      { lower := 9992, upper := 10105, witness := RowWitness.topPrime 9973 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good078_checked :
    goodSegmentCheck 133 44 94
      { lower := 10106, upper := 10235, witness := RowWitness.topPrime 10103 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good079_checked :
    goodSegmentCheck 133 44 94
      { lower := 10236, upper := 10355, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_good080_checked :
    goodSegmentCheck 133 44 94
      { lower := 10356, upper := 10475, witness := RowWitness.topPrime 10343 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good081_checked :
    goodSegmentCheck 133 44 94
      { lower := 10476, upper := 10595, witness := RowWitness.topPrime 10463 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good082_checked :
    goodSegmentCheck 133 44 94
      { lower := 10596, upper := 10721, witness := RowWitness.topPrime 10589 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good083_checked :
    goodSegmentCheck 133 44 94
      { lower := 10722, upper := 10843, witness := RowWitness.topPrime 10711 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good084_checked :
    goodSegmentCheck 133 44 94
      { lower := 10844, upper := 10969, witness := RowWitness.topPrime 10837 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good085_checked :
    goodSegmentCheck 133 44 94
      { lower := 10970, upper := 11089, witness := RowWitness.topPrime 10957 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good086_checked :
    goodSegmentCheck 133 44 94
      { lower := 11090, upper := 11219, witness := RowWitness.topPrime 11087 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good087_checked :
    goodSegmentCheck 133 44 94
      { lower := 11220, upper := 11345, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good088_checked :
    goodSegmentCheck 133 44 94
      { lower := 11346, upper := 11461, witness := RowWitness.topPrime 11329 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good089_checked :
    goodSegmentCheck 133 44 94
      { lower := 11462, upper := 11579, witness := RowWitness.topPrime 11447 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good090_checked :
    goodSegmentCheck 133 44 94
      { lower := 11580, upper := 11711, witness := RowWitness.topPrime 11579 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good091_checked :
    goodSegmentCheck 133 44 94
      { lower := 11712, upper := 11833, witness := RowWitness.topPrime 11701 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good092_checked :
    goodSegmentCheck 133 44 94
      { lower := 11834, upper := 11965, witness := RowWitness.topPrime 11833 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good093_checked :
    goodSegmentCheck 133 44 94
      { lower := 11966, upper := 12091, witness := RowWitness.topPrime 11959 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good094_checked :
    goodSegmentCheck 133 44 94
      { lower := 12092, upper := 12205, witness := RowWitness.topPrime 12073 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good095_checked :
    goodSegmentCheck 133 44 94
      { lower := 12206, upper := 12335, witness := RowWitness.topPrime 12203 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_good096_checked :
    goodSegmentCheck 133 44 94
      { lower := 12336, upper := 12461, witness := RowWitness.topPrime 12329 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good097_checked :
    goodSegmentCheck 133 44 94
      { lower := 12462, upper := 12589, witness := RowWitness.topPrime 12457 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good098_checked :
    goodSegmentCheck 133 44 94
      { lower := 12590, upper := 12721, witness := RowWitness.topPrime 12589 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good099_checked :
    goodSegmentCheck 133 44 94
      { lower := 12722, upper := 12853, witness := RowWitness.topPrime 12721 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good100_checked :
    goodSegmentCheck 133 44 94
      { lower := 12854, upper := 12985, witness := RowWitness.topPrime 12853 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good101_checked :
    goodSegmentCheck 133 44 94
      { lower := 12986, upper := 13115, witness := RowWitness.topPrime 12983 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good102_checked :
    goodSegmentCheck 133 44 94
      { lower := 13116, upper := 13241, witness := RowWitness.topPrime 13109 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good103_checked :
    goodSegmentCheck 133 44 94
      { lower := 13242, upper := 13373, witness := RowWitness.topPrime 13241 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good104_checked :
    goodSegmentCheck 133 44 94
      { lower := 13374, upper := 13499, witness := RowWitness.topPrime 13367 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good105_checked :
    goodSegmentCheck 133 44 94
      { lower := 13500, upper := 13631, witness := RowWitness.topPrime 13499 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good106_checked :
    goodSegmentCheck 133 44 94
      { lower := 13632, upper := 13759, witness := RowWitness.topPrime 13627 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good107_checked :
    goodSegmentCheck 133 44 94
      { lower := 13760, upper := 13891, witness := RowWitness.topPrime 13759 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good108_checked :
    goodSegmentCheck 133 44 94
      { lower := 13892, upper := 14015, witness := RowWitness.topPrime 13883 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good109_checked :
    goodSegmentCheck 133 44 94
      { lower := 14016, upper := 14143, witness := RowWitness.topPrime 14011 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good110_checked :
    goodSegmentCheck 133 44 94
      { lower := 14144, upper := 14275, witness := RowWitness.topPrime 14143 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good111_checked :
    goodSegmentCheck 133 44 94
      { lower := 14276, upper := 14383, witness := RowWitness.topPrime 14251 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_good112_checked :
    goodSegmentCheck 133 44 94
      { lower := 14384, upper := 14501, witness := RowWitness.topPrime 14369 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good113_checked :
    goodSegmentCheck 133 44 94
      { lower := 14502, upper := 14621, witness := RowWitness.topPrime 14489 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good114_checked :
    goodSegmentCheck 133 44 94
      { lower := 14622, upper := 14753, witness := RowWitness.topPrime 14621 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good115_checked :
    goodSegmentCheck 133 44 94
      { lower := 14754, upper := 14885, witness := RowWitness.topPrime 14753 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good116_checked :
    goodSegmentCheck 133 44 94
      { lower := 14886, upper := 15011, witness := RowWitness.topPrime 14879 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good117_checked :
    goodSegmentCheck 133 44 94
      { lower := 15012, upper := 15115, witness := RowWitness.topPrime 14983 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good118_checked :
    goodSegmentCheck 133 44 94
      { lower := 15116, upper := 15239, witness := RowWitness.topPrime 15107 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good119_checked :
    goodSegmentCheck 133 44 94
      { lower := 15240, upper := 15365, witness := RowWitness.topPrime 15233 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good120_checked :
    goodSegmentCheck 133 44 94
      { lower := 15366, upper := 15493, witness := RowWitness.topPrime 15361 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good121_checked :
    goodSegmentCheck 133 44 94
      { lower := 15494, upper := 15625, witness := RowWitness.topPrime 15493 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good122_checked :
    goodSegmentCheck 133 44 94
      { lower := 15626, upper := 15751, witness := RowWitness.topPrime 15619 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good123_checked :
    goodSegmentCheck 133 44 94
      { lower := 15752, upper := 15881, witness := RowWitness.topPrime 15749 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good124_checked :
    goodSegmentCheck 133 44 94
      { lower := 15882, upper := 16013, witness := RowWitness.topPrime 15881 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good125_checked :
    goodSegmentCheck 133 44 94
      { lower := 16014, upper := 16139, witness := RowWitness.topPrime 16007 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good126_checked :
    goodSegmentCheck 133 44 94
      { lower := 16140, upper := 16271, witness := RowWitness.topPrime 16139 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good127_checked :
    goodSegmentCheck 133 44 94
      { lower := 16272, upper := 16399, witness := RowWitness.topPrime 16267 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_good128_checked :
    goodSegmentCheck 133 44 94
      { lower := 16400, upper := 16513, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good129_checked :
    goodSegmentCheck 133 44 94
      { lower := 16514, upper := 16625, witness := RowWitness.topPrime 16493 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good130_checked :
    goodSegmentCheck 133 44 94
      { lower := 16626, upper := 16751, witness := RowWitness.topPrime 16619 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good131_checked :
    goodSegmentCheck 133 44 94
      { lower := 16752, upper := 16879, witness := RowWitness.topPrime 16747 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good132_checked :
    goodSegmentCheck 133 44 94
      { lower := 16880, upper := 17011, witness := RowWitness.topPrime 16879 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good133_checked :
    goodSegmentCheck 133 44 94
      { lower := 17012, upper := 17143, witness := RowWitness.topPrime 17011 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good134_checked :
    goodSegmentCheck 133 44 94
      { lower := 17144, upper := 17269, witness := RowWitness.topPrime 17137 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good135_checked :
    goodSegmentCheck 133 44 94
      { lower := 17270, upper := 17389, witness := RowWitness.topPrime 17257 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good136_checked :
    goodSegmentCheck 133 44 94
      { lower := 17390, upper := 17521, witness := RowWitness.topPrime 17389 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good137_checked :
    goodSegmentCheck 133 44 94
      { lower := 17522, upper := 17555, witness := RowWitness.topPrime 17519 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good138_checked :
    goodSegmentCheck 133 44 94
      { lower := 17576, upper := 17628, witness := RowWitness.topPrime 17573 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good139_checked :
    goodSegmentCheck 133 44 94
      { lower := 17672, upper := 17708, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good140_checked :
    goodSegmentCheck 133 44 94
      { lower := 17797, upper := 17804, witness := RowWitness.topPrime 17791 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good141_checked :
    goodSegmentCheck 133 44 94
      { lower := 18490, upper := 18613, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good142_checked :
    goodSegmentCheck 133 44 94
      { lower := 18614, upper := 18623, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good143_checked :
    goodSegmentCheck 133 44 94
      { lower := 18634, upper := 18749, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_good144_checked :
    goodSegmentCheck 133 44 94
      { lower := 18750, upper := 18881, witness := RowWitness.topPrime 18749 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good145_checked :
    goodSegmentCheck 133 44 94
      { lower := 18882, upper := 18882, witness := RowWitness.topPrime 18869 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good146_checked :
    goodSegmentCheck 133 44 94
      { lower := 19663, upper := 19793, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good147_checked :
    goodSegmentCheck 133 44 94
      { lower := 19794, upper := 19815, witness := RowWitness.topPrime 19793 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good148_checked :
    goodSegmentCheck 133 44 94
      { lower := 19881, upper := 19905, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good149_checked :
    goodSegmentCheck 133 44 94
      { lower := 19965, upper := 20013, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good150_checked :
    goodSegmentCheck 133 44 94
      { lower := 20172, upper := 20293, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good151_checked :
    goodSegmentCheck 133 44 94
      { lower := 20294, upper := 20296, witness := RowWitness.topPrime 20287 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good152_checked :
    goodSegmentCheck 133 44 94
      { lower := 20402, upper := 20471, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good153_checked :
    goodSegmentCheck 133 44 94
      { lower := 20480, upper := 20611, witness := RowWitness.topPrime 20479 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good154_checked :
    goodSegmentCheck 133 44 94
      { lower := 20612, upper := 20612, witness := RowWitness.topPrime 20611 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good155_checked :
    goodSegmentCheck 133 44 94
      { lower := 20667, upper := 20667, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good156_checked :
    goodSegmentCheck 133 44 94
      { lower := 21296, upper := 21415, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good157_checked :
    goodSegmentCheck 133 44 94
      { lower := 21416, upper := 21428, witness := RowWitness.topPrime 21407 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good158_checked :
    goodSegmentCheck 133 44 94
      { lower := 21870, upper := 21995, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good159_checked :
    goodSegmentCheck 133 44 94
      { lower := 21996, upper := 22036, witness := RowWitness.topPrime 21991 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_good160_checked :
    goodSegmentCheck 133 44 94
      { lower := 22090, upper := 22102, witness := RowWitness.topPrime 22079 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good161_checked :
    goodSegmentCheck 133 44 94
      { lower := 22188, upper := 22222, witness := RowWitness.topPrime 22171 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good162_checked :
    goodSegmentCheck 133 44 94
      { lower := 22445, upper := 22458, witness := RowWitness.topPrime 22441 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good163_checked :
    goodSegmentCheck 133 44 94
      { lower := 22472, upper := 22601, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good164_checked :
    goodSegmentCheck 133 44 94
      { lower := 22602, upper := 22604, witness := RowWitness.topPrime 22573 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good165_checked :
    goodSegmentCheck 133 44 94
      { lower := 22627, upper := 22660, witness := RowWitness.topPrime 22621 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good166_checked :
    goodSegmentCheck 133 44 94
      { lower := 23763, upper := 23893, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good167_checked :
    goodSegmentCheck 133 44 94
      { lower := 23894, upper := 23894, witness := RowWitness.topPrime 23893 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good168_checked :
    goodSegmentCheck 133 44 94
      { lower := 24037, upper := 24161, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good169_checked :
    goodSegmentCheck 133 44 94
      { lower := 24162, upper := 24189, witness := RowWitness.topPrime 24151 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good170_checked :
    goodSegmentCheck 133 44 94
      { lower := 24299, upper := 24299, witness := RowWitness.topPrime 24281 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good171_checked :
    goodSegmentCheck 133 44 94
      { lower := 24334, upper := 24461, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good172_checked :
    goodSegmentCheck 133 44 94
      { lower := 24462, upper := 24499, witness := RowWitness.topPrime 24443 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good173_checked :
    goodSegmentCheck 133 44 94
      { lower := 24576, upper := 24703, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good174_checked :
    goodSegmentCheck 133 44 94
      { lower := 24704, upper := 24708, witness := RowWitness.topPrime 24697 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good175_checked :
    goodSegmentCheck 133 44 94
      { lower := 25000, upper := 25096, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_good176_checked :
    goodSegmentCheck 133 44 94
      { lower := 25215, upper := 25321, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good177_checked :
    goodSegmentCheck 133 44 94
      { lower := 25322, upper := 25347, witness := RowWitness.topPrime 25321 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good178_checked :
    goodSegmentCheck 133 44 94
      { lower := 26364, upper := 26376, witness := RowWitness.topPrime 26357 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good179_checked :
    goodSegmentCheck 133 44 94
      { lower := 26624, upper := 26640, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good180_checked :
    goodSegmentCheck 133 44 94
      { lower := 26645, upper := 26756, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good181_checked :
    goodSegmentCheck 133 44 94
      { lower := 26934, upper := 27028, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good182_checked :
    goodSegmentCheck 133 44 94
      { lower := 27848, upper := 27867, witness := RowWitness.topPrime 27847 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good183_checked :
    goodSegmentCheck 133 44 94
      { lower := 28125, upper := 28222, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good184_checked :
    goodSegmentCheck 133 44 94
      { lower := 28227, upper := 28257, witness := RowWitness.topPrime 28219 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good185_checked :
    goodSegmentCheck 133 44 94
      { lower := 28561, upper := 28563, witness := RowWitness.topPrime 28559 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good186_checked :
    goodSegmentCheck 133 44 94
      { lower := 28577, upper := 28705, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good187_checked :
    goodSegmentCheck 133 44 94
      { lower := 28706, upper := 28709, witness := RowWitness.topPrime 28703 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good188_checked :
    goodSegmentCheck 133 44 94
      { lower := 28717, upper := 28804, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good189_checked :
    goodSegmentCheck 133 44 94
      { lower := 29584, upper := 29610, witness := RowWitness.topPrime 29581 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good190_checked :
    goodSegmentCheck 133 44 94
      { lower := 29791, upper := 29900, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good191_checked :
    goodSegmentCheck 133 44 94
      { lower := 30258, upper := 30378, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_good192_checked :
    goodSegmentCheck 133 44 94
      { lower := 30618, upper := 30725, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good193_checked :
    goodSegmentCheck 133 44 94
      { lower := 30726, upper := 30750, witness := RowWitness.topPrime 30713 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good194_checked :
    goodSegmentCheck 133 44 94
      { lower := 30758, upper := 30852, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good195_checked :
    goodSegmentCheck 133 44 94
      { lower := 30926, upper := 31031, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good196_checked :
    goodSegmentCheck 133 44 94
      { lower := 31250, upper := 31381, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good197_checked :
    goodSegmentCheck 133 44 94
      { lower := 31382, upper := 31382, witness := RowWitness.topPrime 31379 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good198_checked :
    goodSegmentCheck 133 44 94
      { lower := 31423, upper := 31529, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good199_checked :
    goodSegmentCheck 133 44 94
      { lower := 31530, upper := 31555, witness := RowWitness.topPrime 31517 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good200_checked :
    goodSegmentCheck 133 44 94
      { lower := 32805, upper := 32900, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good201_checked :
    goodSegmentCheck 133 44 94
      { lower := 33614, upper := 33621, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good202_checked :
    goodSegmentCheck 133 44 94
      { lower := 33708, upper := 33746, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good203_checked :
    goodSegmentCheck 133 44 94
      { lower := 34347, upper := 34469, witness := RowWitness.topPrime 34337 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good204_checked :
    goodSegmentCheck 133 44 94
      { lower := 34470, upper := 34523, witness := RowWitness.topPrime 34469 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good205_checked :
    goodSegmentCheck 133 44 94
      { lower := 34816, upper := 34939, witness := RowWitness.topPrime 34807 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good206_checked :
    goodSegmentCheck 133 44 94
      { lower := 34940, upper := 34942, witness := RowWitness.topPrime 34939 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good207_checked :
    goodSegmentCheck 133 44 94
      { lower := 36517, upper := 36629, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_good208_checked :
    goodSegmentCheck 133 44 94
      { lower := 36630, upper := 36633, witness := RowWitness.topPrime 36629 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good209_checked :
    goodSegmentCheck 133 44 94
      { lower := 37303, upper := 37342, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good210_checked :
    goodSegmentCheck 133 44 94
      { lower := 37500, upper := 37578, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good211_checked :
    goodSegmentCheck 133 44 94
      { lower := 38307, upper := 38423, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good212_checked :
    goodSegmentCheck 133 44 94
      { lower := 39326, upper := 39455, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good213_checked :
    goodSegmentCheck 133 44 94
      { lower := 39456, upper := 39458, witness := RowWitness.topPrime 39451 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good214_checked :
    goodSegmentCheck 133 44 94
      { lower := 40401, upper := 40460, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good215_checked :
    goodSegmentCheck 133 44 94
      { lower := 40931, upper := 40936, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good216_checked :
    goodSegmentCheck 133 44 94
      { lower := 40960, upper := 41063, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good217_checked :
    goodSegmentCheck 133 44 94
      { lower := 43750, upper := 43819, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good218_checked :
    goodSegmentCheck 133 44 94
      { lower := 45369, upper := 45385, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good219_checked :
    goodSegmentCheck 133 44 94
      { lower := 45927, upper := 45928, witness := RowWitness.topPrime 45893 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good220_checked :
    goodSegmentCheck 133 44 94
      { lower := 47526, upper := 47653, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good221_checked :
    goodSegmentCheck 133 44 94
      { lower := 47654, upper := 47656, witness := RowWitness.topPrime 47653 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good222_checked :
    goodSegmentCheck 133 44 94
      { lower := 48387, upper := 48505, witness := RowWitness.topPrime 48383 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good223_checked :
    goodSegmentCheck 133 44 94
      { lower := 48734, upper := 48865, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_good224_checked :
    goodSegmentCheck 133 44 94
      { lower := 48866, upper := 48866, witness := RowWitness.topPrime 48859 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good225_checked :
    goodSegmentCheck 133 44 94
      { lower := 49152, upper := 49262, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good226_checked :
    goodSegmentCheck 133 44 94
      { lower := 51076, upper := 51137, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good227_checked :
    goodSegmentCheck 133 44 94
      { lower := 53290, upper := 53380, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good228_checked :
    goodSegmentCheck 133 44 94
      { lower := 55451, upper := 55573, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good229_checked :
    goodSegmentCheck 133 44 94
      { lower := 55574, upper := 55579, witness := RowWitness.topPrime 55547 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good230_checked :
    goodSegmentCheck 133 44 94
      { lower := 57245, upper := 57254, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good231_checked :
    goodSegmentCheck 133 44 94
      { lower := 57344, upper := 57377, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good232_checked :
    goodSegmentCheck 133 44 94
      { lower := 58619, upper := 58696, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good233_checked :
    goodSegmentCheck 133 44 94
      { lower := 59049, upper := 59088, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good234_checked :
    goodSegmentCheck 133 44 94
      { lower := 62500, upper := 62542, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good235_checked :
    goodSegmentCheck 133 44 94
      { lower := 63869, upper := 63995, witness := RowWitness.topPrime 63863 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good236_checked :
    goodSegmentCheck 133 44 94
      { lower := 63996, upper := 64001, witness := RowWitness.topPrime 63977 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good237_checked :
    goodSegmentCheck 133 44 94
      { lower := 65536, upper := 65653, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good238_checked :
    goodSegmentCheck 133 44 94
      { lower := 65654, upper := 65668, witness := RowWitness.topPrime 65651 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good239_checked :
    goodSegmentCheck 133 44 94
      { lower := 68651, upper := 68771, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_good240_checked :
    goodSegmentCheck 133 44 94
      { lower := 68772, upper := 68826, witness := RowWitness.topPrime 68771 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good241_checked :
    goodSegmentCheck 133 44 94
      { lower := 68890, upper := 68914, witness := RowWitness.topPrime 68881 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good242_checked :
    goodSegmentCheck 133 44 94
      { lower := 68921, upper := 69022, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good243_checked :
    goodSegmentCheck 133 44 94
      { lower := 71289, upper := 71419, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good244_checked :
    goodSegmentCheck 133 44 94
      { lower := 71420, upper := 71421, witness := RowWitness.topPrime 71419 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good245_checked :
    goodSegmentCheck 133 44 94
      { lower := 73205, upper := 73299, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good246_checked :
    goodSegmentCheck 133 44 94
      { lower := 85805, upper := 85815, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good247_checked :
    goodSegmentCheck 133 44 94
      { lower := 89383, upper := 89505, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good248_checked :
    goodSegmentCheck 133 44 94
      { lower := 98415, upper := 98436, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good249_checked :
    goodSegmentCheck 133 44 94
      { lower := 103041, upper := 103098, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good250_checked :
    goodSegmentCheck 133 44 94
      { lower := 109503, upper := 109507, witness := RowWitness.topPrime 109481 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good251_checked :
    goodSegmentCheck 133 44 94
      { lower := 137842, upper := 137913, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row133_good252_checked :
    goodSegmentCheck 133 44 94
      { lower := 148955, upper := 149009, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 133) (r := 44) (s := 94) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good251_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_good252_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_goods_checked :
    row133.goods.all (goodSegmentCheck row133.height.i row133.height.r row133.height.s) = true := by
  change row133_goods.all (goodSegmentCheck 133 44 94) = true
  simp only [row133_goods, List.all_cons, List.all_nil,
    row133_good000_checked,
    row133_good001_checked,
    row133_good002_checked,
    row133_good003_checked,
    row133_good004_checked,
    row133_good005_checked,
    row133_good006_checked,
    row133_good007_checked,
    row133_good008_checked,
    row133_good009_checked,
    row133_good010_checked,
    row133_good011_checked,
    row133_good012_checked,
    row133_good013_checked,
    row133_good014_checked,
    row133_good015_checked,
    row133_good016_checked,
    row133_good017_checked,
    row133_good018_checked,
    row133_good019_checked,
    row133_good020_checked,
    row133_good021_checked,
    row133_good022_checked,
    row133_good023_checked,
    row133_good024_checked,
    row133_good025_checked,
    row133_good026_checked,
    row133_good027_checked,
    row133_good028_checked,
    row133_good029_checked,
    row133_good030_checked,
    row133_good031_checked,
    row133_good032_checked,
    row133_good033_checked,
    row133_good034_checked,
    row133_good035_checked,
    row133_good036_checked,
    row133_good037_checked,
    row133_good038_checked,
    row133_good039_checked,
    row133_good040_checked,
    row133_good041_checked,
    row133_good042_checked,
    row133_good043_checked,
    row133_good044_checked,
    row133_good045_checked,
    row133_good046_checked,
    row133_good047_checked,
    row133_good048_checked,
    row133_good049_checked,
    row133_good050_checked,
    row133_good051_checked,
    row133_good052_checked,
    row133_good053_checked,
    row133_good054_checked,
    row133_good055_checked,
    row133_good056_checked,
    row133_good057_checked,
    row133_good058_checked,
    row133_good059_checked,
    row133_good060_checked,
    row133_good061_checked,
    row133_good062_checked,
    row133_good063_checked,
    row133_good064_checked,
    row133_good065_checked,
    row133_good066_checked,
    row133_good067_checked,
    row133_good068_checked,
    row133_good069_checked,
    row133_good070_checked,
    row133_good071_checked,
    row133_good072_checked,
    row133_good073_checked,
    row133_good074_checked,
    row133_good075_checked,
    row133_good076_checked,
    row133_good077_checked,
    row133_good078_checked,
    row133_good079_checked,
    row133_good080_checked,
    row133_good081_checked,
    row133_good082_checked,
    row133_good083_checked,
    row133_good084_checked,
    row133_good085_checked,
    row133_good086_checked,
    row133_good087_checked,
    row133_good088_checked,
    row133_good089_checked,
    row133_good090_checked,
    row133_good091_checked,
    row133_good092_checked,
    row133_good093_checked,
    row133_good094_checked,
    row133_good095_checked,
    row133_good096_checked,
    row133_good097_checked,
    row133_good098_checked,
    row133_good099_checked,
    row133_good100_checked,
    row133_good101_checked,
    row133_good102_checked,
    row133_good103_checked,
    row133_good104_checked,
    row133_good105_checked,
    row133_good106_checked,
    row133_good107_checked,
    row133_good108_checked,
    row133_good109_checked,
    row133_good110_checked,
    row133_good111_checked,
    row133_good112_checked,
    row133_good113_checked,
    row133_good114_checked,
    row133_good115_checked,
    row133_good116_checked,
    row133_good117_checked,
    row133_good118_checked,
    row133_good119_checked,
    row133_good120_checked,
    row133_good121_checked,
    row133_good122_checked,
    row133_good123_checked,
    row133_good124_checked,
    row133_good125_checked,
    row133_good126_checked,
    row133_good127_checked,
    row133_good128_checked,
    row133_good129_checked,
    row133_good130_checked,
    row133_good131_checked,
    row133_good132_checked,
    row133_good133_checked,
    row133_good134_checked,
    row133_good135_checked,
    row133_good136_checked,
    row133_good137_checked,
    row133_good138_checked,
    row133_good139_checked,
    row133_good140_checked,
    row133_good141_checked,
    row133_good142_checked,
    row133_good143_checked,
    row133_good144_checked,
    row133_good145_checked,
    row133_good146_checked,
    row133_good147_checked,
    row133_good148_checked,
    row133_good149_checked,
    row133_good150_checked,
    row133_good151_checked,
    row133_good152_checked,
    row133_good153_checked,
    row133_good154_checked,
    row133_good155_checked,
    row133_good156_checked,
    row133_good157_checked,
    row133_good158_checked,
    row133_good159_checked,
    row133_good160_checked,
    row133_good161_checked,
    row133_good162_checked,
    row133_good163_checked,
    row133_good164_checked,
    row133_good165_checked,
    row133_good166_checked,
    row133_good167_checked,
    row133_good168_checked,
    row133_good169_checked,
    row133_good170_checked,
    row133_good171_checked,
    row133_good172_checked,
    row133_good173_checked,
    row133_good174_checked,
    row133_good175_checked,
    row133_good176_checked,
    row133_good177_checked,
    row133_good178_checked,
    row133_good179_checked,
    row133_good180_checked,
    row133_good181_checked,
    row133_good182_checked,
    row133_good183_checked,
    row133_good184_checked,
    row133_good185_checked,
    row133_good186_checked,
    row133_good187_checked,
    row133_good188_checked,
    row133_good189_checked,
    row133_good190_checked,
    row133_good191_checked,
    row133_good192_checked,
    row133_good193_checked,
    row133_good194_checked,
    row133_good195_checked,
    row133_good196_checked,
    row133_good197_checked,
    row133_good198_checked,
    row133_good199_checked,
    row133_good200_checked,
    row133_good201_checked,
    row133_good202_checked,
    row133_good203_checked,
    row133_good204_checked,
    row133_good205_checked,
    row133_good206_checked,
    row133_good207_checked,
    row133_good208_checked,
    row133_good209_checked,
    row133_good210_checked,
    row133_good211_checked,
    row133_good212_checked,
    row133_good213_checked,
    row133_good214_checked,
    row133_good215_checked,
    row133_good216_checked,
    row133_good217_checked,
    row133_good218_checked,
    row133_good219_checked,
    row133_good220_checked,
    row133_good221_checked,
    row133_good222_checked,
    row133_good223_checked,
    row133_good224_checked,
    row133_good225_checked,
    row133_good226_checked,
    row133_good227_checked,
    row133_good228_checked,
    row133_good229_checked,
    row133_good230_checked,
    row133_good231_checked,
    row133_good232_checked,
    row133_good233_checked,
    row133_good234_checked,
    row133_good235_checked,
    row133_good236_checked,
    row133_good237_checked,
    row133_good238_checked,
    row133_good239_checked,
    row133_good240_checked,
    row133_good241_checked,
    row133_good242_checked,
    row133_good243_checked,
    row133_good244_checked,
    row133_good245_checked,
    row133_good246_checked,
    row133_good247_checked,
    row133_good248_checked,
    row133_good249_checked,
    row133_good250_checked,
    row133_good251_checked,
    row133_good252_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_registered :
    decide (row133.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row133_small_checked :
    coverCheck (2 * row133.height.i + 2) (row133.height.i * (row133.height.i - 1) - 1)
      (row133.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row133_layerCover_checked :
    coverCheck (row133.height.i * (row133.height.i - 1)) (row133.height.n0 - 1)
      (row133.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row133_bounds : List NatInterval :=
  [(268, 395), (396, 521), (522, 653), (654, 785), (786, 905), (906, 1019), (1020, 1151), (1152, 1283), (1284, 1415), (1416, 1541), (1542, 1663), (1664, 1795), (1796, 1921), (1922, 2045), (2046, 2171), (2172, 2293), (2294, 2425), (2426, 2555), (2556, 2683), (2684, 2815), (2816, 2935), (2936, 3059), (3060, 3181), (3182, 3313), (3314, 3445), (3446, 3565), (3566, 3691), (3692, 3823), (3824, 3955), (3956, 4079), (4080, 4211), (4212, 4343), (4344, 4471), (4472, 4595), (4596, 4723), (4724, 4855), (4856, 4963), (4964, 5089), (5090, 5219), (5220, 5341), (5342, 5465), (5466, 5581), (5582, 5713), (5714, 5843), (5844, 5975), (5976, 6085), (6086, 6211), (6212, 6343), (6344, 6475), (6476, 6605), (6606, 6731), (6732, 6851), (6852, 6973), (6974, 7103), (7104, 7235), (7236, 7361), (7362, 7483), (7484, 7613), (7614, 7739), (7740, 7859), (7860, 7985), (7986, 8095), (8096, 8225), (8226, 8353), (8354, 8485), (8486, 8599), (8600, 8731), (8732, 8863), (8864, 8995), (8996, 9103), (9104, 9235), (9236, 9359), (9360, 9481), (9482, 9611), (9612, 9733), (9734, 9865), (9866, 9991), (9992, 10105), (10106, 10235), (10236, 10355), (10356, 10475), (10476, 10595), (10596, 10721), (10722, 10843), (10844, 10969), (10970, 11089), (11090, 11219), (11220, 11345), (11346, 11461), (11462, 11579), (11580, 11711), (11712, 11833), (11834, 11965), (11966, 12091), (12092, 12205), (12206, 12335), (12336, 12461), (12462, 12589), (12590, 12721), (12722, 12853), (12854, 12985), (12986, 13115), (13116, 13241), (13242, 13373), (13374, 13499), (13500, 13631), (13632, 13759), (13760, 13891), (13892, 14015), (14016, 14143), (14144, 14275), (14276, 14383), (14384, 14501), (14502, 14621), (14622, 14753), (14754, 14885), (14886, 15011), (15012, 15115), (15116, 15239), (15240, 15365), (15366, 15493), (15494, 15625), (15626, 15751), (15752, 15881), (15882, 16013), (16014, 16139), (16140, 16271), (16272, 16399), (16400, 16513), (16514, 16625), (16626, 16751), (16752, 16879), (16880, 17011), (17012, 17143), (17144, 17269), (17270, 17389), (17390, 17521), (17522, 17555), (17576, 17628), (17672, 17708), (17797, 17804), (18490, 18613), (18614, 18623), (18634, 18749), (18750, 18881), (18882, 18882), (19663, 19793), (19794, 19815), (19881, 19905), (19965, 20013), (20172, 20293), (20294, 20296), (20402, 20471), (20480, 20611), (20612, 20612), (20667, 20667), (21296, 21415), (21416, 21428), (21870, 21995), (21996, 22036), (22090, 22102), (22188, 22222), (22445, 22458), (22472, 22601), (22602, 22604), (22627, 22660), (23763, 23893), (23894, 23894), (24037, 24161), (24162, 24189), (24299, 24299), (24334, 24461), (24462, 24499), (24576, 24703), (24704, 24708), (25000, 25096), (25215, 25321), (25322, 25347), (26364, 26376), (26624, 26640), (26645, 26756), (26934, 27028), (27848, 27867), (28125, 28222), (28227, 28257), (28561, 28563), (28577, 28705), (28706, 28709), (28717, 28804), (29584, 29610), (29791, 29900), (30258, 30378), (30618, 30725), (30726, 30750), (30758, 30852), (30926, 31031), (31250, 31381), (31382, 31382), (31423, 31529), (31530, 31555), (32805, 32900), (33614, 33621), (33708, 33746), (34347, 34469), (34470, 34523), (34816, 34939), (34940, 34942), (36517, 36629), (36630, 36633), (37303, 37342), (37500, 37578), (38307, 38423), (39326, 39455), (39456, 39458), (40401, 40460), (40931, 40936), (40960, 41063), (43750, 43819), (45369, 45385), (45927, 45928), (47526, 47653), (47654, 47656), (48387, 48505), (48734, 48865), (48866, 48866), (49152, 49262), (51076, 51137), (53290, 53380), (55451, 55573), (55574, 55579), (57245, 57254), (57344, 57377), (58619, 58696), (59049, 59088), (62500, 62542), (63869, 63995), (63996, 64001), (65536, 65653), (65654, 65668), (68651, 68771), (68772, 68826), (68890, 68914), (68921, 69022), (71289, 71419), (71420, 71421), (73205, 73299), (85805, 85815), (89383, 89505), (98415, 98436), (103041, 103098), (109503, 109507), (137842, 137913), (148955, 149009)]

theorem row133_bounds_eq : row133.goods.map goodSegmentBounds = row133_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row133_layer000_intervals : List ColouredInterval :=
  [(2, 18432, 18564), (2, 18432, 18564), (2, 20480, 20612), (2, 22528, 22660), (2, 24576, 24708), (2, 26624, 26756), (2, 28672, 28804), (2, 30720, 30852), (2, 32768, 32900), (2, 34816, 34948), (2, 20480, 20612), (2, 24576, 24708), (2, 28672, 28804), (2, 32768, 32900), (2, 24576, 24708), (2, 32768, 32900), (2, 32768, 32900), (2, 32768, 32900), (3, 17556, 17628), (3, 19683, 19815), (3, 21870, 22002), (3, 24057, 24189), (3, 26244, 26376), (3, 28431, 28563), (3, 30618, 30750), (3, 32805, 32937), (3, 34992, 35111), (3, 19683, 19815), (3, 26244, 26376), (3, 32805, 32937), (3, 19683, 19815), (5, 18750, 18882), (5, 21875, 22007), (5, 25000, 25132), (5, 28125, 28257), (5, 31250, 31382), (5, 34375, 34507), (5, 31250, 31382), (7, 33614, 33746), (11, 18634, 18766), (11, 19965, 20097), (11, 21296, 21428), (11, 22627, 22759), (11, 23958, 24090), (11, 29282, 29414), (13, 17576, 17708), (13, 19773, 19905), (13, 21970, 22102), (13, 24167, 24299), (13, 26364, 26496), (13, 28561, 28693), (13, 30758, 30890), (13, 32955, 33087), (13, 28561, 28693), (17, 19652, 19784), (17, 24565, 24697), (17, 29478, 29610), (17, 34391, 34523), (23, 24334, 24466), (29, 24389, 24521), (31, 29791, 29923), (37, 17797, 17929), (37, 19166, 19298), (37, 20535, 20667), (37, 21904, 22036), (37, 23273, 23405), (37, 24642, 24774), (41, 18491, 18623), (41, 20172, 20304), (41, 21853, 21985), (41, 23534, 23666), (41, 25215, 25347), (41, 26896, 27028), (41, 28577, 28709), (41, 30258, 30390), (43, 18490, 18622), (43, 20339, 20471), (43, 22188, 22320), (43, 24037, 24169), (43, 25886, 26018), (43, 27735, 27867), (43, 29584, 29716), (43, 31433, 31565), (43, 33282, 33414), (47, 17672, 17804), (47, 19881, 20013), (47, 22090, 22222), (47, 24299, 24431), (47, 26508, 26640), (47, 28717, 28849), (47, 30926, 31058), (47, 33135, 33267), (53, 19663, 19795), (53, 22472, 22604), (53, 25281, 25413), (53, 28090, 28222), (53, 30899, 31031), (53, 33708, 33840), (59, 20886, 21018), (59, 24367, 24499), (59, 27848, 27980), (59, 31329, 31461), (59, 34810, 34942), (61, 18605, 18737), (61, 22326, 22458), (61, 26047, 26179), (61, 29768, 29900), (61, 33489, 33621), (67, 17956, 18088), (67, 22445, 22577), (67, 26934, 27066), (67, 31423, 31555), (71, 20164, 20296), (71, 25205, 25337), (71, 30246, 30378), (73, 21316, 21448), (73, 26645, 26777), (73, 31974, 32106), (79, 18723, 18855), (79, 24964, 25096), (79, 31205, 31337), (83, 20667, 20799), (83, 27556, 27688), (83, 34445, 34577), (89, 23763, 23895), (89, 31684, 31816), (97, 18818, 18950), (97, 28227, 28359), (101, 20402, 20534), (101, 30603, 30735), (103, 21218, 21350), (103, 31827, 31959), (107, 22898, 23030), (107, 34347, 34479), (109, 23762, 23894), (113, 25538, 25670), (127, 32258, 32390), (131, 34322, 34454)]

def row133_layer000_block000 : List ColouredInterval :=
  [(2, 18432, 18564), (2, 18432, 18564), (2, 20480, 20612), (2, 22528, 22660), (2, 24576, 24708), (2, 26624, 26756), (2, 28672, 28804), (2, 30720, 30852), (2, 32768, 32900), (2, 34816, 34948), (2, 20480, 20612), (2, 24576, 24708), (2, 28672, 28804), (2, 32768, 32900)]

def row133_layer000_block001 : List ColouredInterval :=
  [(2, 24576, 24708), (2, 32768, 32900), (2, 32768, 32900), (2, 32768, 32900), (3, 17556, 17628), (3, 19683, 19815), (3, 21870, 22002), (3, 24057, 24189), (3, 26244, 26376), (3, 28431, 28563), (3, 30618, 30750), (3, 32805, 32937), (3, 34992, 35111), (3, 19683, 19815)]

def row133_layer000_block002 : List ColouredInterval :=
  [(3, 26244, 26376), (3, 32805, 32937), (3, 19683, 19815), (5, 18750, 18882), (5, 21875, 22007), (5, 25000, 25132), (5, 28125, 28257), (5, 31250, 31382), (5, 34375, 34507), (5, 31250, 31382), (7, 33614, 33746), (11, 18634, 18766), (11, 19965, 20097), (11, 21296, 21428)]

def row133_layer000_block003 : List ColouredInterval :=
  [(11, 22627, 22759), (11, 23958, 24090), (11, 29282, 29414), (13, 17576, 17708), (13, 19773, 19905), (13, 21970, 22102), (13, 24167, 24299), (13, 26364, 26496), (13, 28561, 28693), (13, 30758, 30890), (13, 32955, 33087), (13, 28561, 28693), (17, 19652, 19784), (17, 24565, 24697)]

def row133_layer000_block004 : List ColouredInterval :=
  [(17, 29478, 29610), (17, 34391, 34523), (23, 24334, 24466), (29, 24389, 24521), (31, 29791, 29923), (37, 17797, 17929), (37, 19166, 19298), (37, 20535, 20667), (37, 21904, 22036), (37, 23273, 23405), (37, 24642, 24774), (41, 18491, 18623), (41, 20172, 20304), (41, 21853, 21985)]

def row133_layer000_block005 : List ColouredInterval :=
  [(41, 23534, 23666), (41, 25215, 25347), (41, 26896, 27028), (41, 28577, 28709), (41, 30258, 30390), (43, 18490, 18622), (43, 20339, 20471), (43, 22188, 22320), (43, 24037, 24169), (43, 25886, 26018), (43, 27735, 27867), (43, 29584, 29716), (43, 31433, 31565), (43, 33282, 33414)]

def row133_layer000_block006 : List ColouredInterval :=
  [(47, 17672, 17804), (47, 19881, 20013), (47, 22090, 22222), (47, 24299, 24431), (47, 26508, 26640), (47, 28717, 28849), (47, 30926, 31058), (47, 33135, 33267), (53, 19663, 19795), (53, 22472, 22604), (53, 25281, 25413), (53, 28090, 28222), (53, 30899, 31031), (53, 33708, 33840)]

def row133_layer000_block007 : List ColouredInterval :=
  [(59, 20886, 21018), (59, 24367, 24499), (59, 27848, 27980), (59, 31329, 31461), (59, 34810, 34942), (61, 18605, 18737), (61, 22326, 22458), (61, 26047, 26179), (61, 29768, 29900), (61, 33489, 33621), (67, 17956, 18088), (67, 22445, 22577), (67, 26934, 27066), (67, 31423, 31555)]

def row133_layer000_block008 : List ColouredInterval :=
  [(71, 20164, 20296), (71, 25205, 25337), (71, 30246, 30378), (73, 21316, 21448), (73, 26645, 26777), (73, 31974, 32106), (79, 18723, 18855), (79, 24964, 25096), (79, 31205, 31337), (83, 20667, 20799), (83, 27556, 27688), (83, 34445, 34577), (89, 23763, 23895), (89, 31684, 31816)]

def row133_layer000_block009 : List ColouredInterval :=
  [(97, 18818, 18950), (97, 28227, 28359), (101, 20402, 20534), (101, 30603, 30735), (103, 21218, 21350), (103, 31827, 31959), (107, 22898, 23030), (107, 34347, 34479), (109, 23762, 23894), (113, 25538, 25670), (127, 32258, 32390), (131, 34322, 34454)]

def row133_layer000_chunks : List (List ColouredInterval) :=
  [row133_layer000_block000, row133_layer000_block001, row133_layer000_block002, row133_layer000_block003, row133_layer000_block004, row133_layer000_block005, row133_layer000_block006, row133_layer000_block007, row133_layer000_block008, row133_layer000_block009]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer000_arithmetic : LayerArithmeticValid row133.height { lower := 17556, upper := 35112, M := 18 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer000_enumeration :
    activePowerIntervalList 133 18 17556 35112 = row133_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer000_pairs000 :
    row133_layer000_block000.all (fun I => row133_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row133_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer000_pairs001 :
    row133_layer000_block001.all (fun I => row133_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row133_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer000_pairs002 :
    row133_layer000_block002.all (fun I => row133_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row133_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer000_pairs003 :
    row133_layer000_block003.all (fun I => row133_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row133_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer000_pairs004 :
    row133_layer000_block004.all (fun I => row133_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row133_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer000_pairs005 :
    row133_layer000_block005.all (fun I => row133_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row133_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer000_pairs006 :
    row133_layer000_block006.all (fun I => row133_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row133_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer000_pairs007 :
    row133_layer000_block007.all (fun I => row133_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row133_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer000_pairs008 :
    row133_layer000_block008.all (fun I => row133_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row133_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer000_pairs008
