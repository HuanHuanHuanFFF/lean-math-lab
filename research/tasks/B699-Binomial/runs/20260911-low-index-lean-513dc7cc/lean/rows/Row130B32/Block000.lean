import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row130_height : HeightCertificateDatum := { i := 130, r := 43, s := 92, n0Power10 := 8 }

def row130_goods : List GoodSegment := [
  { lower := 262, upper := 386, witness := RowWitness.topPrime 257 },
  { lower := 387, upper := 512, witness := RowWitness.topPrime 383 },
  { lower := 513, upper := 638, witness := RowWitness.topPrime 509 },
  { lower := 639, upper := 760, witness := RowWitness.topPrime 631 },
  { lower := 761, upper := 890, witness := RowWitness.topPrime 761 },
  { lower := 891, upper := 1016, witness := RowWitness.topPrime 887 },
  { lower := 1017, upper := 1142, witness := RowWitness.topPrime 1013 },
  { lower := 1143, upper := 1258, witness := RowWitness.topPrime 1129 },
  { lower := 1259, upper := 1388, witness := RowWitness.topPrime 1259 },
  { lower := 1389, upper := 1510, witness := RowWitness.topPrime 1381 },
  { lower := 1511, upper := 1640, witness := RowWitness.topPrime 1511 },
  { lower := 1641, upper := 1766, witness := RowWitness.topPrime 1637 },
  { lower := 1767, upper := 1888, witness := RowWitness.topPrime 1759 },
  { lower := 1889, upper := 2018, witness := RowWitness.topPrime 1889 },
  { lower := 2019, upper := 2146, witness := RowWitness.topPrime 2017 },
  { lower := 2147, upper := 2272, witness := RowWitness.topPrime 2143 },
  { lower := 2273, upper := 2402, witness := RowWitness.topPrime 2273 },
  { lower := 2403, upper := 2528, witness := RowWitness.topPrime 2399 },
  { lower := 2529, upper := 2650, witness := RowWitness.topPrime 2521 },
  { lower := 2651, upper := 2776, witness := RowWitness.topPrime 2647 },
  { lower := 2777, upper := 2906, witness := RowWitness.topPrime 2777 },
  { lower := 2907, upper := 3032, witness := RowWitness.topPrime 2903 },
  { lower := 3033, upper := 3152, witness := RowWitness.topPrime 3023 },
  { lower := 3153, upper := 3266, witness := RowWitness.topPrime 3137 },
  { lower := 3267, upper := 3388, witness := RowWitness.topPrime 3259 },
  { lower := 3389, upper := 3518, witness := RowWitness.topPrime 3389 },
  { lower := 3519, upper := 3646, witness := RowWitness.topPrime 3517 },
  { lower := 3647, upper := 3772, witness := RowWitness.topPrime 3643 },
  { lower := 3773, upper := 3898, witness := RowWitness.topPrime 3769 },
  { lower := 3899, upper := 4018, witness := RowWitness.topPrime 3889 },
  { lower := 4019, upper := 4148, witness := RowWitness.topPrime 4019 },
  { lower := 4149, upper := 4268, witness := RowWitness.topPrime 4139 },
  { lower := 4269, upper := 4390, witness := RowWitness.topPrime 4261 },
  { lower := 4391, upper := 4520, witness := RowWitness.topPrime 4391 },
  { lower := 4521, upper := 4648, witness := RowWitness.topPrime 4519 },
  { lower := 4649, upper := 4778, witness := RowWitness.topPrime 4649 },
  { lower := 4779, upper := 4888, witness := RowWitness.topPrime 4759 },
  { lower := 4889, upper := 5018, witness := RowWitness.topPrime 4889 },
  { lower := 5019, upper := 5140, witness := RowWitness.topPrime 5011 },
  { lower := 5141, upper := 5248, witness := RowWitness.topPrime 5119 },
  { lower := 5249, upper := 5366, witness := RowWitness.topPrime 5237 },
  { lower := 5367, upper := 5480, witness := RowWitness.topPrime 5351 },
  { lower := 5481, upper := 5608, witness := RowWitness.topPrime 5479 },
  { lower := 5609, upper := 5720, witness := RowWitness.topPrime 5591 },
  { lower := 5721, upper := 5846, witness := RowWitness.topPrime 5717 },
  { lower := 5847, upper := 5972, witness := RowWitness.topPrime 5843 },
  { lower := 5973, upper := 6082, witness := RowWitness.topPrime 5953 },
  { lower := 6083, upper := 6208, witness := RowWitness.topPrime 6079 },
  { lower := 6209, upper := 6332, witness := RowWitness.topPrime 6203 },
  { lower := 6333, upper := 6458, witness := RowWitness.topPrime 6329 },
  { lower := 6459, upper := 6580, witness := RowWitness.topPrime 6451 },
  { lower := 6581, upper := 6710, witness := RowWitness.topPrime 6581 },
  { lower := 6711, upper := 6838, witness := RowWitness.topPrime 6709 },
  { lower := 6839, upper := 6962, witness := RowWitness.topPrime 6833 },
  { lower := 6963, upper := 7090, witness := RowWitness.topPrime 6961 },
  { lower := 7091, upper := 7208, witness := RowWitness.topPrime 7079 },
  { lower := 7209, upper := 7336, witness := RowWitness.topPrime 7207 },
  { lower := 7337, upper := 7462, witness := RowWitness.topPrime 7333 },
  { lower := 7463, upper := 7588, witness := RowWitness.topPrime 7459 },
  { lower := 7589, upper := 7718, witness := RowWitness.topPrime 7589 },
  { lower := 7719, upper := 7846, witness := RowWitness.topPrime 7717 },
  { lower := 7847, upper := 7970, witness := RowWitness.topPrime 7841 },
  { lower := 7971, upper := 8092, witness := RowWitness.topPrime 7963 },
  { lower := 8093, upper := 8222, witness := RowWitness.topPrime 8093 },
  { lower := 8223, upper := 8350, witness := RowWitness.topPrime 8221 },
  { lower := 8351, upper := 8458, witness := RowWitness.topPrime 8329 },
  { lower := 8459, upper := 8576, witness := RowWitness.topPrime 8447 },
  { lower := 8577, upper := 8702, witness := RowWitness.topPrime 8573 },
  { lower := 8703, upper := 8828, witness := RowWitness.topPrime 8699 },
  { lower := 8829, upper := 8950, witness := RowWitness.topPrime 8821 },
  { lower := 8951, upper := 9080, witness := RowWitness.topPrime 8951 },
  { lower := 9081, upper := 9196, witness := RowWitness.topPrime 9067 },
  { lower := 9197, upper := 9316, witness := RowWitness.topPrime 9187 },
  { lower := 9317, upper := 9440, witness := RowWitness.topPrime 9311 },
  { lower := 9441, upper := 9568, witness := RowWitness.topPrime 9439 },
  { lower := 9569, upper := 9680, witness := RowWitness.topPrime 9551 },
  { lower := 9681, upper := 9808, witness := RowWitness.topPrime 9679 },
  { lower := 9809, upper := 9932, witness := RowWitness.topPrime 9803 },
  { lower := 9933, upper := 10060, witness := RowWitness.topPrime 9931 },
  { lower := 10061, upper := 10190, witness := RowWitness.topPrime 10061 },
  { lower := 10191, upper := 10310, witness := RowWitness.topPrime 10181 },
  { lower := 10311, upper := 10432, witness := RowWitness.topPrime 10303 },
  { lower := 10433, upper := 10562, witness := RowWitness.topPrime 10433 },
  { lower := 10563, upper := 10688, witness := RowWitness.topPrime 10559 },
  { lower := 10689, upper := 10816, witness := RowWitness.topPrime 10687 },
  { lower := 10817, upper := 10928, witness := RowWitness.topPrime 10799 },
  { lower := 10929, upper := 11038, witness := RowWitness.topPrime 10909 },
  { lower := 11039, upper := 11156, witness := RowWitness.topPrime 11027 },
  { lower := 11157, upper := 11278, witness := RowWitness.topPrime 11149 },
  { lower := 11279, upper := 11408, witness := RowWitness.topPrime 11279 },
  { lower := 11409, upper := 11528, witness := RowWitness.topPrime 11399 },
  { lower := 11529, upper := 11656, witness := RowWitness.topPrime 11527 },
  { lower := 11657, upper := 11786, witness := RowWitness.topPrime 11657 },
  { lower := 11787, upper := 11912, witness := RowWitness.topPrime 11783 },
  { lower := 11913, upper := 12038, witness := RowWitness.topPrime 11909 },
  { lower := 12039, upper := 12166, witness := RowWitness.topPrime 12037 },
  { lower := 12167, upper := 12292, witness := RowWitness.topPrime 12163 },
  { lower := 12293, upper := 12418, witness := RowWitness.topPrime 12289 },
  { lower := 12419, upper := 12542, witness := RowWitness.topPrime 12413 },
  { lower := 12543, upper := 12670, witness := RowWitness.topPrime 12541 },
  { lower := 12671, upper := 12800, witness := RowWitness.topPrime 12671 },
  { lower := 12801, upper := 12928, witness := RowWitness.topPrime 12799 },
  { lower := 12929, upper := 13052, witness := RowWitness.topPrime 12923 },
  { lower := 13053, upper := 13178, witness := RowWitness.topPrime 13049 },
  { lower := 13179, upper := 13306, witness := RowWitness.topPrime 13177 },
  { lower := 13307, upper := 13426, witness := RowWitness.topPrime 13297 },
  { lower := 13427, upper := 13550, witness := RowWitness.topPrime 13421 },
  { lower := 13551, upper := 13666, witness := RowWitness.topPrime 13537 },
  { lower := 13667, upper := 13778, witness := RowWitness.topPrime 13649 },
  { lower := 13779, upper := 13892, witness := RowWitness.topPrime 13763 },
  { lower := 13893, upper := 14012, witness := RowWitness.topPrime 13883 },
  { lower := 14013, upper := 14140, witness := RowWitness.topPrime 14011 },
  { lower := 14141, upper := 14236, witness := RowWitness.topPrime 14107 },
  { lower := 14237, upper := 14350, witness := RowWitness.topPrime 14221 },
  { lower := 14351, upper := 14476, witness := RowWitness.topPrime 14347 },
  { lower := 14477, upper := 14590, witness := RowWitness.topPrime 14461 },
  { lower := 14591, upper := 14720, witness := RowWitness.topPrime 14591 },
  { lower := 14721, upper := 14846, witness := RowWitness.topPrime 14717 },
  { lower := 14847, upper := 14972, witness := RowWitness.topPrime 14843 },
  { lower := 14973, upper := 15098, witness := RowWitness.topPrime 14969 },
  { lower := 15099, upper := 15220, witness := RowWitness.topPrime 15091 },
  { lower := 15221, upper := 15346, witness := RowWitness.topPrime 15217 },
  { lower := 15347, upper := 15460, witness := RowWitness.topPrime 15331 },
  { lower := 15461, upper := 15590, witness := RowWitness.topPrime 15461 },
  { lower := 15591, upper := 15712, witness := RowWitness.topPrime 15583 },
  { lower := 15713, upper := 15812, witness := RowWitness.topPrime 15683 },
  { lower := 15813, upper := 15938, witness := RowWitness.topPrime 15809 },
  { lower := 15939, upper := 16066, witness := RowWitness.topPrime 15937 },
  { lower := 16067, upper := 16196, witness := RowWitness.topPrime 16067 },
  { lower := 16197, upper := 16322, witness := RowWitness.topPrime 16193 },
  { lower := 16323, upper := 16448, witness := RowWitness.topPrime 16319 },
  { lower := 16449, upper := 16576, witness := RowWitness.topPrime 16447 },
  { lower := 16577, upper := 16702, witness := RowWitness.topPrime 16573 },
  { lower := 16703, upper := 16769, witness := RowWitness.topPrime 16703 },
  { lower := 16810, upper := 16916, witness := RowWitness.topPrime 16787 },
  { lower := 16917, upper := 16939, witness := RowWitness.topPrime 16903 },
  { lower := 17405, upper := 17432, witness := RowWitness.topPrime 17401 },
  { lower := 17496, upper := 17534, witness := RowWitness.topPrime 17491 },
  { lower := 17797, upper := 17801, witness := RowWitness.topPrime 17791 },
  { lower := 18491, upper := 18610, witness := RowWitness.topPrime 18481 },
  { lower := 18611, upper := 18620, witness := RowWitness.topPrime 18593 },
  { lower := 18634, upper := 18746, witness := RowWitness.topPrime 18617 },
  { lower := 18747, upper := 18763, witness := RowWitness.topPrime 18743 },
  { lower := 18818, upper := 18852, witness := RowWitness.topPrime 18803 },
  { lower := 19208, upper := 19295, witness := RowWitness.topPrime 19207 },
  { lower := 19663, upper := 19790, witness := RowWitness.topPrime 19661 },
  { lower := 19791, upper := 19792, witness := RowWitness.topPrime 19777 },
  { lower := 19965, upper := 20010, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20290, witness := RowWitness.topPrime 20161 },
  { lower := 20291, upper := 20293, witness := RowWitness.topPrime 20287 },
  { lower := 20402, upper := 20468, witness := RowWitness.topPrime 20399 },
  { lower := 20480, upper := 20531, witness := RowWitness.topPrime 20479 },
  { lower := 20535, upper := 20662, witness := RowWitness.topPrime 20533 },
  { lower := 20663, upper := 20664, witness := RowWitness.topPrime 20663 },
  { lower := 20667, upper := 20706, witness := RowWitness.topPrime 20663 },
  { lower := 21296, upper := 21412, witness := RowWitness.topPrime 21283 },
  { lower := 21413, upper := 21425, witness := RowWitness.topPrime 21407 },
  { lower := 21870, upper := 21992, witness := RowWitness.topPrime 21863 },
  { lower := 21993, upper := 21999, witness := RowWitness.topPrime 21991 },
  { lower := 22188, upper := 22219, witness := RowWitness.topPrime 22171 },
  { lower := 22445, upper := 22455, witness := RowWitness.topPrime 22441 },
  { lower := 22472, upper := 22574, witness := RowWitness.topPrime 22469 },
  { lower := 23763, upper := 23890, witness := RowWitness.topPrime 23761 },
  { lower := 23891, upper := 23891, witness := RowWitness.topPrime 23887 },
  { lower := 24037, upper := 24158, witness := RowWitness.topPrime 24029 },
  { lower := 24159, upper := 24166, witness := RowWitness.topPrime 24151 },
  { lower := 24334, upper := 24458, witness := RowWitness.topPrime 24329 },
  { lower := 24459, upper := 24496, witness := RowWitness.topPrime 24443 },
  { lower := 24576, upper := 24694, witness := RowWitness.topPrime 24571 },
  { lower := 25215, upper := 25318, witness := RowWitness.topPrime 25189 },
  { lower := 25319, upper := 25344, witness := RowWitness.topPrime 25309 },
  { lower := 26508, upper := 26540, witness := RowWitness.topPrime 26501 },
  { lower := 26934, upper := 27025, witness := RowWitness.topPrime 26927 },
  { lower := 27556, upper := 27565, witness := RowWitness.topPrime 27551 },
  { lower := 27848, upper := 27864, witness := RowWitness.topPrime 27847 },
  { lower := 28672, upper := 28690, witness := RowWitness.topPrime 28669 },
  { lower := 28717, upper := 28801, witness := RowWitness.topPrime 28711 },
  { lower := 28812, upper := 28846, witness := RowWitness.topPrime 28807 },
  { lower := 29584, upper := 29607, witness := RowWitness.topPrime 29581 },
  { lower := 29791, upper := 29897, witness := RowWitness.topPrime 29789 },
  { lower := 30618, upper := 30722, witness := RowWitness.topPrime 30593 },
  { lower := 30723, upper := 30732, witness := RowWitness.topPrime 30713 },
  { lower := 30926, upper := 31028, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31322, witness := RowWitness.topPrime 31193 },
  { lower := 31323, upper := 31379, witness := RowWitness.topPrime 31321 },
  { lower := 31423, upper := 31458, witness := RowWitness.topPrime 31397 },
  { lower := 32805, upper := 32897, witness := RowWitness.topPrime 32803 },
  { lower := 33614, upper := 33618, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33743, witness := RowWitness.topPrime 33703 },
  { lower := 34347, upper := 34466, witness := RowWitness.topPrime 34337 },
  { lower := 34467, upper := 34520, witness := RowWitness.topPrime 34457 },
  { lower := 37303, upper := 37339, witness := RowWitness.topPrime 37277 },
  { lower := 38307, upper := 38420, witness := RowWitness.topPrime 38303 },
  { lower := 39366, upper := 39433, witness := RowWitness.topPrime 39359 },
  { lower := 40401, upper := 40457, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 40933, witness := RowWitness.topPrime 40927 },
  { lower := 40960, upper := 41060, witness := RowWitness.topPrime 40949 },
  { lower := 47526, upper := 47650, witness := RowWitness.topPrime 47521 },
  { lower := 47651, upper := 47653, witness := RowWitness.topPrime 47639 },
  { lower := 48013, upper := 48090, witness := RowWitness.topPrime 47981 },
  { lower := 48778, upper := 48797, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49259, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50539, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51134, witness := RowWitness.topPrime 51071 },
  { lower := 55451, upper := 55570, witness := RowWitness.topPrime 55441 },
  { lower := 55571, upper := 55576, witness := RowWitness.topPrime 55547 },
  { lower := 58619, upper := 58693, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59085, witness := RowWitness.topPrime 59029 },
  { lower := 63948, upper := 63974, witness := RowWitness.topPrime 63929 },
  { lower := 65610, upper := 65665, witness := RowWitness.topPrime 65609 },
  { lower := 68694, upper := 68719, witness := RowWitness.topPrime 68687 },
  { lower := 68921, upper := 69019, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71416, witness := RowWitness.topPrime 71287 },
  { lower := 71417, upper := 71418, witness := RowWitness.topPrime 71413 },
  { lower := 73205, upper := 73296, witness := RowWitness.topPrime 73189 },
  { lower := 89383, upper := 89502, witness := RowWitness.topPrime 89381 },
  { lower := 98415, upper := 98433, witness := RowWitness.topPrime 98411 },
  { lower := 137842, upper := 137910, witness := RowWitness.topPrime 137831 },
  { lower := 148955, upper := 149006, witness := RowWitness.topPrime 148949 }
]

