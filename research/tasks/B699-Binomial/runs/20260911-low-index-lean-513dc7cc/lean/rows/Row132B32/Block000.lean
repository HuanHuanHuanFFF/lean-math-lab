import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row132_height : HeightCertificateDatum := { i := 132, r := 43, s := 93, n0Power10 := 8 }

def row132_goods : List GoodSegment := [
  { lower := 266, upper := 394, witness := RowWitness.topPrime 263 },
  { lower := 395, upper := 520, witness := RowWitness.topPrime 389 },
  { lower := 521, upper := 652, witness := RowWitness.topPrime 521 },
  { lower := 653, upper := 784, witness := RowWitness.topPrime 653 },
  { lower := 785, upper := 904, witness := RowWitness.topPrime 773 },
  { lower := 905, upper := 1018, witness := RowWitness.topPrime 887 },
  { lower := 1019, upper := 1150, witness := RowWitness.topPrime 1019 },
  { lower := 1151, upper := 1282, witness := RowWitness.topPrime 1151 },
  { lower := 1283, upper := 1414, witness := RowWitness.topPrime 1283 },
  { lower := 1415, upper := 1540, witness := RowWitness.topPrime 1409 },
  { lower := 1541, upper := 1662, witness := RowWitness.topPrime 1531 },
  { lower := 1663, upper := 1794, witness := RowWitness.topPrime 1663 },
  { lower := 1795, upper := 1920, witness := RowWitness.topPrime 1789 },
  { lower := 1921, upper := 2044, witness := RowWitness.topPrime 1913 },
  { lower := 2045, upper := 2170, witness := RowWitness.topPrime 2039 },
  { lower := 2171, upper := 2292, witness := RowWitness.topPrime 2161 },
  { lower := 2293, upper := 2424, witness := RowWitness.topPrime 2293 },
  { lower := 2425, upper := 2554, witness := RowWitness.topPrime 2423 },
  { lower := 2555, upper := 2682, witness := RowWitness.topPrime 2551 },
  { lower := 2683, upper := 2814, witness := RowWitness.topPrime 2683 },
  { lower := 2815, upper := 2934, witness := RowWitness.topPrime 2803 },
  { lower := 2935, upper := 3058, witness := RowWitness.topPrime 2927 },
  { lower := 3059, upper := 3180, witness := RowWitness.topPrime 3049 },
  { lower := 3181, upper := 3312, witness := RowWitness.topPrime 3181 },
  { lower := 3313, upper := 3444, witness := RowWitness.topPrime 3313 },
  { lower := 3445, upper := 3564, witness := RowWitness.topPrime 3433 },
  { lower := 3565, upper := 3690, witness := RowWitness.topPrime 3559 },
  { lower := 3691, upper := 3822, witness := RowWitness.topPrime 3691 },
  { lower := 3823, upper := 3954, witness := RowWitness.topPrime 3823 },
  { lower := 3955, upper := 4078, witness := RowWitness.topPrime 3947 },
  { lower := 4079, upper := 4210, witness := RowWitness.topPrime 4079 },
  { lower := 4211, upper := 4342, witness := RowWitness.topPrime 4211 },
  { lower := 4343, upper := 4470, witness := RowWitness.topPrime 4339 },
  { lower := 4471, upper := 4594, witness := RowWitness.topPrime 4463 },
  { lower := 4595, upper := 4722, witness := RowWitness.topPrime 4591 },
  { lower := 4723, upper := 4854, witness := RowWitness.topPrime 4723 },
  { lower := 4855, upper := 4962, witness := RowWitness.topPrime 4831 },
  { lower := 4963, upper := 5088, witness := RowWitness.topPrime 4957 },
  { lower := 5089, upper := 5218, witness := RowWitness.topPrime 5087 },
  { lower := 5219, upper := 5340, witness := RowWitness.topPrime 5209 },
  { lower := 5341, upper := 5464, witness := RowWitness.topPrime 5333 },
  { lower := 5465, upper := 5580, witness := RowWitness.topPrime 5449 },
  { lower := 5581, upper := 5712, witness := RowWitness.topPrime 5581 },
  { lower := 5713, upper := 5842, witness := RowWitness.topPrime 5711 },
  { lower := 5843, upper := 5974, witness := RowWitness.topPrime 5843 },
  { lower := 5975, upper := 6084, witness := RowWitness.topPrime 5953 },
  { lower := 6085, upper := 6210, witness := RowWitness.topPrime 6079 },
  { lower := 6211, upper := 6342, witness := RowWitness.topPrime 6211 },
  { lower := 6343, upper := 6474, witness := RowWitness.topPrime 6343 },
  { lower := 6475, upper := 6604, witness := RowWitness.topPrime 6473 },
  { lower := 6605, upper := 6730, witness := RowWitness.topPrime 6599 },
  { lower := 6731, upper := 6850, witness := RowWitness.topPrime 6719 },
  { lower := 6851, upper := 6972, witness := RowWitness.topPrime 6841 },
  { lower := 6973, upper := 7102, witness := RowWitness.topPrime 6971 },
  { lower := 7103, upper := 7234, witness := RowWitness.topPrime 7103 },
  { lower := 7235, upper := 7360, witness := RowWitness.topPrime 7229 },
  { lower := 7361, upper := 7482, witness := RowWitness.topPrime 7351 },
  { lower := 7483, upper := 7612, witness := RowWitness.topPrime 7481 },
  { lower := 7613, upper := 7738, witness := RowWitness.topPrime 7607 },
  { lower := 7739, upper := 7858, witness := RowWitness.topPrime 7727 },
  { lower := 7859, upper := 7984, witness := RowWitness.topPrime 7853 },
  { lower := 7985, upper := 8094, witness := RowWitness.topPrime 7963 },
  { lower := 8095, upper := 8224, witness := RowWitness.topPrime 8093 },
  { lower := 8225, upper := 8352, witness := RowWitness.topPrime 8221 },
  { lower := 8353, upper := 8484, witness := RowWitness.topPrime 8353 },
  { lower := 8485, upper := 8598, witness := RowWitness.topPrime 8467 },
  { lower := 8599, upper := 8730, witness := RowWitness.topPrime 8599 },
  { lower := 8731, upper := 8862, witness := RowWitness.topPrime 8731 },
  { lower := 8863, upper := 8994, witness := RowWitness.topPrime 8863 },
  { lower := 8995, upper := 9102, witness := RowWitness.topPrime 8971 },
  { lower := 9103, upper := 9234, witness := RowWitness.topPrime 9103 },
  { lower := 9235, upper := 9358, witness := RowWitness.topPrime 9227 },
  { lower := 9359, upper := 9480, witness := RowWitness.topPrime 9349 },
  { lower := 9481, upper := 9610, witness := RowWitness.topPrime 9479 },
  { lower := 9611, upper := 9732, witness := RowWitness.topPrime 9601 },
  { lower := 9733, upper := 9864, witness := RowWitness.topPrime 9733 },
  { lower := 9865, upper := 9990, witness := RowWitness.topPrime 9859 },
  { lower := 9991, upper := 10104, witness := RowWitness.topPrime 9973 },
  { lower := 10105, upper := 10234, witness := RowWitness.topPrime 10103 },
  { lower := 10235, upper := 10354, witness := RowWitness.topPrime 10223 },
  { lower := 10355, upper := 10474, witness := RowWitness.topPrime 10343 },
  { lower := 10475, upper := 10594, witness := RowWitness.topPrime 10463 },
  { lower := 10595, upper := 10720, witness := RowWitness.topPrime 10589 },
  { lower := 10721, upper := 10842, witness := RowWitness.topPrime 10711 },
  { lower := 10843, upper := 10968, witness := RowWitness.topPrime 10837 },
  { lower := 10969, upper := 11088, witness := RowWitness.topPrime 10957 },
  { lower := 11089, upper := 11218, witness := RowWitness.topPrime 11087 },
  { lower := 11219, upper := 11344, witness := RowWitness.topPrime 11213 },
  { lower := 11345, upper := 11460, witness := RowWitness.topPrime 11329 },
  { lower := 11461, upper := 11578, witness := RowWitness.topPrime 11447 },
  { lower := 11579, upper := 11710, witness := RowWitness.topPrime 11579 },
  { lower := 11711, upper := 11832, witness := RowWitness.topPrime 11701 },
  { lower := 11833, upper := 11964, witness := RowWitness.topPrime 11833 },
  { lower := 11965, upper := 12090, witness := RowWitness.topPrime 11959 },
  { lower := 12091, upper := 12204, witness := RowWitness.topPrime 12073 },
  { lower := 12205, upper := 12334, witness := RowWitness.topPrime 12203 },
  { lower := 12335, upper := 12460, witness := RowWitness.topPrime 12329 },
  { lower := 12461, upper := 12588, witness := RowWitness.topPrime 12457 },
  { lower := 12589, upper := 12720, witness := RowWitness.topPrime 12589 },
  { lower := 12721, upper := 12852, witness := RowWitness.topPrime 12721 },
  { lower := 12853, upper := 12984, witness := RowWitness.topPrime 12853 },
  { lower := 12985, upper := 13114, witness := RowWitness.topPrime 12983 },
  { lower := 13115, upper := 13240, witness := RowWitness.topPrime 13109 },
  { lower := 13241, upper := 13372, witness := RowWitness.topPrime 13241 },
  { lower := 13373, upper := 13498, witness := RowWitness.topPrime 13367 },
  { lower := 13499, upper := 13630, witness := RowWitness.topPrime 13499 },
  { lower := 13631, upper := 13758, witness := RowWitness.topPrime 13627 },
  { lower := 13759, upper := 13890, witness := RowWitness.topPrime 13759 },
  { lower := 13891, upper := 14014, witness := RowWitness.topPrime 13883 },
  { lower := 14015, upper := 14142, witness := RowWitness.topPrime 14011 },
  { lower := 14143, upper := 14274, witness := RowWitness.topPrime 14143 },
  { lower := 14275, upper := 14382, witness := RowWitness.topPrime 14251 },
  { lower := 14383, upper := 14500, witness := RowWitness.topPrime 14369 },
  { lower := 14501, upper := 14620, witness := RowWitness.topPrime 14489 },
  { lower := 14621, upper := 14752, witness := RowWitness.topPrime 14621 },
  { lower := 14753, upper := 14884, witness := RowWitness.topPrime 14753 },
  { lower := 14885, upper := 15010, witness := RowWitness.topPrime 14879 },
  { lower := 15011, upper := 15114, witness := RowWitness.topPrime 14983 },
  { lower := 15115, upper := 15238, witness := RowWitness.topPrime 15107 },
  { lower := 15239, upper := 15364, witness := RowWitness.topPrime 15233 },
  { lower := 15365, upper := 15492, witness := RowWitness.topPrime 15361 },
  { lower := 15493, upper := 15624, witness := RowWitness.topPrime 15493 },
  { lower := 15625, upper := 15750, witness := RowWitness.topPrime 15619 },
  { lower := 15751, upper := 15880, witness := RowWitness.topPrime 15749 },
  { lower := 15881, upper := 16012, witness := RowWitness.topPrime 15881 },
  { lower := 16013, upper := 16138, witness := RowWitness.topPrime 16007 },
  { lower := 16139, upper := 16270, witness := RowWitness.topPrime 16139 },
  { lower := 16271, upper := 16398, witness := RowWitness.topPrime 16267 },
  { lower := 16399, upper := 16512, witness := RowWitness.topPrime 16381 },
  { lower := 16513, upper := 16624, witness := RowWitness.topPrime 16493 },
  { lower := 16625, upper := 16750, witness := RowWitness.topPrime 16619 },
  { lower := 16751, upper := 16878, witness := RowWitness.topPrime 16747 },
  { lower := 16879, upper := 17010, witness := RowWitness.topPrime 16879 },
  { lower := 17011, upper := 17142, witness := RowWitness.topPrime 17011 },
  { lower := 17143, upper := 17268, witness := RowWitness.topPrime 17137 },
  { lower := 17269, upper := 17291, witness := RowWitness.topPrime 17257 },
  { lower := 17405, upper := 17429, witness := RowWitness.topPrime 17401 },
  { lower := 17672, upper := 17707, witness := RowWitness.topPrime 17669 },
  { lower := 17797, upper := 17803, witness := RowWitness.topPrime 17791 },
  { lower := 18491, upper := 18612, witness := RowWitness.topPrime 18481 },
  { lower := 18613, upper := 18622, witness := RowWitness.topPrime 18593 },
  { lower := 18723, upper := 18736, witness := RowWitness.topPrime 18719 },
  { lower := 18750, upper := 18880, witness := RowWitness.topPrime 18749 },
  { lower := 18881, upper := 18881, witness := RowWitness.topPrime 18869 },
  { lower := 19208, upper := 19297, witness := RowWitness.topPrime 19207 },
  { lower := 19663, upper := 19792, witness := RowWitness.topPrime 19661 },
  { lower := 19793, upper := 19814, witness := RowWitness.topPrime 19793 },
  { lower := 19881, upper := 19904, witness := RowWitness.topPrime 19867 },
  { lower := 20172, upper := 20292, witness := RowWitness.topPrime 20161 },
  { lower := 20293, upper := 20295, witness := RowWitness.topPrime 20287 },
  { lower := 20402, upper := 20470, witness := RowWitness.topPrime 20399 },
  { lower := 20577, upper := 20694, witness := RowWitness.topPrime 20563 },
  { lower := 20695, upper := 20708, witness := RowWitness.topPrime 20693 },
  { lower := 21316, upper := 21349, witness := RowWitness.topPrime 21313 },
  { lower := 21875, upper := 22002, witness := RowWitness.topPrime 21871 },
  { lower := 22003, upper := 22035, witness := RowWitness.topPrime 22003 },
  { lower := 22090, upper := 22101, witness := RowWitness.topPrime 22079 },
  { lower := 22188, upper := 22221, witness := RowWitness.topPrime 22171 },
  { lower := 22445, upper := 22457, witness := RowWitness.topPrime 22441 },
  { lower := 22472, upper := 22576, witness := RowWitness.topPrime 22469 },
  { lower := 23763, upper := 23892, witness := RowWitness.topPrime 23761 },
  { lower := 23893, upper := 23893, witness := RowWitness.topPrime 23893 },
  { lower := 24037, upper := 24141, witness := RowWitness.topPrime 24029 },
  { lower := 24167, upper := 24168, witness := RowWitness.topPrime 24151 },
  { lower := 24334, upper := 24460, witness := RowWitness.topPrime 24329 },
  { lower := 24461, upper := 24498, witness := RowWitness.topPrime 24443 },
  { lower := 24576, upper := 24702, witness := RowWitness.topPrime 24571 },
  { lower := 24703, upper := 24707, witness := RowWitness.topPrime 24697 },
  { lower := 25000, upper := 25095, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25320, witness := RowWitness.topPrime 25189 },
  { lower := 25321, upper := 25346, witness := RowWitness.topPrime 25321 },
  { lower := 26364, upper := 26375, witness := RowWitness.topPrime 26357 },
  { lower := 26411, upper := 26495, witness := RowWitness.topPrime 26407 },
  { lower := 26508, upper := 26542, witness := RowWitness.topPrime 26501 },
  { lower := 26934, upper := 27027, witness := RowWitness.topPrime 26927 },
  { lower := 27556, upper := 27567, witness := RowWitness.topPrime 27551 },
  { lower := 27848, upper := 27866, witness := RowWitness.topPrime 27847 },
  { lower := 28125, upper := 28221, witness := RowWitness.topPrime 28123 },
  { lower := 28227, upper := 28256, witness := RowWitness.topPrime 28219 },
  { lower := 28577, upper := 28692, witness := RowWitness.topPrime 28573 },
  { lower := 28812, upper := 28848, witness := RowWitness.topPrime 28807 },
  { lower := 29584, upper := 29609, witness := RowWitness.topPrime 29581 },
  { lower := 29791, upper := 29899, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30377, witness := RowWitness.topPrime 30253 },
  { lower := 30926, upper := 31030, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31324, witness := RowWitness.topPrime 31193 },
  { lower := 31325, upper := 31381, witness := RowWitness.topPrime 31321 },
  { lower := 31423, upper := 31528, witness := RowWitness.topPrime 31397 },
  { lower := 31529, upper := 31554, witness := RowWitness.topPrime 31517 },
  { lower := 32805, upper := 32899, witness := RowWitness.topPrime 32803 },
  { lower := 33614, upper := 33620, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33745, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34450, witness := RowWitness.topPrime 34319 },
  { lower := 34451, upper := 34522, witness := RowWitness.topPrime 34439 },
  { lower := 36517, upper := 36628, witness := RowWitness.topPrime 36497 },
  { lower := 36629, upper := 36632, witness := RowWitness.topPrime 36629 },
  { lower := 37303, upper := 37341, witness := RowWitness.topPrime 37277 },
  { lower := 37500, upper := 37577, witness := RowWitness.topPrime 37493 },
  { lower := 38307, upper := 38422, witness := RowWitness.topPrime 38303 },
  { lower := 39326, upper := 39454, witness := RowWitness.topPrime 39323 },
  { lower := 39455, upper := 39457, witness := RowWitness.topPrime 39451 },
  { lower := 40401, upper := 40459, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 40935, witness := RowWitness.topPrime 40927 },
  { lower := 43750, upper := 43818, witness := RowWitness.topPrime 43721 },
  { lower := 45369, upper := 45384, witness := RowWitness.topPrime 45361 },
  { lower := 47526, upper := 47652, witness := RowWitness.topPrime 47521 },
  { lower := 47653, upper := 47655, witness := RowWitness.topPrime 47653 },
  { lower := 48013, upper := 48092, witness := RowWitness.topPrime 47981 },
  { lower := 48387, upper := 48504, witness := RowWitness.topPrime 48383 },
  { lower := 48734, upper := 48864, witness := RowWitness.topPrime 48733 },
  { lower := 48865, upper := 48865, witness := RowWitness.topPrime 48859 },
  { lower := 49152, upper := 49261, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50541, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51136, witness := RowWitness.topPrime 51071 },
  { lower := 55451, upper := 55572, witness := RowWitness.topPrime 55441 },
  { lower := 55573, upper := 55578, witness := RowWitness.topPrime 55547 },
  { lower := 57245, upper := 57253, witness := RowWitness.topPrime 57241 },
  { lower := 59049, upper := 59087, witness := RowWitness.topPrime 59029 },
  { lower := 62500, upper := 62541, witness := RowWitness.topPrime 62497 },
  { lower := 63869, upper := 63994, witness := RowWitness.topPrime 63863 },
  { lower := 63995, upper := 64000, witness := RowWitness.topPrime 63977 },
  { lower := 65536, upper := 65652, witness := RowWitness.topPrime 65521 },
  { lower := 65653, upper := 65664, witness := RowWitness.topPrime 65651 },
  { lower := 68644, upper := 68770, witness := RowWitness.topPrime 68639 },
  { lower := 68771, upper := 68825, witness := RowWitness.topPrime 68771 },
  { lower := 68890, upper := 68913, witness := RowWitness.topPrime 68881 },
  { lower := 68921, upper := 69021, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71418, witness := RowWitness.topPrime 71287 },
  { lower := 71419, upper := 71420, witness := RowWitness.topPrime 71419 },
  { lower := 85805, upper := 85814, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89504, witness := RowWitness.topPrime 89381 },
  { lower := 103041, upper := 103097, witness := RowWitness.topPrime 103007 },
  { lower := 109503, upper := 109506, witness := RowWitness.topPrime 109481 },
  { lower := 148955, upper := 149008, witness := RowWitness.topPrime 148949 }
]

