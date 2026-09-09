import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def row171_height : HeightCertificateDatum := { i := 171, r := 56, s := 121, n0Power10 := 7 }

def row171_goods : List GoodSegment := [
  { lower := 344, upper := 507, witness := RowWitness.topPrime 337 },
  { lower := 508, upper := 673, witness := RowWitness.topPrime 503 },
  { lower := 674, upper := 843, witness := RowWitness.topPrime 673 },
  { lower := 844, upper := 1009, witness := RowWitness.topPrime 839 },
  { lower := 1010, upper := 1179, witness := RowWitness.topPrime 1009 },
  { lower := 1180, upper := 1341, witness := RowWitness.topPrime 1171 },
  { lower := 1342, upper := 1497, witness := RowWitness.topPrime 1327 },
  { lower := 1498, upper := 1663, witness := RowWitness.topPrime 1493 },
  { lower := 1664, upper := 1833, witness := RowWitness.topPrime 1663 },
  { lower := 1834, upper := 2001, witness := RowWitness.topPrime 1831 },
  { lower := 2002, upper := 2169, witness := RowWitness.topPrime 1999 },
  { lower := 2170, upper := 2331, witness := RowWitness.topPrime 2161 },
  { lower := 2332, upper := 2481, witness := RowWitness.topPrime 2311 },
  { lower := 2482, upper := 2647, witness := RowWitness.topPrime 2477 },
  { lower := 2648, upper := 2817, witness := RowWitness.topPrime 2647 },
  { lower := 2818, upper := 2973, witness := RowWitness.topPrime 2803 },
  { lower := 2974, upper := 3141, witness := RowWitness.topPrime 2971 },
  { lower := 3142, upper := 3307, witness := RowWitness.topPrime 3137 },
  { lower := 3308, upper := 3477, witness := RowWitness.topPrime 3307 },
  { lower := 3478, upper := 3639, witness := RowWitness.topPrime 3469 },
  { lower := 3640, upper := 3807, witness := RowWitness.topPrime 3637 },
  { lower := 3808, upper := 3973, witness := RowWitness.topPrime 3803 },
  { lower := 3974, upper := 4137, witness := RowWitness.topPrime 3967 },
  { lower := 4138, upper := 4303, witness := RowWitness.topPrime 4133 },
  { lower := 4304, upper := 4467, witness := RowWitness.topPrime 4297 },
  { lower := 4468, upper := 4633, witness := RowWitness.topPrime 4463 },
  { lower := 4634, upper := 4791, witness := RowWitness.topPrime 4621 },
  { lower := 4792, upper := 4959, witness := RowWitness.topPrime 4789 },
  { lower := 4960, upper := 5127, witness := RowWitness.topPrime 4957 },
  { lower := 5128, upper := 5289, witness := RowWitness.topPrime 5119 },
  { lower := 5290, upper := 5451, witness := RowWitness.topPrime 5281 },
  { lower := 5452, upper := 5619, witness := RowWitness.topPrime 5449 },
  { lower := 5620, upper := 5761, witness := RowWitness.topPrime 5591 },
  { lower := 5762, upper := 5919, witness := RowWitness.topPrime 5749 },
  { lower := 5920, upper := 6073, witness := RowWitness.topPrime 5903 },
  { lower := 6074, upper := 6243, witness := RowWitness.topPrime 6073 },
  { lower := 6244, upper := 6399, witness := RowWitness.topPrime 6229 },
  { lower := 6400, upper := 6567, witness := RowWitness.topPrime 6397 },
  { lower := 6568, upper := 6733, witness := RowWitness.topPrime 6563 },
  { lower := 6734, upper := 6903, witness := RowWitness.topPrime 6733 },
  { lower := 6904, upper := 7069, witness := RowWitness.topPrime 6899 },
  { lower := 7070, upper := 7239, witness := RowWitness.topPrime 7069 },
  { lower := 7240, upper := 7407, witness := RowWitness.topPrime 7237 },
  { lower := 7408, upper := 7563, witness := RowWitness.topPrime 7393 },
  { lower := 7564, upper := 7731, witness := RowWitness.topPrime 7561 },
  { lower := 7732, upper := 7897, witness := RowWitness.topPrime 7727 },
  { lower := 7898, upper := 8053, witness := RowWitness.topPrime 7883 },
  { lower := 8054, upper := 8223, witness := RowWitness.topPrime 8053 },
  { lower := 8224, upper := 8391, witness := RowWitness.topPrime 8221 },
  { lower := 8392, upper := 8559, witness := RowWitness.topPrime 8389 },
  { lower := 8560, upper := 8713, witness := RowWitness.topPrime 8543 },
  { lower := 8714, upper := 8883, witness := RowWitness.topPrime 8713 },
  { lower := 8884, upper := 9037, witness := RowWitness.topPrime 8867 },
  { lower := 9038, upper := 9199, witness := RowWitness.topPrime 9029 },
  { lower := 9200, upper := 9369, witness := RowWitness.topPrime 9199 },
  { lower := 9370, upper := 9519, witness := RowWitness.topPrime 9349 },
  { lower := 9520, upper := 9681, witness := RowWitness.topPrime 9511 },
  { lower := 9682, upper := 9849, witness := RowWitness.topPrime 9679 },
  { lower := 9850, upper := 10009, witness := RowWitness.topPrime 9839 },
  { lower := 10010, upper := 10179, witness := RowWitness.topPrime 10009 },
  { lower := 10180, upper := 10347, witness := RowWitness.topPrime 10177 },
  { lower := 10348, upper := 10513, witness := RowWitness.topPrime 10343 },
  { lower := 10514, upper := 10683, witness := RowWitness.topPrime 10513 },
  { lower := 10684, upper := 10837, witness := RowWitness.topPrime 10667 },
  { lower := 10838, upper := 11007, witness := RowWitness.topPrime 10837 },
  { lower := 11008, upper := 11173, witness := RowWitness.topPrime 11003 },
  { lower := 11174, upper := 11343, witness := RowWitness.topPrime 11173 },
  { lower := 11344, upper := 11499, witness := RowWitness.topPrime 11329 },
  { lower := 11500, upper := 11667, witness := RowWitness.topPrime 11497 },
  { lower := 11668, upper := 11827, witness := RowWitness.topPrime 11657 },
  { lower := 11828, upper := 11997, witness := RowWitness.topPrime 11827 },
  { lower := 11998, upper := 12157, witness := RowWitness.topPrime 11987 },
  { lower := 12158, upper := 12327, witness := RowWitness.topPrime 12157 },
  { lower := 12328, upper := 12493, witness := RowWitness.topPrime 12323 },
  { lower := 12494, upper := 12661, witness := RowWitness.topPrime 12491 },
  { lower := 12662, upper := 12829, witness := RowWitness.topPrime 12659 },
  { lower := 12830, upper := 12999, witness := RowWitness.topPrime 12829 },
  { lower := 13000, upper := 13153, witness := RowWitness.topPrime 12983 },
  { lower := 13154, upper := 13321, witness := RowWitness.topPrime 13151 },
  { lower := 13322, upper := 13483, witness := RowWitness.topPrime 13313 },
  { lower := 13484, upper := 13647, witness := RowWitness.topPrime 13477 },
  { lower := 13648, upper := 13803, witness := RowWitness.topPrime 13633 },
  { lower := 13804, upper := 13969, witness := RowWitness.topPrime 13799 },
  { lower := 13970, upper := 14137, witness := RowWitness.topPrime 13967 },
  { lower := 14138, upper := 14277, witness := RowWitness.topPrime 14107 },
  { lower := 14278, upper := 14421, witness := RowWitness.topPrime 14251 },
  { lower := 14422, upper := 14589, witness := RowWitness.topPrime 14419 },
  { lower := 14590, upper := 14733, witness := RowWitness.topPrime 14563 },
  { lower := 14734, upper := 14901, witness := RowWitness.topPrime 14731 },
  { lower := 14902, upper := 15067, witness := RowWitness.topPrime 14897 },
  { lower := 15068, upper := 15231, witness := RowWitness.topPrime 15061 },
  { lower := 15232, upper := 15397, witness := RowWitness.topPrime 15227 },
  { lower := 15398, upper := 15561, witness := RowWitness.topPrime 15391 },
  { lower := 15562, upper := 15729, witness := RowWitness.topPrime 15559 },
  { lower := 15730, upper := 15897, witness := RowWitness.topPrime 15727 },
  { lower := 15898, upper := 16059, witness := RowWitness.topPrime 15889 },
  { lower := 16060, upper := 16227, witness := RowWitness.topPrime 16057 },
  { lower := 16228, upper := 16393, witness := RowWitness.topPrime 16223 },
  { lower := 16394, upper := 16551, witness := RowWitness.topPrime 16381 },
  { lower := 16552, upper := 16717, witness := RowWitness.topPrime 16547 },
  { lower := 16718, upper := 16873, witness := RowWitness.topPrime 16703 },
  { lower := 16874, upper := 17041, witness := RowWitness.topPrime 16871 },
  { lower := 17042, upper := 17211, witness := RowWitness.topPrime 17041 },
  { lower := 17212, upper := 17379, witness := RowWitness.topPrime 17209 },
  { lower := 17380, upper := 17547, witness := RowWitness.topPrime 17377 },
  { lower := 17548, upper := 17709, witness := RowWitness.topPrime 17539 },
  { lower := 17710, upper := 17877, witness := RowWitness.topPrime 17707 },
  { lower := 17878, upper := 18033, witness := RowWitness.topPrime 17863 },
  { lower := 18034, upper := 18183, witness := RowWitness.topPrime 18013 },
  { lower := 18184, upper := 18351, witness := RowWitness.topPrime 18181 },
  { lower := 18352, upper := 18511, witness := RowWitness.topPrime 18341 },
  { lower := 18512, upper := 18673, witness := RowWitness.topPrime 18503 },
  { lower := 18674, upper := 18841, witness := RowWitness.topPrime 18671 },
  { lower := 18842, upper := 19009, witness := RowWitness.topPrime 18839 },
  { lower := 19010, upper := 19179, witness := RowWitness.topPrime 19009 },
  { lower := 19180, upper := 19333, witness := RowWitness.topPrime 19163 },
  { lower := 19334, upper := 19503, witness := RowWitness.topPrime 19333 },
  { lower := 19504, upper := 19671, witness := RowWitness.topPrime 19501 },
  { lower := 19672, upper := 19831, witness := RowWitness.topPrime 19661 },
  { lower := 19832, upper := 19989, witness := RowWitness.topPrime 19819 },
  { lower := 19990, upper := 20149, witness := RowWitness.topPrime 19979 },
  { lower := 20150, upper := 20319, witness := RowWitness.topPrime 20149 },
  { lower := 20320, upper := 20467, witness := RowWitness.topPrime 20297 },
  { lower := 20468, upper := 20613, witness := RowWitness.topPrime 20443 },
  { lower := 20614, upper := 20781, witness := RowWitness.topPrime 20611 },
  { lower := 20782, upper := 20943, witness := RowWitness.topPrime 20773 },
  { lower := 20944, upper := 21109, witness := RowWitness.topPrime 20939 },
  { lower := 21110, upper := 21277, witness := RowWitness.topPrime 21107 },
  { lower := 21278, upper := 21447, witness := RowWitness.topPrime 21277 },
  { lower := 21448, upper := 21603, witness := RowWitness.topPrime 21433 },
  { lower := 21604, upper := 21771, witness := RowWitness.topPrime 21601 },
  { lower := 21772, upper := 21937, witness := RowWitness.topPrime 21767 },
  { lower := 21938, upper := 22107, witness := RowWitness.topPrime 21937 },
  { lower := 22108, upper := 22263, witness := RowWitness.topPrime 22093 },
  { lower := 22264, upper := 22429, witness := RowWitness.topPrime 22259 },
  { lower := 22430, upper := 22579, witness := RowWitness.topPrime 22409 },
  { lower := 22580, upper := 22743, witness := RowWitness.topPrime 22573 },
  { lower := 22744, upper := 22911, witness := RowWitness.topPrime 22741 },
  { lower := 22912, upper := 23077, witness := RowWitness.topPrime 22907 },
  { lower := 23078, upper := 23241, witness := RowWitness.topPrime 23071 },
  { lower := 23242, upper := 23397, witness := RowWitness.topPrime 23227 },
  { lower := 23398, upper := 23541, witness := RowWitness.topPrime 23371 },
  { lower := 23542, upper := 23709, witness := RowWitness.topPrime 23539 },
  { lower := 23710, upper := 23859, witness := RowWitness.topPrime 23689 },
  { lower := 23860, upper := 24027, witness := RowWitness.topPrime 23857 },
  { lower := 24028, upper := 24193, witness := RowWitness.topPrime 24023 },
  { lower := 24194, upper := 24351, witness := RowWitness.topPrime 24181 },
  { lower := 24352, upper := 24507, witness := RowWitness.topPrime 24337 },
  { lower := 24508, upper := 24669, witness := RowWitness.topPrime 24499 },
  { lower := 24670, upper := 24829, witness := RowWitness.topPrime 24659 },
  { lower := 24830, upper := 24991, witness := RowWitness.topPrime 24821 },
  { lower := 24992, upper := 25159, witness := RowWitness.topPrime 24989 },
  { lower := 25160, upper := 25323, witness := RowWitness.topPrime 25153 },
  { lower := 25324, upper := 25491, witness := RowWitness.topPrime 25321 },
  { lower := 25492, upper := 25641, witness := RowWitness.topPrime 25471 },
  { lower := 25642, upper := 25809, witness := RowWitness.topPrime 25639 },
  { lower := 25810, upper := 25971, witness := RowWitness.topPrime 25801 },
  { lower := 25972, upper := 26139, witness := RowWitness.topPrime 25969 },
  { lower := 26140, upper := 26289, witness := RowWitness.topPrime 26119 },
  { lower := 26290, upper := 26437, witness := RowWitness.topPrime 26267 },
  { lower := 26438, upper := 26607, witness := RowWitness.topPrime 26437 },
  { lower := 26608, upper := 26767, witness := RowWitness.topPrime 26597 },
  { lower := 26768, upper := 26929, witness := RowWitness.topPrime 26759 },
  { lower := 26930, upper := 27097, witness := RowWitness.topPrime 26927 },
  { lower := 27098, upper := 27261, witness := RowWitness.topPrime 27091 },
  { lower := 27262, upper := 27429, witness := RowWitness.topPrime 27259 },
  { lower := 27430, upper := 27597, witness := RowWitness.topPrime 27427 },
  { lower := 27598, upper := 27753, witness := RowWitness.topPrime 27583 },
  { lower := 27754, upper := 27921, witness := RowWitness.topPrime 27751 },
  { lower := 27922, upper := 28089, witness := RowWitness.topPrime 27919 },
  { lower := 28090, upper := 28257, witness := RowWitness.topPrime 28087 },
  { lower := 28258, upper := 28399, witness := RowWitness.topPrime 28229 },
  { lower := 28400, upper := 28563, witness := RowWitness.topPrime 28393 },
  { lower := 28564, upper := 28729, witness := RowWitness.topPrime 28559 },
  { lower := 28730, upper := 28899, witness := RowWitness.topPrime 28729 },
  { lower := 28900, upper := 29049, witness := RowWitness.topPrime 28879 },
  { lower := 29050, upper := 29069, witness := RowWitness.topPrime 29033 },
  { lower := 29791, upper := 29938, witness := RowWitness.topPrime 29789 },
  { lower := 31213, upper := 31363, witness := RowWitness.topPrime 31193 },
  { lower := 31364, upper := 31420, witness := RowWitness.topPrime 31357 },
  { lower := 31423, upper := 31499, witness := RowWitness.topPrime 31397 },
  { lower := 31827, upper := 31854, witness := RowWitness.topPrime 31817 },
  { lower := 31974, upper := 31997, witness := RowWitness.topPrime 31973 },
  { lower := 33614, upper := 33659, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33784, witness := RowWitness.topPrime 33703 },
  { lower := 34347, upper := 34507, witness := RowWitness.topPrime 34337 },
  { lower := 34508, upper := 34561, witness := RowWitness.topPrime 34501 },
  { lower := 36517, upper := 36667, witness := RowWitness.topPrime 36497 },
  { lower := 36668, upper := 36671, witness := RowWitness.topPrime 36653 },
  { lower := 37303, upper := 37380, witness := RowWitness.topPrime 37277 },
  { lower := 37446, upper := 37473, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37663, witness := RowWitness.topPrime 37493 },
  { lower := 37664, upper := 37708, witness := RowWitness.topPrime 37663 },
  { lower := 38307, upper := 38461, witness := RowWitness.topPrime 38303 },
  { lower := 40401, upper := 40498, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 41097, witness := RowWitness.topPrime 40927 },
  { lower := 41098, upper := 41101, witness := RowWitness.topPrime 41081 },
  { lower := 45056, upper := 45060, witness := RowWitness.topPrime 45053 },
  { lower := 45369, upper := 45423, witness := RowWitness.topPrime 45361 },
  { lower := 47045, upper := 47045, witness := RowWitness.topPrime 47041 },
  { lower := 47526, upper := 47691, witness := RowWitness.topPrime 47521 },
  { lower := 47692, upper := 47694, witness := RowWitness.topPrime 47681 },
  { lower := 48373, upper := 48541, witness := RowWitness.topPrime 48371 },
  { lower := 48542, upper := 48543, witness := RowWitness.topPrime 48541 },
  { lower := 48778, upper := 48838, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49309, witness := RowWitness.topPrime 49139 },
  { lower := 49310, upper := 49322, witness := RowWitness.topPrime 49307 },
  { lower := 49379, upper := 49468, witness := RowWitness.topPrime 49369 },
  { lower := 50421, upper := 50580, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51175, witness := RowWitness.topPrime 51071 },
  { lower := 53138, upper := 53215, witness := RowWitness.topPrime 53129 },
  { lower := 53248, upper := 53409, witness := RowWitness.topPrime 53239 },
  { lower := 53410, upper := 53418, witness := RowWitness.topPrime 53407 },
  { lower := 55451, upper := 55611, witness := RowWitness.topPrime 55441 },
  { lower := 55612, upper := 55617, witness := RowWitness.topPrime 55609 },
  { lower := 56307, upper := 56339, witness := RowWitness.topPrime 56299 },
  { lower := 56454, upper := 56477, witness := RowWitness.topPrime 56453 },
  { lower := 57245, upper := 57292, witness := RowWitness.topPrime 57241 },
  { lower := 57344, upper := 57415, witness := RowWitness.topPrime 57331 },
  { lower := 62500, upper := 62580, witness := RowWitness.topPrime 62497 },
  { lower := 68694, upper := 68814, witness := RowWitness.topPrime 68687 },
  { lower := 68921, upper := 69060, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71457, witness := RowWitness.topPrime 71287 },
  { lower := 71458, upper := 71459, witness := RowWitness.topPrime 71453 },
  { lower := 73167, upper := 73172, witness := RowWitness.topPrime 73141 },
  { lower := 73205, upper := 73337, witness := RowWitness.topPrime 73189 },
  { lower := 83667, upper := 83691, witness := RowWitness.topPrime 83663 },
  { lower := 85805, upper := 85853, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89543, witness := RowWitness.topPrime 89381 },
  { lower := 93845, upper := 93920, witness := RowWitness.topPrime 93827 },
  { lower := 96774, upper := 96775, witness := RowWitness.topPrime 96769 },
  { lower := 102152, upper := 102180, witness := RowWitness.topPrime 102149 },
  { lower := 103041, upper := 103136, witness := RowWitness.topPrime 103007 },
  { lower := 109503, upper := 109545, witness := RowWitness.topPrime 109481 },
  { lower := 148955, upper := 149047, witness := RowWitness.topPrime 148949 }
]

