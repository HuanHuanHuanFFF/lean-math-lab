import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def row131_height : HeightCertificateDatum := { i := 131, r := 43, s := 92, n0Power10 := 8 }

def row131_goods : List GoodSegment := [
  { lower := 264, upper := 393, witness := RowWitness.topPrime 263 },
  { lower := 394, upper := 519, witness := RowWitness.topPrime 389 },
  { lower := 520, upper := 639, witness := RowWitness.topPrime 509 },
  { lower := 640, upper := 761, witness := RowWitness.topPrime 631 },
  { lower := 762, upper := 891, witness := RowWitness.topPrime 761 },
  { lower := 892, upper := 1017, witness := RowWitness.topPrime 887 },
  { lower := 1018, upper := 1143, witness := RowWitness.topPrime 1013 },
  { lower := 1144, upper := 1259, witness := RowWitness.topPrime 1129 },
  { lower := 1260, upper := 1389, witness := RowWitness.topPrime 1259 },
  { lower := 1390, upper := 1511, witness := RowWitness.topPrime 1381 },
  { lower := 1512, upper := 1641, witness := RowWitness.topPrime 1511 },
  { lower := 1642, upper := 1767, witness := RowWitness.topPrime 1637 },
  { lower := 1768, upper := 1889, witness := RowWitness.topPrime 1759 },
  { lower := 1890, upper := 2019, witness := RowWitness.topPrime 1889 },
  { lower := 2020, upper := 2147, witness := RowWitness.topPrime 2017 },
  { lower := 2148, upper := 2273, witness := RowWitness.topPrime 2143 },
  { lower := 2274, upper := 2403, witness := RowWitness.topPrime 2273 },
  { lower := 2404, upper := 2529, witness := RowWitness.topPrime 2399 },
  { lower := 2530, upper := 2651, witness := RowWitness.topPrime 2521 },
  { lower := 2652, upper := 2777, witness := RowWitness.topPrime 2647 },
  { lower := 2778, upper := 2907, witness := RowWitness.topPrime 2777 },
  { lower := 2908, upper := 3033, witness := RowWitness.topPrime 2903 },
  { lower := 3034, upper := 3153, witness := RowWitness.topPrime 3023 },
  { lower := 3154, upper := 3267, witness := RowWitness.topPrime 3137 },
  { lower := 3268, upper := 3389, witness := RowWitness.topPrime 3259 },
  { lower := 3390, upper := 3519, witness := RowWitness.topPrime 3389 },
  { lower := 3520, upper := 3647, witness := RowWitness.topPrime 3517 },
  { lower := 3648, upper := 3773, witness := RowWitness.topPrime 3643 },
  { lower := 3774, upper := 3899, witness := RowWitness.topPrime 3769 },
  { lower := 3900, upper := 4019, witness := RowWitness.topPrime 3889 },
  { lower := 4020, upper := 4149, witness := RowWitness.topPrime 4019 },
  { lower := 4150, upper := 4269, witness := RowWitness.topPrime 4139 },
  { lower := 4270, upper := 4391, witness := RowWitness.topPrime 4261 },
  { lower := 4392, upper := 4521, witness := RowWitness.topPrime 4391 },
  { lower := 4522, upper := 4649, witness := RowWitness.topPrime 4519 },
  { lower := 4650, upper := 4779, witness := RowWitness.topPrime 4649 },
  { lower := 4780, upper := 4889, witness := RowWitness.topPrime 4759 },
  { lower := 4890, upper := 5019, witness := RowWitness.topPrime 4889 },
  { lower := 5020, upper := 5141, witness := RowWitness.topPrime 5011 },
  { lower := 5142, upper := 5249, witness := RowWitness.topPrime 5119 },
  { lower := 5250, upper := 5367, witness := RowWitness.topPrime 5237 },
  { lower := 5368, upper := 5481, witness := RowWitness.topPrime 5351 },
  { lower := 5482, upper := 5609, witness := RowWitness.topPrime 5479 },
  { lower := 5610, upper := 5721, witness := RowWitness.topPrime 5591 },
  { lower := 5722, upper := 5847, witness := RowWitness.topPrime 5717 },
  { lower := 5848, upper := 5973, witness := RowWitness.topPrime 5843 },
  { lower := 5974, upper := 6083, witness := RowWitness.topPrime 5953 },
  { lower := 6084, upper := 6209, witness := RowWitness.topPrime 6079 },
  { lower := 6210, upper := 6333, witness := RowWitness.topPrime 6203 },
  { lower := 6334, upper := 6459, witness := RowWitness.topPrime 6329 },
  { lower := 6460, upper := 6581, witness := RowWitness.topPrime 6451 },
  { lower := 6582, upper := 6711, witness := RowWitness.topPrime 6581 },
  { lower := 6712, upper := 6839, witness := RowWitness.topPrime 6709 },
  { lower := 6840, upper := 6963, witness := RowWitness.topPrime 6833 },
  { lower := 6964, upper := 7091, witness := RowWitness.topPrime 6961 },
  { lower := 7092, upper := 7209, witness := RowWitness.topPrime 7079 },
  { lower := 7210, upper := 7337, witness := RowWitness.topPrime 7207 },
  { lower := 7338, upper := 7463, witness := RowWitness.topPrime 7333 },
  { lower := 7464, upper := 7589, witness := RowWitness.topPrime 7459 },
  { lower := 7590, upper := 7719, witness := RowWitness.topPrime 7589 },
  { lower := 7720, upper := 7847, witness := RowWitness.topPrime 7717 },
  { lower := 7848, upper := 7971, witness := RowWitness.topPrime 7841 },
  { lower := 7972, upper := 8093, witness := RowWitness.topPrime 7963 },
  { lower := 8094, upper := 8223, witness := RowWitness.topPrime 8093 },
  { lower := 8224, upper := 8351, witness := RowWitness.topPrime 8221 },
  { lower := 8352, upper := 8459, witness := RowWitness.topPrime 8329 },
  { lower := 8460, upper := 8577, witness := RowWitness.topPrime 8447 },
  { lower := 8578, upper := 8703, witness := RowWitness.topPrime 8573 },
  { lower := 8704, upper := 8829, witness := RowWitness.topPrime 8699 },
  { lower := 8830, upper := 8951, witness := RowWitness.topPrime 8821 },
  { lower := 8952, upper := 9081, witness := RowWitness.topPrime 8951 },
  { lower := 9082, upper := 9197, witness := RowWitness.topPrime 9067 },
  { lower := 9198, upper := 9317, witness := RowWitness.topPrime 9187 },
  { lower := 9318, upper := 9441, witness := RowWitness.topPrime 9311 },
  { lower := 9442, upper := 9569, witness := RowWitness.topPrime 9439 },
  { lower := 9570, upper := 9681, witness := RowWitness.topPrime 9551 },
  { lower := 9682, upper := 9809, witness := RowWitness.topPrime 9679 },
  { lower := 9810, upper := 9933, witness := RowWitness.topPrime 9803 },
  { lower := 9934, upper := 10061, witness := RowWitness.topPrime 9931 },
  { lower := 10062, upper := 10191, witness := RowWitness.topPrime 10061 },
  { lower := 10192, upper := 10311, witness := RowWitness.topPrime 10181 },
  { lower := 10312, upper := 10433, witness := RowWitness.topPrime 10303 },
  { lower := 10434, upper := 10563, witness := RowWitness.topPrime 10433 },
  { lower := 10564, upper := 10689, witness := RowWitness.topPrime 10559 },
  { lower := 10690, upper := 10817, witness := RowWitness.topPrime 10687 },
  { lower := 10818, upper := 10929, witness := RowWitness.topPrime 10799 },
  { lower := 10930, upper := 11039, witness := RowWitness.topPrime 10909 },
  { lower := 11040, upper := 11157, witness := RowWitness.topPrime 11027 },
  { lower := 11158, upper := 11279, witness := RowWitness.topPrime 11149 },
  { lower := 11280, upper := 11409, witness := RowWitness.topPrime 11279 },
  { lower := 11410, upper := 11529, witness := RowWitness.topPrime 11399 },
  { lower := 11530, upper := 11657, witness := RowWitness.topPrime 11527 },
  { lower := 11658, upper := 11787, witness := RowWitness.topPrime 11657 },
  { lower := 11788, upper := 11913, witness := RowWitness.topPrime 11783 },
  { lower := 11914, upper := 12039, witness := RowWitness.topPrime 11909 },
  { lower := 12040, upper := 12167, witness := RowWitness.topPrime 12037 },
  { lower := 12168, upper := 12293, witness := RowWitness.topPrime 12163 },
  { lower := 12294, upper := 12419, witness := RowWitness.topPrime 12289 },
  { lower := 12420, upper := 12543, witness := RowWitness.topPrime 12413 },
  { lower := 12544, upper := 12671, witness := RowWitness.topPrime 12541 },
  { lower := 12672, upper := 12801, witness := RowWitness.topPrime 12671 },
  { lower := 12802, upper := 12929, witness := RowWitness.topPrime 12799 },
  { lower := 12930, upper := 13053, witness := RowWitness.topPrime 12923 },
  { lower := 13054, upper := 13179, witness := RowWitness.topPrime 13049 },
  { lower := 13180, upper := 13307, witness := RowWitness.topPrime 13177 },
  { lower := 13308, upper := 13427, witness := RowWitness.topPrime 13297 },
  { lower := 13428, upper := 13551, witness := RowWitness.topPrime 13421 },
  { lower := 13552, upper := 13667, witness := RowWitness.topPrime 13537 },
  { lower := 13668, upper := 13779, witness := RowWitness.topPrime 13649 },
  { lower := 13780, upper := 13893, witness := RowWitness.topPrime 13763 },
  { lower := 13894, upper := 14013, witness := RowWitness.topPrime 13883 },
  { lower := 14014, upper := 14141, witness := RowWitness.topPrime 14011 },
  { lower := 14142, upper := 14237, witness := RowWitness.topPrime 14107 },
  { lower := 14238, upper := 14351, witness := RowWitness.topPrime 14221 },
  { lower := 14352, upper := 14477, witness := RowWitness.topPrime 14347 },
  { lower := 14478, upper := 14591, witness := RowWitness.topPrime 14461 },
  { lower := 14592, upper := 14721, witness := RowWitness.topPrime 14591 },
  { lower := 14722, upper := 14847, witness := RowWitness.topPrime 14717 },
  { lower := 14848, upper := 14973, witness := RowWitness.topPrime 14843 },
  { lower := 14974, upper := 15099, witness := RowWitness.topPrime 14969 },
  { lower := 15100, upper := 15221, witness := RowWitness.topPrime 15091 },
  { lower := 15222, upper := 15347, witness := RowWitness.topPrime 15217 },
  { lower := 15348, upper := 15461, witness := RowWitness.topPrime 15331 },
  { lower := 15462, upper := 15591, witness := RowWitness.topPrime 15461 },
  { lower := 15592, upper := 15713, witness := RowWitness.topPrime 15583 },
  { lower := 15714, upper := 15813, witness := RowWitness.topPrime 15683 },
  { lower := 15814, upper := 15939, witness := RowWitness.topPrime 15809 },
  { lower := 15940, upper := 16067, witness := RowWitness.topPrime 15937 },
  { lower := 16068, upper := 16197, witness := RowWitness.topPrime 16067 },
  { lower := 16198, upper := 16323, witness := RowWitness.topPrime 16193 },
  { lower := 16324, upper := 16449, witness := RowWitness.topPrime 16319 },
  { lower := 16450, upper := 16577, witness := RowWitness.topPrime 16447 },
  { lower := 16578, upper := 16703, witness := RowWitness.topPrime 16573 },
  { lower := 16704, upper := 16833, witness := RowWitness.topPrime 16703 },
  { lower := 16834, upper := 16961, witness := RowWitness.topPrime 16831 },
  { lower := 16962, upper := 17029, witness := RowWitness.topPrime 16943 },
  { lower := 17405, upper := 17433, witness := RowWitness.topPrime 17401 },
  { lower := 17496, upper := 17535, witness := RowWitness.topPrime 17491 },
  { lower := 17576, upper := 17626, witness := RowWitness.topPrime 17573 },
  { lower := 17672, upper := 17706, witness := RowWitness.topPrime 17669 },
  { lower := 17797, upper := 17802, witness := RowWitness.topPrime 17791 },
  { lower := 18490, upper := 18611, witness := RowWitness.topPrime 18481 },
  { lower := 18612, upper := 18621, witness := RowWitness.topPrime 18593 },
  { lower := 18634, upper := 18747, witness := RowWitness.topPrime 18617 },
  { lower := 18748, upper := 18873, witness := RowWitness.topPrime 18743 },
  { lower := 18874, upper := 18880, witness := RowWitness.topPrime 18869 },
  { lower := 19208, upper := 19296, witness := RowWitness.topPrime 19207 },
  { lower := 19663, upper := 19791, witness := RowWitness.topPrime 19661 },
  { lower := 19792, upper := 19813, witness := RowWitness.topPrime 19777 },
  { lower := 19881, upper := 19903, witness := RowWitness.topPrime 19867 },
  { lower := 19965, upper := 20011, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20291, witness := RowWitness.topPrime 20161 },
  { lower := 20292, upper := 20294, witness := RowWitness.topPrime 20287 },
  { lower := 20402, upper := 20469, witness := RowWitness.topPrime 20399 },
  { lower := 20480, upper := 20532, witness := RowWitness.topPrime 20479 },
  { lower := 20535, upper := 20663, witness := RowWitness.topPrime 20533 },
  { lower := 20664, upper := 20665, witness := RowWitness.topPrime 20663 },
  { lower := 20667, upper := 20707, witness := RowWitness.topPrime 20663 },
  { lower := 21296, upper := 21413, witness := RowWitness.topPrime 21283 },
  { lower := 21414, upper := 21426, witness := RowWitness.topPrime 21407 },
  { lower := 21870, upper := 21993, witness := RowWitness.topPrime 21863 },
  { lower := 21994, upper := 22034, witness := RowWitness.topPrime 21991 },
  { lower := 22090, upper := 22100, witness := RowWitness.topPrime 22079 },
  { lower := 22188, upper := 22220, witness := RowWitness.topPrime 22171 },
  { lower := 22445, upper := 22456, witness := RowWitness.topPrime 22441 },
  { lower := 22472, upper := 22599, witness := RowWitness.topPrime 22469 },
  { lower := 22600, upper := 22602, witness := RowWitness.topPrime 22573 },
  { lower := 23763, upper := 23891, witness := RowWitness.topPrime 23761 },
  { lower := 23892, upper := 23892, witness := RowWitness.topPrime 23887 },
  { lower := 24037, upper := 24159, witness := RowWitness.topPrime 24029 },
  { lower := 24160, upper := 24187, witness := RowWitness.topPrime 24151 },
  { lower := 24334, upper := 24459, witness := RowWitness.topPrime 24329 },
  { lower := 24460, upper := 24497, witness := RowWitness.topPrime 24443 },
  { lower := 24576, upper := 24695, witness := RowWitness.topPrime 24571 },
  { lower := 25000, upper := 25094, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25319, witness := RowWitness.topPrime 25189 },
  { lower := 25320, upper := 25345, witness := RowWitness.topPrime 25309 },
  { lower := 26364, upper := 26374, witness := RowWitness.topPrime 26357 },
  { lower := 26411, upper := 26494, witness := RowWitness.topPrime 26407 },
  { lower := 26508, upper := 26541, witness := RowWitness.topPrime 26501 },
  { lower := 26624, upper := 26638, witness := RowWitness.topPrime 26597 },
  { lower := 26645, upper := 26754, witness := RowWitness.topPrime 26641 },
  { lower := 26934, upper := 27026, witness := RowWitness.topPrime 26927 },
  { lower := 27556, upper := 27566, witness := RowWitness.topPrime 27551 },
  { lower := 27848, upper := 27865, witness := RowWitness.topPrime 27847 },
  { lower := 28125, upper := 28220, witness := RowWitness.topPrime 28123 },
  { lower := 28227, upper := 28255, witness := RowWitness.topPrime 28219 },
  { lower := 28561, upper := 28561, witness := RowWitness.topPrime 28559 },
  { lower := 28672, upper := 28691, witness := RowWitness.topPrime 28669 },
  { lower := 28717, upper := 28802, witness := RowWitness.topPrime 28711 },
  { lower := 28812, upper := 28847, witness := RowWitness.topPrime 28807 },
  { lower := 29584, upper := 29608, witness := RowWitness.topPrime 29581 },
  { lower := 29791, upper := 29898, witness := RowWitness.topPrime 29789 },
  { lower := 30618, upper := 30723, witness := RowWitness.topPrime 30593 },
  { lower := 30724, upper := 30748, witness := RowWitness.topPrime 30713 },
  { lower := 30758, upper := 30850, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 31029, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31323, witness := RowWitness.topPrime 31193 },
  { lower := 31324, upper := 31380, witness := RowWitness.topPrime 31321 },
  { lower := 31423, upper := 31459, witness := RowWitness.topPrime 31397 },
  { lower := 32805, upper := 32898, witness := RowWitness.topPrime 32803 },
  { lower := 33614, upper := 33619, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33744, witness := RowWitness.topPrime 33703 },
  { lower := 34347, upper := 34467, witness := RowWitness.topPrime 34337 },
  { lower := 34468, upper := 34521, witness := RowWitness.topPrime 34457 },
  { lower := 37303, upper := 37340, witness := RowWitness.topPrime 37277 },
  { lower := 37500, upper := 37576, witness := RowWitness.topPrime 37493 },
  { lower := 38307, upper := 38421, witness := RowWitness.topPrime 38303 },
  { lower := 39366, upper := 39434, witness := RowWitness.topPrime 39359 },
  { lower := 40401, upper := 40458, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 40934, witness := RowWitness.topPrime 40927 },
  { lower := 40960, upper := 41061, witness := RowWitness.topPrime 40949 },
  { lower := 47526, upper := 47651, witness := RowWitness.topPrime 47521 },
  { lower := 47652, upper := 47654, witness := RowWitness.topPrime 47639 },
  { lower := 48013, upper := 48091, witness := RowWitness.topPrime 47981 },
  { lower := 48778, upper := 48798, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49260, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50540, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51135, witness := RowWitness.topPrime 51071 },
  { lower := 55451, upper := 55571, witness := RowWitness.topPrime 55441 },
  { lower := 55572, upper := 55577, witness := RowWitness.topPrime 55547 },
  { lower := 57245, upper := 57252, witness := RowWitness.topPrime 57241 },
  { lower := 57344, upper := 57375, witness := RowWitness.topPrime 57331 },
  { lower := 58619, upper := 58694, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59086, witness := RowWitness.topPrime 59029 },
  { lower := 62500, upper := 62540, witness := RowWitness.topPrime 62497 },
  { lower := 63948, upper := 63975, witness := RowWitness.topPrime 63929 },
  { lower := 65610, upper := 65666, witness := RowWitness.topPrime 65609 },
  { lower := 71289, upper := 71417, witness := RowWitness.topPrime 71287 },
  { lower := 71418, upper := 71419, witness := RowWitness.topPrime 71413 },
  { lower := 73205, upper := 73297, witness := RowWitness.topPrime 73189 },
  { lower := 89383, upper := 89503, witness := RowWitness.topPrime 89381 },
  { lower := 98415, upper := 98434, witness := RowWitness.topPrime 98411 },
  { lower := 109503, upper := 109505, witness := RowWitness.topPrime 109481 },
  { lower := 137842, upper := 137911, witness := RowWitness.topPrime 137831 },
  { lower := 148955, upper := 149007, witness := RowWitness.topPrime 148949 }
]

