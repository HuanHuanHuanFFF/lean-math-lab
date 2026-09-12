import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

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


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_good000_checked :
    goodSegmentCheck 131 43 92
      { lower := 264, upper := 393, witness := RowWitness.topPrime 263 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good001_checked :
    goodSegmentCheck 131 43 92
      { lower := 394, upper := 519, witness := RowWitness.topPrime 389 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good002_checked :
    goodSegmentCheck 131 43 92
      { lower := 520, upper := 639, witness := RowWitness.topPrime 509 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good003_checked :
    goodSegmentCheck 131 43 92
      { lower := 640, upper := 761, witness := RowWitness.topPrime 631 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good004_checked :
    goodSegmentCheck 131 43 92
      { lower := 762, upper := 891, witness := RowWitness.topPrime 761 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good005_checked :
    goodSegmentCheck 131 43 92
      { lower := 892, upper := 1017, witness := RowWitness.topPrime 887 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good006_checked :
    goodSegmentCheck 131 43 92
      { lower := 1018, upper := 1143, witness := RowWitness.topPrime 1013 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good007_checked :
    goodSegmentCheck 131 43 92
      { lower := 1144, upper := 1259, witness := RowWitness.topPrime 1129 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good008_checked :
    goodSegmentCheck 131 43 92
      { lower := 1260, upper := 1389, witness := RowWitness.topPrime 1259 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good009_checked :
    goodSegmentCheck 131 43 92
      { lower := 1390, upper := 1511, witness := RowWitness.topPrime 1381 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good010_checked :
    goodSegmentCheck 131 43 92
      { lower := 1512, upper := 1641, witness := RowWitness.topPrime 1511 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good011_checked :
    goodSegmentCheck 131 43 92
      { lower := 1642, upper := 1767, witness := RowWitness.topPrime 1637 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good012_checked :
    goodSegmentCheck 131 43 92
      { lower := 1768, upper := 1889, witness := RowWitness.topPrime 1759 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good013_checked :
    goodSegmentCheck 131 43 92
      { lower := 1890, upper := 2019, witness := RowWitness.topPrime 1889 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good014_checked :
    goodSegmentCheck 131 43 92
      { lower := 2020, upper := 2147, witness := RowWitness.topPrime 2017 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good015_checked :
    goodSegmentCheck 131 43 92
      { lower := 2148, upper := 2273, witness := RowWitness.topPrime 2143 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_good016_checked :
    goodSegmentCheck 131 43 92
      { lower := 2274, upper := 2403, witness := RowWitness.topPrime 2273 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good017_checked :
    goodSegmentCheck 131 43 92
      { lower := 2404, upper := 2529, witness := RowWitness.topPrime 2399 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good018_checked :
    goodSegmentCheck 131 43 92
      { lower := 2530, upper := 2651, witness := RowWitness.topPrime 2521 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good019_checked :
    goodSegmentCheck 131 43 92
      { lower := 2652, upper := 2777, witness := RowWitness.topPrime 2647 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good020_checked :
    goodSegmentCheck 131 43 92
      { lower := 2778, upper := 2907, witness := RowWitness.topPrime 2777 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good021_checked :
    goodSegmentCheck 131 43 92
      { lower := 2908, upper := 3033, witness := RowWitness.topPrime 2903 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good022_checked :
    goodSegmentCheck 131 43 92
      { lower := 3034, upper := 3153, witness := RowWitness.topPrime 3023 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good023_checked :
    goodSegmentCheck 131 43 92
      { lower := 3154, upper := 3267, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good024_checked :
    goodSegmentCheck 131 43 92
      { lower := 3268, upper := 3389, witness := RowWitness.topPrime 3259 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good025_checked :
    goodSegmentCheck 131 43 92
      { lower := 3390, upper := 3519, witness := RowWitness.topPrime 3389 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good026_checked :
    goodSegmentCheck 131 43 92
      { lower := 3520, upper := 3647, witness := RowWitness.topPrime 3517 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good027_checked :
    goodSegmentCheck 131 43 92
      { lower := 3648, upper := 3773, witness := RowWitness.topPrime 3643 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good028_checked :
    goodSegmentCheck 131 43 92
      { lower := 3774, upper := 3899, witness := RowWitness.topPrime 3769 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good029_checked :
    goodSegmentCheck 131 43 92
      { lower := 3900, upper := 4019, witness := RowWitness.topPrime 3889 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good030_checked :
    goodSegmentCheck 131 43 92
      { lower := 4020, upper := 4149, witness := RowWitness.topPrime 4019 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good031_checked :
    goodSegmentCheck 131 43 92
      { lower := 4150, upper := 4269, witness := RowWitness.topPrime 4139 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_good032_checked :
    goodSegmentCheck 131 43 92
      { lower := 4270, upper := 4391, witness := RowWitness.topPrime 4261 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good033_checked :
    goodSegmentCheck 131 43 92
      { lower := 4392, upper := 4521, witness := RowWitness.topPrime 4391 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good034_checked :
    goodSegmentCheck 131 43 92
      { lower := 4522, upper := 4649, witness := RowWitness.topPrime 4519 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good035_checked :
    goodSegmentCheck 131 43 92
      { lower := 4650, upper := 4779, witness := RowWitness.topPrime 4649 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good036_checked :
    goodSegmentCheck 131 43 92
      { lower := 4780, upper := 4889, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good037_checked :
    goodSegmentCheck 131 43 92
      { lower := 4890, upper := 5019, witness := RowWitness.topPrime 4889 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good038_checked :
    goodSegmentCheck 131 43 92
      { lower := 5020, upper := 5141, witness := RowWitness.topPrime 5011 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good039_checked :
    goodSegmentCheck 131 43 92
      { lower := 5142, upper := 5249, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good040_checked :
    goodSegmentCheck 131 43 92
      { lower := 5250, upper := 5367, witness := RowWitness.topPrime 5237 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good041_checked :
    goodSegmentCheck 131 43 92
      { lower := 5368, upper := 5481, witness := RowWitness.topPrime 5351 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good042_checked :
    goodSegmentCheck 131 43 92
      { lower := 5482, upper := 5609, witness := RowWitness.topPrime 5479 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good043_checked :
    goodSegmentCheck 131 43 92
      { lower := 5610, upper := 5721, witness := RowWitness.topPrime 5591 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good044_checked :
    goodSegmentCheck 131 43 92
      { lower := 5722, upper := 5847, witness := RowWitness.topPrime 5717 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good045_checked :
    goodSegmentCheck 131 43 92
      { lower := 5848, upper := 5973, witness := RowWitness.topPrime 5843 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good046_checked :
    goodSegmentCheck 131 43 92
      { lower := 5974, upper := 6083, witness := RowWitness.topPrime 5953 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good047_checked :
    goodSegmentCheck 131 43 92
      { lower := 6084, upper := 6209, witness := RowWitness.topPrime 6079 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_good048_checked :
    goodSegmentCheck 131 43 92
      { lower := 6210, upper := 6333, witness := RowWitness.topPrime 6203 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good049_checked :
    goodSegmentCheck 131 43 92
      { lower := 6334, upper := 6459, witness := RowWitness.topPrime 6329 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good050_checked :
    goodSegmentCheck 131 43 92
      { lower := 6460, upper := 6581, witness := RowWitness.topPrime 6451 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good051_checked :
    goodSegmentCheck 131 43 92
      { lower := 6582, upper := 6711, witness := RowWitness.topPrime 6581 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good052_checked :
    goodSegmentCheck 131 43 92
      { lower := 6712, upper := 6839, witness := RowWitness.topPrime 6709 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good053_checked :
    goodSegmentCheck 131 43 92
      { lower := 6840, upper := 6963, witness := RowWitness.topPrime 6833 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good054_checked :
    goodSegmentCheck 131 43 92
      { lower := 6964, upper := 7091, witness := RowWitness.topPrime 6961 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good055_checked :
    goodSegmentCheck 131 43 92
      { lower := 7092, upper := 7209, witness := RowWitness.topPrime 7079 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good056_checked :
    goodSegmentCheck 131 43 92
      { lower := 7210, upper := 7337, witness := RowWitness.topPrime 7207 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good057_checked :
    goodSegmentCheck 131 43 92
      { lower := 7338, upper := 7463, witness := RowWitness.topPrime 7333 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good058_checked :
    goodSegmentCheck 131 43 92
      { lower := 7464, upper := 7589, witness := RowWitness.topPrime 7459 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good059_checked :
    goodSegmentCheck 131 43 92
      { lower := 7590, upper := 7719, witness := RowWitness.topPrime 7589 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good060_checked :
    goodSegmentCheck 131 43 92
      { lower := 7720, upper := 7847, witness := RowWitness.topPrime 7717 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good061_checked :
    goodSegmentCheck 131 43 92
      { lower := 7848, upper := 7971, witness := RowWitness.topPrime 7841 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good062_checked :
    goodSegmentCheck 131 43 92
      { lower := 7972, upper := 8093, witness := RowWitness.topPrime 7963 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good063_checked :
    goodSegmentCheck 131 43 92
      { lower := 8094, upper := 8223, witness := RowWitness.topPrime 8093 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_good064_checked :
    goodSegmentCheck 131 43 92
      { lower := 8224, upper := 8351, witness := RowWitness.topPrime 8221 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good065_checked :
    goodSegmentCheck 131 43 92
      { lower := 8352, upper := 8459, witness := RowWitness.topPrime 8329 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good066_checked :
    goodSegmentCheck 131 43 92
      { lower := 8460, upper := 8577, witness := RowWitness.topPrime 8447 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good067_checked :
    goodSegmentCheck 131 43 92
      { lower := 8578, upper := 8703, witness := RowWitness.topPrime 8573 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good068_checked :
    goodSegmentCheck 131 43 92
      { lower := 8704, upper := 8829, witness := RowWitness.topPrime 8699 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good069_checked :
    goodSegmentCheck 131 43 92
      { lower := 8830, upper := 8951, witness := RowWitness.topPrime 8821 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good070_checked :
    goodSegmentCheck 131 43 92
      { lower := 8952, upper := 9081, witness := RowWitness.topPrime 8951 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good071_checked :
    goodSegmentCheck 131 43 92
      { lower := 9082, upper := 9197, witness := RowWitness.topPrime 9067 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good072_checked :
    goodSegmentCheck 131 43 92
      { lower := 9198, upper := 9317, witness := RowWitness.topPrime 9187 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good073_checked :
    goodSegmentCheck 131 43 92
      { lower := 9318, upper := 9441, witness := RowWitness.topPrime 9311 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good074_checked :
    goodSegmentCheck 131 43 92
      { lower := 9442, upper := 9569, witness := RowWitness.topPrime 9439 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good075_checked :
    goodSegmentCheck 131 43 92
      { lower := 9570, upper := 9681, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good076_checked :
    goodSegmentCheck 131 43 92
      { lower := 9682, upper := 9809, witness := RowWitness.topPrime 9679 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good077_checked :
    goodSegmentCheck 131 43 92
      { lower := 9810, upper := 9933, witness := RowWitness.topPrime 9803 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good078_checked :
    goodSegmentCheck 131 43 92
      { lower := 9934, upper := 10061, witness := RowWitness.topPrime 9931 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good079_checked :
    goodSegmentCheck 131 43 92
      { lower := 10062, upper := 10191, witness := RowWitness.topPrime 10061 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_good080_checked :
    goodSegmentCheck 131 43 92
      { lower := 10192, upper := 10311, witness := RowWitness.topPrime 10181 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good081_checked :
    goodSegmentCheck 131 43 92
      { lower := 10312, upper := 10433, witness := RowWitness.topPrime 10303 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good082_checked :
    goodSegmentCheck 131 43 92
      { lower := 10434, upper := 10563, witness := RowWitness.topPrime 10433 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good083_checked :
    goodSegmentCheck 131 43 92
      { lower := 10564, upper := 10689, witness := RowWitness.topPrime 10559 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good084_checked :
    goodSegmentCheck 131 43 92
      { lower := 10690, upper := 10817, witness := RowWitness.topPrime 10687 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good085_checked :
    goodSegmentCheck 131 43 92
      { lower := 10818, upper := 10929, witness := RowWitness.topPrime 10799 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good086_checked :
    goodSegmentCheck 131 43 92
      { lower := 10930, upper := 11039, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good087_checked :
    goodSegmentCheck 131 43 92
      { lower := 11040, upper := 11157, witness := RowWitness.topPrime 11027 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good088_checked :
    goodSegmentCheck 131 43 92
      { lower := 11158, upper := 11279, witness := RowWitness.topPrime 11149 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good089_checked :
    goodSegmentCheck 131 43 92
      { lower := 11280, upper := 11409, witness := RowWitness.topPrime 11279 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good090_checked :
    goodSegmentCheck 131 43 92
      { lower := 11410, upper := 11529, witness := RowWitness.topPrime 11399 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good091_checked :
    goodSegmentCheck 131 43 92
      { lower := 11530, upper := 11657, witness := RowWitness.topPrime 11527 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good092_checked :
    goodSegmentCheck 131 43 92
      { lower := 11658, upper := 11787, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good093_checked :
    goodSegmentCheck 131 43 92
      { lower := 11788, upper := 11913, witness := RowWitness.topPrime 11783 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good094_checked :
    goodSegmentCheck 131 43 92
      { lower := 11914, upper := 12039, witness := RowWitness.topPrime 11909 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good095_checked :
    goodSegmentCheck 131 43 92
      { lower := 12040, upper := 12167, witness := RowWitness.topPrime 12037 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_good096_checked :
    goodSegmentCheck 131 43 92
      { lower := 12168, upper := 12293, witness := RowWitness.topPrime 12163 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good097_checked :
    goodSegmentCheck 131 43 92
      { lower := 12294, upper := 12419, witness := RowWitness.topPrime 12289 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good098_checked :
    goodSegmentCheck 131 43 92
      { lower := 12420, upper := 12543, witness := RowWitness.topPrime 12413 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good099_checked :
    goodSegmentCheck 131 43 92
      { lower := 12544, upper := 12671, witness := RowWitness.topPrime 12541 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good100_checked :
    goodSegmentCheck 131 43 92
      { lower := 12672, upper := 12801, witness := RowWitness.topPrime 12671 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good101_checked :
    goodSegmentCheck 131 43 92
      { lower := 12802, upper := 12929, witness := RowWitness.topPrime 12799 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good102_checked :
    goodSegmentCheck 131 43 92
      { lower := 12930, upper := 13053, witness := RowWitness.topPrime 12923 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good103_checked :
    goodSegmentCheck 131 43 92
      { lower := 13054, upper := 13179, witness := RowWitness.topPrime 13049 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good104_checked :
    goodSegmentCheck 131 43 92
      { lower := 13180, upper := 13307, witness := RowWitness.topPrime 13177 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good105_checked :
    goodSegmentCheck 131 43 92
      { lower := 13308, upper := 13427, witness := RowWitness.topPrime 13297 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good106_checked :
    goodSegmentCheck 131 43 92
      { lower := 13428, upper := 13551, witness := RowWitness.topPrime 13421 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good107_checked :
    goodSegmentCheck 131 43 92
      { lower := 13552, upper := 13667, witness := RowWitness.topPrime 13537 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good108_checked :
    goodSegmentCheck 131 43 92
      { lower := 13668, upper := 13779, witness := RowWitness.topPrime 13649 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good109_checked :
    goodSegmentCheck 131 43 92
      { lower := 13780, upper := 13893, witness := RowWitness.topPrime 13763 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good110_checked :
    goodSegmentCheck 131 43 92
      { lower := 13894, upper := 14013, witness := RowWitness.topPrime 13883 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good111_checked :
    goodSegmentCheck 131 43 92
      { lower := 14014, upper := 14141, witness := RowWitness.topPrime 14011 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_good112_checked :
    goodSegmentCheck 131 43 92
      { lower := 14142, upper := 14237, witness := RowWitness.topPrime 14107 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good113_checked :
    goodSegmentCheck 131 43 92
      { lower := 14238, upper := 14351, witness := RowWitness.topPrime 14221 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good114_checked :
    goodSegmentCheck 131 43 92
      { lower := 14352, upper := 14477, witness := RowWitness.topPrime 14347 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good115_checked :
    goodSegmentCheck 131 43 92
      { lower := 14478, upper := 14591, witness := RowWitness.topPrime 14461 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good116_checked :
    goodSegmentCheck 131 43 92
      { lower := 14592, upper := 14721, witness := RowWitness.topPrime 14591 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good117_checked :
    goodSegmentCheck 131 43 92
      { lower := 14722, upper := 14847, witness := RowWitness.topPrime 14717 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good118_checked :
    goodSegmentCheck 131 43 92
      { lower := 14848, upper := 14973, witness := RowWitness.topPrime 14843 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good119_checked :
    goodSegmentCheck 131 43 92
      { lower := 14974, upper := 15099, witness := RowWitness.topPrime 14969 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good120_checked :
    goodSegmentCheck 131 43 92
      { lower := 15100, upper := 15221, witness := RowWitness.topPrime 15091 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good121_checked :
    goodSegmentCheck 131 43 92
      { lower := 15222, upper := 15347, witness := RowWitness.topPrime 15217 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good122_checked :
    goodSegmentCheck 131 43 92
      { lower := 15348, upper := 15461, witness := RowWitness.topPrime 15331 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good123_checked :
    goodSegmentCheck 131 43 92
      { lower := 15462, upper := 15591, witness := RowWitness.topPrime 15461 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good124_checked :
    goodSegmentCheck 131 43 92
      { lower := 15592, upper := 15713, witness := RowWitness.topPrime 15583 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good125_checked :
    goodSegmentCheck 131 43 92
      { lower := 15714, upper := 15813, witness := RowWitness.topPrime 15683 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good126_checked :
    goodSegmentCheck 131 43 92
      { lower := 15814, upper := 15939, witness := RowWitness.topPrime 15809 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good127_checked :
    goodSegmentCheck 131 43 92
      { lower := 15940, upper := 16067, witness := RowWitness.topPrime 15937 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_good128_checked :
    goodSegmentCheck 131 43 92
      { lower := 16068, upper := 16197, witness := RowWitness.topPrime 16067 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good129_checked :
    goodSegmentCheck 131 43 92
      { lower := 16198, upper := 16323, witness := RowWitness.topPrime 16193 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good130_checked :
    goodSegmentCheck 131 43 92
      { lower := 16324, upper := 16449, witness := RowWitness.topPrime 16319 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good131_checked :
    goodSegmentCheck 131 43 92
      { lower := 16450, upper := 16577, witness := RowWitness.topPrime 16447 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good132_checked :
    goodSegmentCheck 131 43 92
      { lower := 16578, upper := 16703, witness := RowWitness.topPrime 16573 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good133_checked :
    goodSegmentCheck 131 43 92
      { lower := 16704, upper := 16833, witness := RowWitness.topPrime 16703 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good134_checked :
    goodSegmentCheck 131 43 92
      { lower := 16834, upper := 16961, witness := RowWitness.topPrime 16831 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good135_checked :
    goodSegmentCheck 131 43 92
      { lower := 16962, upper := 17029, witness := RowWitness.topPrime 16943 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good136_checked :
    goodSegmentCheck 131 43 92
      { lower := 17405, upper := 17433, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good137_checked :
    goodSegmentCheck 131 43 92
      { lower := 17496, upper := 17535, witness := RowWitness.topPrime 17491 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good138_checked :
    goodSegmentCheck 131 43 92
      { lower := 17576, upper := 17626, witness := RowWitness.topPrime 17573 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good139_checked :
    goodSegmentCheck 131 43 92
      { lower := 17672, upper := 17706, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good140_checked :
    goodSegmentCheck 131 43 92
      { lower := 17797, upper := 17802, witness := RowWitness.topPrime 17791 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good141_checked :
    goodSegmentCheck 131 43 92
      { lower := 18490, upper := 18611, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good142_checked :
    goodSegmentCheck 131 43 92
      { lower := 18612, upper := 18621, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good143_checked :
    goodSegmentCheck 131 43 92
      { lower := 18634, upper := 18747, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_good144_checked :
    goodSegmentCheck 131 43 92
      { lower := 18748, upper := 18873, witness := RowWitness.topPrime 18743 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good145_checked :
    goodSegmentCheck 131 43 92
      { lower := 18874, upper := 18880, witness := RowWitness.topPrime 18869 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good146_checked :
    goodSegmentCheck 131 43 92
      { lower := 19208, upper := 19296, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good147_checked :
    goodSegmentCheck 131 43 92
      { lower := 19663, upper := 19791, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good148_checked :
    goodSegmentCheck 131 43 92
      { lower := 19792, upper := 19813, witness := RowWitness.topPrime 19777 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good149_checked :
    goodSegmentCheck 131 43 92
      { lower := 19881, upper := 19903, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good150_checked :
    goodSegmentCheck 131 43 92
      { lower := 19965, upper := 20011, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good151_checked :
    goodSegmentCheck 131 43 92
      { lower := 20172, upper := 20291, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good152_checked :
    goodSegmentCheck 131 43 92
      { lower := 20292, upper := 20294, witness := RowWitness.topPrime 20287 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good153_checked :
    goodSegmentCheck 131 43 92
      { lower := 20402, upper := 20469, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good154_checked :
    goodSegmentCheck 131 43 92
      { lower := 20480, upper := 20532, witness := RowWitness.topPrime 20479 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good155_checked :
    goodSegmentCheck 131 43 92
      { lower := 20535, upper := 20663, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good156_checked :
    goodSegmentCheck 131 43 92
      { lower := 20664, upper := 20665, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good157_checked :
    goodSegmentCheck 131 43 92
      { lower := 20667, upper := 20707, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good158_checked :
    goodSegmentCheck 131 43 92
      { lower := 21296, upper := 21413, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good159_checked :
    goodSegmentCheck 131 43 92
      { lower := 21414, upper := 21426, witness := RowWitness.topPrime 21407 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_good160_checked :
    goodSegmentCheck 131 43 92
      { lower := 21870, upper := 21993, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good161_checked :
    goodSegmentCheck 131 43 92
      { lower := 21994, upper := 22034, witness := RowWitness.topPrime 21991 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good162_checked :
    goodSegmentCheck 131 43 92
      { lower := 22090, upper := 22100, witness := RowWitness.topPrime 22079 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good163_checked :
    goodSegmentCheck 131 43 92
      { lower := 22188, upper := 22220, witness := RowWitness.topPrime 22171 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good164_checked :
    goodSegmentCheck 131 43 92
      { lower := 22445, upper := 22456, witness := RowWitness.topPrime 22441 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good165_checked :
    goodSegmentCheck 131 43 92
      { lower := 22472, upper := 22599, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good166_checked :
    goodSegmentCheck 131 43 92
      { lower := 22600, upper := 22602, witness := RowWitness.topPrime 22573 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good167_checked :
    goodSegmentCheck 131 43 92
      { lower := 23763, upper := 23891, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good168_checked :
    goodSegmentCheck 131 43 92
      { lower := 23892, upper := 23892, witness := RowWitness.topPrime 23887 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good169_checked :
    goodSegmentCheck 131 43 92
      { lower := 24037, upper := 24159, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good170_checked :
    goodSegmentCheck 131 43 92
      { lower := 24160, upper := 24187, witness := RowWitness.topPrime 24151 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good171_checked :
    goodSegmentCheck 131 43 92
      { lower := 24334, upper := 24459, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good172_checked :
    goodSegmentCheck 131 43 92
      { lower := 24460, upper := 24497, witness := RowWitness.topPrime 24443 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good173_checked :
    goodSegmentCheck 131 43 92
      { lower := 24576, upper := 24695, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good174_checked :
    goodSegmentCheck 131 43 92
      { lower := 25000, upper := 25094, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good175_checked :
    goodSegmentCheck 131 43 92
      { lower := 25215, upper := 25319, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_good176_checked :
    goodSegmentCheck 131 43 92
      { lower := 25320, upper := 25345, witness := RowWitness.topPrime 25309 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good177_checked :
    goodSegmentCheck 131 43 92
      { lower := 26364, upper := 26374, witness := RowWitness.topPrime 26357 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good178_checked :
    goodSegmentCheck 131 43 92
      { lower := 26411, upper := 26494, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good179_checked :
    goodSegmentCheck 131 43 92
      { lower := 26508, upper := 26541, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good180_checked :
    goodSegmentCheck 131 43 92
      { lower := 26624, upper := 26638, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good181_checked :
    goodSegmentCheck 131 43 92
      { lower := 26645, upper := 26754, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good182_checked :
    goodSegmentCheck 131 43 92
      { lower := 26934, upper := 27026, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good183_checked :
    goodSegmentCheck 131 43 92
      { lower := 27556, upper := 27566, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good184_checked :
    goodSegmentCheck 131 43 92
      { lower := 27848, upper := 27865, witness := RowWitness.topPrime 27847 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good185_checked :
    goodSegmentCheck 131 43 92
      { lower := 28125, upper := 28220, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good186_checked :
    goodSegmentCheck 131 43 92
      { lower := 28227, upper := 28255, witness := RowWitness.topPrime 28219 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good187_checked :
    goodSegmentCheck 131 43 92
      { lower := 28561, upper := 28561, witness := RowWitness.topPrime 28559 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good188_checked :
    goodSegmentCheck 131 43 92
      { lower := 28672, upper := 28691, witness := RowWitness.topPrime 28669 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good189_checked :
    goodSegmentCheck 131 43 92
      { lower := 28717, upper := 28802, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good190_checked :
    goodSegmentCheck 131 43 92
      { lower := 28812, upper := 28847, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good191_checked :
    goodSegmentCheck 131 43 92
      { lower := 29584, upper := 29608, witness := RowWitness.topPrime 29581 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_good192_checked :
    goodSegmentCheck 131 43 92
      { lower := 29791, upper := 29898, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good193_checked :
    goodSegmentCheck 131 43 92
      { lower := 30618, upper := 30723, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good194_checked :
    goodSegmentCheck 131 43 92
      { lower := 30724, upper := 30748, witness := RowWitness.topPrime 30713 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good195_checked :
    goodSegmentCheck 131 43 92
      { lower := 30758, upper := 30850, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good196_checked :
    goodSegmentCheck 131 43 92
      { lower := 30926, upper := 31029, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good197_checked :
    goodSegmentCheck 131 43 92
      { lower := 31213, upper := 31323, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good198_checked :
    goodSegmentCheck 131 43 92
      { lower := 31324, upper := 31380, witness := RowWitness.topPrime 31321 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good199_checked :
    goodSegmentCheck 131 43 92
      { lower := 31423, upper := 31459, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good200_checked :
    goodSegmentCheck 131 43 92
      { lower := 32805, upper := 32898, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good201_checked :
    goodSegmentCheck 131 43 92
      { lower := 33614, upper := 33619, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good202_checked :
    goodSegmentCheck 131 43 92
      { lower := 33708, upper := 33744, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good203_checked :
    goodSegmentCheck 131 43 92
      { lower := 34347, upper := 34467, witness := RowWitness.topPrime 34337 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good204_checked :
    goodSegmentCheck 131 43 92
      { lower := 34468, upper := 34521, witness := RowWitness.topPrime 34457 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good205_checked :
    goodSegmentCheck 131 43 92
      { lower := 37303, upper := 37340, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good206_checked :
    goodSegmentCheck 131 43 92
      { lower := 37500, upper := 37576, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good207_checked :
    goodSegmentCheck 131 43 92
      { lower := 38307, upper := 38421, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_good208_checked :
    goodSegmentCheck 131 43 92
      { lower := 39366, upper := 39434, witness := RowWitness.topPrime 39359 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good209_checked :
    goodSegmentCheck 131 43 92
      { lower := 40401, upper := 40458, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good210_checked :
    goodSegmentCheck 131 43 92
      { lower := 40931, upper := 40934, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good211_checked :
    goodSegmentCheck 131 43 92
      { lower := 40960, upper := 41061, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good212_checked :
    goodSegmentCheck 131 43 92
      { lower := 47526, upper := 47651, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good213_checked :
    goodSegmentCheck 131 43 92
      { lower := 47652, upper := 47654, witness := RowWitness.topPrime 47639 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good214_checked :
    goodSegmentCheck 131 43 92
      { lower := 48013, upper := 48091, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good215_checked :
    goodSegmentCheck 131 43 92
      { lower := 48778, upper := 48798, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good216_checked :
    goodSegmentCheck 131 43 92
      { lower := 49152, upper := 49260, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good217_checked :
    goodSegmentCheck 131 43 92
      { lower := 50421, upper := 50540, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good218_checked :
    goodSegmentCheck 131 43 92
      { lower := 51076, upper := 51135, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good219_checked :
    goodSegmentCheck 131 43 92
      { lower := 55451, upper := 55571, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good220_checked :
    goodSegmentCheck 131 43 92
      { lower := 55572, upper := 55577, witness := RowWitness.topPrime 55547 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good221_checked :
    goodSegmentCheck 131 43 92
      { lower := 57245, upper := 57252, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good222_checked :
    goodSegmentCheck 131 43 92
      { lower := 57344, upper := 57375, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good223_checked :
    goodSegmentCheck 131 43 92
      { lower := 58619, upper := 58694, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_good224_checked :
    goodSegmentCheck 131 43 92
      { lower := 59049, upper := 59086, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good225_checked :
    goodSegmentCheck 131 43 92
      { lower := 62500, upper := 62540, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good226_checked :
    goodSegmentCheck 131 43 92
      { lower := 63948, upper := 63975, witness := RowWitness.topPrime 63929 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good227_checked :
    goodSegmentCheck 131 43 92
      { lower := 65610, upper := 65666, witness := RowWitness.topPrime 65609 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good228_checked :
    goodSegmentCheck 131 43 92
      { lower := 71289, upper := 71417, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good229_checked :
    goodSegmentCheck 131 43 92
      { lower := 71418, upper := 71419, witness := RowWitness.topPrime 71413 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good230_checked :
    goodSegmentCheck 131 43 92
      { lower := 73205, upper := 73297, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good231_checked :
    goodSegmentCheck 131 43 92
      { lower := 89383, upper := 89503, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good232_checked :
    goodSegmentCheck 131 43 92
      { lower := 98415, upper := 98434, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good233_checked :
    goodSegmentCheck 131 43 92
      { lower := 109503, upper := 109505, witness := RowWitness.topPrime 109481 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good234_checked :
    goodSegmentCheck 131 43 92
      { lower := 137842, upper := 137911, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row131_good235_checked :
    goodSegmentCheck 131 43 92
      { lower := 148955, upper := 149007, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 131) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_good235_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_goods_checked :
    row131.goods.all (goodSegmentCheck row131.height.i row131.height.r row131.height.s) = true := by
  change row131_goods.all (goodSegmentCheck 131 43 92) = true
  simp only [row131_goods, List.all_cons, List.all_nil,
    row131_good000_checked,
    row131_good001_checked,
    row131_good002_checked,
    row131_good003_checked,
    row131_good004_checked,
    row131_good005_checked,
    row131_good006_checked,
    row131_good007_checked,
    row131_good008_checked,
    row131_good009_checked,
    row131_good010_checked,
    row131_good011_checked,
    row131_good012_checked,
    row131_good013_checked,
    row131_good014_checked,
    row131_good015_checked,
    row131_good016_checked,
    row131_good017_checked,
    row131_good018_checked,
    row131_good019_checked,
    row131_good020_checked,
    row131_good021_checked,
    row131_good022_checked,
    row131_good023_checked,
    row131_good024_checked,
    row131_good025_checked,
    row131_good026_checked,
    row131_good027_checked,
    row131_good028_checked,
    row131_good029_checked,
    row131_good030_checked,
    row131_good031_checked,
    row131_good032_checked,
    row131_good033_checked,
    row131_good034_checked,
    row131_good035_checked,
    row131_good036_checked,
    row131_good037_checked,
    row131_good038_checked,
    row131_good039_checked,
    row131_good040_checked,
    row131_good041_checked,
    row131_good042_checked,
    row131_good043_checked,
    row131_good044_checked,
    row131_good045_checked,
    row131_good046_checked,
    row131_good047_checked,
    row131_good048_checked,
    row131_good049_checked,
    row131_good050_checked,
    row131_good051_checked,
    row131_good052_checked,
    row131_good053_checked,
    row131_good054_checked,
    row131_good055_checked,
    row131_good056_checked,
    row131_good057_checked,
    row131_good058_checked,
    row131_good059_checked,
    row131_good060_checked,
    row131_good061_checked,
    row131_good062_checked,
    row131_good063_checked,
    row131_good064_checked,
    row131_good065_checked,
    row131_good066_checked,
    row131_good067_checked,
    row131_good068_checked,
    row131_good069_checked,
    row131_good070_checked,
    row131_good071_checked,
    row131_good072_checked,
    row131_good073_checked,
    row131_good074_checked,
    row131_good075_checked,
    row131_good076_checked,
    row131_good077_checked,
    row131_good078_checked,
    row131_good079_checked,
    row131_good080_checked,
    row131_good081_checked,
    row131_good082_checked,
    row131_good083_checked,
    row131_good084_checked,
    row131_good085_checked,
    row131_good086_checked,
    row131_good087_checked,
    row131_good088_checked,
    row131_good089_checked,
    row131_good090_checked,
    row131_good091_checked,
    row131_good092_checked,
    row131_good093_checked,
    row131_good094_checked,
    row131_good095_checked,
    row131_good096_checked,
    row131_good097_checked,
    row131_good098_checked,
    row131_good099_checked,
    row131_good100_checked,
    row131_good101_checked,
    row131_good102_checked,
    row131_good103_checked,
    row131_good104_checked,
    row131_good105_checked,
    row131_good106_checked,
    row131_good107_checked,
    row131_good108_checked,
    row131_good109_checked,
    row131_good110_checked,
    row131_good111_checked,
    row131_good112_checked,
    row131_good113_checked,
    row131_good114_checked,
    row131_good115_checked,
    row131_good116_checked,
    row131_good117_checked,
    row131_good118_checked,
    row131_good119_checked,
    row131_good120_checked,
    row131_good121_checked,
    row131_good122_checked,
    row131_good123_checked,
    row131_good124_checked,
    row131_good125_checked,
    row131_good126_checked,
    row131_good127_checked,
    row131_good128_checked,
    row131_good129_checked,
    row131_good130_checked,
    row131_good131_checked,
    row131_good132_checked,
    row131_good133_checked,
    row131_good134_checked,
    row131_good135_checked,
    row131_good136_checked,
    row131_good137_checked,
    row131_good138_checked,
    row131_good139_checked,
    row131_good140_checked,
    row131_good141_checked,
    row131_good142_checked,
    row131_good143_checked,
    row131_good144_checked,
    row131_good145_checked,
    row131_good146_checked,
    row131_good147_checked,
    row131_good148_checked,
    row131_good149_checked,
    row131_good150_checked,
    row131_good151_checked,
    row131_good152_checked,
    row131_good153_checked,
    row131_good154_checked,
    row131_good155_checked,
    row131_good156_checked,
    row131_good157_checked,
    row131_good158_checked,
    row131_good159_checked,
    row131_good160_checked,
    row131_good161_checked,
    row131_good162_checked,
    row131_good163_checked,
    row131_good164_checked,
    row131_good165_checked,
    row131_good166_checked,
    row131_good167_checked,
    row131_good168_checked,
    row131_good169_checked,
    row131_good170_checked,
    row131_good171_checked,
    row131_good172_checked,
    row131_good173_checked,
    row131_good174_checked,
    row131_good175_checked,
    row131_good176_checked,
    row131_good177_checked,
    row131_good178_checked,
    row131_good179_checked,
    row131_good180_checked,
    row131_good181_checked,
    row131_good182_checked,
    row131_good183_checked,
    row131_good184_checked,
    row131_good185_checked,
    row131_good186_checked,
    row131_good187_checked,
    row131_good188_checked,
    row131_good189_checked,
    row131_good190_checked,
    row131_good191_checked,
    row131_good192_checked,
    row131_good193_checked,
    row131_good194_checked,
    row131_good195_checked,
    row131_good196_checked,
    row131_good197_checked,
    row131_good198_checked,
    row131_good199_checked,
    row131_good200_checked,
    row131_good201_checked,
    row131_good202_checked,
    row131_good203_checked,
    row131_good204_checked,
    row131_good205_checked,
    row131_good206_checked,
    row131_good207_checked,
    row131_good208_checked,
    row131_good209_checked,
    row131_good210_checked,
    row131_good211_checked,
    row131_good212_checked,
    row131_good213_checked,
    row131_good214_checked,
    row131_good215_checked,
    row131_good216_checked,
    row131_good217_checked,
    row131_good218_checked,
    row131_good219_checked,
    row131_good220_checked,
    row131_good221_checked,
    row131_good222_checked,
    row131_good223_checked,
    row131_good224_checked,
    row131_good225_checked,
    row131_good226_checked,
    row131_good227_checked,
    row131_good228_checked,
    row131_good229_checked,
    row131_good230_checked,
    row131_good231_checked,
    row131_good232_checked,
    row131_good233_checked,
    row131_good234_checked,
    row131_good235_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_registered :
    decide (row131.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row131_small_checked :
    coverCheck (2 * row131.height.i + 2) (row131.height.i * (row131.height.i - 1) - 1)
      (row131.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row131_layerCover_checked :
    coverCheck (row131.height.i * (row131.height.i - 1)) (row131.height.n0 - 1)
      (row131.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row131_bounds : List NatInterval :=
  [(264, 393), (394, 519), (520, 639), (640, 761), (762, 891), (892, 1017), (1018, 1143), (1144, 1259), (1260, 1389), (1390, 1511), (1512, 1641), (1642, 1767), (1768, 1889), (1890, 2019), (2020, 2147), (2148, 2273), (2274, 2403), (2404, 2529), (2530, 2651), (2652, 2777), (2778, 2907), (2908, 3033), (3034, 3153), (3154, 3267), (3268, 3389), (3390, 3519), (3520, 3647), (3648, 3773), (3774, 3899), (3900, 4019), (4020, 4149), (4150, 4269), (4270, 4391), (4392, 4521), (4522, 4649), (4650, 4779), (4780, 4889), (4890, 5019), (5020, 5141), (5142, 5249), (5250, 5367), (5368, 5481), (5482, 5609), (5610, 5721), (5722, 5847), (5848, 5973), (5974, 6083), (6084, 6209), (6210, 6333), (6334, 6459), (6460, 6581), (6582, 6711), (6712, 6839), (6840, 6963), (6964, 7091), (7092, 7209), (7210, 7337), (7338, 7463), (7464, 7589), (7590, 7719), (7720, 7847), (7848, 7971), (7972, 8093), (8094, 8223), (8224, 8351), (8352, 8459), (8460, 8577), (8578, 8703), (8704, 8829), (8830, 8951), (8952, 9081), (9082, 9197), (9198, 9317), (9318, 9441), (9442, 9569), (9570, 9681), (9682, 9809), (9810, 9933), (9934, 10061), (10062, 10191), (10192, 10311), (10312, 10433), (10434, 10563), (10564, 10689), (10690, 10817), (10818, 10929), (10930, 11039), (11040, 11157), (11158, 11279), (11280, 11409), (11410, 11529), (11530, 11657), (11658, 11787), (11788, 11913), (11914, 12039), (12040, 12167), (12168, 12293), (12294, 12419), (12420, 12543), (12544, 12671), (12672, 12801), (12802, 12929), (12930, 13053), (13054, 13179), (13180, 13307), (13308, 13427), (13428, 13551), (13552, 13667), (13668, 13779), (13780, 13893), (13894, 14013), (14014, 14141), (14142, 14237), (14238, 14351), (14352, 14477), (14478, 14591), (14592, 14721), (14722, 14847), (14848, 14973), (14974, 15099), (15100, 15221), (15222, 15347), (15348, 15461), (15462, 15591), (15592, 15713), (15714, 15813), (15814, 15939), (15940, 16067), (16068, 16197), (16198, 16323), (16324, 16449), (16450, 16577), (16578, 16703), (16704, 16833), (16834, 16961), (16962, 17029), (17405, 17433), (17496, 17535), (17576, 17626), (17672, 17706), (17797, 17802), (18490, 18611), (18612, 18621), (18634, 18747), (18748, 18873), (18874, 18880), (19208, 19296), (19663, 19791), (19792, 19813), (19881, 19903), (19965, 20011), (20172, 20291), (20292, 20294), (20402, 20469), (20480, 20532), (20535, 20663), (20664, 20665), (20667, 20707), (21296, 21413), (21414, 21426), (21870, 21993), (21994, 22034), (22090, 22100), (22188, 22220), (22445, 22456), (22472, 22599), (22600, 22602), (23763, 23891), (23892, 23892), (24037, 24159), (24160, 24187), (24334, 24459), (24460, 24497), (24576, 24695), (25000, 25094), (25215, 25319), (25320, 25345), (26364, 26374), (26411, 26494), (26508, 26541), (26624, 26638), (26645, 26754), (26934, 27026), (27556, 27566), (27848, 27865), (28125, 28220), (28227, 28255), (28561, 28561), (28672, 28691), (28717, 28802), (28812, 28847), (29584, 29608), (29791, 29898), (30618, 30723), (30724, 30748), (30758, 30850), (30926, 31029), (31213, 31323), (31324, 31380), (31423, 31459), (32805, 32898), (33614, 33619), (33708, 33744), (34347, 34467), (34468, 34521), (37303, 37340), (37500, 37576), (38307, 38421), (39366, 39434), (40401, 40458), (40931, 40934), (40960, 41061), (47526, 47651), (47652, 47654), (48013, 48091), (48778, 48798), (49152, 49260), (50421, 50540), (51076, 51135), (55451, 55571), (55572, 55577), (57245, 57252), (57344, 57375), (58619, 58694), (59049, 59086), (62500, 62540), (63948, 63975), (65610, 65666), (71289, 71417), (71418, 71419), (73205, 73297), (89383, 89503), (98415, 98434), (109503, 109505), (137842, 137911), (148955, 149007)]

theorem row131_bounds_eq : row131.goods.map goodSegmentBounds = row131_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row131_layer000_intervals : List ColouredInterval :=
  [(2, 18432, 18562), (2, 20480, 20610), (2, 22528, 22658), (2, 24576, 24706), (2, 26624, 26754), (2, 28672, 28802), (2, 30720, 30850), (2, 32768, 32898), (2, 20480, 20610), (2, 24576, 24706), (2, 28672, 28802), (2, 32768, 32898), (2, 24576, 24706), (2, 32768, 32898), (2, 32768, 32898), (2, 32768, 32898), (3, 17496, 17626), (3, 19683, 19813), (3, 21870, 22000), (3, 24057, 24187), (3, 26244, 26374), (3, 28431, 28561), (3, 30618, 30748), (3, 32805, 32935), (3, 19683, 19813), (3, 26244, 26374), (3, 32805, 32935), (3, 19683, 19813), (5, 18750, 18880), (5, 21875, 22005), (5, 25000, 25130), (5, 28125, 28255), (5, 31250, 31380), (5, 31250, 31380), (7, 19208, 19338), (7, 21609, 21739), (7, 24010, 24140), (7, 26411, 26541), (7, 28812, 28942), (7, 31213, 31343), (7, 33614, 33744), (7, 33614, 33744), (11, 17303, 17433), (11, 18634, 18764), (11, 19965, 20095), (11, 21296, 21426), (11, 29282, 29412), (13, 17576, 17706), (13, 19773, 19903), (13, 21970, 22100), (13, 24167, 24297), (13, 26364, 26494), (13, 28561, 28691), (13, 30758, 30888), (13, 32955, 33085), (13, 28561, 28691), (17, 19652, 19782), (17, 24565, 24695), (17, 29478, 29608), (19, 20577, 20707), (19, 27436, 27566), (23, 24334, 24464), (29, 24389, 24519), (31, 29791, 29921), (37, 17797, 17927), (37, 19166, 19296), (37, 20535, 20665), (37, 21904, 22034), (41, 18491, 18621), (41, 20172, 20302), (41, 21853, 21983), (41, 23534, 23664), (41, 25215, 25345), (41, 26896, 27026), (43, 18490, 18620), (43, 20339, 20469), (43, 22188, 22318), (43, 24037, 24167), (43, 25886, 26016), (43, 27735, 27865), (43, 29584, 29714), (47, 17672, 17802), (47, 19881, 20011), (47, 22090, 22220), (47, 24299, 24429), (47, 26508, 26638), (47, 28717, 28847), (47, 30926, 31056), (47, 33135, 33265), (53, 19663, 19793), (53, 22472, 22602), (53, 25281, 25411), (53, 28090, 28220), (53, 30899, 31029), (53, 33708, 33838), (59, 17405, 17535), (59, 20886, 21016), (59, 24367, 24497), (59, 27848, 27978), (59, 31329, 31459), (61, 18605, 18735), (61, 22326, 22456), (61, 26047, 26177), (61, 29768, 29898), (61, 33489, 33619), (67, 17956, 18086), (67, 22445, 22575), (67, 26934, 27064), (67, 31423, 31553), (71, 20164, 20294), (71, 25205, 25335), (71, 30246, 30376), (73, 21316, 21446), (73, 26645, 26775), (73, 31974, 32104), (79, 18723, 18853), (79, 24964, 25094), (79, 31205, 31335), (83, 20667, 20797), (83, 27556, 27686), (89, 23763, 23893), (89, 31684, 31814), (97, 18818, 18948), (97, 28227, 28357), (101, 20402, 20532), (101, 30603, 30733), (103, 21218, 21348), (103, 31827, 31957), (107, 22898, 23028), (109, 23762, 23892), (113, 25538, 25668), (127, 32258, 32388)]

def row131_layer000_block000 : List ColouredInterval :=
  [(2, 18432, 18562), (2, 20480, 20610), (2, 22528, 22658), (2, 24576, 24706), (2, 26624, 26754), (2, 28672, 28802), (2, 30720, 30850), (2, 32768, 32898), (2, 20480, 20610), (2, 24576, 24706), (2, 28672, 28802), (2, 32768, 32898), (2, 24576, 24706), (2, 32768, 32898), (2, 32768, 32898)]

def row131_layer000_block001 : List ColouredInterval :=
  [(2, 32768, 32898), (3, 17496, 17626), (3, 19683, 19813), (3, 21870, 22000), (3, 24057, 24187), (3, 26244, 26374), (3, 28431, 28561), (3, 30618, 30748), (3, 32805, 32935), (3, 19683, 19813), (3, 26244, 26374), (3, 32805, 32935), (3, 19683, 19813), (5, 18750, 18880), (5, 21875, 22005)]

def row131_layer000_block002 : List ColouredInterval :=
  [(5, 25000, 25130), (5, 28125, 28255), (5, 31250, 31380), (5, 31250, 31380), (7, 19208, 19338), (7, 21609, 21739), (7, 24010, 24140), (7, 26411, 26541), (7, 28812, 28942), (7, 31213, 31343), (7, 33614, 33744), (7, 33614, 33744), (11, 17303, 17433), (11, 18634, 18764), (11, 19965, 20095)]

def row131_layer000_block003 : List ColouredInterval :=
  [(11, 21296, 21426), (11, 29282, 29412), (13, 17576, 17706), (13, 19773, 19903), (13, 21970, 22100), (13, 24167, 24297), (13, 26364, 26494), (13, 28561, 28691), (13, 30758, 30888), (13, 32955, 33085), (13, 28561, 28691), (17, 19652, 19782), (17, 24565, 24695), (17, 29478, 29608), (19, 20577, 20707)]

def row131_layer000_block004 : List ColouredInterval :=
  [(19, 27436, 27566), (23, 24334, 24464), (29, 24389, 24519), (31, 29791, 29921), (37, 17797, 17927), (37, 19166, 19296), (37, 20535, 20665), (37, 21904, 22034), (41, 18491, 18621), (41, 20172, 20302), (41, 21853, 21983), (41, 23534, 23664), (41, 25215, 25345), (41, 26896, 27026), (43, 18490, 18620)]

def row131_layer000_block005 : List ColouredInterval :=
  [(43, 20339, 20469), (43, 22188, 22318), (43, 24037, 24167), (43, 25886, 26016), (43, 27735, 27865), (43, 29584, 29714), (47, 17672, 17802), (47, 19881, 20011), (47, 22090, 22220), (47, 24299, 24429), (47, 26508, 26638), (47, 28717, 28847), (47, 30926, 31056), (47, 33135, 33265), (53, 19663, 19793)]

def row131_layer000_block006 : List ColouredInterval :=
  [(53, 22472, 22602), (53, 25281, 25411), (53, 28090, 28220), (53, 30899, 31029), (53, 33708, 33838), (59, 17405, 17535), (59, 20886, 21016), (59, 24367, 24497), (59, 27848, 27978), (59, 31329, 31459), (61, 18605, 18735), (61, 22326, 22456), (61, 26047, 26177), (61, 29768, 29898), (61, 33489, 33619)]

def row131_layer000_block007 : List ColouredInterval :=
  [(67, 17956, 18086), (67, 22445, 22575), (67, 26934, 27064), (67, 31423, 31553), (71, 20164, 20294), (71, 25205, 25335), (71, 30246, 30376), (73, 21316, 21446), (73, 26645, 26775), (73, 31974, 32104), (79, 18723, 18853), (79, 24964, 25094), (79, 31205, 31335), (83, 20667, 20797), (83, 27556, 27686)]

def row131_layer000_block008 : List ColouredInterval :=
  [(89, 23763, 23893), (89, 31684, 31814), (97, 18818, 18948), (97, 28227, 28357), (101, 20402, 20532), (101, 30603, 30733), (103, 21218, 21348), (103, 31827, 31957), (107, 22898, 23028), (109, 23762, 23892), (113, 25538, 25668), (127, 32258, 32388)]

def row131_layer000_chunks : List (List ColouredInterval) :=
  [row131_layer000_block000, row131_layer000_block001, row131_layer000_block002, row131_layer000_block003, row131_layer000_block004, row131_layer000_block005, row131_layer000_block006, row131_layer000_block007, row131_layer000_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layer000_arithmetic : LayerArithmeticValid row131.height { lower := 17030, upper := 34060, M := 16 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layer000_enumeration :
    activePowerIntervalList 131 16 17030 34060 = row131_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layer000_pairs000 :
    row131_layer000_block000.all (fun I => row131_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row131_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layer000_pairs001 :
    row131_layer000_block001.all (fun I => row131_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row131_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layer000_pairs002 :
    row131_layer000_block002.all (fun I => row131_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row131_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layer000_pairs003 :
    row131_layer000_block003.all (fun I => row131_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row131_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layer000_pairs004 :
    row131_layer000_block004.all (fun I => row131_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row131_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layer000_pairs005 :
    row131_layer000_block005.all (fun I => row131_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row131_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layer000_pairs006 :
    row131_layer000_block006.all (fun I => row131_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row131_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layer000_pairs007 :
    row131_layer000_block007.all (fun I => row131_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row131_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layer000_pairs008 :
    row131_layer000_block008.all (fun I => row131_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row131_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer000_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layer000_chunks_eq : row131_layer000_chunks.flatten = row131_layer000_intervals := by
  rfl

theorem row131_layer000_pairs : pairCoverCheck row131_layer000_intervals row131_bounds = true := by
  apply pairCoverCheck_of_chunks row131_layer000_chunks_eq
  intro block hblock
  simp only [row131_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row131_layer000_pairs000
  · exact row131_layer000_pairs001
  · exact row131_layer000_pairs002
  · exact row131_layer000_pairs003
  · exact row131_layer000_pairs004
  · exact row131_layer000_pairs005
  · exact row131_layer000_pairs006
  · exact row131_layer000_pairs007
  · exact row131_layer000_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer000_pairs