def row171_layers : List CoverLayer := [
  { lower := 29070, upper := 58140, M := 13 },
  { lower := 58140, upper := 116280, M := 10 },
  { lower := 116280, upper := 232560, M := 7 },
  { lower := 232560, upper := 465120, M := 5 },
  { lower := 465120, upper := 930240, M := 4 },
  { lower := 930240, upper := 1860480, M := 3 },
  { lower := 1860480, upper := 3720960, M := 2 },
  { lower := 3720960, upper := 7441920, M := 2 },
  { lower := 7441920, upper := 10000000, M := 2 }
]

def row171 : FiniteCoverRow := {
  height := row171_height,
  goods := row171_goods,
  layers := row171_layers
}

theorem row171_registered :
    decide (row171.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row171_goods_checked :
    row171.goods.all (goodSegmentCheck row171.height.i row171.height.r row171.height.s) = true := by
  decide +kernel

theorem row171_small_checked :
    coverCheck (2 * row171.height.i + 2) (row171.height.i * (row171.height.i - 1) - 1)
      (row171.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row171_layerCover_checked :
    coverCheck (row171.height.i * (row171.height.i - 1)) (row171.height.n0 - 1)
      (row171.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row171_layer000_checked :
    coverLayerCheck row171.height row171.goods { lower := 29070, upper := 58140, M := 13 } = true := by
  decide +kernel

theorem row171_layer001_checked :
    coverLayerCheck row171.height row171.goods { lower := 58140, upper := 116280, M := 10 } = true := by
  decide +kernel

theorem row171_layer002_checked :
    coverLayerCheck row171.height row171.goods { lower := 116280, upper := 232560, M := 7 } = true := by
  decide +kernel

theorem row171_layer003_checked :
    coverLayerCheck row171.height row171.goods { lower := 232560, upper := 465120, M := 5 } = true := by
  decide +kernel

theorem row171_layer004_checked :
    coverLayerCheck row171.height row171.goods { lower := 465120, upper := 930240, M := 4 } = true := by
  decide +kernel

theorem row171_layer005_checked :
    coverLayerCheck row171.height row171.goods { lower := 930240, upper := 1860480, M := 3 } = true := by
  decide +kernel

theorem row171_layer006_checked :
    coverLayerCheck row171.height row171.goods { lower := 1860480, upper := 3720960, M := 2 } = true := by
  decide +kernel

theorem row171_layer007_checked :
    coverLayerCheck row171.height row171.goods { lower := 3720960, upper := 7441920, M := 2 } = true := by
  decide +kernel

theorem row171_layer008_checked :
    coverLayerCheck row171.height row171.goods { lower := 7441920, upper := 10000000, M := 2 } = true := by
  decide +kernel

theorem row171_layers_checked :
    row171.layers.all (coverLayerCheck row171.height row171.goods) = true := by
  change List.all [
    { lower := 29070, upper := 58140, M := 13 },
    { lower := 58140, upper := 116280, M := 10 },
    { lower := 116280, upper := 232560, M := 7 },
    { lower := 232560, upper := 465120, M := 5 },
    { lower := 465120, upper := 930240, M := 4 },
    { lower := 930240, upper := 1860480, M := 3 },
    { lower := 1860480, upper := 3720960, M := 2 },
    { lower := 3720960, upper := 7441920, M := 2 },
    { lower := 7441920, upper := 10000000, M := 2 }
  ] (coverLayerCheck row171.height row171.goods) = true
  simp only [List.all_cons, List.all_nil,
    row171_layer000_checked,
    row171_layer001_checked,
    row171_layer002_checked,
    row171_layer003_checked,
    row171_layer004_checked,
    row171_layer005_checked,
    row171_layer006_checked,
    row171_layer007_checked,
    row171_layer008_checked,
    Bool.true_and]

theorem row171_checked : finiteCoverRowCheck row171 = true := by
  simp only [finiteCoverRowCheck, row171_registered, row171_goods_checked,
    row171_small_checked, row171_layerCover_checked, row171_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row171_checked

end B699LowIndex
