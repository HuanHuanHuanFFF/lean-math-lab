import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row157_height : HeightCertificateDatum := { i := 157, r := 52, s := 111, n0Power10 := 7 }

def row157_goods : List GoodSegment := [
  { lower := 316, upper := 469, witness := RowWitness.topPrime 313 },
  { lower := 470, upper := 623, witness := RowWitness.topPrime 467 },
  { lower := 624, upper := 775, witness := RowWitness.topPrime 619 },
  { lower := 776, upper := 929, witness := RowWitness.topPrime 773 },
  { lower := 930, upper := 1085, witness := RowWitness.topPrime 929 },
  { lower := 1086, upper := 1225, witness := RowWitness.topPrime 1069 },
  { lower := 1226, upper := 1379, witness := RowWitness.topPrime 1223 },
  { lower := 1380, upper := 1529, witness := RowWitness.topPrime 1373 },
  { lower := 1530, upper := 1679, witness := RowWitness.topPrime 1523 },
  { lower := 1680, upper := 1825, witness := RowWitness.topPrime 1669 },
  { lower := 1826, upper := 1979, witness := RowWitness.topPrime 1823 },
  { lower := 1980, upper := 2135, witness := RowWitness.topPrime 1979 },
  { lower := 2136, upper := 2287, witness := RowWitness.topPrime 2131 },
  { lower := 2288, upper := 2443, witness := RowWitness.topPrime 2287 },
  { lower := 2444, upper := 2597, witness := RowWitness.topPrime 2441 },
  { lower := 2598, upper := 2749, witness := RowWitness.topPrime 2593 },
  { lower := 2750, upper := 2905, witness := RowWitness.topPrime 2749 },
  { lower := 2906, upper := 3059, witness := RowWitness.topPrime 2903 },
  { lower := 3060, upper := 3205, witness := RowWitness.topPrime 3049 },
  { lower := 3206, upper := 3359, witness := RowWitness.topPrime 3203 },
  { lower := 3360, upper := 3515, witness := RowWitness.topPrime 3359 },
  { lower := 3516, upper := 3667, witness := RowWitness.topPrime 3511 },
  { lower := 3668, upper := 3815, witness := RowWitness.topPrime 3659 },
  { lower := 3816, upper := 3959, witness := RowWitness.topPrime 3803 },
  { lower := 3960, upper := 4103, witness := RowWitness.topPrime 3947 },
  { lower := 4104, upper := 4255, witness := RowWitness.topPrime 4099 },
  { lower := 4256, upper := 4409, witness := RowWitness.topPrime 4253 },
  { lower := 4410, upper := 4565, witness := RowWitness.topPrime 4409 },
  { lower := 4566, upper := 4717, witness := RowWitness.topPrime 4561 },
  { lower := 4718, upper := 4859, witness := RowWitness.topPrime 4703 },
  { lower := 4860, upper := 4987, witness := RowWitness.topPrime 4831 },
  { lower := 4988, upper := 5143, witness := RowWitness.topPrime 4987 },
  { lower := 5144, upper := 5275, witness := RowWitness.topPrime 5119 },
  { lower := 5276, upper := 5429, witness := RowWitness.topPrime 5273 },
  { lower := 5430, upper := 5575, witness := RowWitness.topPrime 5419 },
  { lower := 5576, upper := 5729, witness := RowWitness.topPrime 5573 },
  { lower := 5730, upper := 5873, witness := RowWitness.topPrime 5717 },
  { lower := 5874, upper := 6025, witness := RowWitness.topPrime 5869 },
  { lower := 6026, upper := 6167, witness := RowWitness.topPrime 6011 },
  { lower := 6168, upper := 6319, witness := RowWitness.topPrime 6163 },
  { lower := 6320, upper := 6473, witness := RowWitness.topPrime 6317 },
  { lower := 6474, upper := 6629, witness := RowWitness.topPrime 6473 },
  { lower := 6630, upper := 6775, witness := RowWitness.topPrime 6619 },
  { lower := 6776, upper := 6919, witness := RowWitness.topPrime 6763 },
  { lower := 6920, upper := 7073, witness := RowWitness.topPrime 6917 },
  { lower := 7074, upper := 7225, witness := RowWitness.topPrime 7069 },
  { lower := 7226, upper := 7375, witness := RowWitness.topPrime 7219 },
  { lower := 7376, upper := 7525, witness := RowWitness.topPrime 7369 },
  { lower := 7526, upper := 7679, witness := RowWitness.topPrime 7523 },
  { lower := 7680, upper := 7829, witness := RowWitness.topPrime 7673 },
  { lower := 7830, upper := 7985, witness := RowWitness.topPrime 7829 },
  { lower := 7986, upper := 8119, witness := RowWitness.topPrime 7963 },
  { lower := 8120, upper := 8273, witness := RowWitness.topPrime 8117 },
  { lower := 8274, upper := 8429, witness := RowWitness.topPrime 8273 },
  { lower := 8430, upper := 8585, witness := RowWitness.topPrime 8429 },
  { lower := 8586, upper := 8737, witness := RowWitness.topPrime 8581 },
  { lower := 8738, upper := 8893, witness := RowWitness.topPrime 8737 },
  { lower := 8894, upper := 9049, witness := RowWitness.topPrime 8893 },
  { lower := 9050, upper := 9205, witness := RowWitness.topPrime 9049 },
  { lower := 9206, upper := 9359, witness := RowWitness.topPrime 9203 },
  { lower := 9360, upper := 9505, witness := RowWitness.topPrime 9349 },
  { lower := 9506, upper := 9653, witness := RowWitness.topPrime 9497 },
  { lower := 9654, upper := 9805, witness := RowWitness.topPrime 9649 },
  { lower := 9806, upper := 9959, witness := RowWitness.topPrime 9803 },
  { lower := 9960, upper := 10105, witness := RowWitness.topPrime 9949 },
  { lower := 10106, upper := 10259, witness := RowWitness.topPrime 10103 },
  { lower := 10260, upper := 10415, witness := RowWitness.topPrime 10259 },
  { lower := 10416, upper := 10555, witness := RowWitness.topPrime 10399 },
  { lower := 10556, upper := 10687, witness := RowWitness.topPrime 10531 },
  { lower := 10688, upper := 10843, witness := RowWitness.topPrime 10687 },
  { lower := 10844, upper := 10993, witness := RowWitness.topPrime 10837 },
  { lower := 10994, upper := 11149, witness := RowWitness.topPrime 10993 },
  { lower := 11150, upper := 11305, witness := RowWitness.topPrime 11149 },
  { lower := 11306, upper := 11455, witness := RowWitness.topPrime 11299 },
  { lower := 11456, upper := 11603, witness := RowWitness.topPrime 11447 },
  { lower := 11604, upper := 11753, witness := RowWitness.topPrime 11597 },
  { lower := 11754, upper := 11899, witness := RowWitness.topPrime 11743 },
  { lower := 11900, upper := 12053, witness := RowWitness.topPrime 11897 },
  { lower := 12054, upper := 12205, witness := RowWitness.topPrime 12049 },
  { lower := 12206, upper := 12359, witness := RowWitness.topPrime 12203 },
  { lower := 12360, upper := 12503, witness := RowWitness.topPrime 12347 },
  { lower := 12504, upper := 12659, witness := RowWitness.topPrime 12503 },
  { lower := 12660, upper := 12815, witness := RowWitness.topPrime 12659 },
  { lower := 12816, upper := 12965, witness := RowWitness.topPrime 12809 },
  { lower := 12966, upper := 13115, witness := RowWitness.topPrime 12959 },
  { lower := 13116, upper := 13265, witness := RowWitness.topPrime 13109 },
  { lower := 13266, upper := 13415, witness := RowWitness.topPrime 13259 },
  { lower := 13416, upper := 13567, witness := RowWitness.topPrime 13411 },
  { lower := 13568, upper := 13723, witness := RowWitness.topPrime 13567 },
  { lower := 13724, upper := 13879, witness := RowWitness.topPrime 13723 },
  { lower := 13880, upper := 14035, witness := RowWitness.topPrime 13879 },
  { lower := 14036, upper := 14189, witness := RowWitness.topPrime 14033 },
  { lower := 14190, upper := 14333, witness := RowWitness.topPrime 14177 },
  { lower := 14334, upper := 14483, witness := RowWitness.topPrime 14327 },
  { lower := 14484, upper := 14635, witness := RowWitness.topPrime 14479 },
  { lower := 14636, upper := 14789, witness := RowWitness.topPrime 14633 },
  { lower := 14790, upper := 14939, witness := RowWitness.topPrime 14783 },
  { lower := 14940, upper := 15095, witness := RowWitness.topPrime 14939 },
  { lower := 15096, upper := 15247, witness := RowWitness.topPrime 15091 },
  { lower := 15248, upper := 15397, witness := RowWitness.topPrime 15241 },
  { lower := 15398, upper := 15547, witness := RowWitness.topPrime 15391 },
  { lower := 15548, upper := 15697, witness := RowWitness.topPrime 15541 },
  { lower := 15698, upper := 15839, witness := RowWitness.topPrime 15683 },
  { lower := 15840, upper := 15979, witness := RowWitness.topPrime 15823 },
  { lower := 15980, upper := 16129, witness := RowWitness.topPrime 15973 },
  { lower := 16130, upper := 16283, witness := RowWitness.topPrime 16127 },
  { lower := 16284, upper := 16429, witness := RowWitness.topPrime 16273 },
  { lower := 16430, upper := 16583, witness := RowWitness.topPrime 16427 },
  { lower := 16584, upper := 16729, witness := RowWitness.topPrime 16573 },
  { lower := 16730, upper := 16885, witness := RowWitness.topPrime 16729 },
  { lower := 16886, upper := 17039, witness := RowWitness.topPrime 16883 },
  { lower := 17040, upper := 17189, witness := RowWitness.topPrime 17033 },
  { lower := 17190, upper := 17345, witness := RowWitness.topPrime 17189 },
  { lower := 17346, upper := 17497, witness := RowWitness.topPrime 17341 },
  { lower := 17498, upper := 17653, witness := RowWitness.topPrime 17497 },
  { lower := 17654, upper := 17783, witness := RowWitness.topPrime 17627 },
  { lower := 17784, upper := 17939, witness := RowWitness.topPrime 17783 },
  { lower := 17940, upper := 18095, witness := RowWitness.topPrime 17939 },
  { lower := 18096, upper := 18245, witness := RowWitness.topPrime 18089 },
  { lower := 18246, upper := 18389, witness := RowWitness.topPrime 18233 },
  { lower := 18390, upper := 18535, witness := RowWitness.topPrime 18379 },
  { lower := 18536, upper := 18679, witness := RowWitness.topPrime 18523 },
  { lower := 18680, upper := 18835, witness := RowWitness.topPrime 18679 },
  { lower := 18836, upper := 18959, witness := RowWitness.topPrime 18803 },
  { lower := 18960, upper := 19115, witness := RowWitness.topPrime 18959 },
  { lower := 19116, upper := 19243, witness := RowWitness.topPrime 19087 },
  { lower := 19244, upper := 19393, witness := RowWitness.topPrime 19237 },
  { lower := 19394, upper := 19547, witness := RowWitness.topPrime 19391 },
  { lower := 19548, upper := 19699, witness := RowWitness.topPrime 19543 },
  { lower := 19700, upper := 19855, witness := RowWitness.topPrime 19699 },
  { lower := 19856, upper := 20009, witness := RowWitness.topPrime 19853 },
  { lower := 20010, upper := 20153, witness := RowWitness.topPrime 19997 },
  { lower := 20154, upper := 20305, witness := RowWitness.topPrime 20149 },
  { lower := 20306, upper := 20453, witness := RowWitness.topPrime 20297 },
  { lower := 20454, upper := 20599, witness := RowWitness.topPrime 20443 },
  { lower := 20600, upper := 20755, witness := RowWitness.topPrime 20599 },
  { lower := 20756, upper := 20909, witness := RowWitness.topPrime 20753 },
  { lower := 20910, upper := 21059, witness := RowWitness.topPrime 20903 },
  { lower := 21060, upper := 21215, witness := RowWitness.topPrime 21059 },
  { lower := 21216, upper := 21367, witness := RowWitness.topPrime 21211 },
  { lower := 21368, upper := 21503, witness := RowWitness.topPrime 21347 },
  { lower := 21504, upper := 21659, witness := RowWitness.topPrime 21503 },
  { lower := 21660, upper := 21805, witness := RowWitness.topPrime 21649 },
  { lower := 21806, upper := 21959, witness := RowWitness.topPrime 21803 },
  { lower := 21960, upper := 22099, witness := RowWitness.topPrime 21943 },
  { lower := 22100, upper := 22249, witness := RowWitness.topPrime 22093 },
  { lower := 22250, upper := 22403, witness := RowWitness.topPrime 22247 },
  { lower := 22404, upper := 22553, witness := RowWitness.topPrime 22397 },
  { lower := 22554, upper := 22705, witness := RowWitness.topPrime 22549 },
  { lower := 22706, upper := 22855, witness := RowWitness.topPrime 22699 },
  { lower := 22856, upper := 23009, witness := RowWitness.topPrime 22853 },
  { lower := 23010, upper := 23159, witness := RowWitness.topPrime 23003 },
  { lower := 23160, upper := 23315, witness := RowWitness.topPrime 23159 },
  { lower := 23316, upper := 23467, witness := RowWitness.topPrime 23311 },
  { lower := 23468, upper := 23615, witness := RowWitness.topPrime 23459 },
  { lower := 23616, upper := 23765, witness := RowWitness.topPrime 23609 },
  { lower := 23766, upper := 23917, witness := RowWitness.topPrime 23761 },
  { lower := 23918, upper := 24073, witness := RowWitness.topPrime 23917 },
  { lower := 24074, upper := 24227, witness := RowWitness.topPrime 24071 },
  { lower := 24228, upper := 24379, witness := RowWitness.topPrime 24223 },
  { lower := 24380, upper := 24523, witness := RowWitness.topPrime 24379 },
  { lower := 24576, upper := 24721, witness := RowWitness.topPrime 24571 },
  { lower := 25000, upper := 25120, witness := RowWitness.topPrime 24989 },
  { lower := 25281, upper := 25361, witness := RowWitness.topPrime 25261 },
  { lower := 26364, upper := 26400, witness := RowWitness.topPrime 26357 },
  { lower := 26411, upper := 26563, witness := RowWitness.topPrime 26407 },
  { lower := 26564, upper := 26567, witness := RowWitness.topPrime 26561 },
  { lower := 26624, upper := 26753, witness := RowWitness.topPrime 26597 },
  { lower := 26754, upper := 26780, witness := RowWitness.topPrime 26737 },
  { lower := 27556, upper := 27592, witness := RowWitness.topPrime 27551 },
  { lower := 28125, upper := 28279, witness := RowWitness.topPrime 28123 },
  { lower := 28280, upper := 28281, witness := RowWitness.topPrime 28279 },
  { lower := 28561, upper := 28587, witness := RowWitness.topPrime 28559 },
  { lower := 28672, upper := 28825, witness := RowWitness.topPrime 28669 },
  { lower := 28826, upper := 28873, witness := RowWitness.topPrime 28817 },
  { lower := 29791, upper := 29924, witness := RowWitness.topPrime 29789 },
  { lower := 31213, upper := 31349, witness := RowWitness.topPrime 31193 },
  { lower := 31350, upper := 31406, witness := RowWitness.topPrime 31337 },
  { lower := 31423, upper := 31485, witness := RowWitness.topPrime 31397 },
  { lower := 31827, upper := 31840, witness := RowWitness.topPrime 31817 },
  { lower := 31974, upper := 31983, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32924, witness := RowWitness.topPrime 32803 },
  { lower := 33614, upper := 33645, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33770, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34475, witness := RowWitness.topPrime 34319 },
  { lower := 34476, upper := 34547, witness := RowWitness.topPrime 34471 },
  { lower := 36517, upper := 36653, witness := RowWitness.topPrime 36497 },
  { lower := 36654, upper := 36657, witness := RowWitness.topPrime 36653 },
  { lower := 37303, upper := 37366, witness := RowWitness.topPrime 37277 },
  { lower := 37446, upper := 37459, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37649, witness := RowWitness.topPrime 37493 },
  { lower := 37650, upper := 37694, witness := RowWitness.topPrime 37649 },
  { lower := 38307, upper := 38447, witness := RowWitness.topPrime 38303 },
  { lower := 39366, upper := 39460, witness := RowWitness.topPrime 39359 },
  { lower := 40401, upper := 40484, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 41083, witness := RowWitness.topPrime 40927 },
  { lower := 41084, upper := 41087, witness := RowWitness.topPrime 41081 },
  { lower := 45369, upper := 45409, witness := RowWitness.topPrime 45361 },
  { lower := 45927, upper := 45952, witness := RowWitness.topPrime 45893 },
  { lower := 47526, upper := 47677, witness := RowWitness.topPrime 47521 },
  { lower := 47678, upper := 47680, witness := RowWitness.topPrime 47659 },
  { lower := 48013, upper := 48117, witness := RowWitness.topPrime 47981 },
  { lower := 48373, upper := 48379, witness := RowWitness.topPrime 48371 },
  { lower := 48387, upper := 48529, witness := RowWitness.topPrime 48383 },
  { lower := 48778, upper := 48824, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49286, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50566, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51161, witness := RowWitness.topPrime 51071 },
  { lower := 56307, upper := 56325, witness := RowWitness.topPrime 56299 },
  { lower := 56454, upper := 56463, witness := RowWitness.topPrime 56453 },
  { lower := 57245, upper := 57278, witness := RowWitness.topPrime 57241 },
  { lower := 57344, upper := 57401, witness := RowWitness.topPrime 57331 },
  { lower := 62500, upper := 62566, witness := RowWitness.topPrime 62497 },
  { lower := 65610, upper := 65692, witness := RowWitness.topPrime 65609 },
  { lower := 68644, upper := 68795, witness := RowWitness.topPrime 68639 },
  { lower := 68796, upper := 68800, witness := RowWitness.topPrime 68791 },
  { lower := 68921, upper := 69046, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71443, witness := RowWitness.topPrime 71287 },
  { lower := 71444, upper := 71445, witness := RowWitness.topPrime 71443 },
  { lower := 73205, upper := 73323, witness := RowWitness.topPrime 73189 },
  { lower := 85805, upper := 85839, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89529, witness := RowWitness.topPrime 89381 },
  { lower := 93845, upper := 93906, witness := RowWitness.topPrime 93827 },
  { lower := 98415, upper := 98460, witness := RowWitness.topPrime 98411 },
  { lower := 137842, upper := 137937, witness := RowWitness.topPrime 137831 },
  { lower := 148955, upper := 149033, witness := RowWitness.topPrime 148949 }
]