def row130_layers : List CoverLayer := [
  { lower := 16770, upper := 33540, M := 16 },
  { lower := 33540, upper := 67080, M := 12 },
  { lower := 67080, upper := 134160, M := 10 },
  { lower := 134160, upper := 268320, M := 7 },
  { lower := 268320, upper := 536640, M := 6 },
  { lower := 536640, upper := 1073280, M := 5 },
  { lower := 1073280, upper := 2146560, M := 4 },
  { lower := 2146560, upper := 4293120, M := 3 },
  { lower := 4293120, upper := 8586240, M := 2 },
  { lower := 8586240, upper := 17172480, M := 2 },
  { lower := 17172480, upper := 34344960, M := 2 },
  { lower := 34344960, upper := 68689920, M := 1 },
  { lower := 68689920, upper := 100000000, M := 1 }
]

def row130 : FiniteCoverRow := {
  height := row130_height,
  goods := row130_goods,
  layers := row130_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_good000_checked :
    goodSegmentCheck 130 43 92
      { lower := 262, upper := 386, witness := RowWitness.topPrime 257 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good001_checked :
    goodSegmentCheck 130 43 92
      { lower := 387, upper := 512, witness := RowWitness.topPrime 383 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good002_checked :
    goodSegmentCheck 130 43 92
      { lower := 513, upper := 638, witness := RowWitness.topPrime 509 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good003_checked :
    goodSegmentCheck 130 43 92
      { lower := 639, upper := 760, witness := RowWitness.topPrime 631 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good004_checked :
    goodSegmentCheck 130 43 92
      { lower := 761, upper := 890, witness := RowWitness.topPrime 761 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good005_checked :
    goodSegmentCheck 130 43 92
      { lower := 891, upper := 1016, witness := RowWitness.topPrime 887 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good006_checked :
    goodSegmentCheck 130 43 92
      { lower := 1017, upper := 1142, witness := RowWitness.topPrime 1013 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good007_checked :
    goodSegmentCheck 130 43 92
      { lower := 1143, upper := 1258, witness := RowWitness.topPrime 1129 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good008_checked :
    goodSegmentCheck 130 43 92
      { lower := 1259, upper := 1388, witness := RowWitness.topPrime 1259 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good009_checked :
    goodSegmentCheck 130 43 92
      { lower := 1389, upper := 1510, witness := RowWitness.topPrime 1381 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good010_checked :
    goodSegmentCheck 130 43 92
      { lower := 1511, upper := 1640, witness := RowWitness.topPrime 1511 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good011_checked :
    goodSegmentCheck 130 43 92
      { lower := 1641, upper := 1766, witness := RowWitness.topPrime 1637 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good012_checked :
    goodSegmentCheck 130 43 92
      { lower := 1767, upper := 1888, witness := RowWitness.topPrime 1759 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good013_checked :
    goodSegmentCheck 130 43 92
      { lower := 1889, upper := 2018, witness := RowWitness.topPrime 1889 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good014_checked :
    goodSegmentCheck 130 43 92
      { lower := 2019, upper := 2146, witness := RowWitness.topPrime 2017 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good015_checked :
    goodSegmentCheck 130 43 92
      { lower := 2147, upper := 2272, witness := RowWitness.topPrime 2143 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_good016_checked :
    goodSegmentCheck 130 43 92
      { lower := 2273, upper := 2402, witness := RowWitness.topPrime 2273 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good017_checked :
    goodSegmentCheck 130 43 92
      { lower := 2403, upper := 2528, witness := RowWitness.topPrime 2399 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good018_checked :
    goodSegmentCheck 130 43 92
      { lower := 2529, upper := 2650, witness := RowWitness.topPrime 2521 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good019_checked :
    goodSegmentCheck 130 43 92
      { lower := 2651, upper := 2776, witness := RowWitness.topPrime 2647 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good020_checked :
    goodSegmentCheck 130 43 92
      { lower := 2777, upper := 2906, witness := RowWitness.topPrime 2777 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good021_checked :
    goodSegmentCheck 130 43 92
      { lower := 2907, upper := 3032, witness := RowWitness.topPrime 2903 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good022_checked :
    goodSegmentCheck 130 43 92
      { lower := 3033, upper := 3152, witness := RowWitness.topPrime 3023 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good023_checked :
    goodSegmentCheck 130 43 92
      { lower := 3153, upper := 3266, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good024_checked :
    goodSegmentCheck 130 43 92
      { lower := 3267, upper := 3388, witness := RowWitness.topPrime 3259 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good025_checked :
    goodSegmentCheck 130 43 92
      { lower := 3389, upper := 3518, witness := RowWitness.topPrime 3389 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good026_checked :
    goodSegmentCheck 130 43 92
      { lower := 3519, upper := 3646, witness := RowWitness.topPrime 3517 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good027_checked :
    goodSegmentCheck 130 43 92
      { lower := 3647, upper := 3772, witness := RowWitness.topPrime 3643 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good028_checked :
    goodSegmentCheck 130 43 92
      { lower := 3773, upper := 3898, witness := RowWitness.topPrime 3769 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good029_checked :
    goodSegmentCheck 130 43 92
      { lower := 3899, upper := 4018, witness := RowWitness.topPrime 3889 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good030_checked :
    goodSegmentCheck 130 43 92
      { lower := 4019, upper := 4148, witness := RowWitness.topPrime 4019 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good031_checked :
    goodSegmentCheck 130 43 92
      { lower := 4149, upper := 4268, witness := RowWitness.topPrime 4139 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_good032_checked :
    goodSegmentCheck 130 43 92
      { lower := 4269, upper := 4390, witness := RowWitness.topPrime 4261 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good033_checked :
    goodSegmentCheck 130 43 92
      { lower := 4391, upper := 4520, witness := RowWitness.topPrime 4391 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good034_checked :
    goodSegmentCheck 130 43 92
      { lower := 4521, upper := 4648, witness := RowWitness.topPrime 4519 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good035_checked :
    goodSegmentCheck 130 43 92
      { lower := 4649, upper := 4778, witness := RowWitness.topPrime 4649 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good036_checked :
    goodSegmentCheck 130 43 92
      { lower := 4779, upper := 4888, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good037_checked :
    goodSegmentCheck 130 43 92
      { lower := 4889, upper := 5018, witness := RowWitness.topPrime 4889 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good038_checked :
    goodSegmentCheck 130 43 92
      { lower := 5019, upper := 5140, witness := RowWitness.topPrime 5011 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good039_checked :
    goodSegmentCheck 130 43 92
      { lower := 5141, upper := 5248, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good040_checked :
    goodSegmentCheck 130 43 92
      { lower := 5249, upper := 5366, witness := RowWitness.topPrime 5237 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good041_checked :
    goodSegmentCheck 130 43 92
      { lower := 5367, upper := 5480, witness := RowWitness.topPrime 5351 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good042_checked :
    goodSegmentCheck 130 43 92
      { lower := 5481, upper := 5608, witness := RowWitness.topPrime 5479 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good043_checked :
    goodSegmentCheck 130 43 92
      { lower := 5609, upper := 5720, witness := RowWitness.topPrime 5591 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good044_checked :
    goodSegmentCheck 130 43 92
      { lower := 5721, upper := 5846, witness := RowWitness.topPrime 5717 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good045_checked :
    goodSegmentCheck 130 43 92
      { lower := 5847, upper := 5972, witness := RowWitness.topPrime 5843 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good046_checked :
    goodSegmentCheck 130 43 92
      { lower := 5973, upper := 6082, witness := RowWitness.topPrime 5953 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good047_checked :
    goodSegmentCheck 130 43 92
      { lower := 6083, upper := 6208, witness := RowWitness.topPrime 6079 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_good048_checked :
    goodSegmentCheck 130 43 92
      { lower := 6209, upper := 6332, witness := RowWitness.topPrime 6203 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good049_checked :
    goodSegmentCheck 130 43 92
      { lower := 6333, upper := 6458, witness := RowWitness.topPrime 6329 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good050_checked :
    goodSegmentCheck 130 43 92
      { lower := 6459, upper := 6580, witness := RowWitness.topPrime 6451 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good051_checked :
    goodSegmentCheck 130 43 92
      { lower := 6581, upper := 6710, witness := RowWitness.topPrime 6581 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good052_checked :
    goodSegmentCheck 130 43 92
      { lower := 6711, upper := 6838, witness := RowWitness.topPrime 6709 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good053_checked :
    goodSegmentCheck 130 43 92
      { lower := 6839, upper := 6962, witness := RowWitness.topPrime 6833 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good054_checked :
    goodSegmentCheck 130 43 92
      { lower := 6963, upper := 7090, witness := RowWitness.topPrime 6961 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good055_checked :
    goodSegmentCheck 130 43 92
      { lower := 7091, upper := 7208, witness := RowWitness.topPrime 7079 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good056_checked :
    goodSegmentCheck 130 43 92
      { lower := 7209, upper := 7336, witness := RowWitness.topPrime 7207 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good057_checked :
    goodSegmentCheck 130 43 92
      { lower := 7337, upper := 7462, witness := RowWitness.topPrime 7333 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good058_checked :
    goodSegmentCheck 130 43 92
      { lower := 7463, upper := 7588, witness := RowWitness.topPrime 7459 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good059_checked :
    goodSegmentCheck 130 43 92
      { lower := 7589, upper := 7718, witness := RowWitness.topPrime 7589 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good060_checked :
    goodSegmentCheck 130 43 92
      { lower := 7719, upper := 7846, witness := RowWitness.topPrime 7717 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good061_checked :
    goodSegmentCheck 130 43 92
      { lower := 7847, upper := 7970, witness := RowWitness.topPrime 7841 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good062_checked :
    goodSegmentCheck 130 43 92
      { lower := 7971, upper := 8092, witness := RowWitness.topPrime 7963 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good063_checked :
    goodSegmentCheck 130 43 92
      { lower := 8093, upper := 8222, witness := RowWitness.topPrime 8093 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_good064_checked :
    goodSegmentCheck 130 43 92
      { lower := 8223, upper := 8350, witness := RowWitness.topPrime 8221 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good065_checked :
    goodSegmentCheck 130 43 92
      { lower := 8351, upper := 8458, witness := RowWitness.topPrime 8329 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good066_checked :
    goodSegmentCheck 130 43 92
      { lower := 8459, upper := 8576, witness := RowWitness.topPrime 8447 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good067_checked :
    goodSegmentCheck 130 43 92
      { lower := 8577, upper := 8702, witness := RowWitness.topPrime 8573 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good068_checked :
    goodSegmentCheck 130 43 92
      { lower := 8703, upper := 8828, witness := RowWitness.topPrime 8699 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good069_checked :
    goodSegmentCheck 130 43 92
      { lower := 8829, upper := 8950, witness := RowWitness.topPrime 8821 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good070_checked :
    goodSegmentCheck 130 43 92
      { lower := 8951, upper := 9080, witness := RowWitness.topPrime 8951 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good071_checked :
    goodSegmentCheck 130 43 92
      { lower := 9081, upper := 9196, witness := RowWitness.topPrime 9067 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good072_checked :
    goodSegmentCheck 130 43 92
      { lower := 9197, upper := 9316, witness := RowWitness.topPrime 9187 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good073_checked :
    goodSegmentCheck 130 43 92
      { lower := 9317, upper := 9440, witness := RowWitness.topPrime 9311 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good074_checked :
    goodSegmentCheck 130 43 92
      { lower := 9441, upper := 9568, witness := RowWitness.topPrime 9439 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good075_checked :
    goodSegmentCheck 130 43 92
      { lower := 9569, upper := 9680, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good076_checked :
    goodSegmentCheck 130 43 92
      { lower := 9681, upper := 9808, witness := RowWitness.topPrime 9679 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good077_checked :
    goodSegmentCheck 130 43 92
      { lower := 9809, upper := 9932, witness := RowWitness.topPrime 9803 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good078_checked :
    goodSegmentCheck 130 43 92
      { lower := 9933, upper := 10060, witness := RowWitness.topPrime 9931 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good079_checked :
    goodSegmentCheck 130 43 92
      { lower := 10061, upper := 10190, witness := RowWitness.topPrime 10061 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_good080_checked :
    goodSegmentCheck 130 43 92
      { lower := 10191, upper := 10310, witness := RowWitness.topPrime 10181 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good081_checked :
    goodSegmentCheck 130 43 92
      { lower := 10311, upper := 10432, witness := RowWitness.topPrime 10303 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good082_checked :
    goodSegmentCheck 130 43 92
      { lower := 10433, upper := 10562, witness := RowWitness.topPrime 10433 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good083_checked :
    goodSegmentCheck 130 43 92
      { lower := 10563, upper := 10688, witness := RowWitness.topPrime 10559 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good084_checked :
    goodSegmentCheck 130 43 92
      { lower := 10689, upper := 10816, witness := RowWitness.topPrime 10687 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good085_checked :
    goodSegmentCheck 130 43 92
      { lower := 10817, upper := 10928, witness := RowWitness.topPrime 10799 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good086_checked :
    goodSegmentCheck 130 43 92
      { lower := 10929, upper := 11038, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good087_checked :
    goodSegmentCheck 130 43 92
      { lower := 11039, upper := 11156, witness := RowWitness.topPrime 11027 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good088_checked :
    goodSegmentCheck 130 43 92
      { lower := 11157, upper := 11278, witness := RowWitness.topPrime 11149 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good089_checked :
    goodSegmentCheck 130 43 92
      { lower := 11279, upper := 11408, witness := RowWitness.topPrime 11279 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good090_checked :
    goodSegmentCheck 130 43 92
      { lower := 11409, upper := 11528, witness := RowWitness.topPrime 11399 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good091_checked :
    goodSegmentCheck 130 43 92
      { lower := 11529, upper := 11656, witness := RowWitness.topPrime 11527 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good092_checked :
    goodSegmentCheck 130 43 92
      { lower := 11657, upper := 11786, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good093_checked :
    goodSegmentCheck 130 43 92
      { lower := 11787, upper := 11912, witness := RowWitness.topPrime 11783 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good094_checked :
    goodSegmentCheck 130 43 92
      { lower := 11913, upper := 12038, witness := RowWitness.topPrime 11909 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good095_checked :
    goodSegmentCheck 130 43 92
      { lower := 12039, upper := 12166, witness := RowWitness.topPrime 12037 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_good096_checked :
    goodSegmentCheck 130 43 92
      { lower := 12167, upper := 12292, witness := RowWitness.topPrime 12163 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good097_checked :
    goodSegmentCheck 130 43 92
      { lower := 12293, upper := 12418, witness := RowWitness.topPrime 12289 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good098_checked :
    goodSegmentCheck 130 43 92
      { lower := 12419, upper := 12542, witness := RowWitness.topPrime 12413 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good099_checked :
    goodSegmentCheck 130 43 92
      { lower := 12543, upper := 12670, witness := RowWitness.topPrime 12541 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good100_checked :
    goodSegmentCheck 130 43 92
      { lower := 12671, upper := 12800, witness := RowWitness.topPrime 12671 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good101_checked :
    goodSegmentCheck 130 43 92
      { lower := 12801, upper := 12928, witness := RowWitness.topPrime 12799 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good102_checked :
    goodSegmentCheck 130 43 92
      { lower := 12929, upper := 13052, witness := RowWitness.topPrime 12923 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good103_checked :
    goodSegmentCheck 130 43 92
      { lower := 13053, upper := 13178, witness := RowWitness.topPrime 13049 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good104_checked :
    goodSegmentCheck 130 43 92
      { lower := 13179, upper := 13306, witness := RowWitness.topPrime 13177 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good105_checked :
    goodSegmentCheck 130 43 92
      { lower := 13307, upper := 13426, witness := RowWitness.topPrime 13297 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good106_checked :
    goodSegmentCheck 130 43 92
      { lower := 13427, upper := 13550, witness := RowWitness.topPrime 13421 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good107_checked :
    goodSegmentCheck 130 43 92
      { lower := 13551, upper := 13666, witness := RowWitness.topPrime 13537 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good108_checked :
    goodSegmentCheck 130 43 92
      { lower := 13667, upper := 13778, witness := RowWitness.topPrime 13649 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good109_checked :
    goodSegmentCheck 130 43 92
      { lower := 13779, upper := 13892, witness := RowWitness.topPrime 13763 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good110_checked :
    goodSegmentCheck 130 43 92
      { lower := 13893, upper := 14012, witness := RowWitness.topPrime 13883 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good111_checked :
    goodSegmentCheck 130 43 92
      { lower := 14013, upper := 14140, witness := RowWitness.topPrime 14011 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_good112_checked :
    goodSegmentCheck 130 43 92
      { lower := 14141, upper := 14236, witness := RowWitness.topPrime 14107 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good113_checked :
    goodSegmentCheck 130 43 92
      { lower := 14237, upper := 14350, witness := RowWitness.topPrime 14221 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good114_checked :
    goodSegmentCheck 130 43 92
      { lower := 14351, upper := 14476, witness := RowWitness.topPrime 14347 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good115_checked :
    goodSegmentCheck 130 43 92
      { lower := 14477, upper := 14590, witness := RowWitness.topPrime 14461 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good116_checked :
    goodSegmentCheck 130 43 92
      { lower := 14591, upper := 14720, witness := RowWitness.topPrime 14591 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good117_checked :
    goodSegmentCheck 130 43 92
      { lower := 14721, upper := 14846, witness := RowWitness.topPrime 14717 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good118_checked :
    goodSegmentCheck 130 43 92
      { lower := 14847, upper := 14972, witness := RowWitness.topPrime 14843 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good119_checked :
    goodSegmentCheck 130 43 92
      { lower := 14973, upper := 15098, witness := RowWitness.topPrime 14969 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good120_checked :
    goodSegmentCheck 130 43 92
      { lower := 15099, upper := 15220, witness := RowWitness.topPrime 15091 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good121_checked :
    goodSegmentCheck 130 43 92
      { lower := 15221, upper := 15346, witness := RowWitness.topPrime 15217 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good122_checked :
    goodSegmentCheck 130 43 92
      { lower := 15347, upper := 15460, witness := RowWitness.topPrime 15331 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good123_checked :
    goodSegmentCheck 130 43 92
      { lower := 15461, upper := 15590, witness := RowWitness.topPrime 15461 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good124_checked :
    goodSegmentCheck 130 43 92
      { lower := 15591, upper := 15712, witness := RowWitness.topPrime 15583 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good125_checked :
    goodSegmentCheck 130 43 92
      { lower := 15713, upper := 15812, witness := RowWitness.topPrime 15683 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good126_checked :
    goodSegmentCheck 130 43 92
      { lower := 15813, upper := 15938, witness := RowWitness.topPrime 15809 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good127_checked :
    goodSegmentCheck 130 43 92
      { lower := 15939, upper := 16066, witness := RowWitness.topPrime 15937 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_good128_checked :
    goodSegmentCheck 130 43 92
      { lower := 16067, upper := 16196, witness := RowWitness.topPrime 16067 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good129_checked :
    goodSegmentCheck 130 43 92
      { lower := 16197, upper := 16322, witness := RowWitness.topPrime 16193 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good130_checked :
    goodSegmentCheck 130 43 92
      { lower := 16323, upper := 16448, witness := RowWitness.topPrime 16319 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good131_checked :
    goodSegmentCheck 130 43 92
      { lower := 16449, upper := 16576, witness := RowWitness.topPrime 16447 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good132_checked :
    goodSegmentCheck 130 43 92
      { lower := 16577, upper := 16702, witness := RowWitness.topPrime 16573 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good133_checked :
    goodSegmentCheck 130 43 92
      { lower := 16703, upper := 16769, witness := RowWitness.topPrime 16703 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good134_checked :
    goodSegmentCheck 130 43 92
      { lower := 16810, upper := 16916, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good135_checked :
    goodSegmentCheck 130 43 92
      { lower := 16917, upper := 16939, witness := RowWitness.topPrime 16903 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good136_checked :
    goodSegmentCheck 130 43 92
      { lower := 17405, upper := 17432, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good137_checked :
    goodSegmentCheck 130 43 92
      { lower := 17496, upper := 17534, witness := RowWitness.topPrime 17491 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good138_checked :
    goodSegmentCheck 130 43 92
      { lower := 17797, upper := 17801, witness := RowWitness.topPrime 17791 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good139_checked :
    goodSegmentCheck 130 43 92
      { lower := 18491, upper := 18610, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good140_checked :
    goodSegmentCheck 130 43 92
      { lower := 18611, upper := 18620, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good141_checked :
    goodSegmentCheck 130 43 92
      { lower := 18634, upper := 18746, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good142_checked :
    goodSegmentCheck 130 43 92
      { lower := 18747, upper := 18763, witness := RowWitness.topPrime 18743 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good143_checked :
    goodSegmentCheck 130 43 92
      { lower := 18818, upper := 18852, witness := RowWitness.topPrime 18803 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_good144_checked :
    goodSegmentCheck 130 43 92
      { lower := 19208, upper := 19295, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good145_checked :
    goodSegmentCheck 130 43 92
      { lower := 19663, upper := 19790, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good146_checked :
    goodSegmentCheck 130 43 92
      { lower := 19791, upper := 19792, witness := RowWitness.topPrime 19777 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good147_checked :
    goodSegmentCheck 130 43 92
      { lower := 19965, upper := 20010, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good148_checked :
    goodSegmentCheck 130 43 92
      { lower := 20172, upper := 20290, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good149_checked :
    goodSegmentCheck 130 43 92
      { lower := 20291, upper := 20293, witness := RowWitness.topPrime 20287 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good150_checked :
    goodSegmentCheck 130 43 92
      { lower := 20402, upper := 20468, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good151_checked :
    goodSegmentCheck 130 43 92
      { lower := 20480, upper := 20531, witness := RowWitness.topPrime 20479 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good152_checked :
    goodSegmentCheck 130 43 92
      { lower := 20535, upper := 20662, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good153_checked :
    goodSegmentCheck 130 43 92
      { lower := 20663, upper := 20664, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good154_checked :
    goodSegmentCheck 130 43 92
      { lower := 20667, upper := 20706, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good155_checked :
    goodSegmentCheck 130 43 92
      { lower := 21296, upper := 21412, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good156_checked :
    goodSegmentCheck 130 43 92
      { lower := 21413, upper := 21425, witness := RowWitness.topPrime 21407 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good157_checked :
    goodSegmentCheck 130 43 92
      { lower := 21870, upper := 21992, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good158_checked :
    goodSegmentCheck 130 43 92
      { lower := 21993, upper := 21999, witness := RowWitness.topPrime 21991 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good159_checked :
    goodSegmentCheck 130 43 92
      { lower := 22188, upper := 22219, witness := RowWitness.topPrime 22171 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_good160_checked :
    goodSegmentCheck 130 43 92
      { lower := 22445, upper := 22455, witness := RowWitness.topPrime 22441 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good161_checked :
    goodSegmentCheck 130 43 92
      { lower := 22472, upper := 22574, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good162_checked :
    goodSegmentCheck 130 43 92
      { lower := 23763, upper := 23890, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good163_checked :
    goodSegmentCheck 130 43 92
      { lower := 23891, upper := 23891, witness := RowWitness.topPrime 23887 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good164_checked :
    goodSegmentCheck 130 43 92
      { lower := 24037, upper := 24158, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good165_checked :
    goodSegmentCheck 130 43 92
      { lower := 24159, upper := 24166, witness := RowWitness.topPrime 24151 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good166_checked :
    goodSegmentCheck 130 43 92
      { lower := 24334, upper := 24458, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good167_checked :
    goodSegmentCheck 130 43 92
      { lower := 24459, upper := 24496, witness := RowWitness.topPrime 24443 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good168_checked :
    goodSegmentCheck 130 43 92
      { lower := 24576, upper := 24694, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good169_checked :
    goodSegmentCheck 130 43 92
      { lower := 25215, upper := 25318, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good170_checked :
    goodSegmentCheck 130 43 92
      { lower := 25319, upper := 25344, witness := RowWitness.topPrime 25309 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good171_checked :
    goodSegmentCheck 130 43 92
      { lower := 26508, upper := 26540, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good172_checked :
    goodSegmentCheck 130 43 92
      { lower := 26934, upper := 27025, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good173_checked :
    goodSegmentCheck 130 43 92
      { lower := 27556, upper := 27565, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good174_checked :
    goodSegmentCheck 130 43 92
      { lower := 27848, upper := 27864, witness := RowWitness.topPrime 27847 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good175_checked :
    goodSegmentCheck 130 43 92
      { lower := 28672, upper := 28690, witness := RowWitness.topPrime 28669 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_good176_checked :
    goodSegmentCheck 130 43 92
      { lower := 28717, upper := 28801, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good177_checked :
    goodSegmentCheck 130 43 92
      { lower := 28812, upper := 28846, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good178_checked :
    goodSegmentCheck 130 43 92
      { lower := 29584, upper := 29607, witness := RowWitness.topPrime 29581 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good179_checked :
    goodSegmentCheck 130 43 92
      { lower := 29791, upper := 29897, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good180_checked :
    goodSegmentCheck 130 43 92
      { lower := 30618, upper := 30722, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good181_checked :
    goodSegmentCheck 130 43 92
      { lower := 30723, upper := 30732, witness := RowWitness.topPrime 30713 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good182_checked :
    goodSegmentCheck 130 43 92
      { lower := 30926, upper := 31028, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good183_checked :
    goodSegmentCheck 130 43 92
      { lower := 31213, upper := 31322, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good184_checked :
    goodSegmentCheck 130 43 92
      { lower := 31323, upper := 31379, witness := RowWitness.topPrime 31321 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good185_checked :
    goodSegmentCheck 130 43 92
      { lower := 31423, upper := 31458, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good186_checked :
    goodSegmentCheck 130 43 92
      { lower := 32805, upper := 32897, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good187_checked :
    goodSegmentCheck 130 43 92
      { lower := 33614, upper := 33618, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good188_checked :
    goodSegmentCheck 130 43 92
      { lower := 33708, upper := 33743, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good189_checked :
    goodSegmentCheck 130 43 92
      { lower := 34347, upper := 34466, witness := RowWitness.topPrime 34337 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good190_checked :
    goodSegmentCheck 130 43 92
      { lower := 34467, upper := 34520, witness := RowWitness.topPrime 34457 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good191_checked :
    goodSegmentCheck 130 43 92
      { lower := 37303, upper := 37339, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_good192_checked :
    goodSegmentCheck 130 43 92
      { lower := 38307, upper := 38420, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good193_checked :
    goodSegmentCheck 130 43 92
      { lower := 39366, upper := 39433, witness := RowWitness.topPrime 39359 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good194_checked :
    goodSegmentCheck 130 43 92
      { lower := 40401, upper := 40457, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good195_checked :
    goodSegmentCheck 130 43 92
      { lower := 40931, upper := 40933, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good196_checked :
    goodSegmentCheck 130 43 92
      { lower := 40960, upper := 41060, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good197_checked :
    goodSegmentCheck 130 43 92
      { lower := 47526, upper := 47650, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good198_checked :
    goodSegmentCheck 130 43 92
      { lower := 47651, upper := 47653, witness := RowWitness.topPrime 47639 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good199_checked :
    goodSegmentCheck 130 43 92
      { lower := 48013, upper := 48090, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good200_checked :
    goodSegmentCheck 130 43 92
      { lower := 48778, upper := 48797, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good201_checked :
    goodSegmentCheck 130 43 92
      { lower := 49152, upper := 49259, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good202_checked :
    goodSegmentCheck 130 43 92
      { lower := 50421, upper := 50539, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good203_checked :
    goodSegmentCheck 130 43 92
      { lower := 51076, upper := 51134, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good204_checked :
    goodSegmentCheck 130 43 92
      { lower := 55451, upper := 55570, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good205_checked :
    goodSegmentCheck 130 43 92
      { lower := 55571, upper := 55576, witness := RowWitness.topPrime 55547 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good206_checked :
    goodSegmentCheck 130 43 92
      { lower := 58619, upper := 58693, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good207_checked :
    goodSegmentCheck 130 43 92
      { lower := 59049, upper := 59085, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_good208_checked :
    goodSegmentCheck 130 43 92
      { lower := 63948, upper := 63974, witness := RowWitness.topPrime 63929 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good209_checked :
    goodSegmentCheck 130 43 92
      { lower := 65610, upper := 65665, witness := RowWitness.topPrime 65609 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good210_checked :
    goodSegmentCheck 130 43 92
      { lower := 68694, upper := 68719, witness := RowWitness.topPrime 68687 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good211_checked :
    goodSegmentCheck 130 43 92
      { lower := 68921, upper := 69019, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good212_checked :
    goodSegmentCheck 130 43 92
      { lower := 71289, upper := 71416, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good213_checked :
    goodSegmentCheck 130 43 92
      { lower := 71417, upper := 71418, witness := RowWitness.topPrime 71413 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good214_checked :
    goodSegmentCheck 130 43 92
      { lower := 73205, upper := 73296, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good215_checked :
    goodSegmentCheck 130 43 92
      { lower := 89383, upper := 89502, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good216_checked :
    goodSegmentCheck 130 43 92
      { lower := 98415, upper := 98433, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good217_checked :
    goodSegmentCheck 130 43 92
      { lower := 137842, upper := 137910, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row130_good218_checked :
    goodSegmentCheck 130 43 92
      { lower := 148955, upper := 149006, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 130) (r := 43) (s := 92) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_good218_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_goods_checked :
    row130.goods.all (goodSegmentCheck row130.height.i row130.height.r row130.height.s) = true := by
  change row130_goods.all (goodSegmentCheck 130 43 92) = true
  simp only [row130_goods, List.all_cons, List.all_nil,
    row130_good000_checked,
    row130_good001_checked,
    row130_good002_checked,
    row130_good003_checked,
    row130_good004_checked,
    row130_good005_checked,
    row130_good006_checked,
    row130_good007_checked,
    row130_good008_checked,
    row130_good009_checked,
    row130_good010_checked,
    row130_good011_checked,
    row130_good012_checked,
    row130_good013_checked,
    row130_good014_checked,
    row130_good015_checked,
    row130_good016_checked,
    row130_good017_checked,
    row130_good018_checked,
    row130_good019_checked,
    row130_good020_checked,
    row130_good021_checked,
    row130_good022_checked,
    row130_good023_checked,
    row130_good024_checked,
    row130_good025_checked,
    row130_good026_checked,
    row130_good027_checked,
    row130_good028_checked,
    row130_good029_checked,
    row130_good030_checked,
    row130_good031_checked,
    row130_good032_checked,
    row130_good033_checked,
    row130_good034_checked,
    row130_good035_checked,
    row130_good036_checked,
    row130_good037_checked,
    row130_good038_checked,
    row130_good039_checked,
    row130_good040_checked,
    row130_good041_checked,
    row130_good042_checked,
    row130_good043_checked,
    row130_good044_checked,
    row130_good045_checked,
    row130_good046_checked,
    row130_good047_checked,
    row130_good048_checked,
    row130_good049_checked,
    row130_good050_checked,
    row130_good051_checked,
    row130_good052_checked,
    row130_good053_checked,
    row130_good054_checked,
    row130_good055_checked,
    row130_good056_checked,
    row130_good057_checked,
    row130_good058_checked,
    row130_good059_checked,
    row130_good060_checked,
    row130_good061_checked,
    row130_good062_checked,
    row130_good063_checked,
    row130_good064_checked,
    row130_good065_checked,
    row130_good066_checked,
    row130_good067_checked,
    row130_good068_checked,
    row130_good069_checked,
    row130_good070_checked,
    row130_good071_checked,
    row130_good072_checked,
    row130_good073_checked,
    row130_good074_checked,
    row130_good075_checked,
    row130_good076_checked,
    row130_good077_checked,
    row130_good078_checked,
    row130_good079_checked,
    row130_good080_checked,
    row130_good081_checked,
    row130_good082_checked,
    row130_good083_checked,
    row130_good084_checked,
    row130_good085_checked,
    row130_good086_checked,
    row130_good087_checked,
    row130_good088_checked,
    row130_good089_checked,
    row130_good090_checked,
    row130_good091_checked,
    row130_good092_checked,
    row130_good093_checked,
    row130_good094_checked,
    row130_good095_checked,
    row130_good096_checked,
    row130_good097_checked,
    row130_good098_checked,
    row130_good099_checked,
    row130_good100_checked,
    row130_good101_checked,
    row130_good102_checked,
    row130_good103_checked,
    row130_good104_checked,
    row130_good105_checked,
    row130_good106_checked,
    row130_good107_checked,
    row130_good108_checked,
    row130_good109_checked,
    row130_good110_checked,
    row130_good111_checked,
    row130_good112_checked,
    row130_good113_checked,
    row130_good114_checked,
    row130_good115_checked,
    row130_good116_checked,
    row130_good117_checked,
    row130_good118_checked,
    row130_good119_checked,
    row130_good120_checked,
    row130_good121_checked,
    row130_good122_checked,
    row130_good123_checked,
    row130_good124_checked,
    row130_good125_checked,
    row130_good126_checked,
    row130_good127_checked,
    row130_good128_checked,
    row130_good129_checked,
    row130_good130_checked,
    row130_good131_checked,
    row130_good132_checked,
    row130_good133_checked,
    row130_good134_checked,
    row130_good135_checked,
    row130_good136_checked,
    row130_good137_checked,
    row130_good138_checked,
    row130_good139_checked,
    row130_good140_checked,
    row130_good141_checked,
    row130_good142_checked,
    row130_good143_checked,
    row130_good144_checked,
    row130_good145_checked,
    row130_good146_checked,
    row130_good147_checked,
    row130_good148_checked,
    row130_good149_checked,
    row130_good150_checked,
    row130_good151_checked,
    row130_good152_checked,
    row130_good153_checked,
    row130_good154_checked,
    row130_good155_checked,
    row130_good156_checked,
    row130_good157_checked,
    row130_good158_checked,
    row130_good159_checked,
    row130_good160_checked,
    row130_good161_checked,
    row130_good162_checked,
    row130_good163_checked,
    row130_good164_checked,
    row130_good165_checked,
    row130_good166_checked,
    row130_good167_checked,
    row130_good168_checked,
    row130_good169_checked,
    row130_good170_checked,
    row130_good171_checked,
    row130_good172_checked,
    row130_good173_checked,
    row130_good174_checked,
    row130_good175_checked,
    row130_good176_checked,
    row130_good177_checked,
    row130_good178_checked,
    row130_good179_checked,
    row130_good180_checked,
    row130_good181_checked,
    row130_good182_checked,
    row130_good183_checked,
    row130_good184_checked,
    row130_good185_checked,
    row130_good186_checked,
    row130_good187_checked,
    row130_good188_checked,
    row130_good189_checked,
    row130_good190_checked,
    row130_good191_checked,
    row130_good192_checked,
    row130_good193_checked,
    row130_good194_checked,
    row130_good195_checked,
    row130_good196_checked,
    row130_good197_checked,
    row130_good198_checked,
    row130_good199_checked,
    row130_good200_checked,
    row130_good201_checked,
    row130_good202_checked,
    row130_good203_checked,
    row130_good204_checked,
    row130_good205_checked,
    row130_good206_checked,
    row130_good207_checked,
    row130_good208_checked,
    row130_good209_checked,
    row130_good210_checked,
    row130_good211_checked,
    row130_good212_checked,
    row130_good213_checked,
    row130_good214_checked,
    row130_good215_checked,
    row130_good216_checked,
    row130_good217_checked,
    row130_good218_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_registered :
    decide (row130.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row130_small_checked :
    coverCheck (2 * row130.height.i + 2) (row130.height.i * (row130.height.i - 1) - 1)
      (row130.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row130_layerCover_checked :
    coverCheck (row130.height.i * (row130.height.i - 1)) (row130.height.n0 - 1)
      (row130.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row130_bounds : List NatInterval :=
  [(262, 386), (387, 512), (513, 638), (639, 760), (761, 890), (891, 1016), (1017, 1142), (1143, 1258), (1259, 1388), (1389, 1510), (1511, 1640), (1641, 1766), (1767, 1888), (1889, 2018), (2019, 2146), (2147, 2272), (2273, 2402), (2403, 2528), (2529, 2650), (2651, 2776), (2777, 2906), (2907, 3032), (3033, 3152), (3153, 3266), (3267, 3388), (3389, 3518), (3519, 3646), (3647, 3772), (3773, 3898), (3899, 4018), (4019, 4148), (4149, 4268), (4269, 4390), (4391, 4520), (4521, 4648), (4649, 4778), (4779, 4888), (4889, 5018), (5019, 5140), (5141, 5248), (5249, 5366), (5367, 5480), (5481, 5608), (5609, 5720), (5721, 5846), (5847, 5972), (5973, 6082), (6083, 6208), (6209, 6332), (6333, 6458), (6459, 6580), (6581, 6710), (6711, 6838), (6839, 6962), (6963, 7090), (7091, 7208), (7209, 7336), (7337, 7462), (7463, 7588), (7589, 7718), (7719, 7846), (7847, 7970), (7971, 8092), (8093, 8222), (8223, 8350), (8351, 8458), (8459, 8576), (8577, 8702), (8703, 8828), (8829, 8950), (8951, 9080), (9081, 9196), (9197, 9316), (9317, 9440), (9441, 9568), (9569, 9680), (9681, 9808), (9809, 9932), (9933, 10060), (10061, 10190), (10191, 10310), (10311, 10432), (10433, 10562), (10563, 10688), (10689, 10816), (10817, 10928), (10929, 11038), (11039, 11156), (11157, 11278), (11279, 11408), (11409, 11528), (11529, 11656), (11657, 11786), (11787, 11912), (11913, 12038), (12039, 12166), (12167, 12292), (12293, 12418), (12419, 12542), (12543, 12670), (12671, 12800), (12801, 12928), (12929, 13052), (13053, 13178), (13179, 13306), (13307, 13426), (13427, 13550), (13551, 13666), (13667, 13778), (13779, 13892), (13893, 14012), (14013, 14140), (14141, 14236), (14237, 14350), (14351, 14476), (14477, 14590), (14591, 14720), (14721, 14846), (14847, 14972), (14973, 15098), (15099, 15220), (15221, 15346), (15347, 15460), (15461, 15590), (15591, 15712), (15713, 15812), (15813, 15938), (15939, 16066), (16067, 16196), (16197, 16322), (16323, 16448), (16449, 16576), (16577, 16702), (16703, 16769), (16810, 16916), (16917, 16939), (17405, 17432), (17496, 17534), (17797, 17801), (18491, 18610), (18611, 18620), (18634, 18746), (18747, 18763), (18818, 18852), (19208, 19295), (19663, 19790), (19791, 19792), (19965, 20010), (20172, 20290), (20291, 20293), (20402, 20468), (20480, 20531), (20535, 20662), (20663, 20664), (20667, 20706), (21296, 21412), (21413, 21425), (21870, 21992), (21993, 21999), (22188, 22219), (22445, 22455), (22472, 22574), (23763, 23890), (23891, 23891), (24037, 24158), (24159, 24166), (24334, 24458), (24459, 24496), (24576, 24694), (25215, 25318), (25319, 25344), (26508, 26540), (26934, 27025), (27556, 27565), (27848, 27864), (28672, 28690), (28717, 28801), (28812, 28846), (29584, 29607), (29791, 29897), (30618, 30722), (30723, 30732), (30926, 31028), (31213, 31322), (31323, 31379), (31423, 31458), (32805, 32897), (33614, 33618), (33708, 33743), (34347, 34466), (34467, 34520), (37303, 37339), (38307, 38420), (39366, 39433), (40401, 40457), (40931, 40933), (40960, 41060), (47526, 47650), (47651, 47653), (48013, 48090), (48778, 48797), (49152, 49259), (50421, 50539), (51076, 51134), (55451, 55570), (55571, 55576), (58619, 58693), (59049, 59085), (63948, 63974), (65610, 65665), (68694, 68719), (68921, 69019), (71289, 71416), (71417, 71418), (73205, 73296), (89383, 89502), (98415, 98433), (137842, 137910), (148955, 149006)]

theorem row130_bounds_eq : row130.goods.map goodSegmentBounds = row130_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row130_layer000_intervals : List ColouredInterval :=
  [(2, 20480, 20609), (2, 24576, 24705), (2, 28672, 28801), (2, 32768, 32897), (2, 24576, 24705), (2, 32768, 32897), (2, 32768, 32897), (2, 32768, 32897), (3, 17496, 17625), (3, 19683, 19812), (3, 21870, 21999), (3, 24057, 24186), (3, 26244, 26373), (3, 28431, 28560), (3, 30618, 30747), (3, 32805, 32934), (3, 19683, 19812), (3, 26244, 26373), (3, 32805, 32934), (3, 19683, 19812), (5, 31250, 31379), (7, 16807, 16936), (7, 19208, 19337), (7, 21609, 21738), (7, 24010, 24139), (7, 26411, 26540), (7, 28812, 28941), (7, 31213, 31342), (7, 16807, 16936), (11, 17303, 17432), (11, 18634, 18763), (11, 19965, 20094), (11, 21296, 21425), (11, 29282, 29411), (13, 28561, 28690), (17, 19652, 19781), (17, 24565, 24694), (17, 29478, 29607), (19, 20577, 20706), (19, 27436, 27565), (23, 24334, 24463), (29, 24389, 24518), (31, 29791, 29920), (37, 17797, 17926), (37, 19166, 19295), (37, 20535, 20664), (37, 21904, 22033), (41, 16810, 16939), (41, 18491, 18620), (41, 20172, 20301), (41, 21853, 21982), (41, 23534, 23663), (41, 25215, 25344), (41, 26896, 27025), (43, 16770, 16770), (43, 18490, 18619), (43, 20339, 20468), (43, 22188, 22317), (43, 24037, 24166), (43, 25886, 26015), (43, 27735, 27864), (43, 29584, 29713), (47, 17672, 17801), (47, 19881, 20010), (47, 22090, 22219), (47, 24299, 24428), (47, 26508, 26637), (47, 28717, 28846), (47, 30926, 31055), (47, 33135, 33264), (53, 16854, 16983), (53, 19663, 19792), (53, 22472, 22601), (53, 25281, 25410), (53, 28090, 28219), (53, 30899, 31028), (59, 17405, 17534), (59, 20886, 21015), (59, 24367, 24496), (59, 27848, 27977), (59, 31329, 31458), (61, 18605, 18734), (61, 22326, 22455), (61, 26047, 26176), (61, 29768, 29897), (61, 33489, 33539), (67, 17956, 18085), (67, 22445, 22574), (67, 26934, 27063), (67, 31423, 31552), (71, 20164, 20293), (71, 25205, 25334), (71, 30246, 30375), (73, 21316, 21445), (73, 26645, 26774), (73, 31974, 32103), (79, 18723, 18852), (79, 24964, 25093), (79, 31205, 31334), (83, 20667, 20796), (83, 27556, 27685), (89, 23763, 23892), (89, 31684, 31813), (97, 18818, 18947), (97, 28227, 28356), (101, 20402, 20531), (101, 30603, 30732), (103, 21218, 21347), (103, 31827, 31956), (107, 22898, 23027), (109, 23762, 23891), (113, 25538, 25667), (127, 32258, 32387)]

def row130_layer000_block000 : List ColouredInterval :=
  [(2, 20480, 20609), (2, 24576, 24705), (2, 28672, 28801), (2, 32768, 32897), (2, 24576, 24705), (2, 32768, 32897), (2, 32768, 32897), (2, 32768, 32897), (3, 17496, 17625), (3, 19683, 19812), (3, 21870, 21999), (3, 24057, 24186), (3, 26244, 26373), (3, 28431, 28560), (3, 30618, 30747), (3, 32805, 32934)]

def row130_layer000_block001 : List ColouredInterval :=
  [(3, 19683, 19812), (3, 26244, 26373), (3, 32805, 32934), (3, 19683, 19812), (5, 31250, 31379), (7, 16807, 16936), (7, 19208, 19337), (7, 21609, 21738), (7, 24010, 24139), (7, 26411, 26540), (7, 28812, 28941), (7, 31213, 31342), (7, 16807, 16936), (11, 17303, 17432), (11, 18634, 18763), (11, 19965, 20094)]

def row130_layer000_block002 : List ColouredInterval :=
  [(11, 21296, 21425), (11, 29282, 29411), (13, 28561, 28690), (17, 19652, 19781), (17, 24565, 24694), (17, 29478, 29607), (19, 20577, 20706), (19, 27436, 27565), (23, 24334, 24463), (29, 24389, 24518), (31, 29791, 29920), (37, 17797, 17926), (37, 19166, 19295), (37, 20535, 20664), (37, 21904, 22033), (41, 16810, 16939)]

def row130_layer000_block003 : List ColouredInterval :=
  [(41, 18491, 18620), (41, 20172, 20301), (41, 21853, 21982), (41, 23534, 23663), (41, 25215, 25344), (41, 26896, 27025), (43, 16770, 16770), (43, 18490, 18619), (43, 20339, 20468), (43, 22188, 22317), (43, 24037, 24166), (43, 25886, 26015), (43, 27735, 27864), (43, 29584, 29713), (47, 17672, 17801), (47, 19881, 20010)]

def row130_layer000_block004 : List ColouredInterval :=
  [(47, 22090, 22219), (47, 24299, 24428), (47, 26508, 26637), (47, 28717, 28846), (47, 30926, 31055), (47, 33135, 33264), (53, 16854, 16983), (53, 19663, 19792), (53, 22472, 22601), (53, 25281, 25410), (53, 28090, 28219), (53, 30899, 31028), (59, 17405, 17534), (59, 20886, 21015), (59, 24367, 24496), (59, 27848, 27977)]

def row130_layer000_block005 : List ColouredInterval :=
  [(59, 31329, 31458), (61, 18605, 18734), (61, 22326, 22455), (61, 26047, 26176), (61, 29768, 29897), (61, 33489, 33539), (67, 17956, 18085), (67, 22445, 22574), (67, 26934, 27063), (67, 31423, 31552), (71, 20164, 20293), (71, 25205, 25334), (71, 30246, 30375), (73, 21316, 21445), (73, 26645, 26774), (73, 31974, 32103)]

def row130_layer000_block006 : List ColouredInterval :=
  [(79, 18723, 18852), (79, 24964, 25093), (79, 31205, 31334), (83, 20667, 20796), (83, 27556, 27685), (89, 23763, 23892), (89, 31684, 31813), (97, 18818, 18947), (97, 28227, 28356), (101, 20402, 20531), (101, 30603, 30732), (103, 21218, 21347), (103, 31827, 31956), (107, 22898, 23027), (109, 23762, 23891), (113, 25538, 25667)]

def row130_layer000_block007 : List ColouredInterval :=
  [(127, 32258, 32387)]

def row130_layer000_chunks : List (List ColouredInterval) :=
  [row130_layer000_block000, row130_layer000_block001, row130_layer000_block002, row130_layer000_block003, row130_layer000_block004, row130_layer000_block005, row130_layer000_block006, row130_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_layer000_arithmetic : LayerArithmeticValid row130.height { lower := 16770, upper := 33540, M := 16 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_layer000_enumeration :
    activePowerIntervalList 130 16 16770 33540 = row130_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_layer000_pairs000 :
    row130_layer000_block000.all (fun I => row130_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row130_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_layer000_pairs001 :
    row130_layer000_block001.all (fun I => row130_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row130_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_layer000_pairs002 :
    row130_layer000_block002.all (fun I => row130_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row130_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_layer000_pairs003 :
    row130_layer000_block003.all (fun I => row130_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row130_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_layer000_pairs004 :
    row130_layer000_block004.all (fun I => row130_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row130_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_layer000_pairs005 :
    row130_layer000_block005.all (fun I => row130_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row130_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_layer000_pairs006 :
    row130_layer000_block006.all (fun I => row130_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row130_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_layer000_pairs007 :
    row130_layer000_block007.all (fun I => row130_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row130_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_layer000_chunks_eq : row130_layer000_chunks.flatten = row130_layer000_intervals := by
  rfl

theorem row130_layer000_pairs : pairCoverCheck row130_layer000_intervals row130_bounds = true := by
  apply pairCoverCheck_of_chunks row130_layer000_chunks_eq
  intro block hblock
  simp only [row130_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row130_layer000_pairs000
  · exact row130_layer000_pairs001
  · exact row130_layer000_pairs002
  · exact row130_layer000_pairs003
  · exact row130_layer000_pairs004
  · exact row130_layer000_pairs005
  · exact row130_layer000_pairs006
  · exact row130_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_layer000_checked :
    coverLayerCheck row130.height row130.goods { lower := 16770, upper := 33540, M := 16 } = true := by
  exact coverLayerCheck_of_parts row130_layer000_arithmetic row130_layer000_enumeration row130_bounds_eq row130_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row130_layer001_intervals : List ColouredInterval :=
  [(2, 40960, 41089), (2, 49152, 49281), (2, 49152, 49281), (2, 65536, 65665), (2, 65536, 65665), (2, 65536, 65665), (3, 39366, 39495), (3, 45927, 46056), (3, 52488, 52617), (3, 59049, 59178), (3, 65610, 65739), (3, 39366, 39495), (3, 59049, 59178), (3, 59049, 59178), (7, 33614, 33743), (7, 50421, 50550), (11, 43923, 44052), (11, 58564, 58693), (17, 34391, 34520), (17, 39304, 39433), (17, 44217, 44346), (17, 49130, 49259), (17, 54043, 54172), (17, 58956, 59085), (19, 34295, 34424), (19, 41154, 41283), (19, 48013, 48142), (19, 54872, 55001), (19, 61731, 61860), (23, 36501, 36630), (23, 48668, 48797), (23, 60835, 60964), (29, 48778, 48907), (31, 59582, 59711), (37, 50653, 50782), (53, 33708, 33837), (59, 34810, 34939), (59, 38291, 38420), (59, 41772, 41901), (61, 33540, 33618), (61, 37210, 37339), (61, 40931, 41060), (61, 44652, 44781), (67, 35912, 36041), (67, 40401, 40530), (67, 44890, 45019), (67, 49379, 49508), (67, 53868, 53997), (71, 35287, 35416), (71, 40328, 40457), (71, 45369, 45498), (71, 50410, 50539), (71, 55451, 55580), (71, 60492, 60621), (73, 37303, 37432), (73, 42632, 42761), (73, 47961, 48090), (73, 53290, 53419), (73, 58619, 58748), (73, 63948, 64077), (79, 37446, 37575), (79, 43687, 43816), (79, 49928, 50057), (79, 56169, 56298), (79, 62410, 62539), (83, 34445, 34574), (83, 41334, 41463), (83, 48223, 48352), (83, 55112, 55241), (83, 62001, 62130), (89, 39605, 39734), (89, 47526, 47655), (89, 55447, 55576), (89, 63368, 63497), (97, 37636, 37765), (97, 47045, 47174), (97, 56454, 56583), (97, 65863, 65992), (101, 40804, 40933), (101, 51005, 51134), (101, 61206, 61335), (103, 42436, 42565), (103, 53045, 53174), (103, 63654, 63783), (107, 34347, 34476), (107, 45796, 45925), (107, 57245, 57374), (109, 35643, 35772), (109, 47524, 47653), (109, 59405, 59534), (113, 38307, 38436), (113, 51076, 51205), (113, 63845, 63974), (127, 48387, 48516), (127, 64516, 64645)]

def row130_layer001_block000 : List ColouredInterval :=
  [(2, 40960, 41089), (2, 49152, 49281), (2, 49152, 49281), (2, 65536, 65665), (2, 65536, 65665), (2, 65536, 65665), (3, 39366, 39495), (3, 45927, 46056), (3, 52488, 52617), (3, 59049, 59178), (3, 65610, 65739), (3, 39366, 39495), (3, 59049, 59178), (3, 59049, 59178), (7, 33614, 33743), (7, 50421, 50550)]

def row130_layer001_block001 : List ColouredInterval :=
  [(11, 43923, 44052), (11, 58564, 58693), (17, 34391, 34520), (17, 39304, 39433), (17, 44217, 44346), (17, 49130, 49259), (17, 54043, 54172), (17, 58956, 59085), (19, 34295, 34424), (19, 41154, 41283), (19, 48013, 48142), (19, 54872, 55001), (19, 61731, 61860), (23, 36501, 36630), (23, 48668, 48797), (23, 60835, 60964)]

def row130_layer001_block002 : List ColouredInterval :=
  [(29, 48778, 48907), (31, 59582, 59711), (37, 50653, 50782), (53, 33708, 33837), (59, 34810, 34939), (59, 38291, 38420), (59, 41772, 41901), (61, 33540, 33618), (61, 37210, 37339), (61, 40931, 41060), (61, 44652, 44781), (67, 35912, 36041), (67, 40401, 40530), (67, 44890, 45019), (67, 49379, 49508), (67, 53868, 53997)]

def row130_layer001_block003 : List ColouredInterval :=
  [(71, 35287, 35416), (71, 40328, 40457), (71, 45369, 45498), (71, 50410, 50539), (71, 55451, 55580), (71, 60492, 60621), (73, 37303, 37432), (73, 42632, 42761), (73, 47961, 48090), (73, 53290, 53419), (73, 58619, 58748), (73, 63948, 64077), (79, 37446, 37575), (79, 43687, 43816), (79, 49928, 50057), (79, 56169, 56298)]

def row130_layer001_block004 : List ColouredInterval :=
  [(79, 62410, 62539), (83, 34445, 34574), (83, 41334, 41463), (83, 48223, 48352), (83, 55112, 55241), (83, 62001, 62130), (89, 39605, 39734), (89, 47526, 47655), (89, 55447, 55576), (89, 63368, 63497), (97, 37636, 37765), (97, 47045, 47174), (97, 56454, 56583), (97, 65863, 65992), (101, 40804, 40933), (101, 51005, 51134)]

def row130_layer001_block005 : List ColouredInterval :=
  [(101, 61206, 61335), (103, 42436, 42565), (103, 53045, 53174), (103, 63654, 63783), (107, 34347, 34476), (107, 45796, 45925), (107, 57245, 57374), (109, 35643, 35772), (109, 47524, 47653), (109, 59405, 59534), (113, 38307, 38436), (113, 51076, 51205), (113, 63845, 63974), (127, 48387, 48516), (127, 64516, 64645)]

def row130_layer001_chunks : List (List ColouredInterval) :=
  [row130_layer001_block000, row130_layer001_block001, row130_layer001_block002, row130_layer001_block003, row130_layer001_block004, row130_layer001_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer001_intervals