def row132_layers : List CoverLayer := [
  { lower := 17292, upper := 34584, M := 18 },
  { lower := 34584, upper := 69168, M := 14 },
  { lower := 69168, upper := 138336, M := 11 },
  { lower := 138336, upper := 276672, M := 9 },
  { lower := 276672, upper := 553344, M := 7 },
  { lower := 553344, upper := 1106688, M := 5 },
  { lower := 1106688, upper := 2213376, M := 4 },
  { lower := 2213376, upper := 4426752, M := 3 },
  { lower := 4426752, upper := 8853504, M := 3 },
  { lower := 8853504, upper := 17707008, M := 2 },
  { lower := 17707008, upper := 35414016, M := 2 },
  { lower := 35414016, upper := 70828032, M := 2 },
  { lower := 70828032, upper := 100000000, M := 1 }
]

def row132 : FiniteCoverRow := {
  height := row132_height,
  goods := row132_goods,
  layers := row132_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row132

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row132_good000_checked :
    goodSegmentCheck 132 43 93
      { lower := 266, upper := 394, witness := RowWitness.topPrime 263 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good001_checked :
    goodSegmentCheck 132 43 93
      { lower := 395, upper := 520, witness := RowWitness.topPrime 389 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good002_checked :
    goodSegmentCheck 132 43 93
      { lower := 521, upper := 652, witness := RowWitness.topPrime 521 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good003_checked :
    goodSegmentCheck 132 43 93
      { lower := 653, upper := 784, witness := RowWitness.topPrime 653 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good004_checked :
    goodSegmentCheck 132 43 93
      { lower := 785, upper := 904, witness := RowWitness.topPrime 773 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good005_checked :
    goodSegmentCheck 132 43 93
      { lower := 905, upper := 1018, witness := RowWitness.topPrime 887 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good006_checked :
    goodSegmentCheck 132 43 93
      { lower := 1019, upper := 1150, witness := RowWitness.topPrime 1019 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good007_checked :
    goodSegmentCheck 132 43 93
      { lower := 1151, upper := 1282, witness := RowWitness.topPrime 1151 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good008_checked :
    goodSegmentCheck 132 43 93
      { lower := 1283, upper := 1414, witness := RowWitness.topPrime 1283 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good009_checked :
    goodSegmentCheck 132 43 93
      { lower := 1415, upper := 1540, witness := RowWitness.topPrime 1409 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good010_checked :
    goodSegmentCheck 132 43 93
      { lower := 1541, upper := 1662, witness := RowWitness.topPrime 1531 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good011_checked :
    goodSegmentCheck 132 43 93
      { lower := 1663, upper := 1794, witness := RowWitness.topPrime 1663 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good012_checked :
    goodSegmentCheck 132 43 93
      { lower := 1795, upper := 1920, witness := RowWitness.topPrime 1789 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good013_checked :
    goodSegmentCheck 132 43 93
      { lower := 1921, upper := 2044, witness := RowWitness.topPrime 1913 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good014_checked :
    goodSegmentCheck 132 43 93
      { lower := 2045, upper := 2170, witness := RowWitness.topPrime 2039 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good015_checked :
    goodSegmentCheck 132 43 93
      { lower := 2171, upper := 2292, witness := RowWitness.topPrime 2161 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row132_good016_checked :
    goodSegmentCheck 132 43 93
      { lower := 2293, upper := 2424, witness := RowWitness.topPrime 2293 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good017_checked :
    goodSegmentCheck 132 43 93
      { lower := 2425, upper := 2554, witness := RowWitness.topPrime 2423 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good018_checked :
    goodSegmentCheck 132 43 93
      { lower := 2555, upper := 2682, witness := RowWitness.topPrime 2551 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good019_checked :
    goodSegmentCheck 132 43 93
      { lower := 2683, upper := 2814, witness := RowWitness.topPrime 2683 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good020_checked :
    goodSegmentCheck 132 43 93
      { lower := 2815, upper := 2934, witness := RowWitness.topPrime 2803 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good021_checked :
    goodSegmentCheck 132 43 93
      { lower := 2935, upper := 3058, witness := RowWitness.topPrime 2927 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good022_checked :
    goodSegmentCheck 132 43 93
      { lower := 3059, upper := 3180, witness := RowWitness.topPrime 3049 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good023_checked :
    goodSegmentCheck 132 43 93
      { lower := 3181, upper := 3312, witness := RowWitness.topPrime 3181 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good024_checked :
    goodSegmentCheck 132 43 93
      { lower := 3313, upper := 3444, witness := RowWitness.topPrime 3313 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good025_checked :
    goodSegmentCheck 132 43 93
      { lower := 3445, upper := 3564, witness := RowWitness.topPrime 3433 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good026_checked :
    goodSegmentCheck 132 43 93
      { lower := 3565, upper := 3690, witness := RowWitness.topPrime 3559 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good027_checked :
    goodSegmentCheck 132 43 93
      { lower := 3691, upper := 3822, witness := RowWitness.topPrime 3691 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good028_checked :
    goodSegmentCheck 132 43 93
      { lower := 3823, upper := 3954, witness := RowWitness.topPrime 3823 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good029_checked :
    goodSegmentCheck 132 43 93
      { lower := 3955, upper := 4078, witness := RowWitness.topPrime 3947 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good030_checked :
    goodSegmentCheck 132 43 93
      { lower := 4079, upper := 4210, witness := RowWitness.topPrime 4079 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good031_checked :
    goodSegmentCheck 132 43 93
      { lower := 4211, upper := 4342, witness := RowWitness.topPrime 4211 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row132_good032_checked :
    goodSegmentCheck 132 43 93
      { lower := 4343, upper := 4470, witness := RowWitness.topPrime 4339 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good033_checked :
    goodSegmentCheck 132 43 93
      { lower := 4471, upper := 4594, witness := RowWitness.topPrime 4463 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good034_checked :
    goodSegmentCheck 132 43 93
      { lower := 4595, upper := 4722, witness := RowWitness.topPrime 4591 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good035_checked :
    goodSegmentCheck 132 43 93
      { lower := 4723, upper := 4854, witness := RowWitness.topPrime 4723 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good036_checked :
    goodSegmentCheck 132 43 93
      { lower := 4855, upper := 4962, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good037_checked :
    goodSegmentCheck 132 43 93
      { lower := 4963, upper := 5088, witness := RowWitness.topPrime 4957 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good038_checked :
    goodSegmentCheck 132 43 93
      { lower := 5089, upper := 5218, witness := RowWitness.topPrime 5087 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good039_checked :
    goodSegmentCheck 132 43 93
      { lower := 5219, upper := 5340, witness := RowWitness.topPrime 5209 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good040_checked :
    goodSegmentCheck 132 43 93
      { lower := 5341, upper := 5464, witness := RowWitness.topPrime 5333 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good041_checked :
    goodSegmentCheck 132 43 93
      { lower := 5465, upper := 5580, witness := RowWitness.topPrime 5449 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good042_checked :
    goodSegmentCheck 132 43 93
      { lower := 5581, upper := 5712, witness := RowWitness.topPrime 5581 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good043_checked :
    goodSegmentCheck 132 43 93
      { lower := 5713, upper := 5842, witness := RowWitness.topPrime 5711 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good044_checked :
    goodSegmentCheck 132 43 93
      { lower := 5843, upper := 5974, witness := RowWitness.topPrime 5843 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good045_checked :
    goodSegmentCheck 132 43 93
      { lower := 5975, upper := 6084, witness := RowWitness.topPrime 5953 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good046_checked :
    goodSegmentCheck 132 43 93
      { lower := 6085, upper := 6210, witness := RowWitness.topPrime 6079 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good047_checked :
    goodSegmentCheck 132 43 93
      { lower := 6211, upper := 6342, witness := RowWitness.topPrime 6211 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row132_good048_checked :
    goodSegmentCheck 132 43 93
      { lower := 6343, upper := 6474, witness := RowWitness.topPrime 6343 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good049_checked :
    goodSegmentCheck 132 43 93
      { lower := 6475, upper := 6604, witness := RowWitness.topPrime 6473 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good050_checked :
    goodSegmentCheck 132 43 93
      { lower := 6605, upper := 6730, witness := RowWitness.topPrime 6599 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good051_checked :
    goodSegmentCheck 132 43 93
      { lower := 6731, upper := 6850, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good052_checked :
    goodSegmentCheck 132 43 93
      { lower := 6851, upper := 6972, witness := RowWitness.topPrime 6841 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good053_checked :
    goodSegmentCheck 132 43 93
      { lower := 6973, upper := 7102, witness := RowWitness.topPrime 6971 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good054_checked :
    goodSegmentCheck 132 43 93
      { lower := 7103, upper := 7234, witness := RowWitness.topPrime 7103 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good055_checked :
    goodSegmentCheck 132 43 93
      { lower := 7235, upper := 7360, witness := RowWitness.topPrime 7229 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good056_checked :
    goodSegmentCheck 132 43 93
      { lower := 7361, upper := 7482, witness := RowWitness.topPrime 7351 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good057_checked :
    goodSegmentCheck 132 43 93
      { lower := 7483, upper := 7612, witness := RowWitness.topPrime 7481 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good058_checked :
    goodSegmentCheck 132 43 93
      { lower := 7613, upper := 7738, witness := RowWitness.topPrime 7607 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good059_checked :
    goodSegmentCheck 132 43 93
      { lower := 7739, upper := 7858, witness := RowWitness.topPrime 7727 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good060_checked :
    goodSegmentCheck 132 43 93
      { lower := 7859, upper := 7984, witness := RowWitness.topPrime 7853 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good061_checked :
    goodSegmentCheck 132 43 93
      { lower := 7985, upper := 8094, witness := RowWitness.topPrime 7963 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good062_checked :
    goodSegmentCheck 132 43 93
      { lower := 8095, upper := 8224, witness := RowWitness.topPrime 8093 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good063_checked :
    goodSegmentCheck 132 43 93
      { lower := 8225, upper := 8352, witness := RowWitness.topPrime 8221 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row132_good064_checked :
    goodSegmentCheck 132 43 93
      { lower := 8353, upper := 8484, witness := RowWitness.topPrime 8353 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good065_checked :
    goodSegmentCheck 132 43 93
      { lower := 8485, upper := 8598, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good066_checked :
    goodSegmentCheck 132 43 93
      { lower := 8599, upper := 8730, witness := RowWitness.topPrime 8599 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good067_checked :
    goodSegmentCheck 132 43 93
      { lower := 8731, upper := 8862, witness := RowWitness.topPrime 8731 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good068_checked :
    goodSegmentCheck 132 43 93
      { lower := 8863, upper := 8994, witness := RowWitness.topPrime 8863 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good069_checked :
    goodSegmentCheck 132 43 93
      { lower := 8995, upper := 9102, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good070_checked :
    goodSegmentCheck 132 43 93
      { lower := 9103, upper := 9234, witness := RowWitness.topPrime 9103 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good071_checked :
    goodSegmentCheck 132 43 93
      { lower := 9235, upper := 9358, witness := RowWitness.topPrime 9227 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good072_checked :
    goodSegmentCheck 132 43 93
      { lower := 9359, upper := 9480, witness := RowWitness.topPrime 9349 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good073_checked :
    goodSegmentCheck 132 43 93
      { lower := 9481, upper := 9610, witness := RowWitness.topPrime 9479 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good074_checked :
    goodSegmentCheck 132 43 93
      { lower := 9611, upper := 9732, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good075_checked :
    goodSegmentCheck 132 43 93
      { lower := 9733, upper := 9864, witness := RowWitness.topPrime 9733 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good076_checked :
    goodSegmentCheck 132 43 93
      { lower := 9865, upper := 9990, witness := RowWitness.topPrime 9859 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good077_checked :
    goodSegmentCheck 132 43 93
      { lower := 9991, upper := 10104, witness := RowWitness.topPrime 9973 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good078_checked :
    goodSegmentCheck 132 43 93
      { lower := 10105, upper := 10234, witness := RowWitness.topPrime 10103 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good079_checked :
    goodSegmentCheck 132 43 93
      { lower := 10235, upper := 10354, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row132_good080_checked :
    goodSegmentCheck 132 43 93
      { lower := 10355, upper := 10474, witness := RowWitness.topPrime 10343 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good081_checked :
    goodSegmentCheck 132 43 93
      { lower := 10475, upper := 10594, witness := RowWitness.topPrime 10463 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good082_checked :
    goodSegmentCheck 132 43 93
      { lower := 10595, upper := 10720, witness := RowWitness.topPrime 10589 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good083_checked :
    goodSegmentCheck 132 43 93
      { lower := 10721, upper := 10842, witness := RowWitness.topPrime 10711 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good084_checked :
    goodSegmentCheck 132 43 93
      { lower := 10843, upper := 10968, witness := RowWitness.topPrime 10837 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good085_checked :
    goodSegmentCheck 132 43 93
      { lower := 10969, upper := 11088, witness := RowWitness.topPrime 10957 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good086_checked :
    goodSegmentCheck 132 43 93
      { lower := 11089, upper := 11218, witness := RowWitness.topPrime 11087 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good087_checked :
    goodSegmentCheck 132 43 93
      { lower := 11219, upper := 11344, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good088_checked :
    goodSegmentCheck 132 43 93
      { lower := 11345, upper := 11460, witness := RowWitness.topPrime 11329 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good089_checked :
    goodSegmentCheck 132 43 93
      { lower := 11461, upper := 11578, witness := RowWitness.topPrime 11447 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good090_checked :
    goodSegmentCheck 132 43 93
      { lower := 11579, upper := 11710, witness := RowWitness.topPrime 11579 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good091_checked :
    goodSegmentCheck 132 43 93
      { lower := 11711, upper := 11832, witness := RowWitness.topPrime 11701 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good092_checked :
    goodSegmentCheck 132 43 93
      { lower := 11833, upper := 11964, witness := RowWitness.topPrime 11833 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good093_checked :
    goodSegmentCheck 132 43 93
      { lower := 11965, upper := 12090, witness := RowWitness.topPrime 11959 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good094_checked :
    goodSegmentCheck 132 43 93
      { lower := 12091, upper := 12204, witness := RowWitness.topPrime 12073 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good095_checked :
    goodSegmentCheck 132 43 93
      { lower := 12205, upper := 12334, witness := RowWitness.topPrime 12203 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row132_good096_checked :
    goodSegmentCheck 132 43 93
      { lower := 12335, upper := 12460, witness := RowWitness.topPrime 12329 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good097_checked :
    goodSegmentCheck 132 43 93
      { lower := 12461, upper := 12588, witness := RowWitness.topPrime 12457 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good098_checked :
    goodSegmentCheck 132 43 93
      { lower := 12589, upper := 12720, witness := RowWitness.topPrime 12589 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good099_checked :
    goodSegmentCheck 132 43 93
      { lower := 12721, upper := 12852, witness := RowWitness.topPrime 12721 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good100_checked :
    goodSegmentCheck 132 43 93
      { lower := 12853, upper := 12984, witness := RowWitness.topPrime 12853 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good101_checked :
    goodSegmentCheck 132 43 93
      { lower := 12985, upper := 13114, witness := RowWitness.topPrime 12983 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good102_checked :
    goodSegmentCheck 132 43 93
      { lower := 13115, upper := 13240, witness := RowWitness.topPrime 13109 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good103_checked :
    goodSegmentCheck 132 43 93
      { lower := 13241, upper := 13372, witness := RowWitness.topPrime 13241 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good104_checked :
    goodSegmentCheck 132 43 93
      { lower := 13373, upper := 13498, witness := RowWitness.topPrime 13367 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good105_checked :
    goodSegmentCheck 132 43 93
      { lower := 13499, upper := 13630, witness := RowWitness.topPrime 13499 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good106_checked :
    goodSegmentCheck 132 43 93
      { lower := 13631, upper := 13758, witness := RowWitness.topPrime 13627 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good107_checked :
    goodSegmentCheck 132 43 93
      { lower := 13759, upper := 13890, witness := RowWitness.topPrime 13759 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good108_checked :
    goodSegmentCheck 132 43 93
      { lower := 13891, upper := 14014, witness := RowWitness.topPrime 13883 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good109_checked :
    goodSegmentCheck 132 43 93
      { lower := 14015, upper := 14142, witness := RowWitness.topPrime 14011 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good110_checked :
    goodSegmentCheck 132 43 93
      { lower := 14143, upper := 14274, witness := RowWitness.topPrime 14143 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good111_checked :
    goodSegmentCheck 132 43 93
      { lower := 14275, upper := 14382, witness := RowWitness.topPrime 14251 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row132_good112_checked :
    goodSegmentCheck 132 43 93
      { lower := 14383, upper := 14500, witness := RowWitness.topPrime 14369 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good113_checked :
    goodSegmentCheck 132 43 93
      { lower := 14501, upper := 14620, witness := RowWitness.topPrime 14489 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good114_checked :
    goodSegmentCheck 132 43 93
      { lower := 14621, upper := 14752, witness := RowWitness.topPrime 14621 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good115_checked :
    goodSegmentCheck 132 43 93
      { lower := 14753, upper := 14884, witness := RowWitness.topPrime 14753 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good116_checked :
    goodSegmentCheck 132 43 93
      { lower := 14885, upper := 15010, witness := RowWitness.topPrime 14879 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good117_checked :
    goodSegmentCheck 132 43 93
      { lower := 15011, upper := 15114, witness := RowWitness.topPrime 14983 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good118_checked :
    goodSegmentCheck 132 43 93
      { lower := 15115, upper := 15238, witness := RowWitness.topPrime 15107 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good119_checked :
    goodSegmentCheck 132 43 93
      { lower := 15239, upper := 15364, witness := RowWitness.topPrime 15233 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good120_checked :
    goodSegmentCheck 132 43 93
      { lower := 15365, upper := 15492, witness := RowWitness.topPrime 15361 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good121_checked :
    goodSegmentCheck 132 43 93
      { lower := 15493, upper := 15624, witness := RowWitness.topPrime 15493 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good122_checked :
    goodSegmentCheck 132 43 93
      { lower := 15625, upper := 15750, witness := RowWitness.topPrime 15619 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good123_checked :
    goodSegmentCheck 132 43 93
      { lower := 15751, upper := 15880, witness := RowWitness.topPrime 15749 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good124_checked :
    goodSegmentCheck 132 43 93
      { lower := 15881, upper := 16012, witness := RowWitness.topPrime 15881 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good125_checked :
    goodSegmentCheck 132 43 93
      { lower := 16013, upper := 16138, witness := RowWitness.topPrime 16007 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good126_checked :
    goodSegmentCheck 132 43 93
      { lower := 16139, upper := 16270, witness := RowWitness.topPrime 16139 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good127_checked :
    goodSegmentCheck 132 43 93
      { lower := 16271, upper := 16398, witness := RowWitness.topPrime 16267 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row132_good128_checked :
    goodSegmentCheck 132 43 93
      { lower := 16399, upper := 16512, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good129_checked :
    goodSegmentCheck 132 43 93
      { lower := 16513, upper := 16624, witness := RowWitness.topPrime 16493 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good130_checked :
    goodSegmentCheck 132 43 93
      { lower := 16625, upper := 16750, witness := RowWitness.topPrime 16619 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good131_checked :
    goodSegmentCheck 132 43 93
      { lower := 16751, upper := 16878, witness := RowWitness.topPrime 16747 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good132_checked :
    goodSegmentCheck 132 43 93
      { lower := 16879, upper := 17010, witness := RowWitness.topPrime 16879 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good133_checked :
    goodSegmentCheck 132 43 93
      { lower := 17011, upper := 17142, witness := RowWitness.topPrime 17011 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good134_checked :
    goodSegmentCheck 132 43 93
      { lower := 17143, upper := 17268, witness := RowWitness.topPrime 17137 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good135_checked :
    goodSegmentCheck 132 43 93
      { lower := 17269, upper := 17291, witness := RowWitness.topPrime 17257 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good136_checked :
    goodSegmentCheck 132 43 93
      { lower := 17405, upper := 17429, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good137_checked :
    goodSegmentCheck 132 43 93
      { lower := 17672, upper := 17707, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good138_checked :
    goodSegmentCheck 132 43 93
      { lower := 17797, upper := 17803, witness := RowWitness.topPrime 17791 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good139_checked :
    goodSegmentCheck 132 43 93
      { lower := 18491, upper := 18612, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good140_checked :
    goodSegmentCheck 132 43 93
      { lower := 18613, upper := 18622, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good141_checked :
    goodSegmentCheck 132 43 93
      { lower := 18723, upper := 18736, witness := RowWitness.topPrime 18719 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good142_checked :
    goodSegmentCheck 132 43 93
      { lower := 18750, upper := 18880, witness := RowWitness.topPrime 18749 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good143_checked :
    goodSegmentCheck 132 43 93
      { lower := 18881, upper := 18881, witness := RowWitness.topPrime 18869 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row132_good144_checked :
    goodSegmentCheck 132 43 93
      { lower := 19208, upper := 19297, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good145_checked :
    goodSegmentCheck 132 43 93
      { lower := 19663, upper := 19792, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good146_checked :
    goodSegmentCheck 132 43 93
      { lower := 19793, upper := 19814, witness := RowWitness.topPrime 19793 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good147_checked :
    goodSegmentCheck 132 43 93
      { lower := 19881, upper := 19904, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good148_checked :
    goodSegmentCheck 132 43 93
      { lower := 20172, upper := 20292, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good149_checked :
    goodSegmentCheck 132 43 93
      { lower := 20293, upper := 20295, witness := RowWitness.topPrime 20287 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good150_checked :
    goodSegmentCheck 132 43 93
      { lower := 20402, upper := 20470, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good151_checked :
    goodSegmentCheck 132 43 93
      { lower := 20577, upper := 20694, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good152_checked :
    goodSegmentCheck 132 43 93
      { lower := 20695, upper := 20708, witness := RowWitness.topPrime 20693 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good153_checked :
    goodSegmentCheck 132 43 93
      { lower := 21316, upper := 21349, witness := RowWitness.topPrime 21313 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good154_checked :
    goodSegmentCheck 132 43 93
      { lower := 21875, upper := 22002, witness := RowWitness.topPrime 21871 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good155_checked :
    goodSegmentCheck 132 43 93
      { lower := 22003, upper := 22035, witness := RowWitness.topPrime 22003 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good156_checked :
    goodSegmentCheck 132 43 93
      { lower := 22090, upper := 22101, witness := RowWitness.topPrime 22079 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good157_checked :
    goodSegmentCheck 132 43 93
      { lower := 22188, upper := 22221, witness := RowWitness.topPrime 22171 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good158_checked :
    goodSegmentCheck 132 43 93
      { lower := 22445, upper := 22457, witness := RowWitness.topPrime 22441 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good159_checked :
    goodSegmentCheck 132 43 93
      { lower := 22472, upper := 22576, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row132_good160_checked :
    goodSegmentCheck 132 43 93
      { lower := 23763, upper := 23892, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good161_checked :
    goodSegmentCheck 132 43 93
      { lower := 23893, upper := 23893, witness := RowWitness.topPrime 23893 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good162_checked :
    goodSegmentCheck 132 43 93
      { lower := 24037, upper := 24141, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good163_checked :
    goodSegmentCheck 132 43 93
      { lower := 24167, upper := 24168, witness := RowWitness.topPrime 24151 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good164_checked :
    goodSegmentCheck 132 43 93
      { lower := 24334, upper := 24460, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good165_checked :
    goodSegmentCheck 132 43 93
      { lower := 24461, upper := 24498, witness := RowWitness.topPrime 24443 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good166_checked :
    goodSegmentCheck 132 43 93
      { lower := 24576, upper := 24702, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good167_checked :
    goodSegmentCheck 132 43 93
      { lower := 24703, upper := 24707, witness := RowWitness.topPrime 24697 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good168_checked :
    goodSegmentCheck 132 43 93
      { lower := 25000, upper := 25095, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good169_checked :
    goodSegmentCheck 132 43 93
      { lower := 25215, upper := 25320, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good170_checked :
    goodSegmentCheck 132 43 93
      { lower := 25321, upper := 25346, witness := RowWitness.topPrime 25321 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good171_checked :
    goodSegmentCheck 132 43 93
      { lower := 26364, upper := 26375, witness := RowWitness.topPrime 26357 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good172_checked :
    goodSegmentCheck 132 43 93
      { lower := 26411, upper := 26495, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good173_checked :
    goodSegmentCheck 132 43 93
      { lower := 26508, upper := 26542, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good174_checked :
    goodSegmentCheck 132 43 93
      { lower := 26934, upper := 27027, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good175_checked :
    goodSegmentCheck 132 43 93
      { lower := 27556, upper := 27567, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row132_good176_checked :
    goodSegmentCheck 132 43 93
      { lower := 27848, upper := 27866, witness := RowWitness.topPrime 27847 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good177_checked :
    goodSegmentCheck 132 43 93
      { lower := 28125, upper := 28221, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good178_checked :
    goodSegmentCheck 132 43 93
      { lower := 28227, upper := 28256, witness := RowWitness.topPrime 28219 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good179_checked :
    goodSegmentCheck 132 43 93
      { lower := 28577, upper := 28692, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good180_checked :
    goodSegmentCheck 132 43 93
      { lower := 28812, upper := 28848, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good181_checked :
    goodSegmentCheck 132 43 93
      { lower := 29584, upper := 29609, witness := RowWitness.topPrime 29581 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good182_checked :
    goodSegmentCheck 132 43 93
      { lower := 29791, upper := 29899, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good183_checked :
    goodSegmentCheck 132 43 93
      { lower := 30258, upper := 30377, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good184_checked :
    goodSegmentCheck 132 43 93
      { lower := 30926, upper := 31030, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good185_checked :
    goodSegmentCheck 132 43 93
      { lower := 31213, upper := 31324, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good186_checked :
    goodSegmentCheck 132 43 93
      { lower := 31325, upper := 31381, witness := RowWitness.topPrime 31321 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good187_checked :
    goodSegmentCheck 132 43 93
      { lower := 31423, upper := 31528, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good188_checked :
    goodSegmentCheck 132 43 93
      { lower := 31529, upper := 31554, witness := RowWitness.topPrime 31517 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good189_checked :
    goodSegmentCheck 132 43 93
      { lower := 32805, upper := 32899, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good190_checked :
    goodSegmentCheck 132 43 93
      { lower := 33614, upper := 33620, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good191_checked :
    goodSegmentCheck 132 43 93
      { lower := 33708, upper := 33745, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row132_good192_checked :
    goodSegmentCheck 132 43 93
      { lower := 34322, upper := 34450, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good193_checked :
    goodSegmentCheck 132 43 93
      { lower := 34451, upper := 34522, witness := RowWitness.topPrime 34439 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good194_checked :
    goodSegmentCheck 132 43 93
      { lower := 36517, upper := 36628, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good195_checked :
    goodSegmentCheck 132 43 93
      { lower := 36629, upper := 36632, witness := RowWitness.topPrime 36629 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good196_checked :
    goodSegmentCheck 132 43 93
      { lower := 37303, upper := 37341, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good197_checked :
    goodSegmentCheck 132 43 93
      { lower := 37500, upper := 37577, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good198_checked :
    goodSegmentCheck 132 43 93
      { lower := 38307, upper := 38422, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good199_checked :
    goodSegmentCheck 132 43 93
      { lower := 39326, upper := 39454, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good200_checked :
    goodSegmentCheck 132 43 93
      { lower := 39455, upper := 39457, witness := RowWitness.topPrime 39451 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good201_checked :
    goodSegmentCheck 132 43 93
      { lower := 40401, upper := 40459, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good202_checked :
    goodSegmentCheck 132 43 93
      { lower := 40931, upper := 40935, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good203_checked :
    goodSegmentCheck 132 43 93
      { lower := 43750, upper := 43818, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good204_checked :
    goodSegmentCheck 132 43 93
      { lower := 45369, upper := 45384, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good205_checked :
    goodSegmentCheck 132 43 93
      { lower := 47526, upper := 47652, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good206_checked :
    goodSegmentCheck 132 43 93
      { lower := 47653, upper := 47655, witness := RowWitness.topPrime 47653 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good207_checked :
    goodSegmentCheck 132 43 93
      { lower := 48013, upper := 48092, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row132_good208_checked :
    goodSegmentCheck 132 43 93
      { lower := 48387, upper := 48504, witness := RowWitness.topPrime 48383 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good209_checked :
    goodSegmentCheck 132 43 93
      { lower := 48734, upper := 48864, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good210_checked :
    goodSegmentCheck 132 43 93
      { lower := 48865, upper := 48865, witness := RowWitness.topPrime 48859 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good211_checked :
    goodSegmentCheck 132 43 93
      { lower := 49152, upper := 49261, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good212_checked :
    goodSegmentCheck 132 43 93
      { lower := 50421, upper := 50541, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good213_checked :
    goodSegmentCheck 132 43 93
      { lower := 51076, upper := 51136, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good214_checked :
    goodSegmentCheck 132 43 93
      { lower := 55451, upper := 55572, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good215_checked :
    goodSegmentCheck 132 43 93
      { lower := 55573, upper := 55578, witness := RowWitness.topPrime 55547 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good216_checked :
    goodSegmentCheck 132 43 93
      { lower := 57245, upper := 57253, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good217_checked :
    goodSegmentCheck 132 43 93
      { lower := 59049, upper := 59087, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good218_checked :
    goodSegmentCheck 132 43 93
      { lower := 62500, upper := 62541, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good219_checked :
    goodSegmentCheck 132 43 93
      { lower := 63869, upper := 63994, witness := RowWitness.topPrime 63863 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good220_checked :
    goodSegmentCheck 132 43 93
      { lower := 63995, upper := 64000, witness := RowWitness.topPrime 63977 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good221_checked :
    goodSegmentCheck 132 43 93
      { lower := 65536, upper := 65652, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good222_checked :
    goodSegmentCheck 132 43 93
      { lower := 65653, upper := 65664, witness := RowWitness.topPrime 65651 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good223_checked :
    goodSegmentCheck 132 43 93
      { lower := 68644, upper := 68770, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row132_good224_checked :
    goodSegmentCheck 132 43 93
      { lower := 68771, upper := 68825, witness := RowWitness.topPrime 68771 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good225_checked :
    goodSegmentCheck 132 43 93
      { lower := 68890, upper := 68913, witness := RowWitness.topPrime 68881 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good226_checked :
    goodSegmentCheck 132 43 93
      { lower := 68921, upper := 69021, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good227_checked :
    goodSegmentCheck 132 43 93
      { lower := 71289, upper := 71418, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good228_checked :
    goodSegmentCheck 132 43 93
      { lower := 71419, upper := 71420, witness := RowWitness.topPrime 71419 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good229_checked :
    goodSegmentCheck 132 43 93
      { lower := 85805, upper := 85814, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good230_checked :
    goodSegmentCheck 132 43 93
      { lower := 89383, upper := 89504, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good231_checked :
    goodSegmentCheck 132 43 93
      { lower := 103041, upper := 103097, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good232_checked :
    goodSegmentCheck 132 43 93
      { lower := 109503, upper := 109506, witness := RowWitness.topPrime 109481 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row132_good233_checked :
    goodSegmentCheck 132 43 93
      { lower := 148955, upper := 149008, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 132) (r := 43) (s := 93) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_good233_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row132_goods_checked :
    row132.goods.all (goodSegmentCheck row132.height.i row132.height.r row132.height.s) = true := by
  change row132_goods.all (goodSegmentCheck 132 43 93) = true
  simp only [row132_goods, List.all_cons, List.all_nil,
    row132_good000_checked,
    row132_good001_checked,
    row132_good002_checked,
    row132_good003_checked,
    row132_good004_checked,
    row132_good005_checked,
    row132_good006_checked,
    row132_good007_checked,
    row132_good008_checked,
    row132_good009_checked,
    row132_good010_checked,
    row132_good011_checked,
    row132_good012_checked,
    row132_good013_checked,
    row132_good014_checked,
    row132_good015_checked,
    row132_good016_checked,
    row132_good017_checked,
    row132_good018_checked,
    row132_good019_checked,
    row132_good020_checked,
    row132_good021_checked,
    row132_good022_checked,
    row132_good023_checked,
    row132_good024_checked,
    row132_good025_checked,
    row132_good026_checked,
    row132_good027_checked,
    row132_good028_checked,
    row132_good029_checked,
    row132_good030_checked,
    row132_good031_checked,
    row132_good032_checked,
    row132_good033_checked,
    row132_good034_checked,
    row132_good035_checked,
    row132_good036_checked,
    row132_good037_checked,
    row132_good038_checked,
    row132_good039_checked,
    row132_good040_checked,
    row132_good041_checked,
    row132_good042_checked,
    row132_good043_checked,
    row132_good044_checked,
    row132_good045_checked,
    row132_good046_checked,
    row132_good047_checked,
    row132_good048_checked,
    row132_good049_checked,
    row132_good050_checked,
    row132_good051_checked,
    row132_good052_checked,
    row132_good053_checked,
    row132_good054_checked,
    row132_good055_checked,
    row132_good056_checked,
    row132_good057_checked,
    row132_good058_checked,
    row132_good059_checked,
    row132_good060_checked,
    row132_good061_checked,
    row132_good062_checked,
    row132_good063_checked,
    row132_good064_checked,
    row132_good065_checked,
    row132_good066_checked,
    row132_good067_checked,
    row132_good068_checked,
    row132_good069_checked,
    row132_good070_checked,
    row132_good071_checked,
    row132_good072_checked,
    row132_good073_checked,
    row132_good074_checked,
    row132_good075_checked,
    row132_good076_checked,
    row132_good077_checked,
    row132_good078_checked,
    row132_good079_checked,
    row132_good080_checked,
    row132_good081_checked,
    row132_good082_checked,
    row132_good083_checked,
    row132_good084_checked,
    row132_good085_checked,
    row132_good086_checked,
    row132_good087_checked,
    row132_good088_checked,
    row132_good089_checked,
    row132_good090_checked,
    row132_good091_checked,
    row132_good092_checked,
    row132_good093_checked,
    row132_good094_checked,
    row132_good095_checked,
    row132_good096_checked,
    row132_good097_checked,
    row132_good098_checked,
    row132_good099_checked,
    row132_good100_checked,
    row132_good101_checked,
    row132_good102_checked,
    row132_good103_checked,
    row132_good104_checked,
    row132_good105_checked,
    row132_good106_checked,
    row132_good107_checked,
    row132_good108_checked,
    row132_good109_checked,
    row132_good110_checked,
    row132_good111_checked,
    row132_good112_checked,
    row132_good113_checked,
    row132_good114_checked,
    row132_good115_checked,
    row132_good116_checked,
    row132_good117_checked,
    row132_good118_checked,
    row132_good119_checked,
    row132_good120_checked,
    row132_good121_checked,
    row132_good122_checked,
    row132_good123_checked,
    row132_good124_checked,
    row132_good125_checked,
    row132_good126_checked,
    row132_good127_checked,
    row132_good128_checked,
    row132_good129_checked,
    row132_good130_checked,
    row132_good131_checked,
    row132_good132_checked,
    row132_good133_checked,
    row132_good134_checked,
    row132_good135_checked,
    row132_good136_checked,
    row132_good137_checked,
    row132_good138_checked,
    row132_good139_checked,
    row132_good140_checked,
    row132_good141_checked,
    row132_good142_checked,
    row132_good143_checked,
    row132_good144_checked,
    row132_good145_checked,
    row132_good146_checked,
    row132_good147_checked,
    row132_good148_checked,
    row132_good149_checked,
    row132_good150_checked,
    row132_good151_checked,
    row132_good152_checked,
    row132_good153_checked,
    row132_good154_checked,
    row132_good155_checked,
    row132_good156_checked,
    row132_good157_checked,
    row132_good158_checked,
    row132_good159_checked,
    row132_good160_checked,
    row132_good161_checked,
    row132_good162_checked,
    row132_good163_checked,
    row132_good164_checked,
    row132_good165_checked,
    row132_good166_checked,
    row132_good167_checked,
    row132_good168_checked,
    row132_good169_checked,
    row132_good170_checked,
    row132_good171_checked,
    row132_good172_checked,
    row132_good173_checked,
    row132_good174_checked,
    row132_good175_checked,
    row132_good176_checked,
    row132_good177_checked,
    row132_good178_checked,
    row132_good179_checked,
    row132_good180_checked,
    row132_good181_checked,
    row132_good182_checked,
    row132_good183_checked,
    row132_good184_checked,
    row132_good185_checked,
    row132_good186_checked,
    row132_good187_checked,
    row132_good188_checked,
    row132_good189_checked,
    row132_good190_checked,
    row132_good191_checked,
    row132_good192_checked,
    row132_good193_checked,
    row132_good194_checked,
    row132_good195_checked,
    row132_good196_checked,
    row132_good197_checked,
    row132_good198_checked,
    row132_good199_checked,
    row132_good200_checked,
    row132_good201_checked,
    row132_good202_checked,
    row132_good203_checked,
    row132_good204_checked,
    row132_good205_checked,
    row132_good206_checked,
    row132_good207_checked,
    row132_good208_checked,
    row132_good209_checked,
    row132_good210_checked,
    row132_good211_checked,
    row132_good212_checked,
    row132_good213_checked,
    row132_good214_checked,
    row132_good215_checked,
    row132_good216_checked,
    row132_good217_checked,
    row132_good218_checked,
    row132_good219_checked,
    row132_good220_checked,
    row132_good221_checked,
    row132_good222_checked,
    row132_good223_checked,
    row132_good224_checked,
    row132_good225_checked,
    row132_good226_checked,
    row132_good227_checked,
    row132_good228_checked,
    row132_good229_checked,
    row132_good230_checked,
    row132_good231_checked,
    row132_good232_checked,
    row132_good233_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row132_registered :
    decide (row132.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row132_small_checked :
    coverCheck (2 * row132.height.i + 2) (row132.height.i * (row132.height.i - 1) - 1)
      (row132.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row132_layerCover_checked :
    coverCheck (row132.height.i * (row132.height.i - 1)) (row132.height.n0 - 1)
      (row132.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row132_bounds : List NatInterval :=
  [(266, 394), (395, 520), (521, 652), (653, 784), (785, 904), (905, 1018), (1019, 1150), (1151, 1282), (1283, 1414), (1415, 1540), (1541, 1662), (1663, 1794), (1795, 1920), (1921, 2044), (2045, 2170), (2171, 2292), (2293, 2424), (2425, 2554), (2555, 2682), (2683, 2814), (2815, 2934), (2935, 3058), (3059, 3180), (3181, 3312), (3313, 3444), (3445, 3564), (3565, 3690), (3691, 3822), (3823, 3954), (3955, 4078), (4079, 4210), (4211, 4342), (4343, 4470), (4471, 4594), (4595, 4722), (4723, 4854), (4855, 4962), (4963, 5088), (5089, 5218), (5219, 5340), (5341, 5464), (5465, 5580), (5581, 5712), (5713, 5842), (5843, 5974), (5975, 6084), (6085, 6210), (6211, 6342), (6343, 6474), (6475, 6604), (6605, 6730), (6731, 6850), (6851, 6972), (6973, 7102), (7103, 7234), (7235, 7360), (7361, 7482), (7483, 7612), (7613, 7738), (7739, 7858), (7859, 7984), (7985, 8094), (8095, 8224), (8225, 8352), (8353, 8484), (8485, 8598), (8599, 8730), (8731, 8862), (8863, 8994), (8995, 9102), (9103, 9234), (9235, 9358), (9359, 9480), (9481, 9610), (9611, 9732), (9733, 9864), (9865, 9990), (9991, 10104), (10105, 10234), (10235, 10354), (10355, 10474), (10475, 10594), (10595, 10720), (10721, 10842), (10843, 10968), (10969, 11088), (11089, 11218), (11219, 11344), (11345, 11460), (11461, 11578), (11579, 11710), (11711, 11832), (11833, 11964), (11965, 12090), (12091, 12204), (12205, 12334), (12335, 12460), (12461, 12588), (12589, 12720), (12721, 12852), (12853, 12984), (12985, 13114), (13115, 13240), (13241, 13372), (13373, 13498), (13499, 13630), (13631, 13758), (13759, 13890), (13891, 14014), (14015, 14142), (14143, 14274), (14275, 14382), (14383, 14500), (14501, 14620), (14621, 14752), (14753, 14884), (14885, 15010), (15011, 15114), (15115, 15238), (15239, 15364), (15365, 15492), (15493, 15624), (15625, 15750), (15751, 15880), (15881, 16012), (16013, 16138), (16139, 16270), (16271, 16398), (16399, 16512), (16513, 16624), (16625, 16750), (16751, 16878), (16879, 17010), (17011, 17142), (17143, 17268), (17269, 17291), (17405, 17429), (17672, 17707), (17797, 17803), (18491, 18612), (18613, 18622), (18723, 18736), (18750, 18880), (18881, 18881), (19208, 19297), (19663, 19792), (19793, 19814), (19881, 19904), (20172, 20292), (20293, 20295), (20402, 20470), (20577, 20694), (20695, 20708), (21316, 21349), (21875, 22002), (22003, 22035), (22090, 22101), (22188, 22221), (22445, 22457), (22472, 22576), (23763, 23892), (23893, 23893), (24037, 24141), (24167, 24168), (24334, 24460), (24461, 24498), (24576, 24702), (24703, 24707), (25000, 25095), (25215, 25320), (25321, 25346), (26364, 26375), (26411, 26495), (26508, 26542), (26934, 27027), (27556, 27567), (27848, 27866), (28125, 28221), (28227, 28256), (28577, 28692), (28812, 28848), (29584, 29609), (29791, 29899), (30258, 30377), (30926, 31030), (31213, 31324), (31325, 31381), (31423, 31528), (31529, 31554), (32805, 32899), (33614, 33620), (33708, 33745), (34322, 34450), (34451, 34522), (36517, 36628), (36629, 36632), (37303, 37341), (37500, 37577), (38307, 38422), (39326, 39454), (39455, 39457), (40401, 40459), (40931, 40935), (43750, 43818), (45369, 45384), (47526, 47652), (47653, 47655), (48013, 48092), (48387, 48504), (48734, 48864), (48865, 48865), (49152, 49261), (50421, 50541), (51076, 51136), (55451, 55572), (55573, 55578), (57245, 57253), (59049, 59087), (62500, 62541), (63869, 63994), (63995, 64000), (65536, 65652), (65653, 65664), (68644, 68770), (68771, 68825), (68890, 68913), (68921, 69021), (71289, 71418), (71419, 71420), (85805, 85814), (89383, 89504), (103041, 103097), (109503, 109506), (148955, 149008)]

theorem row132_bounds_eq : row132.goods.map goodSegmentBounds = row132_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row132_layer000_intervals : List ColouredInterval :=
  [(2, 24576, 24707), (2, 32768, 32899), (2, 32768, 32899), (2, 32768, 32899), (3, 19683, 19814), (3, 26244, 26375), (3, 32805, 32936), (3, 19683, 19814), (5, 18750, 18881), (5, 21875, 22006), (5, 25000, 25131), (5, 28125, 28256), (5, 31250, 31381), (5, 34375, 34506), (5, 31250, 31381), (7, 19208, 19339), (7, 21609, 21740), (7, 24010, 24141), (7, 26411, 26542), (7, 28812, 28943), (7, 31213, 31344), (7, 33614, 33745), (7, 33614, 33745), (13, 17576, 17707), (13, 19773, 19904), (13, 21970, 22101), (13, 24167, 24298), (13, 26364, 26495), (13, 28561, 28692), (13, 30758, 30889), (13, 32955, 33086), (13, 28561, 28692), (17, 19652, 19783), (17, 24565, 24696), (17, 29478, 29609), (17, 34391, 34522), (19, 20577, 20708), (19, 27436, 27567), (19, 34295, 34426), (23, 24334, 24465), (29, 24389, 24520), (31, 17298, 17429), (31, 29791, 29922), (37, 17797, 17928), (37, 19166, 19297), (37, 20535, 20666), (37, 21904, 22035), (37, 23273, 23404), (37, 24642, 24773), (41, 18491, 18622), (41, 20172, 20303), (41, 21853, 21984), (41, 23534, 23665), (41, 25215, 25346), (41, 26896, 27027), (41, 28577, 28708), (41, 30258, 30389), (43, 18490, 18621), (43, 20339, 20470), (43, 22188, 22319), (43, 24037, 24168), (43, 25886, 26017), (43, 27735, 27866), (43, 29584, 29715), (43, 31433, 31564), (43, 33282, 33413), (47, 17672, 17803), (47, 19881, 20012), (47, 22090, 22221), (47, 24299, 24430), (47, 26508, 26639), (47, 28717, 28848), (47, 30926, 31057), (47, 33135, 33266), (53, 19663, 19794), (53, 22472, 22603), (53, 25281, 25412), (53, 28090, 28221), (53, 30899, 31030), (53, 33708, 33839), (59, 17405, 17536), (59, 20886, 21017), (59, 24367, 24498), (59, 27848, 27979), (59, 31329, 31460), (61, 18605, 18736), (61, 22326, 22457), (61, 26047, 26178), (61, 29768, 29899), (61, 33489, 33620), (67, 17956, 18087), (67, 22445, 22576), (67, 26934, 27065), (67, 31423, 31554), (71, 20164, 20295), (71, 25205, 25336), (71, 30246, 30377), (73, 21316, 21447), (73, 26645, 26776), (73, 31974, 32105), (79, 18723, 18854), (79, 24964, 25095), (79, 31205, 31336), (83, 20667, 20798), (83, 27556, 27687), (83, 34445, 34576), (89, 23763, 23894), (89, 31684, 31815), (97, 18818, 18949), (97, 28227, 28358), (101, 20402, 20533), (101, 30603, 30734), (103, 21218, 21349), (103, 31827, 31958), (107, 22898, 23029), (107, 34347, 34478), (109, 23762, 23893), (113, 25538, 25669), (127, 32258, 32389), (131, 17292, 17292), (131, 34322, 34453)]

def row132_layer000_block000 : List ColouredInterval :=
  [(2, 24576, 24707), (2, 32768, 32899), (2, 32768, 32899), (2, 32768, 32899), (3, 19683, 19814), (3, 26244, 26375), (3, 32805, 32936), (3, 19683, 19814), (5, 18750, 18881), (5, 21875, 22006), (5, 25000, 25131), (5, 28125, 28256), (5, 31250, 31381), (5, 34375, 34506), (5, 31250, 31381), (7, 19208, 19339)]

def row132_layer000_block001 : List ColouredInterval :=
  [(7, 21609, 21740), (7, 24010, 24141), (7, 26411, 26542), (7, 28812, 28943), (7, 31213, 31344), (7, 33614, 33745), (7, 33614, 33745), (13, 17576, 17707), (13, 19773, 19904), (13, 21970, 22101), (13, 24167, 24298), (13, 26364, 26495), (13, 28561, 28692), (13, 30758, 30889), (13, 32955, 33086), (13, 28561, 28692)]

def row132_layer000_block002 : List ColouredInterval :=
  [(17, 19652, 19783), (17, 24565, 24696), (17, 29478, 29609), (17, 34391, 34522), (19, 20577, 20708), (19, 27436, 27567), (19, 34295, 34426), (23, 24334, 24465), (29, 24389, 24520), (31, 17298, 17429), (31, 29791, 29922), (37, 17797, 17928), (37, 19166, 19297), (37, 20535, 20666), (37, 21904, 22035), (37, 23273, 23404)]

def row132_layer000_block003 : List ColouredInterval :=
  [(37, 24642, 24773), (41, 18491, 18622), (41, 20172, 20303), (41, 21853, 21984), (41, 23534, 23665), (41, 25215, 25346), (41, 26896, 27027), (41, 28577, 28708), (41, 30258, 30389), (43, 18490, 18621), (43, 20339, 20470), (43, 22188, 22319), (43, 24037, 24168), (43, 25886, 26017), (43, 27735, 27866), (43, 29584, 29715)]

def row132_layer000_block004 : List ColouredInterval :=
  [(43, 31433, 31564), (43, 33282, 33413), (47, 17672, 17803), (47, 19881, 20012), (47, 22090, 22221), (47, 24299, 24430), (47, 26508, 26639), (47, 28717, 28848), (47, 30926, 31057), (47, 33135, 33266), (53, 19663, 19794), (53, 22472, 22603), (53, 25281, 25412), (53, 28090, 28221), (53, 30899, 31030), (53, 33708, 33839)]

def row132_layer000_block005 : List ColouredInterval :=
  [(59, 17405, 17536), (59, 20886, 21017), (59, 24367, 24498), (59, 27848, 27979), (59, 31329, 31460), (61, 18605, 18736), (61, 22326, 22457), (61, 26047, 26178), (61, 29768, 29899), (61, 33489, 33620), (67, 17956, 18087), (67, 22445, 22576), (67, 26934, 27065), (67, 31423, 31554), (71, 20164, 20295), (71, 25205, 25336)]

def row132_layer000_block006 : List ColouredInterval :=
  [(71, 30246, 30377), (73, 21316, 21447), (73, 26645, 26776), (73, 31974, 32105), (79, 18723, 18854), (79, 24964, 25095), (79, 31205, 31336), (83, 20667, 20798), (83, 27556, 27687), (83, 34445, 34576), (89, 23763, 23894), (89, 31684, 31815), (97, 18818, 18949), (97, 28227, 28358), (101, 20402, 20533), (101, 30603, 30734)]

def row132_layer000_block007 : List ColouredInterval :=
  [(103, 21218, 21349), (103, 31827, 31958), (107, 22898, 23029), (107, 34347, 34478), (109, 23762, 23893), (113, 25538, 25669), (127, 32258, 32389), (131, 17292, 17292), (131, 34322, 34453)]

def row132_layer000_chunks : List (List ColouredInterval) :=
  [row132_layer000_block000, row132_layer000_block001, row132_layer000_block002, row132_layer000_block003, row132_layer000_block004, row132_layer000_block005, row132_layer000_block006, row132_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row132_layer000_arithmetic : LayerArithmeticValid row132.height { lower := 17292, upper := 34584, M := 18 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row132_layer000_enumeration :
    activePowerIntervalList 132 18 17292 34584 = row132_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row132_layer000_pairs000 :
    row132_layer000_block000.all (fun I => row132_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row132_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row132_layer000_pairs001 :
    row132_layer000_block001.all (fun I => row132_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row132_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row132_layer000_pairs002 :
    row132_layer000_block002.all (fun I => row132_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row132_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row132_layer000_pairs003 :
    row132_layer000_block003.all (fun I => row132_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row132_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row132_layer000_pairs004 :
    row132_layer000_block004.all (fun I => row132_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row132_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row132_layer000_pairs005 :
    row132_layer000_block005.all (fun I => row132_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row132_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row132_layer000_pairs006 :
    row132_layer000_block006.all (fun I => row132_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row132_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row132_layer000_pairs007 :
    row132_layer000_block007.all (fun I => row132_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row132_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row132_layer000_chunks_eq : row132_layer000_chunks.flatten = row132_layer000_intervals := by
  rfl

theorem row132_layer000_pairs : pairCoverCheck row132_layer000_intervals row132_bounds = true := by
  apply pairCoverCheck_of_chunks row132_layer000_chunks_eq
  intro block hblock
  simp only [row132_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row132_layer000_pairs000
  · exact row132_layer000_pairs001
  · exact row132_layer000_pairs002
  · exact row132_layer000_pairs003
  · exact row132_layer000_pairs004
  · exact row132_layer000_pairs005
  · exact row132_layer000_pairs006
  · exact row132_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row132_layer000_checked :
    coverLayerCheck row132.height row132.goods { lower := 17292, upper := 34584, M := 18 } = true := by
  exact coverLayerCheck_of_parts row132_layer000_arithmetic row132_layer000_enumeration row132_bounds_eq row132_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_layer000_checked