def row157_layers : List CoverLayer := [
  { lower := 24492, upper := 48984, M := 13 },
  { lower := 48984, upper := 97968, M := 10 },
  { lower := 97968, upper := 195936, M := 7 },
  { lower := 195936, upper := 391872, M := 6 },
  { lower := 391872, upper := 783744, M := 4 },
  { lower := 783744, upper := 1567488, M := 3 },
  { lower := 1567488, upper := 3134976, M := 2 },
  { lower := 3134976, upper := 6269952, M := 2 },
  { lower := 6269952, upper := 10000000, M := 2 }
]

def row157 : FiniteCoverRow := {
  height := row157_height,
  goods := row157_goods,
  layers := row157_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row157

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row157_good000_checked :
    goodSegmentCheck 157 52 111
      { lower := 316, upper := 469, witness := RowWitness.topPrime 313 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good001_checked :
    goodSegmentCheck 157 52 111
      { lower := 470, upper := 623, witness := RowWitness.topPrime 467 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good002_checked :
    goodSegmentCheck 157 52 111
      { lower := 624, upper := 775, witness := RowWitness.topPrime 619 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good003_checked :
    goodSegmentCheck 157 52 111
      { lower := 776, upper := 929, witness := RowWitness.topPrime 773 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good004_checked :
    goodSegmentCheck 157 52 111
      { lower := 930, upper := 1085, witness := RowWitness.topPrime 929 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good005_checked :
    goodSegmentCheck 157 52 111
      { lower := 1086, upper := 1225, witness := RowWitness.topPrime 1069 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good006_checked :
    goodSegmentCheck 157 52 111
      { lower := 1226, upper := 1379, witness := RowWitness.topPrime 1223 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good007_checked :
    goodSegmentCheck 157 52 111
      { lower := 1380, upper := 1529, witness := RowWitness.topPrime 1373 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good008_checked :
    goodSegmentCheck 157 52 111
      { lower := 1530, upper := 1679, witness := RowWitness.topPrime 1523 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good009_checked :
    goodSegmentCheck 157 52 111
      { lower := 1680, upper := 1825, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good010_checked :
    goodSegmentCheck 157 52 111
      { lower := 1826, upper := 1979, witness := RowWitness.topPrime 1823 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good011_checked :
    goodSegmentCheck 157 52 111
      { lower := 1980, upper := 2135, witness := RowWitness.topPrime 1979 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good012_checked :
    goodSegmentCheck 157 52 111
      { lower := 2136, upper := 2287, witness := RowWitness.topPrime 2131 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good013_checked :
    goodSegmentCheck 157 52 111
      { lower := 2288, upper := 2443, witness := RowWitness.topPrime 2287 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good014_checked :
    goodSegmentCheck 157 52 111
      { lower := 2444, upper := 2597, witness := RowWitness.topPrime 2441 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good015_checked :
    goodSegmentCheck 157 52 111
      { lower := 2598, upper := 2749, witness := RowWitness.topPrime 2593 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row157_good016_checked :
    goodSegmentCheck 157 52 111
      { lower := 2750, upper := 2905, witness := RowWitness.topPrime 2749 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good017_checked :
    goodSegmentCheck 157 52 111
      { lower := 2906, upper := 3059, witness := RowWitness.topPrime 2903 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good018_checked :
    goodSegmentCheck 157 52 111
      { lower := 3060, upper := 3205, witness := RowWitness.topPrime 3049 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good019_checked :
    goodSegmentCheck 157 52 111
      { lower := 3206, upper := 3359, witness := RowWitness.topPrime 3203 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good020_checked :
    goodSegmentCheck 157 52 111
      { lower := 3360, upper := 3515, witness := RowWitness.topPrime 3359 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good021_checked :
    goodSegmentCheck 157 52 111
      { lower := 3516, upper := 3667, witness := RowWitness.topPrime 3511 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good022_checked :
    goodSegmentCheck 157 52 111
      { lower := 3668, upper := 3815, witness := RowWitness.topPrime 3659 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good023_checked :
    goodSegmentCheck 157 52 111
      { lower := 3816, upper := 3959, witness := RowWitness.topPrime 3803 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good024_checked :
    goodSegmentCheck 157 52 111
      { lower := 3960, upper := 4103, witness := RowWitness.topPrime 3947 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good025_checked :
    goodSegmentCheck 157 52 111
      { lower := 4104, upper := 4255, witness := RowWitness.topPrime 4099 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good026_checked :
    goodSegmentCheck 157 52 111
      { lower := 4256, upper := 4409, witness := RowWitness.topPrime 4253 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good027_checked :
    goodSegmentCheck 157 52 111
      { lower := 4410, upper := 4565, witness := RowWitness.topPrime 4409 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good028_checked :
    goodSegmentCheck 157 52 111
      { lower := 4566, upper := 4717, witness := RowWitness.topPrime 4561 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good029_checked :
    goodSegmentCheck 157 52 111
      { lower := 4718, upper := 4859, witness := RowWitness.topPrime 4703 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good030_checked :
    goodSegmentCheck 157 52 111
      { lower := 4860, upper := 4987, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good031_checked :
    goodSegmentCheck 157 52 111
      { lower := 4988, upper := 5143, witness := RowWitness.topPrime 4987 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row157_good032_checked :
    goodSegmentCheck 157 52 111
      { lower := 5144, upper := 5275, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good033_checked :
    goodSegmentCheck 157 52 111
      { lower := 5276, upper := 5429, witness := RowWitness.topPrime 5273 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good034_checked :
    goodSegmentCheck 157 52 111
      { lower := 5430, upper := 5575, witness := RowWitness.topPrime 5419 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good035_checked :
    goodSegmentCheck 157 52 111
      { lower := 5576, upper := 5729, witness := RowWitness.topPrime 5573 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good036_checked :
    goodSegmentCheck 157 52 111
      { lower := 5730, upper := 5873, witness := RowWitness.topPrime 5717 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good037_checked :
    goodSegmentCheck 157 52 111
      { lower := 5874, upper := 6025, witness := RowWitness.topPrime 5869 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good038_checked :
    goodSegmentCheck 157 52 111
      { lower := 6026, upper := 6167, witness := RowWitness.topPrime 6011 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good039_checked :
    goodSegmentCheck 157 52 111
      { lower := 6168, upper := 6319, witness := RowWitness.topPrime 6163 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good040_checked :
    goodSegmentCheck 157 52 111
      { lower := 6320, upper := 6473, witness := RowWitness.topPrime 6317 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good041_checked :
    goodSegmentCheck 157 52 111
      { lower := 6474, upper := 6629, witness := RowWitness.topPrime 6473 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good042_checked :
    goodSegmentCheck 157 52 111
      { lower := 6630, upper := 6775, witness := RowWitness.topPrime 6619 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good043_checked :
    goodSegmentCheck 157 52 111
      { lower := 6776, upper := 6919, witness := RowWitness.topPrime 6763 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good044_checked :
    goodSegmentCheck 157 52 111
      { lower := 6920, upper := 7073, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good045_checked :
    goodSegmentCheck 157 52 111
      { lower := 7074, upper := 7225, witness := RowWitness.topPrime 7069 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good046_checked :
    goodSegmentCheck 157 52 111
      { lower := 7226, upper := 7375, witness := RowWitness.topPrime 7219 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good047_checked :
    goodSegmentCheck 157 52 111
      { lower := 7376, upper := 7525, witness := RowWitness.topPrime 7369 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row157_good048_checked :
    goodSegmentCheck 157 52 111
      { lower := 7526, upper := 7679, witness := RowWitness.topPrime 7523 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good049_checked :
    goodSegmentCheck 157 52 111
      { lower := 7680, upper := 7829, witness := RowWitness.topPrime 7673 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good050_checked :
    goodSegmentCheck 157 52 111
      { lower := 7830, upper := 7985, witness := RowWitness.topPrime 7829 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good051_checked :
    goodSegmentCheck 157 52 111
      { lower := 7986, upper := 8119, witness := RowWitness.topPrime 7963 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good052_checked :
    goodSegmentCheck 157 52 111
      { lower := 8120, upper := 8273, witness := RowWitness.topPrime 8117 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good053_checked :
    goodSegmentCheck 157 52 111
      { lower := 8274, upper := 8429, witness := RowWitness.topPrime 8273 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good054_checked :
    goodSegmentCheck 157 52 111
      { lower := 8430, upper := 8585, witness := RowWitness.topPrime 8429 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good055_checked :
    goodSegmentCheck 157 52 111
      { lower := 8586, upper := 8737, witness := RowWitness.topPrime 8581 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good056_checked :
    goodSegmentCheck 157 52 111
      { lower := 8738, upper := 8893, witness := RowWitness.topPrime 8737 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good057_checked :
    goodSegmentCheck 157 52 111
      { lower := 8894, upper := 9049, witness := RowWitness.topPrime 8893 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good058_checked :
    goodSegmentCheck 157 52 111
      { lower := 9050, upper := 9205, witness := RowWitness.topPrime 9049 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good059_checked :
    goodSegmentCheck 157 52 111
      { lower := 9206, upper := 9359, witness := RowWitness.topPrime 9203 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good060_checked :
    goodSegmentCheck 157 52 111
      { lower := 9360, upper := 9505, witness := RowWitness.topPrime 9349 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good061_checked :
    goodSegmentCheck 157 52 111
      { lower := 9506, upper := 9653, witness := RowWitness.topPrime 9497 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good062_checked :
    goodSegmentCheck 157 52 111
      { lower := 9654, upper := 9805, witness := RowWitness.topPrime 9649 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good063_checked :
    goodSegmentCheck 157 52 111
      { lower := 9806, upper := 9959, witness := RowWitness.topPrime 9803 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row157_good064_checked :
    goodSegmentCheck 157 52 111
      { lower := 9960, upper := 10105, witness := RowWitness.topPrime 9949 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good065_checked :
    goodSegmentCheck 157 52 111
      { lower := 10106, upper := 10259, witness := RowWitness.topPrime 10103 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good066_checked :
    goodSegmentCheck 157 52 111
      { lower := 10260, upper := 10415, witness := RowWitness.topPrime 10259 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good067_checked :
    goodSegmentCheck 157 52 111
      { lower := 10416, upper := 10555, witness := RowWitness.topPrime 10399 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good068_checked :
    goodSegmentCheck 157 52 111
      { lower := 10556, upper := 10687, witness := RowWitness.topPrime 10531 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good069_checked :
    goodSegmentCheck 157 52 111
      { lower := 10688, upper := 10843, witness := RowWitness.topPrime 10687 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good070_checked :
    goodSegmentCheck 157 52 111
      { lower := 10844, upper := 10993, witness := RowWitness.topPrime 10837 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good071_checked :
    goodSegmentCheck 157 52 111
      { lower := 10994, upper := 11149, witness := RowWitness.topPrime 10993 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good072_checked :
    goodSegmentCheck 157 52 111
      { lower := 11150, upper := 11305, witness := RowWitness.topPrime 11149 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good073_checked :
    goodSegmentCheck 157 52 111
      { lower := 11306, upper := 11455, witness := RowWitness.topPrime 11299 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good074_checked :
    goodSegmentCheck 157 52 111
      { lower := 11456, upper := 11603, witness := RowWitness.topPrime 11447 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good075_checked :
    goodSegmentCheck 157 52 111
      { lower := 11604, upper := 11753, witness := RowWitness.topPrime 11597 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good076_checked :
    goodSegmentCheck 157 52 111
      { lower := 11754, upper := 11899, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good077_checked :
    goodSegmentCheck 157 52 111
      { lower := 11900, upper := 12053, witness := RowWitness.topPrime 11897 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good078_checked :
    goodSegmentCheck 157 52 111
      { lower := 12054, upper := 12205, witness := RowWitness.topPrime 12049 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good079_checked :
    goodSegmentCheck 157 52 111
      { lower := 12206, upper := 12359, witness := RowWitness.topPrime 12203 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row157_good080_checked :
    goodSegmentCheck 157 52 111
      { lower := 12360, upper := 12503, witness := RowWitness.topPrime 12347 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good081_checked :
    goodSegmentCheck 157 52 111
      { lower := 12504, upper := 12659, witness := RowWitness.topPrime 12503 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good082_checked :
    goodSegmentCheck 157 52 111
      { lower := 12660, upper := 12815, witness := RowWitness.topPrime 12659 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good083_checked :
    goodSegmentCheck 157 52 111
      { lower := 12816, upper := 12965, witness := RowWitness.topPrime 12809 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good084_checked :
    goodSegmentCheck 157 52 111
      { lower := 12966, upper := 13115, witness := RowWitness.topPrime 12959 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good085_checked :
    goodSegmentCheck 157 52 111
      { lower := 13116, upper := 13265, witness := RowWitness.topPrime 13109 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good086_checked :
    goodSegmentCheck 157 52 111
      { lower := 13266, upper := 13415, witness := RowWitness.topPrime 13259 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good087_checked :
    goodSegmentCheck 157 52 111
      { lower := 13416, upper := 13567, witness := RowWitness.topPrime 13411 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good088_checked :
    goodSegmentCheck 157 52 111
      { lower := 13568, upper := 13723, witness := RowWitness.topPrime 13567 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good089_checked :
    goodSegmentCheck 157 52 111
      { lower := 13724, upper := 13879, witness := RowWitness.topPrime 13723 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good090_checked :
    goodSegmentCheck 157 52 111
      { lower := 13880, upper := 14035, witness := RowWitness.topPrime 13879 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good091_checked :
    goodSegmentCheck 157 52 111
      { lower := 14036, upper := 14189, witness := RowWitness.topPrime 14033 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good092_checked :
    goodSegmentCheck 157 52 111
      { lower := 14190, upper := 14333, witness := RowWitness.topPrime 14177 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good093_checked :
    goodSegmentCheck 157 52 111
      { lower := 14334, upper := 14483, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good094_checked :
    goodSegmentCheck 157 52 111
      { lower := 14484, upper := 14635, witness := RowWitness.topPrime 14479 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good095_checked :
    goodSegmentCheck 157 52 111
      { lower := 14636, upper := 14789, witness := RowWitness.topPrime 14633 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row157_good096_checked :
    goodSegmentCheck 157 52 111
      { lower := 14790, upper := 14939, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good097_checked :
    goodSegmentCheck 157 52 111
      { lower := 14940, upper := 15095, witness := RowWitness.topPrime 14939 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good098_checked :
    goodSegmentCheck 157 52 111
      { lower := 15096, upper := 15247, witness := RowWitness.topPrime 15091 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good099_checked :
    goodSegmentCheck 157 52 111
      { lower := 15248, upper := 15397, witness := RowWitness.topPrime 15241 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good100_checked :
    goodSegmentCheck 157 52 111
      { lower := 15398, upper := 15547, witness := RowWitness.topPrime 15391 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good101_checked :
    goodSegmentCheck 157 52 111
      { lower := 15548, upper := 15697, witness := RowWitness.topPrime 15541 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good102_checked :
    goodSegmentCheck 157 52 111
      { lower := 15698, upper := 15839, witness := RowWitness.topPrime 15683 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good103_checked :
    goodSegmentCheck 157 52 111
      { lower := 15840, upper := 15979, witness := RowWitness.topPrime 15823 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good104_checked :
    goodSegmentCheck 157 52 111
      { lower := 15980, upper := 16129, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good105_checked :
    goodSegmentCheck 157 52 111
      { lower := 16130, upper := 16283, witness := RowWitness.topPrime 16127 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good106_checked :
    goodSegmentCheck 157 52 111
      { lower := 16284, upper := 16429, witness := RowWitness.topPrime 16273 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good107_checked :
    goodSegmentCheck 157 52 111
      { lower := 16430, upper := 16583, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good108_checked :
    goodSegmentCheck 157 52 111
      { lower := 16584, upper := 16729, witness := RowWitness.topPrime 16573 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good109_checked :
    goodSegmentCheck 157 52 111
      { lower := 16730, upper := 16885, witness := RowWitness.topPrime 16729 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good110_checked :
    goodSegmentCheck 157 52 111
      { lower := 16886, upper := 17039, witness := RowWitness.topPrime 16883 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good111_checked :
    goodSegmentCheck 157 52 111
      { lower := 17040, upper := 17189, witness := RowWitness.topPrime 17033 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row157_good112_checked :
    goodSegmentCheck 157 52 111
      { lower := 17190, upper := 17345, witness := RowWitness.topPrime 17189 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good113_checked :
    goodSegmentCheck 157 52 111
      { lower := 17346, upper := 17497, witness := RowWitness.topPrime 17341 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good114_checked :
    goodSegmentCheck 157 52 111
      { lower := 17498, upper := 17653, witness := RowWitness.topPrime 17497 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good115_checked :
    goodSegmentCheck 157 52 111
      { lower := 17654, upper := 17783, witness := RowWitness.topPrime 17627 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good116_checked :
    goodSegmentCheck 157 52 111
      { lower := 17784, upper := 17939, witness := RowWitness.topPrime 17783 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good117_checked :
    goodSegmentCheck 157 52 111
      { lower := 17940, upper := 18095, witness := RowWitness.topPrime 17939 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good118_checked :
    goodSegmentCheck 157 52 111
      { lower := 18096, upper := 18245, witness := RowWitness.topPrime 18089 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good119_checked :
    goodSegmentCheck 157 52 111
      { lower := 18246, upper := 18389, witness := RowWitness.topPrime 18233 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good120_checked :
    goodSegmentCheck 157 52 111
      { lower := 18390, upper := 18535, witness := RowWitness.topPrime 18379 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good121_checked :
    goodSegmentCheck 157 52 111
      { lower := 18536, upper := 18679, witness := RowWitness.topPrime 18523 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good122_checked :
    goodSegmentCheck 157 52 111
      { lower := 18680, upper := 18835, witness := RowWitness.topPrime 18679 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good123_checked :
    goodSegmentCheck 157 52 111
      { lower := 18836, upper := 18959, witness := RowWitness.topPrime 18803 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good124_checked :
    goodSegmentCheck 157 52 111
      { lower := 18960, upper := 19115, witness := RowWitness.topPrime 18959 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good125_checked :
    goodSegmentCheck 157 52 111
      { lower := 19116, upper := 19243, witness := RowWitness.topPrime 19087 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good126_checked :
    goodSegmentCheck 157 52 111
      { lower := 19244, upper := 19393, witness := RowWitness.topPrime 19237 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good127_checked :
    goodSegmentCheck 157 52 111
      { lower := 19394, upper := 19547, witness := RowWitness.topPrime 19391 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row157_good128_checked :
    goodSegmentCheck 157 52 111
      { lower := 19548, upper := 19699, witness := RowWitness.topPrime 19543 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good129_checked :
    goodSegmentCheck 157 52 111
      { lower := 19700, upper := 19855, witness := RowWitness.topPrime 19699 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good130_checked :
    goodSegmentCheck 157 52 111
      { lower := 19856, upper := 20009, witness := RowWitness.topPrime 19853 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good131_checked :
    goodSegmentCheck 157 52 111
      { lower := 20010, upper := 20153, witness := RowWitness.topPrime 19997 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good132_checked :
    goodSegmentCheck 157 52 111
      { lower := 20154, upper := 20305, witness := RowWitness.topPrime 20149 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good133_checked :
    goodSegmentCheck 157 52 111
      { lower := 20306, upper := 20453, witness := RowWitness.topPrime 20297 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good134_checked :
    goodSegmentCheck 157 52 111
      { lower := 20454, upper := 20599, witness := RowWitness.topPrime 20443 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good135_checked :
    goodSegmentCheck 157 52 111
      { lower := 20600, upper := 20755, witness := RowWitness.topPrime 20599 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good136_checked :
    goodSegmentCheck 157 52 111
      { lower := 20756, upper := 20909, witness := RowWitness.topPrime 20753 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good137_checked :
    goodSegmentCheck 157 52 111
      { lower := 20910, upper := 21059, witness := RowWitness.topPrime 20903 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good138_checked :
    goodSegmentCheck 157 52 111
      { lower := 21060, upper := 21215, witness := RowWitness.topPrime 21059 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good139_checked :
    goodSegmentCheck 157 52 111
      { lower := 21216, upper := 21367, witness := RowWitness.topPrime 21211 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good140_checked :
    goodSegmentCheck 157 52 111
      { lower := 21368, upper := 21503, witness := RowWitness.topPrime 21347 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good141_checked :
    goodSegmentCheck 157 52 111
      { lower := 21504, upper := 21659, witness := RowWitness.topPrime 21503 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good142_checked :
    goodSegmentCheck 157 52 111
      { lower := 21660, upper := 21805, witness := RowWitness.topPrime 21649 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good143_checked :
    goodSegmentCheck 157 52 111
      { lower := 21806, upper := 21959, witness := RowWitness.topPrime 21803 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row157_good144_checked :
    goodSegmentCheck 157 52 111
      { lower := 21960, upper := 22099, witness := RowWitness.topPrime 21943 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good145_checked :
    goodSegmentCheck 157 52 111
      { lower := 22100, upper := 22249, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good146_checked :
    goodSegmentCheck 157 52 111
      { lower := 22250, upper := 22403, witness := RowWitness.topPrime 22247 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good147_checked :
    goodSegmentCheck 157 52 111
      { lower := 22404, upper := 22553, witness := RowWitness.topPrime 22397 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good148_checked :
    goodSegmentCheck 157 52 111
      { lower := 22554, upper := 22705, witness := RowWitness.topPrime 22549 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good149_checked :
    goodSegmentCheck 157 52 111
      { lower := 22706, upper := 22855, witness := RowWitness.topPrime 22699 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good150_checked :
    goodSegmentCheck 157 52 111
      { lower := 22856, upper := 23009, witness := RowWitness.topPrime 22853 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good151_checked :
    goodSegmentCheck 157 52 111
      { lower := 23010, upper := 23159, witness := RowWitness.topPrime 23003 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good152_checked :
    goodSegmentCheck 157 52 111
      { lower := 23160, upper := 23315, witness := RowWitness.topPrime 23159 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good153_checked :
    goodSegmentCheck 157 52 111
      { lower := 23316, upper := 23467, witness := RowWitness.topPrime 23311 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good154_checked :
    goodSegmentCheck 157 52 111
      { lower := 23468, upper := 23615, witness := RowWitness.topPrime 23459 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good155_checked :
    goodSegmentCheck 157 52 111
      { lower := 23616, upper := 23765, witness := RowWitness.topPrime 23609 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good156_checked :
    goodSegmentCheck 157 52 111
      { lower := 23766, upper := 23917, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good157_checked :
    goodSegmentCheck 157 52 111
      { lower := 23918, upper := 24073, witness := RowWitness.topPrime 23917 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good158_checked :
    goodSegmentCheck 157 52 111
      { lower := 24074, upper := 24227, witness := RowWitness.topPrime 24071 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good159_checked :
    goodSegmentCheck 157 52 111
      { lower := 24228, upper := 24379, witness := RowWitness.topPrime 24223 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row157_good160_checked :
    goodSegmentCheck 157 52 111
      { lower := 24380, upper := 24523, witness := RowWitness.topPrime 24379 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good161_checked :
    goodSegmentCheck 157 52 111
      { lower := 24576, upper := 24721, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good162_checked :
    goodSegmentCheck 157 52 111
      { lower := 25000, upper := 25120, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good163_checked :
    goodSegmentCheck 157 52 111
      { lower := 25281, upper := 25361, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good164_checked :
    goodSegmentCheck 157 52 111
      { lower := 26364, upper := 26400, witness := RowWitness.topPrime 26357 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good165_checked :
    goodSegmentCheck 157 52 111
      { lower := 26411, upper := 26563, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good166_checked :
    goodSegmentCheck 157 52 111
      { lower := 26564, upper := 26567, witness := RowWitness.topPrime 26561 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good167_checked :
    goodSegmentCheck 157 52 111
      { lower := 26624, upper := 26753, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good168_checked :
    goodSegmentCheck 157 52 111
      { lower := 26754, upper := 26780, witness := RowWitness.topPrime 26737 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good169_checked :
    goodSegmentCheck 157 52 111
      { lower := 27556, upper := 27592, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good170_checked :
    goodSegmentCheck 157 52 111
      { lower := 28125, upper := 28279, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good171_checked :
    goodSegmentCheck 157 52 111
      { lower := 28280, upper := 28281, witness := RowWitness.topPrime 28279 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good172_checked :
    goodSegmentCheck 157 52 111
      { lower := 28561, upper := 28587, witness := RowWitness.topPrime 28559 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good173_checked :
    goodSegmentCheck 157 52 111
      { lower := 28672, upper := 28825, witness := RowWitness.topPrime 28669 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good174_checked :
    goodSegmentCheck 157 52 111
      { lower := 28826, upper := 28873, witness := RowWitness.topPrime 28817 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good175_checked :
    goodSegmentCheck 157 52 111
      { lower := 29791, upper := 29924, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row157_good176_checked :
    goodSegmentCheck 157 52 111
      { lower := 31213, upper := 31349, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good177_checked :
    goodSegmentCheck 157 52 111
      { lower := 31350, upper := 31406, witness := RowWitness.topPrime 31337 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good178_checked :
    goodSegmentCheck 157 52 111
      { lower := 31423, upper := 31485, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good179_checked :
    goodSegmentCheck 157 52 111
      { lower := 31827, upper := 31840, witness := RowWitness.topPrime 31817 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good180_checked :
    goodSegmentCheck 157 52 111
      { lower := 31974, upper := 31983, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good181_checked :
    goodSegmentCheck 157 52 111
      { lower := 32805, upper := 32924, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good182_checked :
    goodSegmentCheck 157 52 111
      { lower := 33614, upper := 33645, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good183_checked :
    goodSegmentCheck 157 52 111
      { lower := 33708, upper := 33770, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good184_checked :
    goodSegmentCheck 157 52 111
      { lower := 34322, upper := 34475, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good185_checked :
    goodSegmentCheck 157 52 111
      { lower := 34476, upper := 34547, witness := RowWitness.topPrime 34471 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good186_checked :
    goodSegmentCheck 157 52 111
      { lower := 36517, upper := 36653, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good187_checked :
    goodSegmentCheck 157 52 111
      { lower := 36654, upper := 36657, witness := RowWitness.topPrime 36653 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good188_checked :
    goodSegmentCheck 157 52 111
      { lower := 37303, upper := 37366, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good189_checked :
    goodSegmentCheck 157 52 111
      { lower := 37446, upper := 37459, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good190_checked :
    goodSegmentCheck 157 52 111
      { lower := 37500, upper := 37649, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good191_checked :
    goodSegmentCheck 157 52 111
      { lower := 37650, upper := 37694, witness := RowWitness.topPrime 37649 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row157_good192_checked :
    goodSegmentCheck 157 52 111
      { lower := 38307, upper := 38447, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good193_checked :
    goodSegmentCheck 157 52 111
      { lower := 39366, upper := 39460, witness := RowWitness.topPrime 39359 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good194_checked :
    goodSegmentCheck 157 52 111
      { lower := 40401, upper := 40484, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good195_checked :
    goodSegmentCheck 157 52 111
      { lower := 40931, upper := 41083, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good196_checked :
    goodSegmentCheck 157 52 111
      { lower := 41084, upper := 41087, witness := RowWitness.topPrime 41081 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good197_checked :
    goodSegmentCheck 157 52 111
      { lower := 45369, upper := 45409, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good198_checked :
    goodSegmentCheck 157 52 111
      { lower := 45927, upper := 45952, witness := RowWitness.topPrime 45893 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good199_checked :
    goodSegmentCheck 157 52 111
      { lower := 47526, upper := 47677, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good200_checked :
    goodSegmentCheck 157 52 111
      { lower := 47678, upper := 47680, witness := RowWitness.topPrime 47659 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good201_checked :
    goodSegmentCheck 157 52 111
      { lower := 48013, upper := 48117, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good202_checked :
    goodSegmentCheck 157 52 111
      { lower := 48373, upper := 48379, witness := RowWitness.topPrime 48371 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good203_checked :
    goodSegmentCheck 157 52 111
      { lower := 48387, upper := 48529, witness := RowWitness.topPrime 48383 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good204_checked :
    goodSegmentCheck 157 52 111
      { lower := 48778, upper := 48824, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good205_checked :
    goodSegmentCheck 157 52 111
      { lower := 49152, upper := 49286, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good206_checked :
    goodSegmentCheck 157 52 111
      { lower := 50421, upper := 50566, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good207_checked :
    goodSegmentCheck 157 52 111
      { lower := 51076, upper := 51161, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row157_good208_checked :
    goodSegmentCheck 157 52 111
      { lower := 56307, upper := 56325, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good209_checked :
    goodSegmentCheck 157 52 111
      { lower := 56454, upper := 56463, witness := RowWitness.topPrime 56453 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good210_checked :
    goodSegmentCheck 157 52 111
      { lower := 57245, upper := 57278, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good211_checked :
    goodSegmentCheck 157 52 111
      { lower := 57344, upper := 57401, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good212_checked :
    goodSegmentCheck 157 52 111
      { lower := 62500, upper := 62566, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good213_checked :
    goodSegmentCheck 157 52 111
      { lower := 65610, upper := 65692, witness := RowWitness.topPrime 65609 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good214_checked :
    goodSegmentCheck 157 52 111
      { lower := 68644, upper := 68795, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good215_checked :
    goodSegmentCheck 157 52 111
      { lower := 68796, upper := 68800, witness := RowWitness.topPrime 68791 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good216_checked :
    goodSegmentCheck 157 52 111
      { lower := 68921, upper := 69046, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good217_checked :
    goodSegmentCheck 157 52 111
      { lower := 71289, upper := 71443, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good218_checked :
    goodSegmentCheck 157 52 111
      { lower := 71444, upper := 71445, witness := RowWitness.topPrime 71443 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good219_checked :
    goodSegmentCheck 157 52 111
      { lower := 73205, upper := 73323, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good220_checked :
    goodSegmentCheck 157 52 111
      { lower := 85805, upper := 85839, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good221_checked :
    goodSegmentCheck 157 52 111
      { lower := 89383, upper := 89529, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good222_checked :
    goodSegmentCheck 157 52 111
      { lower := 93845, upper := 93906, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good223_checked :
    goodSegmentCheck 157 52 111
      { lower := 98415, upper := 98460, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row157_good224_checked :
    goodSegmentCheck 157 52 111
      { lower := 137842, upper := 137937, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good225_checked :
    goodSegmentCheck 157 52 111
      { lower := 148955, upper := 149033, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good225_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row157_goods_checked :
    row157.goods.all (goodSegmentCheck row157.height.i row157.height.r row157.height.s) = true := by
  change row157_goods.all (goodSegmentCheck 157 52 111) = true
  simp only [row157_goods, List.all_cons, List.all_nil,
    row157_good000_checked,
    row157_good001_checked,
    row157_good002_checked,
    row157_good003_checked,
    row157_good004_checked,
    row157_good005_checked,
    row157_good006_checked,
    row157_good007_checked,
    row157_good008_checked,
    row157_good009_checked,
    row157_good010_checked,
    row157_good011_checked,
    row157_good012_checked,
    row157_good013_checked,
    row157_good014_checked,
    row157_good015_checked,
    row157_good016_checked,
    row157_good017_checked,
    row157_good018_checked,
    row157_good019_checked,
    row157_good020_checked,
    row157_good021_checked,
    row157_good022_checked,
    row157_good023_checked,
    row157_good024_checked,
    row157_good025_checked,
    row157_good026_checked,
    row157_good027_checked,
    row157_good028_checked,
    row157_good029_checked,
    row157_good030_checked,
    row157_good031_checked,
    row157_good032_checked,
    row157_good033_checked,
    row157_good034_checked,
    row157_good035_checked,
    row157_good036_checked,
    row157_good037_checked,
    row157_good038_checked,
    row157_good039_checked,
    row157_good040_checked,
    row157_good041_checked,
    row157_good042_checked,
    row157_good043_checked,
    row157_good044_checked,
    row157_good045_checked,
    row157_good046_checked,
    row157_good047_checked,
    row157_good048_checked,
    row157_good049_checked,
    row157_good050_checked,
    row157_good051_checked,
    row157_good052_checked,
    row157_good053_checked,
    row157_good054_checked,
    row157_good055_checked,
    row157_good056_checked,
    row157_good057_checked,
    row157_good058_checked,
    row157_good059_checked,
    row157_good060_checked,
    row157_good061_checked,
    row157_good062_checked,
    row157_good063_checked,
    row157_good064_checked,
    row157_good065_checked,
    row157_good066_checked,
    row157_good067_checked,
    row157_good068_checked,
    row157_good069_checked,
    row157_good070_checked,
    row157_good071_checked,
    row157_good072_checked,
    row157_good073_checked,
    row157_good074_checked,
    row157_good075_checked,
    row157_good076_checked,
    row157_good077_checked,
    row157_good078_checked,
    row157_good079_checked,
    row157_good080_checked,
    row157_good081_checked,
    row157_good082_checked,
    row157_good083_checked,
    row157_good084_checked,
    row157_good085_checked,
    row157_good086_checked,
    row157_good087_checked,
    row157_good088_checked,
    row157_good089_checked,
    row157_good090_checked,
    row157_good091_checked,
    row157_good092_checked,
    row157_good093_checked,
    row157_good094_checked,
    row157_good095_checked,
    row157_good096_checked,
    row157_good097_checked,
    row157_good098_checked,
    row157_good099_checked,
    row157_good100_checked,
    row157_good101_checked,
    row157_good102_checked,
    row157_good103_checked,
    row157_good104_checked,
    row157_good105_checked,
    row157_good106_checked,
    row157_good107_checked,
    row157_good108_checked,
    row157_good109_checked,
    row157_good110_checked,
    row157_good111_checked,
    row157_good112_checked,
    row157_good113_checked,
    row157_good114_checked,
    row157_good115_checked,
    row157_good116_checked,
    row157_good117_checked,
    row157_good118_checked,
    row157_good119_checked,
    row157_good120_checked,
    row157_good121_checked,
    row157_good122_checked,
    row157_good123_checked,
    row157_good124_checked,
    row157_good125_checked,
    row157_good126_checked,
    row157_good127_checked,
    row157_good128_checked,
    row157_good129_checked,
    row157_good130_checked,
    row157_good131_checked,
    row157_good132_checked,
    row157_good133_checked,
    row157_good134_checked,
    row157_good135_checked,
    row157_good136_checked,
    row157_good137_checked,
    row157_good138_checked,
    row157_good139_checked,
    row157_good140_checked,
    row157_good141_checked,
    row157_good142_checked,
    row157_good143_checked,
    row157_good144_checked,
    row157_good145_checked,
    row157_good146_checked,
    row157_good147_checked,
    row157_good148_checked,
    row157_good149_checked,
    row157_good150_checked,
    row157_good151_checked,
    row157_good152_checked,
    row157_good153_checked,
    row157_good154_checked,
    row157_good155_checked,
    row157_good156_checked,
    row157_good157_checked,
    row157_good158_checked,
    row157_good159_checked,
    row157_good160_checked,
    row157_good161_checked,
    row157_good162_checked,
    row157_good163_checked,
    row157_good164_checked,
    row157_good165_checked,
    row157_good166_checked,
    row157_good167_checked,
    row157_good168_checked,
    row157_good169_checked,
    row157_good170_checked,
    row157_good171_checked,
    row157_good172_checked,
    row157_good173_checked,
    row157_good174_checked,
    row157_good175_checked,
    row157_good176_checked,
    row157_good177_checked,
    row157_good178_checked,
    row157_good179_checked,
    row157_good180_checked,
    row157_good181_checked,
    row157_good182_checked,
    row157_good183_checked,
    row157_good184_checked,
    row157_good185_checked,
    row157_good186_checked,
    row157_good187_checked,
    row157_good188_checked,
    row157_good189_checked,
    row157_good190_checked,
    row157_good191_checked,
    row157_good192_checked,
    row157_good193_checked,
    row157_good194_checked,
    row157_good195_checked,
    row157_good196_checked,
    row157_good197_checked,
    row157_good198_checked,
    row157_good199_checked,
    row157_good200_checked,
    row157_good201_checked,
    row157_good202_checked,
    row157_good203_checked,
    row157_good204_checked,
    row157_good205_checked,
    row157_good206_checked,
    row157_good207_checked,
    row157_good208_checked,
    row157_good209_checked,
    row157_good210_checked,
    row157_good211_checked,
    row157_good212_checked,
    row157_good213_checked,
    row157_good214_checked,
    row157_good215_checked,
    row157_good216_checked,
    row157_good217_checked,
    row157_good218_checked,
    row157_good219_checked,
    row157_good220_checked,
    row157_good221_checked,
    row157_good222_checked,
    row157_good223_checked,
    row157_good224_checked,
    row157_good225_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row157_registered :
    decide (row157.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row157_small_checked :
    coverCheck (2 * row157.height.i + 2) (row157.height.i * (row157.height.i - 1) - 1)
      (row157.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row157_layerCover_checked :
    coverCheck (row157.height.i * (row157.height.i - 1)) (row157.height.n0 - 1)
      (row157.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row157_bounds : List NatInterval :=
  [(316, 469), (470, 623), (624, 775), (776, 929), (930, 1085), (1086, 1225), (1226, 1379), (1380, 1529), (1530, 1679), (1680, 1825), (1826, 1979), (1980, 2135), (2136, 2287), (2288, 2443), (2444, 2597), (2598, 2749), (2750, 2905), (2906, 3059), (3060, 3205), (3206, 3359), (3360, 3515), (3516, 3667), (3668, 3815), (3816, 3959), (3960, 4103), (4104, 4255), (4256, 4409), (4410, 4565), (4566, 4717), (4718, 4859), (4860, 4987), (4988, 5143), (5144, 5275), (5276, 5429), (5430, 5575), (5576, 5729), (5730, 5873), (5874, 6025), (6026, 6167), (6168, 6319), (6320, 6473), (6474, 6629), (6630, 6775), (6776, 6919), (6920, 7073), (7074, 7225), (7226, 7375), (7376, 7525), (7526, 7679), (7680, 7829), (7830, 7985), (7986, 8119), (8120, 8273), (8274, 8429), (8430, 8585), (8586, 8737), (8738, 8893), (8894, 9049), (9050, 9205), (9206, 9359), (9360, 9505), (9506, 9653), (9654, 9805), (9806, 9959), (9960, 10105), (10106, 10259), (10260, 10415), (10416, 10555), (10556, 10687), (10688, 10843), (10844, 10993), (10994, 11149), (11150, 11305), (11306, 11455), (11456, 11603), (11604, 11753), (11754, 11899), (11900, 12053), (12054, 12205), (12206, 12359), (12360, 12503), (12504, 12659), (12660, 12815), (12816, 12965), (12966, 13115), (13116, 13265), (13266, 13415), (13416, 13567), (13568, 13723), (13724, 13879), (13880, 14035), (14036, 14189), (14190, 14333), (14334, 14483), (14484, 14635), (14636, 14789), (14790, 14939), (14940, 15095), (15096, 15247), (15248, 15397), (15398, 15547), (15548, 15697), (15698, 15839), (15840, 15979), (15980, 16129), (16130, 16283), (16284, 16429), (16430, 16583), (16584, 16729), (16730, 16885), (16886, 17039), (17040, 17189), (17190, 17345), (17346, 17497), (17498, 17653), (17654, 17783), (17784, 17939), (17940, 18095), (18096, 18245), (18246, 18389), (18390, 18535), (18536, 18679), (18680, 18835), (18836, 18959), (18960, 19115), (19116, 19243), (19244, 19393), (19394, 19547), (19548, 19699), (19700, 19855), (19856, 20009), (20010, 20153), (20154, 20305), (20306, 20453), (20454, 20599), (20600, 20755), (20756, 20909), (20910, 21059), (21060, 21215), (21216, 21367), (21368, 21503), (21504, 21659), (21660, 21805), (21806, 21959), (21960, 22099), (22100, 22249), (22250, 22403), (22404, 22553), (22554, 22705), (22706, 22855), (22856, 23009), (23010, 23159), (23160, 23315), (23316, 23467), (23468, 23615), (23616, 23765), (23766, 23917), (23918, 24073), (24074, 24227), (24228, 24379), (24380, 24523), (24576, 24721), (25000, 25120), (25281, 25361), (26364, 26400), (26411, 26563), (26564, 26567), (26624, 26753), (26754, 26780), (27556, 27592), (28125, 28279), (28280, 28281), (28561, 28587), (28672, 28825), (28826, 28873), (29791, 29924), (31213, 31349), (31350, 31406), (31423, 31485), (31827, 31840), (31974, 31983), (32805, 32924), (33614, 33645), (33708, 33770), (34322, 34475), (34476, 34547), (36517, 36653), (36654, 36657), (37303, 37366), (37446, 37459), (37500, 37649), (37650, 37694), (38307, 38447), (39366, 39460), (40401, 40484), (40931, 41083), (41084, 41087), (45369, 45409), (45927, 45952), (47526, 47677), (47678, 47680), (48013, 48117), (48373, 48379), (48387, 48529), (48778, 48824), (49152, 49286), (50421, 50566), (51076, 51161), (56307, 56325), (56454, 56463), (57245, 57278), (57344, 57401), (62500, 62566), (65610, 65692), (68644, 68795), (68796, 68800), (68921, 69046), (71289, 71443), (71444, 71445), (73205, 73323), (85805, 85839), (89383, 89529), (93845, 93906), (98415, 98460), (137842, 137937), (148955, 149033)]

theorem row157_bounds_eq : row157.goods.map goodSegmentBounds = row157_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row157_layer000_intervals : List ColouredInterval :=
  [(2, 24576, 24732), (2, 26624, 26780), (2, 24576, 24732), (2, 28672, 28828), (2, 32768, 32924), (2, 36864, 37020), (2, 40960, 41116), (2, 45056, 45212), (2, 24576, 24732), (2, 32768, 32924), (2, 40960, 41116), (2, 32768, 32924), (2, 32768, 32924), (3, 26244, 26400), (3, 28431, 28587), (3, 26244, 26400), (3, 32805, 32961), (3, 39366, 39522), (3, 45927, 46083), (3, 39366, 39522), (5, 25000, 25156), (5, 28125, 28281), (5, 31250, 31406), (5, 34375, 34531), (5, 37500, 37656), (5, 40625, 40781), (5, 31250, 31406), (5, 46875, 47031), (7, 26411, 26567), (7, 28812, 28968), (7, 31213, 31369), (7, 33614, 33770), (11, 29282, 29438), (11, 43923, 44079), (13, 26364, 26520), (13, 28561, 28717), (13, 28561, 28717), (17, 24565, 24721), (17, 29478, 29634), (17, 34391, 34547), (17, 39304, 39460), (17, 44217, 44373), (19, 27436, 27592), (19, 34295, 34451), (19, 41154, 41310), (19, 48013, 48169), (23, 36501, 36657), (23, 48668, 48824), (29, 24492, 24545), (29, 48778, 48934), (31, 29791, 29947), (47, 26508, 26664), (47, 28717, 28873), (53, 25281, 25437), (53, 28090, 28246), (53, 30899, 31055), (53, 33708, 33864), (53, 36517, 36673), (59, 24492, 24523), (59, 27848, 28004), (59, 31329, 31485), (59, 34810, 34966), (59, 38291, 38447), (59, 41772, 41928), (59, 45253, 45409), (61, 26047, 26203), (61, 29768, 29924), (61, 33489, 33645), (61, 37210, 37366), (61, 40931, 41087), (61, 44652, 44808), (61, 48373, 48529), (67, 26934, 27090), (67, 31423, 31579), (67, 35912, 36068), (67, 40401, 40557), (67, 44890, 45046), (71, 25205, 25361), (71, 30246, 30402), (71, 35287, 35443), (71, 40328, 40484), (71, 45369, 45525), (73, 26645, 26801), (73, 31974, 32130), (73, 37303, 37459), (73, 42632, 42788), (73, 47961, 48117), (79, 24964, 25120), (79, 31205, 31361), (79, 37446, 37602), (79, 43687, 43843), (83, 27556, 27712), (83, 34445, 34601), (83, 41334, 41490), (83, 48223, 48379), (89, 31684, 31840), (89, 39605, 39761), (89, 47526, 47682), (97, 28227, 28383), (97, 37636, 37792), (97, 47045, 47201), (101, 30603, 30759), (101, 40804, 40960), (103, 31827, 31983), (103, 42436, 42592), (107, 34347, 34503), (107, 45796, 45952), (109, 35643, 35799), (109, 47524, 47680), (113, 25538, 25694), (113, 38307, 38463), (127, 32258, 32414), (127, 48387, 48543), (131, 34322, 34478), (137, 37538, 37694), (139, 38642, 38798), (149, 44402, 44558), (151, 45602, 45758)]

def row157_layer000_block000 : List ColouredInterval :=
  [(2, 24576, 24732), (2, 26624, 26780), (2, 24576, 24732), (2, 28672, 28828), (2, 32768, 32924), (2, 36864, 37020), (2, 40960, 41116), (2, 45056, 45212), (2, 24576, 24732), (2, 32768, 32924), (2, 40960, 41116), (2, 32768, 32924), (2, 32768, 32924), (3, 26244, 26400), (3, 28431, 28587), (3, 26244, 26400)]

def row157_layer000_block001 : List ColouredInterval :=
  [(3, 32805, 32961), (3, 39366, 39522), (3, 45927, 46083), (3, 39366, 39522), (5, 25000, 25156), (5, 28125, 28281), (5, 31250, 31406), (5, 34375, 34531), (5, 37500, 37656), (5, 40625, 40781), (5, 31250, 31406), (5, 46875, 47031), (7, 26411, 26567), (7, 28812, 28968), (7, 31213, 31369), (7, 33614, 33770)]

def row157_layer000_block002 : List ColouredInterval :=
  [(11, 29282, 29438), (11, 43923, 44079), (13, 26364, 26520), (13, 28561, 28717), (13, 28561, 28717), (17, 24565, 24721), (17, 29478, 29634), (17, 34391, 34547), (17, 39304, 39460), (17, 44217, 44373), (19, 27436, 27592), (19, 34295, 34451), (19, 41154, 41310), (19, 48013, 48169), (23, 36501, 36657), (23, 48668, 48824)]

def row157_layer000_block003 : List ColouredInterval :=
  [(29, 24492, 24545), (29, 48778, 48934), (31, 29791, 29947), (47, 26508, 26664), (47, 28717, 28873), (53, 25281, 25437), (53, 28090, 28246), (53, 30899, 31055), (53, 33708, 33864), (53, 36517, 36673), (59, 24492, 24523), (59, 27848, 28004), (59, 31329, 31485), (59, 34810, 34966), (59, 38291, 38447), (59, 41772, 41928)]

def row157_layer000_block004 : List ColouredInterval :=
  [(59, 45253, 45409), (61, 26047, 26203), (61, 29768, 29924), (61, 33489, 33645), (61, 37210, 37366), (61, 40931, 41087), (61, 44652, 44808), (61, 48373, 48529), (67, 26934, 27090), (67, 31423, 31579), (67, 35912, 36068), (67, 40401, 40557), (67, 44890, 45046), (71, 25205, 25361), (71, 30246, 30402), (71, 35287, 35443)]

def row157_layer000_block005 : List ColouredInterval :=
  [(71, 40328, 40484), (71, 45369, 45525), (73, 26645, 26801), (73, 31974, 32130), (73, 37303, 37459), (73, 42632, 42788), (73, 47961, 48117), (79, 24964, 25120), (79, 31205, 31361), (79, 37446, 37602), (79, 43687, 43843), (83, 27556, 27712), (83, 34445, 34601), (83, 41334, 41490), (83, 48223, 48379), (89, 31684, 31840)]

def row157_layer000_block006 : List ColouredInterval :=
  [(89, 39605, 39761), (89, 47526, 47682), (97, 28227, 28383), (97, 37636, 37792), (97, 47045, 47201), (101, 30603, 30759), (101, 40804, 40960), (103, 31827, 31983), (103, 42436, 42592), (107, 34347, 34503), (107, 45796, 45952), (109, 35643, 35799), (109, 47524, 47680), (113, 25538, 25694), (113, 38307, 38463), (127, 32258, 32414)]

def row157_layer000_block007 : List ColouredInterval :=
  [(127, 48387, 48543), (131, 34322, 34478), (137, 37538, 37694), (139, 38642, 38798), (149, 44402, 44558), (151, 45602, 45758)]

def row157_layer000_chunks : List (List ColouredInterval) :=
  [row157_layer000_block000, row157_layer000_block001, row157_layer000_block002, row157_layer000_block003, row157_layer000_block004, row157_layer000_block005, row157_layer000_block006, row157_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row157_layer000_arithmetic : LayerArithmeticValid row157.height { lower := 24492, upper := 48984, M := 13 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row157_layer000_enumeration :
    activePowerIntervalList 157 13 24492 48984 = row157_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row157_layer000_pairs000 :
    row157_layer000_block000.all (fun I => row157_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row157_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row157_layer000_pairs001 :
    row157_layer000_block001.all (fun I => row157_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row157_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row157_layer000_pairs002 :
    row157_layer000_block002.all (fun I => row157_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row157_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row157_layer000_pairs003 :
    row157_layer000_block003.all (fun I => row157_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row157_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row157_layer000_pairs004 :
    row157_layer000_block004.all (fun I => row157_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row157_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row157_layer000_pairs005 :
    row157_layer000_block005.all (fun I => row157_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row157_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row157_layer000_pairs006 :
    row157_layer000_block006.all (fun I => row157_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row157_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row157_layer000_pairs007 :
    row157_layer000_block007.all (fun I => row157_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row157_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row157_layer000_chunks_eq : row157_layer000_chunks.flatten = row157_layer000_intervals := by
  rfl

theorem row157_layer000_pairs : pairCoverCheck row157_layer000_intervals row157_bounds = true := by
  apply pairCoverCheck_of_chunks row157_layer000_chunks_eq
  intro block hblock
  simp only [row157_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row157_layer000_pairs000
  · exact row157_layer000_pairs001
  · exact row157_layer000_pairs002
  · exact row157_layer000_pairs003
  · exact row157_layer000_pairs004
  · exact row157_layer000_pairs005
  · exact row157_layer000_pairs006
  · exact row157_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row157_layer000_checked :
    coverLayerCheck row157.height row157.goods { lower := 24492, upper := 48984, M := 13 } = true := by
  exact coverLayerCheck_of_parts row157_layer000_arithmetic row157_layer000_enumeration row157_bounds_eq row157_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_layer000_checked
