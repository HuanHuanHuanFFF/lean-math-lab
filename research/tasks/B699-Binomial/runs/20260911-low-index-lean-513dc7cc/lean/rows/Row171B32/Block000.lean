import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

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


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_good000_checked :
    goodSegmentCheck 171 56 121
      { lower := 344, upper := 507, witness := RowWitness.topPrime 337 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good001_checked :
    goodSegmentCheck 171 56 121
      { lower := 508, upper := 673, witness := RowWitness.topPrime 503 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good002_checked :
    goodSegmentCheck 171 56 121
      { lower := 674, upper := 843, witness := RowWitness.topPrime 673 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good003_checked :
    goodSegmentCheck 171 56 121
      { lower := 844, upper := 1009, witness := RowWitness.topPrime 839 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good004_checked :
    goodSegmentCheck 171 56 121
      { lower := 1010, upper := 1179, witness := RowWitness.topPrime 1009 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good005_checked :
    goodSegmentCheck 171 56 121
      { lower := 1180, upper := 1341, witness := RowWitness.topPrime 1171 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good006_checked :
    goodSegmentCheck 171 56 121
      { lower := 1342, upper := 1497, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good007_checked :
    goodSegmentCheck 171 56 121
      { lower := 1498, upper := 1663, witness := RowWitness.topPrime 1493 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good008_checked :
    goodSegmentCheck 171 56 121
      { lower := 1664, upper := 1833, witness := RowWitness.topPrime 1663 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good009_checked :
    goodSegmentCheck 171 56 121
      { lower := 1834, upper := 2001, witness := RowWitness.topPrime 1831 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good010_checked :
    goodSegmentCheck 171 56 121
      { lower := 2002, upper := 2169, witness := RowWitness.topPrime 1999 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good011_checked :
    goodSegmentCheck 171 56 121
      { lower := 2170, upper := 2331, witness := RowWitness.topPrime 2161 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good012_checked :
    goodSegmentCheck 171 56 121
      { lower := 2332, upper := 2481, witness := RowWitness.topPrime 2311 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good013_checked :
    goodSegmentCheck 171 56 121
      { lower := 2482, upper := 2647, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good014_checked :
    goodSegmentCheck 171 56 121
      { lower := 2648, upper := 2817, witness := RowWitness.topPrime 2647 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good015_checked :
    goodSegmentCheck 171 56 121
      { lower := 2818, upper := 2973, witness := RowWitness.topPrime 2803 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_good016_checked :
    goodSegmentCheck 171 56 121
      { lower := 2974, upper := 3141, witness := RowWitness.topPrime 2971 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good017_checked :
    goodSegmentCheck 171 56 121
      { lower := 3142, upper := 3307, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good018_checked :
    goodSegmentCheck 171 56 121
      { lower := 3308, upper := 3477, witness := RowWitness.topPrime 3307 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good019_checked :
    goodSegmentCheck 171 56 121
      { lower := 3478, upper := 3639, witness := RowWitness.topPrime 3469 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good020_checked :
    goodSegmentCheck 171 56 121
      { lower := 3640, upper := 3807, witness := RowWitness.topPrime 3637 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good021_checked :
    goodSegmentCheck 171 56 121
      { lower := 3808, upper := 3973, witness := RowWitness.topPrime 3803 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good022_checked :
    goodSegmentCheck 171 56 121
      { lower := 3974, upper := 4137, witness := RowWitness.topPrime 3967 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good023_checked :
    goodSegmentCheck 171 56 121
      { lower := 4138, upper := 4303, witness := RowWitness.topPrime 4133 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good024_checked :
    goodSegmentCheck 171 56 121
      { lower := 4304, upper := 4467, witness := RowWitness.topPrime 4297 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good025_checked :
    goodSegmentCheck 171 56 121
      { lower := 4468, upper := 4633, witness := RowWitness.topPrime 4463 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good026_checked :
    goodSegmentCheck 171 56 121
      { lower := 4634, upper := 4791, witness := RowWitness.topPrime 4621 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good027_checked :
    goodSegmentCheck 171 56 121
      { lower := 4792, upper := 4959, witness := RowWitness.topPrime 4789 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good028_checked :
    goodSegmentCheck 171 56 121
      { lower := 4960, upper := 5127, witness := RowWitness.topPrime 4957 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good029_checked :
    goodSegmentCheck 171 56 121
      { lower := 5128, upper := 5289, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good030_checked :
    goodSegmentCheck 171 56 121
      { lower := 5290, upper := 5451, witness := RowWitness.topPrime 5281 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good031_checked :
    goodSegmentCheck 171 56 121
      { lower := 5452, upper := 5619, witness := RowWitness.topPrime 5449 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_good032_checked :
    goodSegmentCheck 171 56 121
      { lower := 5620, upper := 5761, witness := RowWitness.topPrime 5591 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good033_checked :
    goodSegmentCheck 171 56 121
      { lower := 5762, upper := 5919, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good034_checked :
    goodSegmentCheck 171 56 121
      { lower := 5920, upper := 6073, witness := RowWitness.topPrime 5903 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good035_checked :
    goodSegmentCheck 171 56 121
      { lower := 6074, upper := 6243, witness := RowWitness.topPrime 6073 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good036_checked :
    goodSegmentCheck 171 56 121
      { lower := 6244, upper := 6399, witness := RowWitness.topPrime 6229 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good037_checked :
    goodSegmentCheck 171 56 121
      { lower := 6400, upper := 6567, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good038_checked :
    goodSegmentCheck 171 56 121
      { lower := 6568, upper := 6733, witness := RowWitness.topPrime 6563 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good039_checked :
    goodSegmentCheck 171 56 121
      { lower := 6734, upper := 6903, witness := RowWitness.topPrime 6733 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good040_checked :
    goodSegmentCheck 171 56 121
      { lower := 6904, upper := 7069, witness := RowWitness.topPrime 6899 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good041_checked :
    goodSegmentCheck 171 56 121
      { lower := 7070, upper := 7239, witness := RowWitness.topPrime 7069 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good042_checked :
    goodSegmentCheck 171 56 121
      { lower := 7240, upper := 7407, witness := RowWitness.topPrime 7237 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good043_checked :
    goodSegmentCheck 171 56 121
      { lower := 7408, upper := 7563, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good044_checked :
    goodSegmentCheck 171 56 121
      { lower := 7564, upper := 7731, witness := RowWitness.topPrime 7561 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good045_checked :
    goodSegmentCheck 171 56 121
      { lower := 7732, upper := 7897, witness := RowWitness.topPrime 7727 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good046_checked :
    goodSegmentCheck 171 56 121
      { lower := 7898, upper := 8053, witness := RowWitness.topPrime 7883 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good047_checked :
    goodSegmentCheck 171 56 121
      { lower := 8054, upper := 8223, witness := RowWitness.topPrime 8053 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_good048_checked :
    goodSegmentCheck 171 56 121
      { lower := 8224, upper := 8391, witness := RowWitness.topPrime 8221 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good049_checked :
    goodSegmentCheck 171 56 121
      { lower := 8392, upper := 8559, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good050_checked :
    goodSegmentCheck 171 56 121
      { lower := 8560, upper := 8713, witness := RowWitness.topPrime 8543 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good051_checked :
    goodSegmentCheck 171 56 121
      { lower := 8714, upper := 8883, witness := RowWitness.topPrime 8713 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good052_checked :
    goodSegmentCheck 171 56 121
      { lower := 8884, upper := 9037, witness := RowWitness.topPrime 8867 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good053_checked :
    goodSegmentCheck 171 56 121
      { lower := 9038, upper := 9199, witness := RowWitness.topPrime 9029 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good054_checked :
    goodSegmentCheck 171 56 121
      { lower := 9200, upper := 9369, witness := RowWitness.topPrime 9199 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good055_checked :
    goodSegmentCheck 171 56 121
      { lower := 9370, upper := 9519, witness := RowWitness.topPrime 9349 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good056_checked :
    goodSegmentCheck 171 56 121
      { lower := 9520, upper := 9681, witness := RowWitness.topPrime 9511 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good057_checked :
    goodSegmentCheck 171 56 121
      { lower := 9682, upper := 9849, witness := RowWitness.topPrime 9679 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good058_checked :
    goodSegmentCheck 171 56 121
      { lower := 9850, upper := 10009, witness := RowWitness.topPrime 9839 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good059_checked :
    goodSegmentCheck 171 56 121
      { lower := 10010, upper := 10179, witness := RowWitness.topPrime 10009 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good060_checked :
    goodSegmentCheck 171 56 121
      { lower := 10180, upper := 10347, witness := RowWitness.topPrime 10177 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good061_checked :
    goodSegmentCheck 171 56 121
      { lower := 10348, upper := 10513, witness := RowWitness.topPrime 10343 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good062_checked :
    goodSegmentCheck 171 56 121
      { lower := 10514, upper := 10683, witness := RowWitness.topPrime 10513 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good063_checked :
    goodSegmentCheck 171 56 121
      { lower := 10684, upper := 10837, witness := RowWitness.topPrime 10667 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_good064_checked :
    goodSegmentCheck 171 56 121
      { lower := 10838, upper := 11007, witness := RowWitness.topPrime 10837 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good065_checked :
    goodSegmentCheck 171 56 121
      { lower := 11008, upper := 11173, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good066_checked :
    goodSegmentCheck 171 56 121
      { lower := 11174, upper := 11343, witness := RowWitness.topPrime 11173 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good067_checked :
    goodSegmentCheck 171 56 121
      { lower := 11344, upper := 11499, witness := RowWitness.topPrime 11329 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good068_checked :
    goodSegmentCheck 171 56 121
      { lower := 11500, upper := 11667, witness := RowWitness.topPrime 11497 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good069_checked :
    goodSegmentCheck 171 56 121
      { lower := 11668, upper := 11827, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good070_checked :
    goodSegmentCheck 171 56 121
      { lower := 11828, upper := 11997, witness := RowWitness.topPrime 11827 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good071_checked :
    goodSegmentCheck 171 56 121
      { lower := 11998, upper := 12157, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good072_checked :
    goodSegmentCheck 171 56 121
      { lower := 12158, upper := 12327, witness := RowWitness.topPrime 12157 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good073_checked :
    goodSegmentCheck 171 56 121
      { lower := 12328, upper := 12493, witness := RowWitness.topPrime 12323 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good074_checked :
    goodSegmentCheck 171 56 121
      { lower := 12494, upper := 12661, witness := RowWitness.topPrime 12491 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good075_checked :
    goodSegmentCheck 171 56 121
      { lower := 12662, upper := 12829, witness := RowWitness.topPrime 12659 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good076_checked :
    goodSegmentCheck 171 56 121
      { lower := 12830, upper := 12999, witness := RowWitness.topPrime 12829 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good077_checked :
    goodSegmentCheck 171 56 121
      { lower := 13000, upper := 13153, witness := RowWitness.topPrime 12983 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good078_checked :
    goodSegmentCheck 171 56 121
      { lower := 13154, upper := 13321, witness := RowWitness.topPrime 13151 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good079_checked :
    goodSegmentCheck 171 56 121
      { lower := 13322, upper := 13483, witness := RowWitness.topPrime 13313 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_good080_checked :
    goodSegmentCheck 171 56 121
      { lower := 13484, upper := 13647, witness := RowWitness.topPrime 13477 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good081_checked :
    goodSegmentCheck 171 56 121
      { lower := 13648, upper := 13803, witness := RowWitness.topPrime 13633 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good082_checked :
    goodSegmentCheck 171 56 121
      { lower := 13804, upper := 13969, witness := RowWitness.topPrime 13799 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good083_checked :
    goodSegmentCheck 171 56 121
      { lower := 13970, upper := 14137, witness := RowWitness.topPrime 13967 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good084_checked :
    goodSegmentCheck 171 56 121
      { lower := 14138, upper := 14277, witness := RowWitness.topPrime 14107 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good085_checked :
    goodSegmentCheck 171 56 121
      { lower := 14278, upper := 14421, witness := RowWitness.topPrime 14251 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good086_checked :
    goodSegmentCheck 171 56 121
      { lower := 14422, upper := 14589, witness := RowWitness.topPrime 14419 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good087_checked :
    goodSegmentCheck 171 56 121
      { lower := 14590, upper := 14733, witness := RowWitness.topPrime 14563 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good088_checked :
    goodSegmentCheck 171 56 121
      { lower := 14734, upper := 14901, witness := RowWitness.topPrime 14731 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good089_checked :
    goodSegmentCheck 171 56 121
      { lower := 14902, upper := 15067, witness := RowWitness.topPrime 14897 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good090_checked :
    goodSegmentCheck 171 56 121
      { lower := 15068, upper := 15231, witness := RowWitness.topPrime 15061 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good091_checked :
    goodSegmentCheck 171 56 121
      { lower := 15232, upper := 15397, witness := RowWitness.topPrime 15227 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good092_checked :
    goodSegmentCheck 171 56 121
      { lower := 15398, upper := 15561, witness := RowWitness.topPrime 15391 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good093_checked :
    goodSegmentCheck 171 56 121
      { lower := 15562, upper := 15729, witness := RowWitness.topPrime 15559 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good094_checked :
    goodSegmentCheck 171 56 121
      { lower := 15730, upper := 15897, witness := RowWitness.topPrime 15727 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good095_checked :
    goodSegmentCheck 171 56 121
      { lower := 15898, upper := 16059, witness := RowWitness.topPrime 15889 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_good096_checked :
    goodSegmentCheck 171 56 121
      { lower := 16060, upper := 16227, witness := RowWitness.topPrime 16057 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good097_checked :
    goodSegmentCheck 171 56 121
      { lower := 16228, upper := 16393, witness := RowWitness.topPrime 16223 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good098_checked :
    goodSegmentCheck 171 56 121
      { lower := 16394, upper := 16551, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good099_checked :
    goodSegmentCheck 171 56 121
      { lower := 16552, upper := 16717, witness := RowWitness.topPrime 16547 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good100_checked :
    goodSegmentCheck 171 56 121
      { lower := 16718, upper := 16873, witness := RowWitness.topPrime 16703 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good101_checked :
    goodSegmentCheck 171 56 121
      { lower := 16874, upper := 17041, witness := RowWitness.topPrime 16871 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good102_checked :
    goodSegmentCheck 171 56 121
      { lower := 17042, upper := 17211, witness := RowWitness.topPrime 17041 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good103_checked :
    goodSegmentCheck 171 56 121
      { lower := 17212, upper := 17379, witness := RowWitness.topPrime 17209 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good104_checked :
    goodSegmentCheck 171 56 121
      { lower := 17380, upper := 17547, witness := RowWitness.topPrime 17377 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good105_checked :
    goodSegmentCheck 171 56 121
      { lower := 17548, upper := 17709, witness := RowWitness.topPrime 17539 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good106_checked :
    goodSegmentCheck 171 56 121
      { lower := 17710, upper := 17877, witness := RowWitness.topPrime 17707 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good107_checked :
    goodSegmentCheck 171 56 121
      { lower := 17878, upper := 18033, witness := RowWitness.topPrime 17863 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good108_checked :
    goodSegmentCheck 171 56 121
      { lower := 18034, upper := 18183, witness := RowWitness.topPrime 18013 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good109_checked :
    goodSegmentCheck 171 56 121
      { lower := 18184, upper := 18351, witness := RowWitness.topPrime 18181 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good110_checked :
    goodSegmentCheck 171 56 121
      { lower := 18352, upper := 18511, witness := RowWitness.topPrime 18341 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good111_checked :
    goodSegmentCheck 171 56 121
      { lower := 18512, upper := 18673, witness := RowWitness.topPrime 18503 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_good112_checked :
    goodSegmentCheck 171 56 121
      { lower := 18674, upper := 18841, witness := RowWitness.topPrime 18671 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good113_checked :
    goodSegmentCheck 171 56 121
      { lower := 18842, upper := 19009, witness := RowWitness.topPrime 18839 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good114_checked :
    goodSegmentCheck 171 56 121
      { lower := 19010, upper := 19179, witness := RowWitness.topPrime 19009 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good115_checked :
    goodSegmentCheck 171 56 121
      { lower := 19180, upper := 19333, witness := RowWitness.topPrime 19163 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good116_checked :
    goodSegmentCheck 171 56 121
      { lower := 19334, upper := 19503, witness := RowWitness.topPrime 19333 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good117_checked :
    goodSegmentCheck 171 56 121
      { lower := 19504, upper := 19671, witness := RowWitness.topPrime 19501 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good118_checked :
    goodSegmentCheck 171 56 121
      { lower := 19672, upper := 19831, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good119_checked :
    goodSegmentCheck 171 56 121
      { lower := 19832, upper := 19989, witness := RowWitness.topPrime 19819 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good120_checked :
    goodSegmentCheck 171 56 121
      { lower := 19990, upper := 20149, witness := RowWitness.topPrime 19979 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good121_checked :
    goodSegmentCheck 171 56 121
      { lower := 20150, upper := 20319, witness := RowWitness.topPrime 20149 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good122_checked :
    goodSegmentCheck 171 56 121
      { lower := 20320, upper := 20467, witness := RowWitness.topPrime 20297 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good123_checked :
    goodSegmentCheck 171 56 121
      { lower := 20468, upper := 20613, witness := RowWitness.topPrime 20443 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good124_checked :
    goodSegmentCheck 171 56 121
      { lower := 20614, upper := 20781, witness := RowWitness.topPrime 20611 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good125_checked :
    goodSegmentCheck 171 56 121
      { lower := 20782, upper := 20943, witness := RowWitness.topPrime 20773 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good126_checked :
    goodSegmentCheck 171 56 121
      { lower := 20944, upper := 21109, witness := RowWitness.topPrime 20939 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good127_checked :
    goodSegmentCheck 171 56 121
      { lower := 21110, upper := 21277, witness := RowWitness.topPrime 21107 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_good128_checked :
    goodSegmentCheck 171 56 121
      { lower := 21278, upper := 21447, witness := RowWitness.topPrime 21277 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good129_checked :
    goodSegmentCheck 171 56 121
      { lower := 21448, upper := 21603, witness := RowWitness.topPrime 21433 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good130_checked :
    goodSegmentCheck 171 56 121
      { lower := 21604, upper := 21771, witness := RowWitness.topPrime 21601 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good131_checked :
    goodSegmentCheck 171 56 121
      { lower := 21772, upper := 21937, witness := RowWitness.topPrime 21767 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good132_checked :
    goodSegmentCheck 171 56 121
      { lower := 21938, upper := 22107, witness := RowWitness.topPrime 21937 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good133_checked :
    goodSegmentCheck 171 56 121
      { lower := 22108, upper := 22263, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good134_checked :
    goodSegmentCheck 171 56 121
      { lower := 22264, upper := 22429, witness := RowWitness.topPrime 22259 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good135_checked :
    goodSegmentCheck 171 56 121
      { lower := 22430, upper := 22579, witness := RowWitness.topPrime 22409 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good136_checked :
    goodSegmentCheck 171 56 121
      { lower := 22580, upper := 22743, witness := RowWitness.topPrime 22573 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good137_checked :
    goodSegmentCheck 171 56 121
      { lower := 22744, upper := 22911, witness := RowWitness.topPrime 22741 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good138_checked :
    goodSegmentCheck 171 56 121
      { lower := 22912, upper := 23077, witness := RowWitness.topPrime 22907 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good139_checked :
    goodSegmentCheck 171 56 121
      { lower := 23078, upper := 23241, witness := RowWitness.topPrime 23071 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good140_checked :
    goodSegmentCheck 171 56 121
      { lower := 23242, upper := 23397, witness := RowWitness.topPrime 23227 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good141_checked :
    goodSegmentCheck 171 56 121
      { lower := 23398, upper := 23541, witness := RowWitness.topPrime 23371 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good142_checked :
    goodSegmentCheck 171 56 121
      { lower := 23542, upper := 23709, witness := RowWitness.topPrime 23539 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good143_checked :
    goodSegmentCheck 171 56 121
      { lower := 23710, upper := 23859, witness := RowWitness.topPrime 23689 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_good144_checked :
    goodSegmentCheck 171 56 121
      { lower := 23860, upper := 24027, witness := RowWitness.topPrime 23857 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good145_checked :
    goodSegmentCheck 171 56 121
      { lower := 24028, upper := 24193, witness := RowWitness.topPrime 24023 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good146_checked :
    goodSegmentCheck 171 56 121
      { lower := 24194, upper := 24351, witness := RowWitness.topPrime 24181 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good147_checked :
    goodSegmentCheck 171 56 121
      { lower := 24352, upper := 24507, witness := RowWitness.topPrime 24337 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good148_checked :
    goodSegmentCheck 171 56 121
      { lower := 24508, upper := 24669, witness := RowWitness.topPrime 24499 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good149_checked :
    goodSegmentCheck 171 56 121
      { lower := 24670, upper := 24829, witness := RowWitness.topPrime 24659 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good150_checked :
    goodSegmentCheck 171 56 121
      { lower := 24830, upper := 24991, witness := RowWitness.topPrime 24821 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good151_checked :
    goodSegmentCheck 171 56 121
      { lower := 24992, upper := 25159, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good152_checked :
    goodSegmentCheck 171 56 121
      { lower := 25160, upper := 25323, witness := RowWitness.topPrime 25153 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good153_checked :
    goodSegmentCheck 171 56 121
      { lower := 25324, upper := 25491, witness := RowWitness.topPrime 25321 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good154_checked :
    goodSegmentCheck 171 56 121
      { lower := 25492, upper := 25641, witness := RowWitness.topPrime 25471 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good155_checked :
    goodSegmentCheck 171 56 121
      { lower := 25642, upper := 25809, witness := RowWitness.topPrime 25639 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good156_checked :
    goodSegmentCheck 171 56 121
      { lower := 25810, upper := 25971, witness := RowWitness.topPrime 25801 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good157_checked :
    goodSegmentCheck 171 56 121
      { lower := 25972, upper := 26139, witness := RowWitness.topPrime 25969 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good158_checked :
    goodSegmentCheck 171 56 121
      { lower := 26140, upper := 26289, witness := RowWitness.topPrime 26119 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good159_checked :
    goodSegmentCheck 171 56 121
      { lower := 26290, upper := 26437, witness := RowWitness.topPrime 26267 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_good160_checked :
    goodSegmentCheck 171 56 121
      { lower := 26438, upper := 26607, witness := RowWitness.topPrime 26437 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good161_checked :
    goodSegmentCheck 171 56 121
      { lower := 26608, upper := 26767, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good162_checked :
    goodSegmentCheck 171 56 121
      { lower := 26768, upper := 26929, witness := RowWitness.topPrime 26759 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good163_checked :
    goodSegmentCheck 171 56 121
      { lower := 26930, upper := 27097, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good164_checked :
    goodSegmentCheck 171 56 121
      { lower := 27098, upper := 27261, witness := RowWitness.topPrime 27091 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good165_checked :
    goodSegmentCheck 171 56 121
      { lower := 27262, upper := 27429, witness := RowWitness.topPrime 27259 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good166_checked :
    goodSegmentCheck 171 56 121
      { lower := 27430, upper := 27597, witness := RowWitness.topPrime 27427 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good167_checked :
    goodSegmentCheck 171 56 121
      { lower := 27598, upper := 27753, witness := RowWitness.topPrime 27583 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good168_checked :
    goodSegmentCheck 171 56 121
      { lower := 27754, upper := 27921, witness := RowWitness.topPrime 27751 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good169_checked :
    goodSegmentCheck 171 56 121
      { lower := 27922, upper := 28089, witness := RowWitness.topPrime 27919 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good170_checked :
    goodSegmentCheck 171 56 121
      { lower := 28090, upper := 28257, witness := RowWitness.topPrime 28087 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good171_checked :
    goodSegmentCheck 171 56 121
      { lower := 28258, upper := 28399, witness := RowWitness.topPrime 28229 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good172_checked :
    goodSegmentCheck 171 56 121
      { lower := 28400, upper := 28563, witness := RowWitness.topPrime 28393 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good173_checked :
    goodSegmentCheck 171 56 121
      { lower := 28564, upper := 28729, witness := RowWitness.topPrime 28559 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good174_checked :
    goodSegmentCheck 171 56 121
      { lower := 28730, upper := 28899, witness := RowWitness.topPrime 28729 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good175_checked :
    goodSegmentCheck 171 56 121
      { lower := 28900, upper := 29049, witness := RowWitness.topPrime 28879 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_good176_checked :
    goodSegmentCheck 171 56 121
      { lower := 29050, upper := 29069, witness := RowWitness.topPrime 29033 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good177_checked :
    goodSegmentCheck 171 56 121
      { lower := 29791, upper := 29938, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good178_checked :
    goodSegmentCheck 171 56 121
      { lower := 31213, upper := 31363, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good179_checked :
    goodSegmentCheck 171 56 121
      { lower := 31364, upper := 31420, witness := RowWitness.topPrime 31357 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good180_checked :
    goodSegmentCheck 171 56 121
      { lower := 31423, upper := 31499, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good181_checked :
    goodSegmentCheck 171 56 121
      { lower := 31827, upper := 31854, witness := RowWitness.topPrime 31817 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good182_checked :
    goodSegmentCheck 171 56 121
      { lower := 31974, upper := 31997, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good183_checked :
    goodSegmentCheck 171 56 121
      { lower := 33614, upper := 33659, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good184_checked :
    goodSegmentCheck 171 56 121
      { lower := 33708, upper := 33784, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good185_checked :
    goodSegmentCheck 171 56 121
      { lower := 34347, upper := 34507, witness := RowWitness.topPrime 34337 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good186_checked :
    goodSegmentCheck 171 56 121
      { lower := 34508, upper := 34561, witness := RowWitness.topPrime 34501 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good187_checked :
    goodSegmentCheck 171 56 121
      { lower := 36517, upper := 36667, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good188_checked :
    goodSegmentCheck 171 56 121
      { lower := 36668, upper := 36671, witness := RowWitness.topPrime 36653 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good189_checked :
    goodSegmentCheck 171 56 121
      { lower := 37303, upper := 37380, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good190_checked :
    goodSegmentCheck 171 56 121
      { lower := 37446, upper := 37473, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good191_checked :
    goodSegmentCheck 171 56 121
      { lower := 37500, upper := 37663, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_good192_checked :
    goodSegmentCheck 171 56 121
      { lower := 37664, upper := 37708, witness := RowWitness.topPrime 37663 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good193_checked :
    goodSegmentCheck 171 56 121
      { lower := 38307, upper := 38461, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good194_checked :
    goodSegmentCheck 171 56 121
      { lower := 40401, upper := 40498, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good195_checked :
    goodSegmentCheck 171 56 121
      { lower := 40931, upper := 41097, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good196_checked :
    goodSegmentCheck 171 56 121
      { lower := 41098, upper := 41101, witness := RowWitness.topPrime 41081 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good197_checked :
    goodSegmentCheck 171 56 121
      { lower := 45056, upper := 45060, witness := RowWitness.topPrime 45053 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good198_checked :
    goodSegmentCheck 171 56 121
      { lower := 45369, upper := 45423, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good199_checked :
    goodSegmentCheck 171 56 121
      { lower := 47045, upper := 47045, witness := RowWitness.topPrime 47041 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good200_checked :
    goodSegmentCheck 171 56 121
      { lower := 47526, upper := 47691, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good201_checked :
    goodSegmentCheck 171 56 121
      { lower := 47692, upper := 47694, witness := RowWitness.topPrime 47681 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good202_checked :
    goodSegmentCheck 171 56 121
      { lower := 48373, upper := 48541, witness := RowWitness.topPrime 48371 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good203_checked :
    goodSegmentCheck 171 56 121
      { lower := 48542, upper := 48543, witness := RowWitness.topPrime 48541 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good204_checked :
    goodSegmentCheck 171 56 121
      { lower := 48778, upper := 48838, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good205_checked :
    goodSegmentCheck 171 56 121
      { lower := 49152, upper := 49309, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good206_checked :
    goodSegmentCheck 171 56 121
      { lower := 49310, upper := 49322, witness := RowWitness.topPrime 49307 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good207_checked :
    goodSegmentCheck 171 56 121
      { lower := 49379, upper := 49468, witness := RowWitness.topPrime 49369 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_good208_checked :
    goodSegmentCheck 171 56 121
      { lower := 50421, upper := 50580, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good209_checked :
    goodSegmentCheck 171 56 121
      { lower := 51076, upper := 51175, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good210_checked :
    goodSegmentCheck 171 56 121
      { lower := 53138, upper := 53215, witness := RowWitness.topPrime 53129 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good211_checked :
    goodSegmentCheck 171 56 121
      { lower := 53248, upper := 53409, witness := RowWitness.topPrime 53239 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good212_checked :
    goodSegmentCheck 171 56 121
      { lower := 53410, upper := 53418, witness := RowWitness.topPrime 53407 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good213_checked :
    goodSegmentCheck 171 56 121
      { lower := 55451, upper := 55611, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good214_checked :
    goodSegmentCheck 171 56 121
      { lower := 55612, upper := 55617, witness := RowWitness.topPrime 55609 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good215_checked :
    goodSegmentCheck 171 56 121
      { lower := 56307, upper := 56339, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good216_checked :
    goodSegmentCheck 171 56 121
      { lower := 56454, upper := 56477, witness := RowWitness.topPrime 56453 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good217_checked :
    goodSegmentCheck 171 56 121
      { lower := 57245, upper := 57292, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good218_checked :
    goodSegmentCheck 171 56 121
      { lower := 57344, upper := 57415, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good219_checked :
    goodSegmentCheck 171 56 121
      { lower := 62500, upper := 62580, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good220_checked :
    goodSegmentCheck 171 56 121
      { lower := 68694, upper := 68814, witness := RowWitness.topPrime 68687 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good221_checked :
    goodSegmentCheck 171 56 121
      { lower := 68921, upper := 69060, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good222_checked :
    goodSegmentCheck 171 56 121
      { lower := 71289, upper := 71457, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good223_checked :
    goodSegmentCheck 171 56 121
      { lower := 71458, upper := 71459, witness := RowWitness.topPrime 71453 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_good224_checked :
    goodSegmentCheck 171 56 121
      { lower := 73167, upper := 73172, witness := RowWitness.topPrime 73141 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good225_checked :
    goodSegmentCheck 171 56 121
      { lower := 73205, upper := 73337, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good226_checked :
    goodSegmentCheck 171 56 121
      { lower := 83667, upper := 83691, witness := RowWitness.topPrime 83663 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good227_checked :
    goodSegmentCheck 171 56 121
      { lower := 85805, upper := 85853, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good228_checked :
    goodSegmentCheck 171 56 121
      { lower := 89383, upper := 89543, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good229_checked :
    goodSegmentCheck 171 56 121
      { lower := 93845, upper := 93920, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good230_checked :
    goodSegmentCheck 171 56 121
      { lower := 96774, upper := 96775, witness := RowWitness.topPrime 96769 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good231_checked :
    goodSegmentCheck 171 56 121
      { lower := 102152, upper := 102180, witness := RowWitness.topPrime 102149 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good232_checked :
    goodSegmentCheck 171 56 121
      { lower := 103041, upper := 103136, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good233_checked :
    goodSegmentCheck 171 56 121
      { lower := 109503, upper := 109545, witness := RowWitness.topPrime 109481 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row171_good234_checked :
    goodSegmentCheck 171 56 121
      { lower := 148955, upper := 149047, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 171) (r := 56) (s := 121) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_good234_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_goods_checked :
    row171.goods.all (goodSegmentCheck row171.height.i row171.height.r row171.height.s) = true := by
  change row171_goods.all (goodSegmentCheck 171 56 121) = true
  simp only [row171_goods, List.all_cons, List.all_nil,
    row171_good000_checked,
    row171_good001_checked,
    row171_good002_checked,
    row171_good003_checked,
    row171_good004_checked,
    row171_good005_checked,
    row171_good006_checked,
    row171_good007_checked,
    row171_good008_checked,
    row171_good009_checked,
    row171_good010_checked,
    row171_good011_checked,
    row171_good012_checked,
    row171_good013_checked,
    row171_good014_checked,
    row171_good015_checked,
    row171_good016_checked,
    row171_good017_checked,
    row171_good018_checked,
    row171_good019_checked,
    row171_good020_checked,
    row171_good021_checked,
    row171_good022_checked,
    row171_good023_checked,
    row171_good024_checked,
    row171_good025_checked,
    row171_good026_checked,
    row171_good027_checked,
    row171_good028_checked,
    row171_good029_checked,
    row171_good030_checked,
    row171_good031_checked,
    row171_good032_checked,
    row171_good033_checked,
    row171_good034_checked,
    row171_good035_checked,
    row171_good036_checked,
    row171_good037_checked,
    row171_good038_checked,
    row171_good039_checked,
    row171_good040_checked,
    row171_good041_checked,
    row171_good042_checked,
    row171_good043_checked,
    row171_good044_checked,
    row171_good045_checked,
    row171_good046_checked,
    row171_good047_checked,
    row171_good048_checked,
    row171_good049_checked,
    row171_good050_checked,
    row171_good051_checked,
    row171_good052_checked,
    row171_good053_checked,
    row171_good054_checked,
    row171_good055_checked,
    row171_good056_checked,
    row171_good057_checked,
    row171_good058_checked,
    row171_good059_checked,
    row171_good060_checked,
    row171_good061_checked,
    row171_good062_checked,
    row171_good063_checked,
    row171_good064_checked,
    row171_good065_checked,
    row171_good066_checked,
    row171_good067_checked,
    row171_good068_checked,
    row171_good069_checked,
    row171_good070_checked,
    row171_good071_checked,
    row171_good072_checked,
    row171_good073_checked,
    row171_good074_checked,
    row171_good075_checked,
    row171_good076_checked,
    row171_good077_checked,
    row171_good078_checked,
    row171_good079_checked,
    row171_good080_checked,
    row171_good081_checked,
    row171_good082_checked,
    row171_good083_checked,
    row171_good084_checked,
    row171_good085_checked,
    row171_good086_checked,
    row171_good087_checked,
    row171_good088_checked,
    row171_good089_checked,
    row171_good090_checked,
    row171_good091_checked,
    row171_good092_checked,
    row171_good093_checked,
    row171_good094_checked,
    row171_good095_checked,
    row171_good096_checked,
    row171_good097_checked,
    row171_good098_checked,
    row171_good099_checked,
    row171_good100_checked,
    row171_good101_checked,
    row171_good102_checked,
    row171_good103_checked,
    row171_good104_checked,
    row171_good105_checked,
    row171_good106_checked,
    row171_good107_checked,
    row171_good108_checked,
    row171_good109_checked,
    row171_good110_checked,
    row171_good111_checked,
    row171_good112_checked,
    row171_good113_checked,
    row171_good114_checked,
    row171_good115_checked,
    row171_good116_checked,
    row171_good117_checked,
    row171_good118_checked,
    row171_good119_checked,
    row171_good120_checked,
    row171_good121_checked,
    row171_good122_checked,
    row171_good123_checked,
    row171_good124_checked,
    row171_good125_checked,
    row171_good126_checked,
    row171_good127_checked,
    row171_good128_checked,
    row171_good129_checked,
    row171_good130_checked,
    row171_good131_checked,
    row171_good132_checked,
    row171_good133_checked,
    row171_good134_checked,
    row171_good135_checked,
    row171_good136_checked,
    row171_good137_checked,
    row171_good138_checked,
    row171_good139_checked,
    row171_good140_checked,
    row171_good141_checked,
    row171_good142_checked,
    row171_good143_checked,
    row171_good144_checked,
    row171_good145_checked,
    row171_good146_checked,
    row171_good147_checked,
    row171_good148_checked,
    row171_good149_checked,
    row171_good150_checked,
    row171_good151_checked,
    row171_good152_checked,
    row171_good153_checked,
    row171_good154_checked,
    row171_good155_checked,
    row171_good156_checked,
    row171_good157_checked,
    row171_good158_checked,
    row171_good159_checked,
    row171_good160_checked,
    row171_good161_checked,
    row171_good162_checked,
    row171_good163_checked,
    row171_good164_checked,
    row171_good165_checked,
    row171_good166_checked,
    row171_good167_checked,
    row171_good168_checked,
    row171_good169_checked,
    row171_good170_checked,
    row171_good171_checked,
    row171_good172_checked,
    row171_good173_checked,
    row171_good174_checked,
    row171_good175_checked,
    row171_good176_checked,
    row171_good177_checked,
    row171_good178_checked,
    row171_good179_checked,
    row171_good180_checked,
    row171_good181_checked,
    row171_good182_checked,
    row171_good183_checked,
    row171_good184_checked,
    row171_good185_checked,
    row171_good186_checked,
    row171_good187_checked,
    row171_good188_checked,
    row171_good189_checked,
    row171_good190_checked,
    row171_good191_checked,
    row171_good192_checked,
    row171_good193_checked,
    row171_good194_checked,
    row171_good195_checked,
    row171_good196_checked,
    row171_good197_checked,
    row171_good198_checked,
    row171_good199_checked,
    row171_good200_checked,
    row171_good201_checked,
    row171_good202_checked,
    row171_good203_checked,
    row171_good204_checked,
    row171_good205_checked,
    row171_good206_checked,
    row171_good207_checked,
    row171_good208_checked,
    row171_good209_checked,
    row171_good210_checked,
    row171_good211_checked,
    row171_good212_checked,
    row171_good213_checked,
    row171_good214_checked,
    row171_good215_checked,
    row171_good216_checked,
    row171_good217_checked,
    row171_good218_checked,
    row171_good219_checked,
    row171_good220_checked,
    row171_good221_checked,
    row171_good222_checked,
    row171_good223_checked,
    row171_good224_checked,
    row171_good225_checked,
    row171_good226_checked,
    row171_good227_checked,
    row171_good228_checked,
    row171_good229_checked,
    row171_good230_checked,
    row171_good231_checked,
    row171_good232_checked,
    row171_good233_checked,
    row171_good234_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_registered :
    decide (row171.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row171_small_checked :
    coverCheck (2 * row171.height.i + 2) (row171.height.i * (row171.height.i - 1) - 1)
      (row171.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row171_layerCover_checked :
    coverCheck (row171.height.i * (row171.height.i - 1)) (row171.height.n0 - 1)
      (row171.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row171_bounds : List NatInterval :=
  [(344, 507), (508, 673), (674, 843), (844, 1009), (1010, 1179), (1180, 1341), (1342, 1497), (1498, 1663), (1664, 1833), (1834, 2001), (2002, 2169), (2170, 2331), (2332, 2481), (2482, 2647), (2648, 2817), (2818, 2973), (2974, 3141), (3142, 3307), (3308, 3477), (3478, 3639), (3640, 3807), (3808, 3973), (3974, 4137), (4138, 4303), (4304, 4467), (4468, 4633), (4634, 4791), (4792, 4959), (4960, 5127), (5128, 5289), (5290, 5451), (5452, 5619), (5620, 5761), (5762, 5919), (5920, 6073), (6074, 6243), (6244, 6399), (6400, 6567), (6568, 6733), (6734, 6903), (6904, 7069), (7070, 7239), (7240, 7407), (7408, 7563), (7564, 7731), (7732, 7897), (7898, 8053), (8054, 8223), (8224, 8391), (8392, 8559), (8560, 8713), (8714, 8883), (8884, 9037), (9038, 9199), (9200, 9369), (9370, 9519), (9520, 9681), (9682, 9849), (9850, 10009), (10010, 10179), (10180, 10347), (10348, 10513), (10514, 10683), (10684, 10837), (10838, 11007), (11008, 11173), (11174, 11343), (11344, 11499), (11500, 11667), (11668, 11827), (11828, 11997), (11998, 12157), (12158, 12327), (12328, 12493), (12494, 12661), (12662, 12829), (12830, 12999), (13000, 13153), (13154, 13321), (13322, 13483), (13484, 13647), (13648, 13803), (13804, 13969), (13970, 14137), (14138, 14277), (14278, 14421), (14422, 14589), (14590, 14733), (14734, 14901), (14902, 15067), (15068, 15231), (15232, 15397), (15398, 15561), (15562, 15729), (15730, 15897), (15898, 16059), (16060, 16227), (16228, 16393), (16394, 16551), (16552, 16717), (16718, 16873), (16874, 17041), (17042, 17211), (17212, 17379), (17380, 17547), (17548, 17709), (17710, 17877), (17878, 18033), (18034, 18183), (18184, 18351), (18352, 18511), (18512, 18673), (18674, 18841), (18842, 19009), (19010, 19179), (19180, 19333), (19334, 19503), (19504, 19671), (19672, 19831), (19832, 19989), (19990, 20149), (20150, 20319), (20320, 20467), (20468, 20613), (20614, 20781), (20782, 20943), (20944, 21109), (21110, 21277), (21278, 21447), (21448, 21603), (21604, 21771), (21772, 21937), (21938, 22107), (22108, 22263), (22264, 22429), (22430, 22579), (22580, 22743), (22744, 22911), (22912, 23077), (23078, 23241), (23242, 23397), (23398, 23541), (23542, 23709), (23710, 23859), (23860, 24027), (24028, 24193), (24194, 24351), (24352, 24507), (24508, 24669), (24670, 24829), (24830, 24991), (24992, 25159), (25160, 25323), (25324, 25491), (25492, 25641), (25642, 25809), (25810, 25971), (25972, 26139), (26140, 26289), (26290, 26437), (26438, 26607), (26608, 26767), (26768, 26929), (26930, 27097), (27098, 27261), (27262, 27429), (27430, 27597), (27598, 27753), (27754, 27921), (27922, 28089), (28090, 28257), (28258, 28399), (28400, 28563), (28564, 28729), (28730, 28899), (28900, 29049), (29050, 29069), (29791, 29938), (31213, 31363), (31364, 31420), (31423, 31499), (31827, 31854), (31974, 31997), (33614, 33659), (33708, 33784), (34347, 34507), (34508, 34561), (36517, 36667), (36668, 36671), (37303, 37380), (37446, 37473), (37500, 37663), (37664, 37708), (38307, 38461), (40401, 40498), (40931, 41097), (41098, 41101), (45056, 45060), (45369, 45423), (47045, 47045), (47526, 47691), (47692, 47694), (48373, 48541), (48542, 48543), (48778, 48838), (49152, 49309), (49310, 49322), (49379, 49468), (50421, 50580), (51076, 51175), (53138, 53215), (53248, 53409), (53410, 53418), (55451, 55611), (55612, 55617), (56307, 56339), (56454, 56477), (57245, 57292), (57344, 57415), (62500, 62580), (68694, 68814), (68921, 69060), (71289, 71457), (71458, 71459), (73167, 73172), (73205, 73337), (83667, 83691), (85805, 85853), (89383, 89543), (93845, 93920), (96774, 96775), (102152, 102180), (103041, 103136), (109503, 109545), (148955, 149047)]

theorem row171_bounds_eq : row171.goods.map goodSegmentBounds = row171_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row171_layer000_intervals : List ColouredInterval :=
  [(2, 32768, 32938), (2, 36864, 37034), (2, 40960, 41130), (2, 45056, 45226), (2, 49152, 49322), (2, 53248, 53418), (2, 32768, 32938), (2, 40960, 41130), (2, 49152, 49322), (2, 57344, 57514), (2, 32768, 32938), (2, 49152, 49322), (2, 32768, 32938), (5, 31250, 31420), (5, 34375, 34545), (5, 37500, 37670), (5, 40625, 40795), (5, 31250, 31420), (5, 46875, 47045), (7, 31213, 31383), (7, 33614, 33784), (7, 50421, 50591), (11, 29282, 29452), (11, 43923, 44093), (13, 57122, 57292), (17, 29478, 29648), (17, 34391, 34561), (17, 39304, 39474), (17, 44217, 44387), (17, 49130, 49300), (17, 54043, 54213), (23, 36501, 36671), (23, 48668, 48838), (29, 48778, 48948), (31, 29791, 29961), (37, 50653, 50823), (53, 30899, 31069), (53, 33708, 33878), (53, 36517, 36687), (59, 31329, 31499), (59, 34810, 34980), (59, 38291, 38461), (59, 41772, 41942), (59, 45253, 45423), (61, 29768, 29938), (61, 33489, 33659), (61, 37210, 37380), (61, 40931, 41101), (61, 44652, 44822), (61, 48373, 48543), (67, 31423, 31593), (67, 35912, 36082), (67, 40401, 40571), (67, 44890, 45060), (67, 49379, 49549), (67, 53868, 54038), (71, 30246, 30416), (71, 35287, 35457), (71, 40328, 40498), (71, 45369, 45539), (71, 50410, 50580), (71, 55451, 55621), (73, 31974, 32144), (73, 37303, 37473), (73, 42632, 42802), (73, 47961, 48131), (73, 53290, 53460), (79, 31205, 31375), (79, 37446, 37616), (79, 43687, 43857), (79, 49928, 50098), (79, 56169, 56339), (83, 34445, 34615), (83, 41334, 41504), (83, 48223, 48393), (83, 55112, 55282), (89, 31684, 31854), (89, 39605, 39775), (89, 47526, 47696), (89, 55447, 55617), (97, 37636, 37806), (97, 47045, 47215), (97, 56454, 56624), (101, 30603, 30773), (101, 40804, 40974), (101, 51005, 51175), (103, 31827, 31997), (103, 42436, 42606), (103, 53045, 53215), (107, 34347, 34517), (107, 45796, 45966), (107, 57245, 57415), (109, 35643, 35813), (109, 47524, 47694), (113, 38307, 38477), (113, 51076, 51246), (127, 32258, 32428), (127, 48387, 48557), (131, 34322, 34492), (131, 51483, 51653), (137, 37538, 37708), (137, 56307, 56477), (139, 38642, 38812), (139, 57963, 58133), (149, 44402, 44572), (151, 45602, 45772), (157, 49298, 49468), (163, 53138, 53308), (167, 55778, 55948)]

def row171_layer000_block000 : List ColouredInterval :=
  [(2, 32768, 32938), (2, 36864, 37034), (2, 40960, 41130), (2, 45056, 45226), (2, 49152, 49322), (2, 53248, 53418), (2, 32768, 32938), (2, 40960, 41130), (2, 49152, 49322), (2, 57344, 57514), (2, 32768, 32938), (2, 49152, 49322), (2, 32768, 32938), (5, 31250, 31420), (5, 34375, 34545), (5, 37500, 37670)]

def row171_layer000_block001 : List ColouredInterval :=
  [(5, 40625, 40795), (5, 31250, 31420), (5, 46875, 47045), (7, 31213, 31383), (7, 33614, 33784), (7, 50421, 50591), (11, 29282, 29452), (11, 43923, 44093), (13, 57122, 57292), (17, 29478, 29648), (17, 34391, 34561), (17, 39304, 39474), (17, 44217, 44387), (17, 49130, 49300), (17, 54043, 54213), (23, 36501, 36671)]

def row171_layer000_block002 : List ColouredInterval :=
  [(23, 48668, 48838), (29, 48778, 48948), (31, 29791, 29961), (37, 50653, 50823), (53, 30899, 31069), (53, 33708, 33878), (53, 36517, 36687), (59, 31329, 31499), (59, 34810, 34980), (59, 38291, 38461), (59, 41772, 41942), (59, 45253, 45423), (61, 29768, 29938), (61, 33489, 33659), (61, 37210, 37380), (61, 40931, 41101)]

def row171_layer000_block003 : List ColouredInterval :=
  [(61, 44652, 44822), (61, 48373, 48543), (67, 31423, 31593), (67, 35912, 36082), (67, 40401, 40571), (67, 44890, 45060), (67, 49379, 49549), (67, 53868, 54038), (71, 30246, 30416), (71, 35287, 35457), (71, 40328, 40498), (71, 45369, 45539), (71, 50410, 50580), (71, 55451, 55621), (73, 31974, 32144), (73, 37303, 37473)]

def row171_layer000_block004 : List ColouredInterval :=
  [(73, 42632, 42802), (73, 47961, 48131), (73, 53290, 53460), (79, 31205, 31375), (79, 37446, 37616), (79, 43687, 43857), (79, 49928, 50098), (79, 56169, 56339), (83, 34445, 34615), (83, 41334, 41504), (83, 48223, 48393), (83, 55112, 55282), (89, 31684, 31854), (89, 39605, 39775), (89, 47526, 47696), (89, 55447, 55617)]

def row171_layer000_block005 : List ColouredInterval :=
  [(97, 37636, 37806), (97, 47045, 47215), (97, 56454, 56624), (101, 30603, 30773), (101, 40804, 40974), (101, 51005, 51175), (103, 31827, 31997), (103, 42436, 42606), (103, 53045, 53215), (107, 34347, 34517), (107, 45796, 45966), (107, 57245, 57415), (109, 35643, 35813), (109, 47524, 47694), (113, 38307, 38477), (113, 51076, 51246)]

def row171_layer000_block006 : List ColouredInterval :=
  [(127, 32258, 32428), (127, 48387, 48557), (131, 34322, 34492), (131, 51483, 51653), (137, 37538, 37708), (137, 56307, 56477), (139, 38642, 38812), (139, 57963, 58133), (149, 44402, 44572), (151, 45602, 45772), (157, 49298, 49468), (163, 53138, 53308), (167, 55778, 55948)]

def row171_layer000_chunks : List (List ColouredInterval) :=
  [row171_layer000_block000, row171_layer000_block001, row171_layer000_block002, row171_layer000_block003, row171_layer000_block004, row171_layer000_block005, row171_layer000_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_layer000_arithmetic : LayerArithmeticValid row171.height { lower := 29070, upper := 58140, M := 13 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_layer000_enumeration :
    activePowerIntervalList 171 13 29070 58140 = row171_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_layer000_pairs000 :
    row171_layer000_block000.all (fun I => row171_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row171_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_layer000_pairs001 :
    row171_layer000_block001.all (fun I => row171_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row171_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_layer000_pairs002 :
    row171_layer000_block002.all (fun I => row171_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row171_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_layer000_pairs003 :
    row171_layer000_block003.all (fun I => row171_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row171_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_layer000_pairs004 :
    row171_layer000_block004.all (fun I => row171_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row171_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_layer000_pairs005 :
    row171_layer000_block005.all (fun I => row171_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row171_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_layer000_pairs006 :
    row171_layer000_block006.all (fun I => row171_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row171_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_layer000_chunks_eq : row171_layer000_chunks.flatten = row171_layer000_intervals := by
  rfl

theorem row171_layer000_pairs : pairCoverCheck row171_layer000_intervals row171_bounds = true := by
  apply pairCoverCheck_of_chunks row171_layer000_chunks_eq
  intro block hblock
  simp only [row171_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row171_layer000_pairs000
  · exact row171_layer000_pairs001
  · exact row171_layer000_pairs002
  · exact row171_layer000_pairs003
  · exact row171_layer000_pairs004
  · exact row171_layer000_pairs005
  · exact row171_layer000_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_layer000_checked :
    coverLayerCheck row171.height row171.goods { lower := 29070, upper := 58140, M := 13 } = true := by
  exact coverLayerCheck_of_parts row171_layer000_arithmetic row171_layer000_enumeration row171_bounds_eq row171_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row171_layer001_intervals : List ColouredInterval :=
  [(2, 65536, 65706), (2, 73728, 73898), (2, 81920, 82090), (2, 65536, 65706), (2, 81920, 82090), (2, 98304, 98474), (2, 114688, 114858), (2, 65536, 65706), (2, 98304, 98474), (2, 65536, 65706), (3, 59049, 59219), (5, 62500, 62670), (5, 78125, 78295), (5, 93750, 93920), (5, 109375, 109545), (5, 78125, 78295), (7, 67228, 67398), (7, 84035, 84205), (7, 100842, 101012), (11, 58564, 58734), (11, 73205, 73375), (11, 87846, 88016), (11, 102487, 102657), (13, 85683, 85853), (13, 114244, 114414), (17, 83521, 83691), (23, 60835, 61005), (23, 73002, 73172), (23, 85169, 85339), (23, 97336, 97506), (23, 109503, 109673), (29, 73167, 73337), (29, 97556, 97726), (31, 59582, 59752), (31, 89373, 89543), (37, 101306, 101476), (41, 68921, 69091), (43, 79507, 79677), (47, 103823, 103993), (79, 62410, 62580), (83, 62001, 62171), (83, 68890, 69060), (89, 63368, 63538), (89, 71289, 71459), (89, 79210, 79380), (97, 65863, 66033), (97, 75272, 75442), (97, 84681, 84851), (97, 94090, 94260), (101, 61206, 61376), (101, 71407, 71577), (101, 81608, 81778), (101, 91809, 91979), (101, 102010, 102180), (103, 63654, 63824), (103, 74263, 74433), (103, 84872, 85042), (103, 95481, 95651), (103, 106090, 106260), (107, 68694, 68864), (107, 80143, 80313), (107, 91592, 91762), (107, 103041, 103211), (107, 114490, 114660), (109, 59405, 59575), (109, 71286, 71456), (109, 83167, 83337), (109, 95048, 95218), (109, 106929, 107099), (113, 63845, 64015), (113, 76614, 76784), (113, 89383, 89553), (113, 102152, 102322), (113, 114921, 115091), (127, 64516, 64686), (127, 80645, 80815), (127, 96774, 96944), (127, 112903, 113073), (131, 68644, 68814), (131, 85805, 85975), (131, 102966, 103136), (137, 75076, 75246), (137, 93845, 94015), (137, 112614, 112784), (139, 77284, 77454), (139, 96605, 96775), (139, 115926, 116096), (149, 66603, 66773), (149, 88804, 88974), (149, 111005, 111175), (151, 68403, 68573), (151, 91204, 91374), (151, 114005, 114175), (157, 73947, 74117), (157, 98596, 98766), (163, 79707, 79877), (163, 106276, 106446), (167, 83667, 83837), (167, 111556, 111726)]

def row171_layer001_block000 : List ColouredInterval :=
  [(2, 65536, 65706), (2, 73728, 73898), (2, 81920, 82090), (2, 65536, 65706), (2, 81920, 82090), (2, 98304, 98474), (2, 114688, 114858), (2, 65536, 65706), (2, 98304, 98474), (2, 65536, 65706), (3, 59049, 59219), (5, 62500, 62670), (5, 78125, 78295), (5, 93750, 93920), (5, 109375, 109545), (5, 78125, 78295)]

def row171_layer001_block001 : List ColouredInterval :=
  [(7, 67228, 67398), (7, 84035, 84205), (7, 100842, 101012), (11, 58564, 58734), (11, 73205, 73375), (11, 87846, 88016), (11, 102487, 102657), (13, 85683, 85853), (13, 114244, 114414), (17, 83521, 83691), (23, 60835, 61005), (23, 73002, 73172), (23, 85169, 85339), (23, 97336, 97506), (23, 109503, 109673), (29, 73167, 73337)]

def row171_layer001_block002 : List ColouredInterval :=
  [(29, 97556, 97726), (31, 59582, 59752), (31, 89373, 89543), (37, 101306, 101476), (41, 68921, 69091), (43, 79507, 79677), (47, 103823, 103993), (79, 62410, 62580), (83, 62001, 62171), (83, 68890, 69060), (89, 63368, 63538), (89, 71289, 71459), (89, 79210, 79380), (97, 65863, 66033), (97, 75272, 75442), (97, 84681, 84851)]

def row171_layer001_block003 : List ColouredInterval :=
  [(97, 94090, 94260), (101, 61206, 61376), (101, 71407, 71577), (101, 81608, 81778), (101, 91809, 91979), (101, 102010, 102180), (103, 63654, 63824), (103, 74263, 74433), (103, 84872, 85042), (103, 95481, 95651), (103, 106090, 106260), (107, 68694, 68864), (107, 80143, 80313), (107, 91592, 91762), (107, 103041, 103211), (107, 114490, 114660)]

def row171_layer001_block004 : List ColouredInterval :=
  [(109, 59405, 59575), (109, 71286, 71456), (109, 83167, 83337), (109, 95048, 95218), (109, 106929, 107099), (113, 63845, 64015), (113, 76614, 76784), (113, 89383, 89553), (113, 102152, 102322), (113, 114921, 115091), (127, 64516, 64686), (127, 80645, 80815), (127, 96774, 96944), (127, 112903, 113073), (131, 68644, 68814), (131, 85805, 85975)]

def row171_layer001_block005 : List ColouredInterval :=
  [(131, 102966, 103136), (137, 75076, 75246), (137, 93845, 94015), (137, 112614, 112784), (139, 77284, 77454), (139, 96605, 96775), (139, 115926, 116096), (149, 66603, 66773), (149, 88804, 88974), (149, 111005, 111175), (151, 68403, 68573), (151, 91204, 91374), (151, 114005, 114175), (157, 73947, 74117), (157, 98596, 98766), (163, 79707, 79877)]

def row171_layer001_block006 : List ColouredInterval :=
  [(163, 106276, 106446), (167, 83667, 83837), (167, 111556, 111726)]

def row171_layer001_chunks : List (List ColouredInterval) :=
  [row171_layer001_block000, row171_layer001_block001, row171_layer001_block002, row171_layer001_block003, row171_layer001_block004, row171_layer001_block005, row171_layer001_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layer001_intervals