def row131_layers : List CoverLayer := [
  { lower := 17030, upper := 34060, M := 16 },
  { lower := 34060, upper := 68120, M := 12 },
  { lower := 68120, upper := 136240, M := 9 },
  { lower := 136240, upper := 272480, M := 7 },
  { lower := 272480, upper := 544960, M := 5 },
  { lower := 544960, upper := 1089920, M := 4 },
  { lower := 1089920, upper := 2179840, M := 3 },
  { lower := 2179840, upper := 4359680, M := 3 },
  { lower := 4359680, upper := 8719360, M := 2 },
  { lower := 8719360, upper := 17438720, M := 2 },
  { lower := 17438720, upper := 34877440, M := 1 },
  { lower := 34877440, upper := 69754880, M := 1 },
  { lower := 69754880, upper := 100000000, M := 1 }
]

def row131 : FiniteCoverRow := {
  height := row131_height,
  goods := row131_goods,
  layers := row131_layers
}

theorem row131_registered :
    decide (row131.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row131_goods_checked :
    row131.goods.all (goodSegmentCheck row131.height.i row131.height.r row131.height.s) = true := by
  decide +kernel

theorem row131_small_checked :
    coverCheck (2 * row131.height.i + 2) (row131.height.i * (row131.height.i - 1) - 1)
      (row131.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row131_layerCover_checked :
    coverCheck (row131.height.i * (row131.height.i - 1)) (row131.height.n0 - 1)
      (row131.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row131_layer000_checked :
    coverLayerCheck row131.height row131.goods { lower := 17030, upper := 34060, M := 16 } = true := by
  decide +kernel

theorem row131_layer001_checked :
    coverLayerCheck row131.height row131.goods { lower := 34060, upper := 68120, M := 12 } = true := by
  decide +kernel

theorem row131_layer002_checked :
    coverLayerCheck row131.height row131.goods { lower := 68120, upper := 136240, M := 9 } = true := by
  decide +kernel

theorem row131_layer003_checked :
    coverLayerCheck row131.height row131.goods { lower := 136240, upper := 272480, M := 7 } = true := by
  decide +kernel

theorem row131_layer004_checked :
    coverLayerCheck row131.height row131.goods { lower := 272480, upper := 544960, M := 5 } = true := by
  decide +kernel

theorem row131_layer005_checked :
    coverLayerCheck row131.height row131.goods { lower := 544960, upper := 1089920, M := 4 } = true := by
  decide +kernel

theorem row131_layer006_checked :
    coverLayerCheck row131.height row131.goods { lower := 1089920, upper := 2179840, M := 3 } = true := by
  decide +kernel

theorem row131_layer007_checked :
    coverLayerCheck row131.height row131.goods { lower := 2179840, upper := 4359680, M := 3 } = true := by
  decide +kernel

theorem row131_layer008_checked :
    coverLayerCheck row131.height row131.goods { lower := 4359680, upper := 8719360, M := 2 } = true := by
  decide +kernel

theorem row131_layer009_checked :
    coverLayerCheck row131.height row131.goods { lower := 8719360, upper := 17438720, M := 2 } = true := by
  decide +kernel

theorem row131_layer010_checked :
    coverLayerCheck row131.height row131.goods { lower := 17438720, upper := 34877440, M := 1 } = true := by
  decide +kernel

theorem row131_layer011_checked :
    coverLayerCheck row131.height row131.goods { lower := 34877440, upper := 69754880, M := 1 } = true := by
  decide +kernel

theorem row131_layer012_checked :
    coverLayerCheck row131.height row131.goods { lower := 69754880, upper := 100000000, M := 1 } = true := by
  decide +kernel

theorem row131_layers_checked :
    row131.layers.all (coverLayerCheck row131.height row131.goods) = true := by
  change List.all [
    { lower := 17030, upper := 34060, M := 16 },
    { lower := 34060, upper := 68120, M := 12 },
    { lower := 68120, upper := 136240, M := 9 },
    { lower := 136240, upper := 272480, M := 7 },
    { lower := 272480, upper := 544960, M := 5 },
    { lower := 544960, upper := 1089920, M := 4 },
    { lower := 1089920, upper := 2179840, M := 3 },
    { lower := 2179840, upper := 4359680, M := 3 },
    { lower := 4359680, upper := 8719360, M := 2 },
    { lower := 8719360, upper := 17438720, M := 2 },
    { lower := 17438720, upper := 34877440, M := 1 },
    { lower := 34877440, upper := 69754880, M := 1 },
    { lower := 69754880, upper := 100000000, M := 1 }
  ] (coverLayerCheck row131.height row131.goods) = true
  simp only [List.all_cons, List.all_nil,
    row131_layer000_checked,
    row131_layer001_checked,
    row131_layer002_checked,
    row131_layer003_checked,
    row131_layer004_checked,
    row131_layer005_checked,
    row131_layer006_checked,
    row131_layer007_checked,
    row131_layer008_checked,
    row131_layer009_checked,
    row131_layer010_checked,
    row131_layer011_checked,
    row131_layer012_checked,
    Bool.true_and]

theorem row131_checked : finiteCoverRowCheck row131 = true := by
  simp only [finiteCoverRowCheck, row131_registered, row131_goods_checked,
    row131_small_checked, row131_layerCover_checked, row131_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row131_checked

end B699LowIndex
