import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

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

theorem row133_registered :
    decide (row133.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row133_goods_checked :
    row133.goods.all (goodSegmentCheck row133.height.i row133.height.r row133.height.s) = true := by
  decide +kernel

theorem row133_small_checked :
    coverCheck (2 * row133.height.i + 2) (row133.height.i * (row133.height.i - 1) - 1)
      (row133.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row133_layerCover_checked :
    coverCheck (row133.height.i * (row133.height.i - 1)) (row133.height.n0 - 1)
      (row133.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row133_layer000_checked :
    coverLayerCheck row133.height row133.goods { lower := 17556, upper := 35112, M := 18 } = true := by
  decide +kernel

theorem row133_layer001_checked :
    coverLayerCheck row133.height row133.goods { lower := 35112, upper := 70224, M := 14 } = true := by
  decide +kernel

theorem row133_layer002_checked :
    coverLayerCheck row133.height row133.goods { lower := 70224, upper := 140448, M := 11 } = true := by
  decide +kernel

theorem row133_layer003_checked :
    coverLayerCheck row133.height row133.goods { lower := 140448, upper := 280896, M := 8 } = true := by
  decide +kernel

theorem row133_layer004_checked :
    coverLayerCheck row133.height row133.goods { lower := 280896, upper := 561792, M := 6 } = true := by
  decide +kernel

theorem row133_layer005_checked :
    coverLayerCheck row133.height row133.goods { lower := 561792, upper := 1123584, M := 5 } = true := by
  decide +kernel

theorem row133_layer006_checked :
    coverLayerCheck row133.height row133.goods { lower := 1123584, upper := 2247168, M := 4 } = true := by
  decide +kernel

theorem row133_layer007_checked :
    coverLayerCheck row133.height row133.goods { lower := 2247168, upper := 4494336, M := 3 } = true := by
  decide +kernel

theorem row133_layer008_checked :
    coverLayerCheck row133.height row133.goods { lower := 4494336, upper := 8988672, M := 3 } = true := by
  decide +kernel

theorem row133_layer009_checked :
    coverLayerCheck row133.height row133.goods { lower := 8988672, upper := 17977344, M := 2 } = true := by
  decide +kernel

theorem row133_layer010_checked :
    coverLayerCheck row133.height row133.goods { lower := 17977344, upper := 35954688, M := 2 } = true := by
  decide +kernel

theorem row133_layer011_checked :
    coverLayerCheck row133.height row133.goods { lower := 35954688, upper := 71909376, M := 1 } = true := by
  decide +kernel

theorem row133_layer012_checked :
    coverLayerCheck row133.height row133.goods { lower := 71909376, upper := 100000000, M := 1 } = true := by
  decide +kernel

theorem row133_layers_checked :
    row133.layers.all (coverLayerCheck row133.height row133.goods) = true := by
  change List.all [
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
  ] (coverLayerCheck row133.height row133.goods) = true
  simp only [List.all_cons, List.all_nil,
    row133_layer000_checked,
    row133_layer001_checked,
    row133_layer002_checked,
    row133_layer003_checked,
    row133_layer004_checked,
    row133_layer005_checked,
    row133_layer006_checked,
    row133_layer007_checked,
    row133_layer008_checked,
    row133_layer009_checked,
    row133_layer010_checked,
    row133_layer011_checked,
    row133_layer012_checked,
    Bool.true_and]

theorem row133_checked : finiteCoverRowCheck row133 = true := by
  simp only [finiteCoverRowCheck, row133_registered, row133_goods_checked,
    row133_small_checked, row133_layerCover_checked, row133_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row133_checked

end B699LowIndex
