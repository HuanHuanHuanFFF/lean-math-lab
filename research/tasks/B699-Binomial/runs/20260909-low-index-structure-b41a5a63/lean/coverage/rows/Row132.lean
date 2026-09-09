import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

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

theorem row132_registered :
    decide (row132.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row132_goods_checked :
    row132.goods.all (goodSegmentCheck row132.height.i row132.height.r row132.height.s) = true := by
  decide +kernel

theorem row132_small_checked :
    coverCheck (2 * row132.height.i + 2) (row132.height.i * (row132.height.i - 1) - 1)
      (row132.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row132_layerCover_checked :
    coverCheck (row132.height.i * (row132.height.i - 1)) (row132.height.n0 - 1)
      (row132.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row132_layer000_checked :
    coverLayerCheck row132.height row132.goods { lower := 17292, upper := 34584, M := 18 } = true := by
  decide +kernel

theorem row132_layer001_checked :
    coverLayerCheck row132.height row132.goods { lower := 34584, upper := 69168, M := 14 } = true := by
  decide +kernel

theorem row132_layer002_checked :
    coverLayerCheck row132.height row132.goods { lower := 69168, upper := 138336, M := 11 } = true := by
  decide +kernel

theorem row132_layer003_checked :
    coverLayerCheck row132.height row132.goods { lower := 138336, upper := 276672, M := 9 } = true := by
  decide +kernel

theorem row132_layer004_checked :
    coverLayerCheck row132.height row132.goods { lower := 276672, upper := 553344, M := 7 } = true := by
  decide +kernel

theorem row132_layer005_checked :
    coverLayerCheck row132.height row132.goods { lower := 553344, upper := 1106688, M := 5 } = true := by
  decide +kernel

theorem row132_layer006_checked :
    coverLayerCheck row132.height row132.goods { lower := 1106688, upper := 2213376, M := 4 } = true := by
  decide +kernel

theorem row132_layer007_checked :
    coverLayerCheck row132.height row132.goods { lower := 2213376, upper := 4426752, M := 3 } = true := by
  decide +kernel

theorem row132_layer008_checked :
    coverLayerCheck row132.height row132.goods { lower := 4426752, upper := 8853504, M := 3 } = true := by
  decide +kernel

theorem row132_layer009_checked :
    coverLayerCheck row132.height row132.goods { lower := 8853504, upper := 17707008, M := 2 } = true := by
  decide +kernel

theorem row132_layer010_checked :
    coverLayerCheck row132.height row132.goods { lower := 17707008, upper := 35414016, M := 2 } = true := by
  decide +kernel

theorem row132_layer011_checked :
    coverLayerCheck row132.height row132.goods { lower := 35414016, upper := 70828032, M := 2 } = true := by
  decide +kernel

theorem row132_layer012_checked :
    coverLayerCheck row132.height row132.goods { lower := 70828032, upper := 100000000, M := 1 } = true := by
  decide +kernel

theorem row132_layers_checked :
    row132.layers.all (coverLayerCheck row132.height row132.goods) = true := by
  change List.all [
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
  ] (coverLayerCheck row132.height row132.goods) = true
  simp only [List.all_cons, List.all_nil,
    row132_layer000_checked,
    row132_layer001_checked,
    row132_layer002_checked,
    row132_layer003_checked,
    row132_layer004_checked,
    row132_layer005_checked,
    row132_layer006_checked,
    row132_layer007_checked,
    row132_layer008_checked,
    row132_layer009_checked,
    row132_layer010_checked,
    row132_layer011_checked,
    row132_layer012_checked,
    Bool.true_and]

theorem row132_checked : finiteCoverRowCheck row132 = true := by
  simp only [finiteCoverRowCheck, row132_registered, row132_goods_checked,
    row132_small_checked, row132_layerCover_checked, row132_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row132_checked

end B699LowIndex
