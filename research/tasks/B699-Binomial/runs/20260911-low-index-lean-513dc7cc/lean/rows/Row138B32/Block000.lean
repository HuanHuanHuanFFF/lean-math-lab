import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row138_height : HeightCertificateDatum := { i := 138, r := 45, s := 97, n0Power10 := 8 }

def row138_goods : List GoodSegment := [
  { lower := 278, upper := 414, witness := RowWitness.topPrime 277 },
  { lower := 415, upper := 546, witness := RowWitness.topPrime 409 },
  { lower := 547, upper := 684, witness := RowWitness.topPrime 547 },
  { lower := 685, upper := 820, witness := RowWitness.topPrime 683 },
  { lower := 821, upper := 958, witness := RowWitness.topPrime 821 },
  { lower := 959, upper := 1090, witness := RowWitness.topPrime 953 },
  { lower := 1091, upper := 1228, witness := RowWitness.topPrime 1091 },
  { lower := 1229, upper := 1366, witness := RowWitness.topPrime 1229 },
  { lower := 1367, upper := 1504, witness := RowWitness.topPrime 1367 },
  { lower := 1505, upper := 1636, witness := RowWitness.topPrime 1499 },
  { lower := 1637, upper := 1774, witness := RowWitness.topPrime 1637 },
  { lower := 1775, upper := 1896, witness := RowWitness.topPrime 1759 },
  { lower := 1897, upper := 2026, witness := RowWitness.topPrime 1889 },
  { lower := 2027, upper := 2164, witness := RowWitness.topPrime 2027 },
  { lower := 2165, upper := 2298, witness := RowWitness.topPrime 2161 },
  { lower := 2299, upper := 2434, witness := RowWitness.topPrime 2297 },
  { lower := 2435, upper := 2560, witness := RowWitness.topPrime 2423 },
  { lower := 2561, upper := 2694, witness := RowWitness.topPrime 2557 },
  { lower := 2695, upper := 2830, witness := RowWitness.topPrime 2693 },
  { lower := 2831, upper := 2956, witness := RowWitness.topPrime 2819 },
  { lower := 2957, upper := 3094, witness := RowWitness.topPrime 2957 },
  { lower := 3095, upper := 3226, witness := RowWitness.topPrime 3089 },
  { lower := 3227, upper := 3358, witness := RowWitness.topPrime 3221 },
  { lower := 3359, upper := 3496, witness := RowWitness.topPrime 3359 },
  { lower := 3497, upper := 3628, witness := RowWitness.topPrime 3491 },
  { lower := 3629, upper := 3760, witness := RowWitness.topPrime 3623 },
  { lower := 3761, upper := 3898, witness := RowWitness.topPrime 3761 },
  { lower := 3899, upper := 4026, witness := RowWitness.topPrime 3889 },
  { lower := 4027, upper := 4164, witness := RowWitness.topPrime 4027 },
  { lower := 4165, upper := 4296, witness := RowWitness.topPrime 4159 },
  { lower := 4297, upper := 4434, witness := RowWitness.topPrime 4297 },
  { lower := 4435, upper := 4560, witness := RowWitness.topPrime 4423 },
  { lower := 4561, upper := 4698, witness := RowWitness.topPrime 4561 },
  { lower := 4699, upper := 4828, witness := RowWitness.topPrime 4691 },
  { lower := 4829, upper := 4954, witness := RowWitness.topPrime 4817 },
  { lower := 4955, upper := 5088, witness := RowWitness.topPrime 4951 },
  { lower := 5089, upper := 5224, witness := RowWitness.topPrime 5087 },
  { lower := 5225, upper := 5346, witness := RowWitness.topPrime 5209 },
  { lower := 5347, upper := 5484, witness := RowWitness.topPrime 5347 },
  { lower := 5485, upper := 5620, witness := RowWitness.topPrime 5483 },
  { lower := 5621, upper := 5728, witness := RowWitness.topPrime 5591 },
  { lower := 5729, upper := 5854, witness := RowWitness.topPrime 5717 },
  { lower := 5855, upper := 5988, witness := RowWitness.topPrime 5851 },
  { lower := 5989, upper := 6124, witness := RowWitness.topPrime 5987 },
  { lower := 6125, upper := 6258, witness := RowWitness.topPrime 6121 },
  { lower := 6259, upper := 6394, witness := RowWitness.topPrime 6257 },
  { lower := 6395, upper := 6526, witness := RowWitness.topPrime 6389 },
  { lower := 6527, upper := 6658, witness := RowWitness.topPrime 6521 },
  { lower := 6659, upper := 6796, witness := RowWitness.topPrime 6659 },
  { lower := 6797, upper := 6930, witness := RowWitness.topPrime 6793 },
  { lower := 6931, upper := 7054, witness := RowWitness.topPrime 6917 },
  { lower := 7055, upper := 7180, witness := RowWitness.topPrime 7043 },
  { lower := 7181, upper := 7314, witness := RowWitness.topPrime 7177 },
  { lower := 7315, upper := 7446, witness := RowWitness.topPrime 7309 },
  { lower := 7447, upper := 7570, witness := RowWitness.topPrime 7433 },
  { lower := 7571, upper := 7698, witness := RowWitness.topPrime 7561 },
  { lower := 7699, upper := 7836, witness := RowWitness.topPrime 7699 },
  { lower := 7837, upper := 7966, witness := RowWitness.topPrime 7829 },
  { lower := 7967, upper := 8100, witness := RowWitness.topPrime 7963 },
  { lower := 8101, upper := 8238, witness := RowWitness.topPrime 8101 },
  { lower := 8239, upper := 8374, witness := RowWitness.topPrime 8237 },
  { lower := 8375, upper := 8506, witness := RowWitness.topPrime 8369 },
  { lower := 8507, upper := 8638, witness := RowWitness.topPrime 8501 },
  { lower := 8639, upper := 8766, witness := RowWitness.topPrime 8629 },
  { lower := 8767, upper := 8898, witness := RowWitness.topPrime 8761 },
  { lower := 8899, upper := 9030, witness := RowWitness.topPrime 8893 },
  { lower := 9031, upper := 9166, witness := RowWitness.topPrime 9029 },
  { lower := 9167, upper := 9298, witness := RowWitness.topPrime 9161 },
  { lower := 9299, upper := 9430, witness := RowWitness.topPrime 9293 },
  { lower := 9431, upper := 9568, witness := RowWitness.topPrime 9431 },
  { lower := 9569, upper := 9688, witness := RowWitness.topPrime 9551 },
  { lower := 9689, upper := 9826, witness := RowWitness.topPrime 9689 },
  { lower := 9827, upper := 9954, witness := RowWitness.topPrime 9817 },
  { lower := 9955, upper := 10086, witness := RowWitness.topPrime 9949 },
  { lower := 10087, upper := 10216, witness := RowWitness.topPrime 10079 },
  { lower := 10217, upper := 10348, witness := RowWitness.topPrime 10211 },
  { lower := 10349, upper := 10480, witness := RowWitness.topPrime 10343 },
  { lower := 10481, upper := 10614, witness := RowWitness.topPrime 10477 },
  { lower := 10615, upper := 10750, witness := RowWitness.topPrime 10613 },
  { lower := 10751, upper := 10876, witness := RowWitness.topPrime 10739 },
  { lower := 10877, upper := 11004, witness := RowWitness.topPrime 10867 },
  { lower := 11005, upper := 11140, witness := RowWitness.topPrime 11003 },
  { lower := 11141, upper := 11268, witness := RowWitness.topPrime 11131 },
  { lower := 11269, upper := 11398, witness := RowWitness.topPrime 11261 },
  { lower := 11399, upper := 11536, witness := RowWitness.topPrime 11399 },
  { lower := 11537, upper := 11664, witness := RowWitness.topPrime 11527 },
  { lower := 11665, upper := 11794, witness := RowWitness.topPrime 11657 },
  { lower := 11795, upper := 11926, witness := RowWitness.topPrime 11789 },
  { lower := 11927, upper := 12064, witness := RowWitness.topPrime 11927 },
  { lower := 12065, upper := 12186, witness := RowWitness.topPrime 12049 },
  { lower := 12187, upper := 12300, witness := RowWitness.topPrime 12163 },
  { lower := 12301, upper := 12438, witness := RowWitness.topPrime 12301 },
  { lower := 12439, upper := 12574, witness := RowWitness.topPrime 12437 },
  { lower := 12575, upper := 12706, witness := RowWitness.topPrime 12569 },
  { lower := 12707, upper := 12840, witness := RowWitness.topPrime 12703 },
  { lower := 12841, upper := 12978, witness := RowWitness.topPrime 12841 },
  { lower := 12979, upper := 13116, witness := RowWitness.topPrime 12979 },
  { lower := 13117, upper := 13246, witness := RowWitness.topPrime 13109 },
  { lower := 13247, upper := 13378, witness := RowWitness.topPrime 13241 },
  { lower := 13379, upper := 13504, witness := RowWitness.topPrime 13367 },
  { lower := 13505, upper := 13636, witness := RowWitness.topPrime 13499 },
  { lower := 13637, upper := 13770, witness := RowWitness.topPrime 13633 },
  { lower := 13771, upper := 13900, witness := RowWitness.topPrime 13763 },
  { lower := 13901, upper := 14038, witness := RowWitness.topPrime 13901 },
  { lower := 14039, upper := 14170, witness := RowWitness.topPrime 14033 },
  { lower := 14171, upper := 14296, witness := RowWitness.topPrime 14159 },
  { lower := 14297, upper := 14430, witness := RowWitness.topPrime 14293 },
  { lower := 14431, upper := 14568, witness := RowWitness.topPrime 14431 },
  { lower := 14569, upper := 14700, witness := RowWitness.topPrime 14563 },
  { lower := 14701, upper := 14836, witness := RowWitness.topPrime 14699 },
  { lower := 14837, upper := 14968, witness := RowWitness.topPrime 14831 },
  { lower := 14969, upper := 15106, witness := RowWitness.topPrime 14969 },
  { lower := 15107, upper := 15244, witness := RowWitness.topPrime 15107 },
  { lower := 15245, upper := 15378, witness := RowWitness.topPrime 15241 },
  { lower := 15379, upper := 15514, witness := RowWitness.topPrime 15377 },
  { lower := 15515, upper := 15648, witness := RowWitness.topPrime 15511 },
  { lower := 15649, upper := 15786, witness := RowWitness.topPrime 15649 },
  { lower := 15787, upper := 15924, witness := RowWitness.topPrime 15787 },
  { lower := 15925, upper := 16060, witness := RowWitness.topPrime 15923 },
  { lower := 16061, upper := 16198, witness := RowWitness.topPrime 16061 },
  { lower := 16199, upper := 16330, witness := RowWitness.topPrime 16193 },
  { lower := 16331, upper := 16456, witness := RowWitness.topPrime 16319 },
  { lower := 16457, upper := 16590, witness := RowWitness.topPrime 16453 },
  { lower := 16591, upper := 16710, witness := RowWitness.topPrime 16573 },
  { lower := 16711, upper := 16840, witness := RowWitness.topPrime 16703 },
  { lower := 16841, upper := 16968, witness := RowWitness.topPrime 16831 },
  { lower := 16969, upper := 17100, witness := RowWitness.topPrime 16963 },
  { lower := 17101, upper := 17236, witness := RowWitness.topPrime 17099 },
  { lower := 17237, upper := 17368, witness := RowWitness.topPrime 17231 },
  { lower := 17369, upper := 17496, witness := RowWitness.topPrime 17359 },
  { lower := 17497, upper := 17634, witness := RowWitness.topPrime 17497 },
  { lower := 17635, upper := 17764, witness := RowWitness.topPrime 17627 },
  { lower := 17765, upper := 17898, witness := RowWitness.topPrime 17761 },
  { lower := 17899, upper := 18028, witness := RowWitness.topPrime 17891 },
  { lower := 18029, upper := 18150, witness := RowWitness.topPrime 18013 },
  { lower := 18151, upper := 18286, witness := RowWitness.topPrime 18149 },
  { lower := 18287, upper := 18424, witness := RowWitness.topPrime 18287 },
  { lower := 18425, upper := 18550, witness := RowWitness.topPrime 18413 },
  { lower := 18551, upper := 18678, witness := RowWitness.topPrime 18541 },
  { lower := 18679, upper := 18816, witness := RowWitness.topPrime 18679 },
  { lower := 18817, upper := 18906, witness := RowWitness.topPrime 18803 },
  { lower := 19208, upper := 19303, witness := RowWitness.topPrime 19207 },
  { lower := 19663, upper := 19798, witness := RowWitness.topPrime 19661 },
  { lower := 19799, upper := 19820, witness := RowWitness.topPrime 19793 },
  { lower := 19881, upper := 19910, witness := RowWitness.topPrime 19867 },
  { lower := 19965, upper := 20018, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20298, witness := RowWitness.topPrime 20161 },
  { lower := 20299, upper := 20301, witness := RowWitness.topPrime 20297 },
  { lower := 20402, upper := 20476, witness := RowWitness.topPrime 20399 },
  { lower := 20480, upper := 20616, witness := RowWitness.topPrime 20479 },
  { lower := 20617, upper := 20714, witness := RowWitness.topPrime 20611 },
  { lower := 21296, upper := 21420, witness := RowWitness.topPrime 21283 },
  { lower := 21421, upper := 21433, witness := RowWitness.topPrime 21419 },
  { lower := 21875, upper := 22008, witness := RowWitness.topPrime 21871 },
  { lower := 22009, upper := 22041, witness := RowWitness.topPrime 22003 },
  { lower := 22090, upper := 22107, witness := RowWitness.topPrime 22079 },
  { lower := 22188, upper := 22227, witness := RowWitness.topPrime 22171 },
  { lower := 22445, upper := 22463, witness := RowWitness.topPrime 22441 },
  { lower := 22472, upper := 22582, witness := RowWitness.topPrime 22469 },
  { lower := 23763, upper := 23898, witness := RowWitness.topPrime 23761 },
  { lower := 23899, upper := 23899, witness := RowWitness.topPrime 23899 },
  { lower := 24037, upper := 24147, witness := RowWitness.topPrime 24029 },
  { lower := 24167, upper := 24174, witness := RowWitness.topPrime 24151 },
  { lower := 24299, upper := 24304, witness := RowWitness.topPrime 24281 },
  { lower := 24367, upper := 24496, witness := RowWitness.topPrime 24359 },
  { lower := 24497, upper := 24504, witness := RowWitness.topPrime 24481 },
  { lower := 24576, upper := 24702, witness := RowWitness.topPrime 24571 },
  { lower := 25000, upper := 25101, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25326, witness := RowWitness.topPrime 25189 },
  { lower := 25327, upper := 25352, witness := RowWitness.topPrime 25321 },
  { lower := 26364, upper := 26381, witness := RowWitness.topPrime 26357 },
  { lower := 26411, upper := 26501, witness := RowWitness.topPrime 26407 },
  { lower := 26508, upper := 26548, witness := RowWitness.topPrime 26501 },
  { lower := 26645, upper := 26645, witness := RowWitness.topPrime 26641 },
  { lower := 26934, upper := 27033, witness := RowWitness.topPrime 26927 },
  { lower := 27556, upper := 27573, witness := RowWitness.topPrime 27551 },
  { lower := 27848, upper := 27872, witness := RowWitness.topPrime 27847 },
  { lower := 28125, upper := 28260, witness := RowWitness.topPrime 28123 },
  { lower := 28261, upper := 28262, witness := RowWitness.topPrime 28229 },
  { lower := 28577, upper := 28710, witness := RowWitness.topPrime 28573 },
  { lower := 28711, upper := 28714, witness := RowWitness.topPrime 28711 },
  { lower := 28717, upper := 28809, witness := RowWitness.topPrime 28711 },
  { lower := 28812, upper := 28854, witness := RowWitness.topPrime 28807 },
  { lower := 29584, upper := 29615, witness := RowWitness.topPrime 29581 },
  { lower := 29791, upper := 29905, witness := RowWitness.topPrime 29789 },
  { lower := 30926, upper := 31036, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31330, witness := RowWitness.topPrime 31193 },
  { lower := 31331, upper := 31387, witness := RowWitness.topPrime 31327 },
  { lower := 31423, upper := 31534, witness := RowWitness.topPrime 31397 },
  { lower := 31535, upper := 31560, witness := RowWitness.topPrime 31531 },
  { lower := 32805, upper := 32905, witness := RowWitness.topPrime 32803 },
  { lower := 33614, upper := 33626, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33751, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34456, witness := RowWitness.topPrime 34319 },
  { lower := 34457, upper := 34528, witness := RowWitness.topPrime 34457 },
  { lower := 35287, upper := 35289, witness := RowWitness.topPrime 35281 },
  { lower := 35344, upper := 35424, witness := RowWitness.topPrime 35339 },
  { lower := 36015, upper := 36049, witness := RowWitness.topPrime 36013 },
  { lower := 37303, upper := 37347, witness := RowWitness.topPrime 37277 },
  { lower := 37349, upper := 37440, witness := RowWitness.topPrime 37339 },
  { lower := 37446, upper := 37486, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37630, witness := RowWitness.topPrime 37493 },
  { lower := 37631, upper := 37690, witness := RowWitness.topPrime 37619 },
  { lower := 38307, upper := 38428, witness := RowWitness.topPrime 38303 },
  { lower := 39366, upper := 39441, witness := RowWitness.topPrime 39359 },
  { lower := 40401, upper := 40465, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 40941, witness := RowWitness.topPrime 40927 },
  { lower := 40960, upper := 41068, witness := RowWitness.topPrime 40949 },
  { lower := 45369, upper := 45390, witness := RowWitness.topPrime 45361 },
  { lower := 47526, upper := 47658, witness := RowWitness.topPrime 47521 },
  { lower := 47659, upper := 47661, witness := RowWitness.topPrime 47659 },
  { lower := 48013, upper := 48098, witness := RowWitness.topPrime 47981 },
  { lower := 48387, upper := 48510, witness := RowWitness.topPrime 48383 },
  { lower := 49152, upper := 49267, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50547, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51142, witness := RowWitness.topPrime 51071 },
  { lower := 55451, upper := 55578, witness := RowWitness.topPrime 55441 },
  { lower := 55579, upper := 55584, witness := RowWitness.topPrime 55579 },
  { lower := 57245, upper := 57259, witness := RowWitness.topPrime 57241 },
  { lower := 58619, upper := 58701, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59093, witness := RowWitness.topPrime 59029 },
  { lower := 62500, upper := 62547, witness := RowWitness.topPrime 62497 },
  { lower := 63869, upper := 64000, witness := RowWitness.topPrime 63863 },
  { lower := 64001, upper := 64006, witness := RowWitness.topPrime 63997 },
  { lower := 65536, upper := 65658, witness := RowWitness.topPrime 65521 },
  { lower := 65659, upper := 65670, witness := RowWitness.topPrime 65657 },
  { lower := 68644, upper := 68776, witness := RowWitness.topPrime 68639 },
  { lower := 68777, upper := 68788, witness := RowWitness.topPrime 68777 },
  { lower := 68921, upper := 69027, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71424, witness := RowWitness.topPrime 71287 },
  { lower := 71425, upper := 71426, witness := RowWitness.topPrime 71419 },
  { lower := 73205, upper := 73304, witness := RowWitness.topPrime 73189 },
  { lower := 85805, upper := 85820, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89510, witness := RowWitness.topPrime 89381 },
  { lower := 93845, upper := 93887, witness := RowWitness.topPrime 93827 },
  { lower := 103041, upper := 103103, witness := RowWitness.topPrime 103007 },
  { lower := 146410, upper := 146471, witness := RowWitness.topPrime 146407 },
  { lower := 148955, upper := 149014, witness := RowWitness.topPrime 148949 }
]

def row138_layers : List CoverLayer := [
  { lower := 18906, upper := 37812, M := 17 },
  { lower := 37812, upper := 75624, M := 13 },
  { lower := 75624, upper := 151248, M := 10 },
  { lower := 151248, upper := 302496, M := 8 },
  { lower := 302496, upper := 604992, M := 6 },
  { lower := 604992, upper := 1209984, M := 5 },
  { lower := 1209984, upper := 2419968, M := 4 },
  { lower := 2419968, upper := 4839936, M := 3 },
  { lower := 4839936, upper := 9679872, M := 2 },
  { lower := 9679872, upper := 19359744, M := 2 },
  { lower := 19359744, upper := 38719488, M := 2 },
  { lower := 38719488, upper := 77438976, M := 1 },
  { lower := 77438976, upper := 100000000, M := 1 }
]

def row138 : FiniteCoverRow := {
  height := row138_height,
  goods := row138_goods,
  layers := row138_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_good000_checked :
    goodSegmentCheck 138 45 97
      { lower := 278, upper := 414, witness := RowWitness.topPrime 277 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good001_checked :
    goodSegmentCheck 138 45 97
      { lower := 415, upper := 546, witness := RowWitness.topPrime 409 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good002_checked :
    goodSegmentCheck 138 45 97
      { lower := 547, upper := 684, witness := RowWitness.topPrime 547 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good003_checked :
    goodSegmentCheck 138 45 97
      { lower := 685, upper := 820, witness := RowWitness.topPrime 683 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good004_checked :
    goodSegmentCheck 138 45 97
      { lower := 821, upper := 958, witness := RowWitness.topPrime 821 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good005_checked :
    goodSegmentCheck 138 45 97
      { lower := 959, upper := 1090, witness := RowWitness.topPrime 953 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good006_checked :
    goodSegmentCheck 138 45 97
      { lower := 1091, upper := 1228, witness := RowWitness.topPrime 1091 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good007_checked :
    goodSegmentCheck 138 45 97
      { lower := 1229, upper := 1366, witness := RowWitness.topPrime 1229 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good008_checked :
    goodSegmentCheck 138 45 97
      { lower := 1367, upper := 1504, witness := RowWitness.topPrime 1367 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good009_checked :
    goodSegmentCheck 138 45 97
      { lower := 1505, upper := 1636, witness := RowWitness.topPrime 1499 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good010_checked :
    goodSegmentCheck 138 45 97
      { lower := 1637, upper := 1774, witness := RowWitness.topPrime 1637 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good011_checked :
    goodSegmentCheck 138 45 97
      { lower := 1775, upper := 1896, witness := RowWitness.topPrime 1759 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good012_checked :
    goodSegmentCheck 138 45 97
      { lower := 1897, upper := 2026, witness := RowWitness.topPrime 1889 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good013_checked :
    goodSegmentCheck 138 45 97
      { lower := 2027, upper := 2164, witness := RowWitness.topPrime 2027 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good014_checked :
    goodSegmentCheck 138 45 97
      { lower := 2165, upper := 2298, witness := RowWitness.topPrime 2161 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good015_checked :
    goodSegmentCheck 138 45 97
      { lower := 2299, upper := 2434, witness := RowWitness.topPrime 2297 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_good016_checked :
    goodSegmentCheck 138 45 97
      { lower := 2435, upper := 2560, witness := RowWitness.topPrime 2423 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good017_checked :
    goodSegmentCheck 138 45 97
      { lower := 2561, upper := 2694, witness := RowWitness.topPrime 2557 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good018_checked :
    goodSegmentCheck 138 45 97
      { lower := 2695, upper := 2830, witness := RowWitness.topPrime 2693 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good019_checked :
    goodSegmentCheck 138 45 97
      { lower := 2831, upper := 2956, witness := RowWitness.topPrime 2819 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good020_checked :
    goodSegmentCheck 138 45 97
      { lower := 2957, upper := 3094, witness := RowWitness.topPrime 2957 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good021_checked :
    goodSegmentCheck 138 45 97
      { lower := 3095, upper := 3226, witness := RowWitness.topPrime 3089 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good022_checked :
    goodSegmentCheck 138 45 97
      { lower := 3227, upper := 3358, witness := RowWitness.topPrime 3221 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good023_checked :
    goodSegmentCheck 138 45 97
      { lower := 3359, upper := 3496, witness := RowWitness.topPrime 3359 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good024_checked :
    goodSegmentCheck 138 45 97
      { lower := 3497, upper := 3628, witness := RowWitness.topPrime 3491 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good025_checked :
    goodSegmentCheck 138 45 97
      { lower := 3629, upper := 3760, witness := RowWitness.topPrime 3623 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good026_checked :
    goodSegmentCheck 138 45 97
      { lower := 3761, upper := 3898, witness := RowWitness.topPrime 3761 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good027_checked :
    goodSegmentCheck 138 45 97
      { lower := 3899, upper := 4026, witness := RowWitness.topPrime 3889 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good028_checked :
    goodSegmentCheck 138 45 97
      { lower := 4027, upper := 4164, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good029_checked :
    goodSegmentCheck 138 45 97
      { lower := 4165, upper := 4296, witness := RowWitness.topPrime 4159 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good030_checked :
    goodSegmentCheck 138 45 97
      { lower := 4297, upper := 4434, witness := RowWitness.topPrime 4297 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good031_checked :
    goodSegmentCheck 138 45 97
      { lower := 4435, upper := 4560, witness := RowWitness.topPrime 4423 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_good032_checked :
    goodSegmentCheck 138 45 97
      { lower := 4561, upper := 4698, witness := RowWitness.topPrime 4561 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good033_checked :
    goodSegmentCheck 138 45 97
      { lower := 4699, upper := 4828, witness := RowWitness.topPrime 4691 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good034_checked :
    goodSegmentCheck 138 45 97
      { lower := 4829, upper := 4954, witness := RowWitness.topPrime 4817 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good035_checked :
    goodSegmentCheck 138 45 97
      { lower := 4955, upper := 5088, witness := RowWitness.topPrime 4951 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good036_checked :
    goodSegmentCheck 138 45 97
      { lower := 5089, upper := 5224, witness := RowWitness.topPrime 5087 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good037_checked :
    goodSegmentCheck 138 45 97
      { lower := 5225, upper := 5346, witness := RowWitness.topPrime 5209 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good038_checked :
    goodSegmentCheck 138 45 97
      { lower := 5347, upper := 5484, witness := RowWitness.topPrime 5347 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good039_checked :
    goodSegmentCheck 138 45 97
      { lower := 5485, upper := 5620, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good040_checked :
    goodSegmentCheck 138 45 97
      { lower := 5621, upper := 5728, witness := RowWitness.topPrime 5591 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good041_checked :
    goodSegmentCheck 138 45 97
      { lower := 5729, upper := 5854, witness := RowWitness.topPrime 5717 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good042_checked :
    goodSegmentCheck 138 45 97
      { lower := 5855, upper := 5988, witness := RowWitness.topPrime 5851 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good043_checked :
    goodSegmentCheck 138 45 97
      { lower := 5989, upper := 6124, witness := RowWitness.topPrime 5987 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good044_checked :
    goodSegmentCheck 138 45 97
      { lower := 6125, upper := 6258, witness := RowWitness.topPrime 6121 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good045_checked :
    goodSegmentCheck 138 45 97
      { lower := 6259, upper := 6394, witness := RowWitness.topPrime 6257 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good046_checked :
    goodSegmentCheck 138 45 97
      { lower := 6395, upper := 6526, witness := RowWitness.topPrime 6389 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good047_checked :
    goodSegmentCheck 138 45 97
      { lower := 6527, upper := 6658, witness := RowWitness.topPrime 6521 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_good048_checked :
    goodSegmentCheck 138 45 97
      { lower := 6659, upper := 6796, witness := RowWitness.topPrime 6659 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good049_checked :
    goodSegmentCheck 138 45 97
      { lower := 6797, upper := 6930, witness := RowWitness.topPrime 6793 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good050_checked :
    goodSegmentCheck 138 45 97
      { lower := 6931, upper := 7054, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good051_checked :
    goodSegmentCheck 138 45 97
      { lower := 7055, upper := 7180, witness := RowWitness.topPrime 7043 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good052_checked :
    goodSegmentCheck 138 45 97
      { lower := 7181, upper := 7314, witness := RowWitness.topPrime 7177 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good053_checked :
    goodSegmentCheck 138 45 97
      { lower := 7315, upper := 7446, witness := RowWitness.topPrime 7309 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good054_checked :
    goodSegmentCheck 138 45 97
      { lower := 7447, upper := 7570, witness := RowWitness.topPrime 7433 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good055_checked :
    goodSegmentCheck 138 45 97
      { lower := 7571, upper := 7698, witness := RowWitness.topPrime 7561 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good056_checked :
    goodSegmentCheck 138 45 97
      { lower := 7699, upper := 7836, witness := RowWitness.topPrime 7699 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good057_checked :
    goodSegmentCheck 138 45 97
      { lower := 7837, upper := 7966, witness := RowWitness.topPrime 7829 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good058_checked :
    goodSegmentCheck 138 45 97
      { lower := 7967, upper := 8100, witness := RowWitness.topPrime 7963 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good059_checked :
    goodSegmentCheck 138 45 97
      { lower := 8101, upper := 8238, witness := RowWitness.topPrime 8101 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good060_checked :
    goodSegmentCheck 138 45 97
      { lower := 8239, upper := 8374, witness := RowWitness.topPrime 8237 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good061_checked :
    goodSegmentCheck 138 45 97
      { lower := 8375, upper := 8506, witness := RowWitness.topPrime 8369 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good062_checked :
    goodSegmentCheck 138 45 97
      { lower := 8507, upper := 8638, witness := RowWitness.topPrime 8501 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good063_checked :
    goodSegmentCheck 138 45 97
      { lower := 8639, upper := 8766, witness := RowWitness.topPrime 8629 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_good064_checked :
    goodSegmentCheck 138 45 97
      { lower := 8767, upper := 8898, witness := RowWitness.topPrime 8761 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good065_checked :
    goodSegmentCheck 138 45 97
      { lower := 8899, upper := 9030, witness := RowWitness.topPrime 8893 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good066_checked :
    goodSegmentCheck 138 45 97
      { lower := 9031, upper := 9166, witness := RowWitness.topPrime 9029 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good067_checked :
    goodSegmentCheck 138 45 97
      { lower := 9167, upper := 9298, witness := RowWitness.topPrime 9161 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good068_checked :
    goodSegmentCheck 138 45 97
      { lower := 9299, upper := 9430, witness := RowWitness.topPrime 9293 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good069_checked :
    goodSegmentCheck 138 45 97
      { lower := 9431, upper := 9568, witness := RowWitness.topPrime 9431 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good070_checked :
    goodSegmentCheck 138 45 97
      { lower := 9569, upper := 9688, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good071_checked :
    goodSegmentCheck 138 45 97
      { lower := 9689, upper := 9826, witness := RowWitness.topPrime 9689 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good072_checked :
    goodSegmentCheck 138 45 97
      { lower := 9827, upper := 9954, witness := RowWitness.topPrime 9817 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good073_checked :
    goodSegmentCheck 138 45 97
      { lower := 9955, upper := 10086, witness := RowWitness.topPrime 9949 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good074_checked :
    goodSegmentCheck 138 45 97
      { lower := 10087, upper := 10216, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good075_checked :
    goodSegmentCheck 138 45 97
      { lower := 10217, upper := 10348, witness := RowWitness.topPrime 10211 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good076_checked :
    goodSegmentCheck 138 45 97
      { lower := 10349, upper := 10480, witness := RowWitness.topPrime 10343 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good077_checked :
    goodSegmentCheck 138 45 97
      { lower := 10481, upper := 10614, witness := RowWitness.topPrime 10477 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good078_checked :
    goodSegmentCheck 138 45 97
      { lower := 10615, upper := 10750, witness := RowWitness.topPrime 10613 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good079_checked :
    goodSegmentCheck 138 45 97
      { lower := 10751, upper := 10876, witness := RowWitness.topPrime 10739 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_good080_checked :
    goodSegmentCheck 138 45 97
      { lower := 10877, upper := 11004, witness := RowWitness.topPrime 10867 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good081_checked :
    goodSegmentCheck 138 45 97
      { lower := 11005, upper := 11140, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good082_checked :
    goodSegmentCheck 138 45 97
      { lower := 11141, upper := 11268, witness := RowWitness.topPrime 11131 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good083_checked :
    goodSegmentCheck 138 45 97
      { lower := 11269, upper := 11398, witness := RowWitness.topPrime 11261 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good084_checked :
    goodSegmentCheck 138 45 97
      { lower := 11399, upper := 11536, witness := RowWitness.topPrime 11399 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good085_checked :
    goodSegmentCheck 138 45 97
      { lower := 11537, upper := 11664, witness := RowWitness.topPrime 11527 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good086_checked :
    goodSegmentCheck 138 45 97
      { lower := 11665, upper := 11794, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good087_checked :
    goodSegmentCheck 138 45 97
      { lower := 11795, upper := 11926, witness := RowWitness.topPrime 11789 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good088_checked :
    goodSegmentCheck 138 45 97
      { lower := 11927, upper := 12064, witness := RowWitness.topPrime 11927 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good089_checked :
    goodSegmentCheck 138 45 97
      { lower := 12065, upper := 12186, witness := RowWitness.topPrime 12049 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good090_checked :
    goodSegmentCheck 138 45 97
      { lower := 12187, upper := 12300, witness := RowWitness.topPrime 12163 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good091_checked :
    goodSegmentCheck 138 45 97
      { lower := 12301, upper := 12438, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good092_checked :
    goodSegmentCheck 138 45 97
      { lower := 12439, upper := 12574, witness := RowWitness.topPrime 12437 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good093_checked :
    goodSegmentCheck 138 45 97
      { lower := 12575, upper := 12706, witness := RowWitness.topPrime 12569 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good094_checked :
    goodSegmentCheck 138 45 97
      { lower := 12707, upper := 12840, witness := RowWitness.topPrime 12703 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good095_checked :
    goodSegmentCheck 138 45 97
      { lower := 12841, upper := 12978, witness := RowWitness.topPrime 12841 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_good096_checked :
    goodSegmentCheck 138 45 97
      { lower := 12979, upper := 13116, witness := RowWitness.topPrime 12979 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good097_checked :
    goodSegmentCheck 138 45 97
      { lower := 13117, upper := 13246, witness := RowWitness.topPrime 13109 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good098_checked :
    goodSegmentCheck 138 45 97
      { lower := 13247, upper := 13378, witness := RowWitness.topPrime 13241 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good099_checked :
    goodSegmentCheck 138 45 97
      { lower := 13379, upper := 13504, witness := RowWitness.topPrime 13367 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good100_checked :
    goodSegmentCheck 138 45 97
      { lower := 13505, upper := 13636, witness := RowWitness.topPrime 13499 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good101_checked :
    goodSegmentCheck 138 45 97
      { lower := 13637, upper := 13770, witness := RowWitness.topPrime 13633 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good102_checked :
    goodSegmentCheck 138 45 97
      { lower := 13771, upper := 13900, witness := RowWitness.topPrime 13763 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good103_checked :
    goodSegmentCheck 138 45 97
      { lower := 13901, upper := 14038, witness := RowWitness.topPrime 13901 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good104_checked :
    goodSegmentCheck 138 45 97
      { lower := 14039, upper := 14170, witness := RowWitness.topPrime 14033 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good105_checked :
    goodSegmentCheck 138 45 97
      { lower := 14171, upper := 14296, witness := RowWitness.topPrime 14159 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good106_checked :
    goodSegmentCheck 138 45 97
      { lower := 14297, upper := 14430, witness := RowWitness.topPrime 14293 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good107_checked :
    goodSegmentCheck 138 45 97
      { lower := 14431, upper := 14568, witness := RowWitness.topPrime 14431 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good108_checked :
    goodSegmentCheck 138 45 97
      { lower := 14569, upper := 14700, witness := RowWitness.topPrime 14563 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good109_checked :
    goodSegmentCheck 138 45 97
      { lower := 14701, upper := 14836, witness := RowWitness.topPrime 14699 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good110_checked :
    goodSegmentCheck 138 45 97
      { lower := 14837, upper := 14968, witness := RowWitness.topPrime 14831 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good111_checked :
    goodSegmentCheck 138 45 97
      { lower := 14969, upper := 15106, witness := RowWitness.topPrime 14969 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_good112_checked :
    goodSegmentCheck 138 45 97
      { lower := 15107, upper := 15244, witness := RowWitness.topPrime 15107 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good113_checked :
    goodSegmentCheck 138 45 97
      { lower := 15245, upper := 15378, witness := RowWitness.topPrime 15241 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good114_checked :
    goodSegmentCheck 138 45 97
      { lower := 15379, upper := 15514, witness := RowWitness.topPrime 15377 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good115_checked :
    goodSegmentCheck 138 45 97
      { lower := 15515, upper := 15648, witness := RowWitness.topPrime 15511 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good116_checked :
    goodSegmentCheck 138 45 97
      { lower := 15649, upper := 15786, witness := RowWitness.topPrime 15649 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good117_checked :
    goodSegmentCheck 138 45 97
      { lower := 15787, upper := 15924, witness := RowWitness.topPrime 15787 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good118_checked :
    goodSegmentCheck 138 45 97
      { lower := 15925, upper := 16060, witness := RowWitness.topPrime 15923 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good119_checked :
    goodSegmentCheck 138 45 97
      { lower := 16061, upper := 16198, witness := RowWitness.topPrime 16061 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good120_checked :
    goodSegmentCheck 138 45 97
      { lower := 16199, upper := 16330, witness := RowWitness.topPrime 16193 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good121_checked :
    goodSegmentCheck 138 45 97
      { lower := 16331, upper := 16456, witness := RowWitness.topPrime 16319 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good122_checked :
    goodSegmentCheck 138 45 97
      { lower := 16457, upper := 16590, witness := RowWitness.topPrime 16453 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good123_checked :
    goodSegmentCheck 138 45 97
      { lower := 16591, upper := 16710, witness := RowWitness.topPrime 16573 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good124_checked :
    goodSegmentCheck 138 45 97
      { lower := 16711, upper := 16840, witness := RowWitness.topPrime 16703 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good125_checked :
    goodSegmentCheck 138 45 97
      { lower := 16841, upper := 16968, witness := RowWitness.topPrime 16831 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good126_checked :
    goodSegmentCheck 138 45 97
      { lower := 16969, upper := 17100, witness := RowWitness.topPrime 16963 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good127_checked :
    goodSegmentCheck 138 45 97
      { lower := 17101, upper := 17236, witness := RowWitness.topPrime 17099 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_good128_checked :
    goodSegmentCheck 138 45 97
      { lower := 17237, upper := 17368, witness := RowWitness.topPrime 17231 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good129_checked :
    goodSegmentCheck 138 45 97
      { lower := 17369, upper := 17496, witness := RowWitness.topPrime 17359 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good130_checked :
    goodSegmentCheck 138 45 97
      { lower := 17497, upper := 17634, witness := RowWitness.topPrime 17497 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good131_checked :
    goodSegmentCheck 138 45 97
      { lower := 17635, upper := 17764, witness := RowWitness.topPrime 17627 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good132_checked :
    goodSegmentCheck 138 45 97
      { lower := 17765, upper := 17898, witness := RowWitness.topPrime 17761 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good133_checked :
    goodSegmentCheck 138 45 97
      { lower := 17899, upper := 18028, witness := RowWitness.topPrime 17891 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good134_checked :
    goodSegmentCheck 138 45 97
      { lower := 18029, upper := 18150, witness := RowWitness.topPrime 18013 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good135_checked :
    goodSegmentCheck 138 45 97
      { lower := 18151, upper := 18286, witness := RowWitness.topPrime 18149 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good136_checked :
    goodSegmentCheck 138 45 97
      { lower := 18287, upper := 18424, witness := RowWitness.topPrime 18287 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good137_checked :
    goodSegmentCheck 138 45 97
      { lower := 18425, upper := 18550, witness := RowWitness.topPrime 18413 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good138_checked :
    goodSegmentCheck 138 45 97
      { lower := 18551, upper := 18678, witness := RowWitness.topPrime 18541 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good139_checked :
    goodSegmentCheck 138 45 97
      { lower := 18679, upper := 18816, witness := RowWitness.topPrime 18679 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good140_checked :
    goodSegmentCheck 138 45 97
      { lower := 18817, upper := 18906, witness := RowWitness.topPrime 18803 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good141_checked :
    goodSegmentCheck 138 45 97
      { lower := 19208, upper := 19303, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good142_checked :
    goodSegmentCheck 138 45 97
      { lower := 19663, upper := 19798, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good143_checked :
    goodSegmentCheck 138 45 97
      { lower := 19799, upper := 19820, witness := RowWitness.topPrime 19793 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_good144_checked :
    goodSegmentCheck 138 45 97
      { lower := 19881, upper := 19910, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good145_checked :
    goodSegmentCheck 138 45 97
      { lower := 19965, upper := 20018, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good146_checked :
    goodSegmentCheck 138 45 97
      { lower := 20172, upper := 20298, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good147_checked :
    goodSegmentCheck 138 45 97
      { lower := 20299, upper := 20301, witness := RowWitness.topPrime 20297 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good148_checked :
    goodSegmentCheck 138 45 97
      { lower := 20402, upper := 20476, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good149_checked :
    goodSegmentCheck 138 45 97
      { lower := 20480, upper := 20616, witness := RowWitness.topPrime 20479 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good150_checked :
    goodSegmentCheck 138 45 97
      { lower := 20617, upper := 20714, witness := RowWitness.topPrime 20611 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good151_checked :
    goodSegmentCheck 138 45 97
      { lower := 21296, upper := 21420, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good152_checked :
    goodSegmentCheck 138 45 97
      { lower := 21421, upper := 21433, witness := RowWitness.topPrime 21419 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good153_checked :
    goodSegmentCheck 138 45 97
      { lower := 21875, upper := 22008, witness := RowWitness.topPrime 21871 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good154_checked :
    goodSegmentCheck 138 45 97
      { lower := 22009, upper := 22041, witness := RowWitness.topPrime 22003 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good155_checked :
    goodSegmentCheck 138 45 97
      { lower := 22090, upper := 22107, witness := RowWitness.topPrime 22079 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good156_checked :
    goodSegmentCheck 138 45 97
      { lower := 22188, upper := 22227, witness := RowWitness.topPrime 22171 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good157_checked :
    goodSegmentCheck 138 45 97
      { lower := 22445, upper := 22463, witness := RowWitness.topPrime 22441 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good158_checked :
    goodSegmentCheck 138 45 97
      { lower := 22472, upper := 22582, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good159_checked :
    goodSegmentCheck 138 45 97
      { lower := 23763, upper := 23898, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_good160_checked :
    goodSegmentCheck 138 45 97
      { lower := 23899, upper := 23899, witness := RowWitness.topPrime 23899 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good161_checked :
    goodSegmentCheck 138 45 97
      { lower := 24037, upper := 24147, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good162_checked :
    goodSegmentCheck 138 45 97
      { lower := 24167, upper := 24174, witness := RowWitness.topPrime 24151 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good163_checked :
    goodSegmentCheck 138 45 97
      { lower := 24299, upper := 24304, witness := RowWitness.topPrime 24281 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good164_checked :
    goodSegmentCheck 138 45 97
      { lower := 24367, upper := 24496, witness := RowWitness.topPrime 24359 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good165_checked :
    goodSegmentCheck 138 45 97
      { lower := 24497, upper := 24504, witness := RowWitness.topPrime 24481 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good166_checked :
    goodSegmentCheck 138 45 97
      { lower := 24576, upper := 24702, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good167_checked :
    goodSegmentCheck 138 45 97
      { lower := 25000, upper := 25101, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good168_checked :
    goodSegmentCheck 138 45 97
      { lower := 25215, upper := 25326, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good169_checked :
    goodSegmentCheck 138 45 97
      { lower := 25327, upper := 25352, witness := RowWitness.topPrime 25321 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good170_checked :
    goodSegmentCheck 138 45 97
      { lower := 26364, upper := 26381, witness := RowWitness.topPrime 26357 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good171_checked :
    goodSegmentCheck 138 45 97
      { lower := 26411, upper := 26501, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good172_checked :
    goodSegmentCheck 138 45 97
      { lower := 26508, upper := 26548, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good173_checked :
    goodSegmentCheck 138 45 97
      { lower := 26645, upper := 26645, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good174_checked :
    goodSegmentCheck 138 45 97
      { lower := 26934, upper := 27033, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good175_checked :
    goodSegmentCheck 138 45 97
      { lower := 27556, upper := 27573, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_good176_checked :
    goodSegmentCheck 138 45 97
      { lower := 27848, upper := 27872, witness := RowWitness.topPrime 27847 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good177_checked :
    goodSegmentCheck 138 45 97
      { lower := 28125, upper := 28260, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good178_checked :
    goodSegmentCheck 138 45 97
      { lower := 28261, upper := 28262, witness := RowWitness.topPrime 28229 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good179_checked :
    goodSegmentCheck 138 45 97
      { lower := 28577, upper := 28710, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good180_checked :
    goodSegmentCheck 138 45 97
      { lower := 28711, upper := 28714, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good181_checked :
    goodSegmentCheck 138 45 97
      { lower := 28717, upper := 28809, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good182_checked :
    goodSegmentCheck 138 45 97
      { lower := 28812, upper := 28854, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good183_checked :
    goodSegmentCheck 138 45 97
      { lower := 29584, upper := 29615, witness := RowWitness.topPrime 29581 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good184_checked :
    goodSegmentCheck 138 45 97
      { lower := 29791, upper := 29905, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good185_checked :
    goodSegmentCheck 138 45 97
      { lower := 30926, upper := 31036, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good186_checked :
    goodSegmentCheck 138 45 97
      { lower := 31213, upper := 31330, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good187_checked :
    goodSegmentCheck 138 45 97
      { lower := 31331, upper := 31387, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good188_checked :
    goodSegmentCheck 138 45 97
      { lower := 31423, upper := 31534, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good189_checked :
    goodSegmentCheck 138 45 97
      { lower := 31535, upper := 31560, witness := RowWitness.topPrime 31531 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good190_checked :
    goodSegmentCheck 138 45 97
      { lower := 32805, upper := 32905, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good191_checked :
    goodSegmentCheck 138 45 97
      { lower := 33614, upper := 33626, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_good192_checked :
    goodSegmentCheck 138 45 97
      { lower := 33708, upper := 33751, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good193_checked :
    goodSegmentCheck 138 45 97
      { lower := 34322, upper := 34456, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good194_checked :
    goodSegmentCheck 138 45 97
      { lower := 34457, upper := 34528, witness := RowWitness.topPrime 34457 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good195_checked :
    goodSegmentCheck 138 45 97
      { lower := 35287, upper := 35289, witness := RowWitness.topPrime 35281 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good196_checked :
    goodSegmentCheck 138 45 97
      { lower := 35344, upper := 35424, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good197_checked :
    goodSegmentCheck 138 45 97
      { lower := 36015, upper := 36049, witness := RowWitness.topPrime 36013 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good198_checked :
    goodSegmentCheck 138 45 97
      { lower := 37303, upper := 37347, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good199_checked :
    goodSegmentCheck 138 45 97
      { lower := 37349, upper := 37440, witness := RowWitness.topPrime 37339 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good200_checked :
    goodSegmentCheck 138 45 97
      { lower := 37446, upper := 37486, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good201_checked :
    goodSegmentCheck 138 45 97
      { lower := 37500, upper := 37630, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good202_checked :
    goodSegmentCheck 138 45 97
      { lower := 37631, upper := 37690, witness := RowWitness.topPrime 37619 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good203_checked :
    goodSegmentCheck 138 45 97
      { lower := 38307, upper := 38428, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good204_checked :
    goodSegmentCheck 138 45 97
      { lower := 39366, upper := 39441, witness := RowWitness.topPrime 39359 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good205_checked :
    goodSegmentCheck 138 45 97
      { lower := 40401, upper := 40465, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good206_checked :
    goodSegmentCheck 138 45 97
      { lower := 40931, upper := 40941, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good207_checked :
    goodSegmentCheck 138 45 97
      { lower := 40960, upper := 41068, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_good208_checked :
    goodSegmentCheck 138 45 97
      { lower := 45369, upper := 45390, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good209_checked :
    goodSegmentCheck 138 45 97
      { lower := 47526, upper := 47658, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good210_checked :
    goodSegmentCheck 138 45 97
      { lower := 47659, upper := 47661, witness := RowWitness.topPrime 47659 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good211_checked :
    goodSegmentCheck 138 45 97
      { lower := 48013, upper := 48098, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good212_checked :
    goodSegmentCheck 138 45 97
      { lower := 48387, upper := 48510, witness := RowWitness.topPrime 48383 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good213_checked :
    goodSegmentCheck 138 45 97
      { lower := 49152, upper := 49267, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good214_checked :
    goodSegmentCheck 138 45 97
      { lower := 50421, upper := 50547, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good215_checked :
    goodSegmentCheck 138 45 97
      { lower := 51076, upper := 51142, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good216_checked :
    goodSegmentCheck 138 45 97
      { lower := 55451, upper := 55578, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good217_checked :
    goodSegmentCheck 138 45 97
      { lower := 55579, upper := 55584, witness := RowWitness.topPrime 55579 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good218_checked :
    goodSegmentCheck 138 45 97
      { lower := 57245, upper := 57259, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good219_checked :
    goodSegmentCheck 138 45 97
      { lower := 58619, upper := 58701, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good220_checked :
    goodSegmentCheck 138 45 97
      { lower := 59049, upper := 59093, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good221_checked :
    goodSegmentCheck 138 45 97
      { lower := 62500, upper := 62547, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good222_checked :
    goodSegmentCheck 138 45 97
      { lower := 63869, upper := 64000, witness := RowWitness.topPrime 63863 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good223_checked :
    goodSegmentCheck 138 45 97
      { lower := 64001, upper := 64006, witness := RowWitness.topPrime 63997 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_good224_checked :
    goodSegmentCheck 138 45 97
      { lower := 65536, upper := 65658, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good225_checked :
    goodSegmentCheck 138 45 97
      { lower := 65659, upper := 65670, witness := RowWitness.topPrime 65657 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good226_checked :
    goodSegmentCheck 138 45 97
      { lower := 68644, upper := 68776, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good227_checked :
    goodSegmentCheck 138 45 97
      { lower := 68777, upper := 68788, witness := RowWitness.topPrime 68777 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good228_checked :
    goodSegmentCheck 138 45 97
      { lower := 68921, upper := 69027, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good229_checked :
    goodSegmentCheck 138 45 97
      { lower := 71289, upper := 71424, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good230_checked :
    goodSegmentCheck 138 45 97
      { lower := 71425, upper := 71426, witness := RowWitness.topPrime 71419 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good231_checked :
    goodSegmentCheck 138 45 97
      { lower := 73205, upper := 73304, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good232_checked :
    goodSegmentCheck 138 45 97
      { lower := 85805, upper := 85820, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good233_checked :
    goodSegmentCheck 138 45 97
      { lower := 89383, upper := 89510, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good234_checked :
    goodSegmentCheck 138 45 97
      { lower := 93845, upper := 93887, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good235_checked :
    goodSegmentCheck 138 45 97
      { lower := 103041, upper := 103103, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good236_checked :
    goodSegmentCheck 138 45 97
      { lower := 146410, upper := 146471, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row138_good237_checked :
    goodSegmentCheck 138 45 97
      { lower := 148955, upper := 149014, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 138) (r := 45) (s := 97) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_good237_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_goods_checked :
    row138.goods.all (goodSegmentCheck row138.height.i row138.height.r row138.height.s) = true := by
  change row138_goods.all (goodSegmentCheck 138 45 97) = true
  simp only [row138_goods, List.all_cons, List.all_nil,
    row138_good000_checked,
    row138_good001_checked,
    row138_good002_checked,
    row138_good003_checked,
    row138_good004_checked,
    row138_good005_checked,
    row138_good006_checked,
    row138_good007_checked,
    row138_good008_checked,
    row138_good009_checked,
    row138_good010_checked,
    row138_good011_checked,
    row138_good012_checked,
    row138_good013_checked,
    row138_good014_checked,
    row138_good015_checked,
    row138_good016_checked,
    row138_good017_checked,
    row138_good018_checked,
    row138_good019_checked,
    row138_good020_checked,
    row138_good021_checked,
    row138_good022_checked,
    row138_good023_checked,
    row138_good024_checked,
    row138_good025_checked,
    row138_good026_checked,
    row138_good027_checked,
    row138_good028_checked,
    row138_good029_checked,
    row138_good030_checked,
    row138_good031_checked,
    row138_good032_checked,
    row138_good033_checked,
    row138_good034_checked,
    row138_good035_checked,
    row138_good036_checked,
    row138_good037_checked,
    row138_good038_checked,
    row138_good039_checked,
    row138_good040_checked,
    row138_good041_checked,
    row138_good042_checked,
    row138_good043_checked,
    row138_good044_checked,
    row138_good045_checked,
    row138_good046_checked,
    row138_good047_checked,
    row138_good048_checked,
    row138_good049_checked,
    row138_good050_checked,
    row138_good051_checked,
    row138_good052_checked,
    row138_good053_checked,
    row138_good054_checked,
    row138_good055_checked,
    row138_good056_checked,
    row138_good057_checked,
    row138_good058_checked,
    row138_good059_checked,
    row138_good060_checked,
    row138_good061_checked,
    row138_good062_checked,
    row138_good063_checked,
    row138_good064_checked,
    row138_good065_checked,
    row138_good066_checked,
    row138_good067_checked,
    row138_good068_checked,
    row138_good069_checked,
    row138_good070_checked,
    row138_good071_checked,
    row138_good072_checked,
    row138_good073_checked,
    row138_good074_checked,
    row138_good075_checked,
    row138_good076_checked,
    row138_good077_checked,
    row138_good078_checked,
    row138_good079_checked,
    row138_good080_checked,
    row138_good081_checked,
    row138_good082_checked,
    row138_good083_checked,
    row138_good084_checked,
    row138_good085_checked,
    row138_good086_checked,
    row138_good087_checked,
    row138_good088_checked,
    row138_good089_checked,
    row138_good090_checked,
    row138_good091_checked,
    row138_good092_checked,
    row138_good093_checked,
    row138_good094_checked,
    row138_good095_checked,
    row138_good096_checked,
    row138_good097_checked,
    row138_good098_checked,
    row138_good099_checked,
    row138_good100_checked,
    row138_good101_checked,
    row138_good102_checked,
    row138_good103_checked,
    row138_good104_checked,
    row138_good105_checked,
    row138_good106_checked,
    row138_good107_checked,
    row138_good108_checked,
    row138_good109_checked,
    row138_good110_checked,
    row138_good111_checked,
    row138_good112_checked,
    row138_good113_checked,
    row138_good114_checked,
    row138_good115_checked,
    row138_good116_checked,
    row138_good117_checked,
    row138_good118_checked,
    row138_good119_checked,
    row138_good120_checked,
    row138_good121_checked,
    row138_good122_checked,
    row138_good123_checked,
    row138_good124_checked,
    row138_good125_checked,
    row138_good126_checked,
    row138_good127_checked,
    row138_good128_checked,
    row138_good129_checked,
    row138_good130_checked,
    row138_good131_checked,
    row138_good132_checked,
    row138_good133_checked,
    row138_good134_checked,
    row138_good135_checked,
    row138_good136_checked,
    row138_good137_checked,
    row138_good138_checked,
    row138_good139_checked,
    row138_good140_checked,
    row138_good141_checked,
    row138_good142_checked,
    row138_good143_checked,
    row138_good144_checked,
    row138_good145_checked,
    row138_good146_checked,
    row138_good147_checked,
    row138_good148_checked,
    row138_good149_checked,
    row138_good150_checked,
    row138_good151_checked,
    row138_good152_checked,
    row138_good153_checked,
    row138_good154_checked,
    row138_good155_checked,
    row138_good156_checked,
    row138_good157_checked,
    row138_good158_checked,
    row138_good159_checked,
    row138_good160_checked,
    row138_good161_checked,
    row138_good162_checked,
    row138_good163_checked,
    row138_good164_checked,
    row138_good165_checked,
    row138_good166_checked,
    row138_good167_checked,
    row138_good168_checked,
    row138_good169_checked,
    row138_good170_checked,
    row138_good171_checked,
    row138_good172_checked,
    row138_good173_checked,
    row138_good174_checked,
    row138_good175_checked,
    row138_good176_checked,
    row138_good177_checked,
    row138_good178_checked,
    row138_good179_checked,
    row138_good180_checked,
    row138_good181_checked,
    row138_good182_checked,
    row138_good183_checked,
    row138_good184_checked,
    row138_good185_checked,
    row138_good186_checked,
    row138_good187_checked,
    row138_good188_checked,
    row138_good189_checked,
    row138_good190_checked,
    row138_good191_checked,
    row138_good192_checked,
    row138_good193_checked,
    row138_good194_checked,
    row138_good195_checked,
    row138_good196_checked,
    row138_good197_checked,
    row138_good198_checked,
    row138_good199_checked,
    row138_good200_checked,
    row138_good201_checked,
    row138_good202_checked,
    row138_good203_checked,
    row138_good204_checked,
    row138_good205_checked,
    row138_good206_checked,
    row138_good207_checked,
    row138_good208_checked,
    row138_good209_checked,
    row138_good210_checked,
    row138_good211_checked,
    row138_good212_checked,
    row138_good213_checked,
    row138_good214_checked,
    row138_good215_checked,
    row138_good216_checked,
    row138_good217_checked,
    row138_good218_checked,
    row138_good219_checked,
    row138_good220_checked,
    row138_good221_checked,
    row138_good222_checked,
    row138_good223_checked,
    row138_good224_checked,
    row138_good225_checked,
    row138_good226_checked,
    row138_good227_checked,
    row138_good228_checked,
    row138_good229_checked,
    row138_good230_checked,
    row138_good231_checked,
    row138_good232_checked,
    row138_good233_checked,
    row138_good234_checked,
    row138_good235_checked,
    row138_good236_checked,
    row138_good237_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_registered :
    decide (row138.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row138_small_checked :
    coverCheck (2 * row138.height.i + 2) (row138.height.i * (row138.height.i - 1) - 1)
      (row138.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row138_layerCover_checked :
    coverCheck (row138.height.i * (row138.height.i - 1)) (row138.height.n0 - 1)
      (row138.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row138_bounds : List NatInterval :=
  [(278, 414), (415, 546), (547, 684), (685, 820), (821, 958), (959, 1090), (1091, 1228), (1229, 1366), (1367, 1504), (1505, 1636), (1637, 1774), (1775, 1896), (1897, 2026), (2027, 2164), (2165, 2298), (2299, 2434), (2435, 2560), (2561, 2694), (2695, 2830), (2831, 2956), (2957, 3094), (3095, 3226), (3227, 3358), (3359, 3496), (3497, 3628), (3629, 3760), (3761, 3898), (3899, 4026), (4027, 4164), (4165, 4296), (4297, 4434), (4435, 4560), (4561, 4698), (4699, 4828), (4829, 4954), (4955, 5088), (5089, 5224), (5225, 5346), (5347, 5484), (5485, 5620), (5621, 5728), (5729, 5854), (5855, 5988), (5989, 6124), (6125, 6258), (6259, 6394), (6395, 6526), (6527, 6658), (6659, 6796), (6797, 6930), (6931, 7054), (7055, 7180), (7181, 7314), (7315, 7446), (7447, 7570), (7571, 7698), (7699, 7836), (7837, 7966), (7967, 8100), (8101, 8238), (8239, 8374), (8375, 8506), (8507, 8638), (8639, 8766), (8767, 8898), (8899, 9030), (9031, 9166), (9167, 9298), (9299, 9430), (9431, 9568), (9569, 9688), (9689, 9826), (9827, 9954), (9955, 10086), (10087, 10216), (10217, 10348), (10349, 10480), (10481, 10614), (10615, 10750), (10751, 10876), (10877, 11004), (11005, 11140), (11141, 11268), (11269, 11398), (11399, 11536), (11537, 11664), (11665, 11794), (11795, 11926), (11927, 12064), (12065, 12186), (12187, 12300), (12301, 12438), (12439, 12574), (12575, 12706), (12707, 12840), (12841, 12978), (12979, 13116), (13117, 13246), (13247, 13378), (13379, 13504), (13505, 13636), (13637, 13770), (13771, 13900), (13901, 14038), (14039, 14170), (14171, 14296), (14297, 14430), (14431, 14568), (14569, 14700), (14701, 14836), (14837, 14968), (14969, 15106), (15107, 15244), (15245, 15378), (15379, 15514), (15515, 15648), (15649, 15786), (15787, 15924), (15925, 16060), (16061, 16198), (16199, 16330), (16331, 16456), (16457, 16590), (16591, 16710), (16711, 16840), (16841, 16968), (16969, 17100), (17101, 17236), (17237, 17368), (17369, 17496), (17497, 17634), (17635, 17764), (17765, 17898), (17899, 18028), (18029, 18150), (18151, 18286), (18287, 18424), (18425, 18550), (18551, 18678), (18679, 18816), (18817, 18906), (19208, 19303), (19663, 19798), (19799, 19820), (19881, 19910), (19965, 20018), (20172, 20298), (20299, 20301), (20402, 20476), (20480, 20616), (20617, 20714), (21296, 21420), (21421, 21433), (21875, 22008), (22009, 22041), (22090, 22107), (22188, 22227), (22445, 22463), (22472, 22582), (23763, 23898), (23899, 23899), (24037, 24147), (24167, 24174), (24299, 24304), (24367, 24496), (24497, 24504), (24576, 24702), (25000, 25101), (25215, 25326), (25327, 25352), (26364, 26381), (26411, 26501), (26508, 26548), (26645, 26645), (26934, 27033), (27556, 27573), (27848, 27872), (28125, 28260), (28261, 28262), (28577, 28710), (28711, 28714), (28717, 28809), (28812, 28854), (29584, 29615), (29791, 29905), (30926, 31036), (31213, 31330), (31331, 31387), (31423, 31534), (31535, 31560), (32805, 32905), (33614, 33626), (33708, 33751), (34322, 34456), (34457, 34528), (35287, 35289), (35344, 35424), (36015, 36049), (37303, 37347), (37349, 37440), (37446, 37486), (37500, 37630), (37631, 37690), (38307, 38428), (39366, 39441), (40401, 40465), (40931, 40941), (40960, 41068), (45369, 45390), (47526, 47658), (47659, 47661), (48013, 48098), (48387, 48510), (49152, 49267), (50421, 50547), (51076, 51142), (55451, 55578), (55579, 55584), (57245, 57259), (58619, 58701), (59049, 59093), (62500, 62547), (63869, 64000), (64001, 64006), (65536, 65658), (65659, 65670), (68644, 68776), (68777, 68788), (68921, 69027), (71289, 71424), (71425, 71426), (73205, 73304), (85805, 85820), (89383, 89510), (93845, 93887), (103041, 103103), (146410, 146471), (148955, 149014)]

theorem row138_bounds_eq : row138.goods.map goodSegmentBounds = row138_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row138_layer000_intervals : List ColouredInterval :=
  [(2, 20480, 20617), (2, 24576, 24713), (2, 28672, 28809), (2, 32768, 32905), (2, 24576, 24713), (2, 32768, 32905), (2, 32768, 32905), (2, 32768, 32905), (3, 19683, 19820), (3, 26244, 26381), (3, 32805, 32942), (3, 19683, 19820), (5, 21875, 22012), (5, 25000, 25137), (5, 28125, 28262), (5, 31250, 31387), (5, 34375, 34512), (5, 37500, 37637), (5, 31250, 31387), (7, 19208, 19345), (7, 21609, 21746), (7, 24010, 24147), (7, 26411, 26548), (7, 28812, 28949), (7, 31213, 31350), (7, 33614, 33751), (7, 36015, 36152), (7, 33614, 33751), (11, 19965, 20102), (11, 21296, 21433), (11, 22627, 22764), (11, 29282, 29419), (13, 19773, 19910), (13, 21970, 22107), (13, 24167, 24304), (13, 26364, 26501), (13, 28561, 28698), (13, 30758, 30895), (13, 32955, 33092), (13, 35152, 35289), (13, 37349, 37486), (13, 28561, 28698), (17, 19652, 19789), (17, 24565, 24702), (17, 29478, 29615), (17, 34391, 34528), (19, 20577, 20714), (19, 27436, 27573), (19, 34295, 34432), (29, 24389, 24526), (31, 29791, 29928), (37, 19166, 19303), (37, 20535, 20672), (37, 21904, 22041), (37, 23273, 23410), (41, 20172, 20309), (41, 21853, 21990), (41, 23534, 23671), (41, 25215, 25352), (41, 26896, 27033), (41, 28577, 28714), (43, 20339, 20476), (43, 22188, 22325), (43, 24037, 24174), (43, 25886, 26023), (43, 27735, 27872), (43, 29584, 29721), (43, 31433, 31570), (47, 19881, 20018), (47, 22090, 22227), (47, 24299, 24436), (47, 26508, 26645), (47, 28717, 28854), (47, 30926, 31063), (47, 33135, 33272), (47, 35344, 35481), (47, 37553, 37690), (53, 19663, 19800), (53, 22472, 22609), (53, 25281, 25418), (53, 28090, 28227), (53, 30899, 31036), (53, 33708, 33845), (53, 36517, 36654), (59, 20886, 21023), (59, 24367, 24504), (59, 27848, 27985), (59, 31329, 31466), (59, 34810, 34947), (61, 22326, 22463), (61, 26047, 26184), (61, 29768, 29905), (61, 33489, 33626), (61, 37210, 37347), (67, 22445, 22582), (67, 26934, 27071), (67, 31423, 31560), (67, 35912, 36049), (71, 20164, 20301), (71, 25205, 25342), (71, 30246, 30383), (71, 35287, 35424), (73, 21316, 21453), (73, 26645, 26782), (73, 31974, 32111), (73, 37303, 37440), (79, 24964, 25101), (79, 31205, 31342), (79, 37446, 37583), (83, 20667, 20804), (83, 27556, 27693), (83, 34445, 34582), (89, 23763, 23900), (89, 31684, 31821), (97, 18906, 18955), (97, 28227, 28364), (97, 37636, 37773), (101, 20402, 20539), (101, 30603, 30740), (103, 21218, 21355), (103, 31827, 31964), (107, 22898, 23035), (107, 34347, 34484), (109, 23762, 23899), (109, 35643, 35780), (113, 25538, 25675), (127, 32258, 32395), (131, 34322, 34459), (137, 18906, 18906), (137, 37538, 37675)]

def row138_layer000_block000 : List ColouredInterval :=
  [(2, 20480, 20617), (2, 24576, 24713), (2, 28672, 28809), (2, 32768, 32905), (2, 24576, 24713), (2, 32768, 32905), (2, 32768, 32905), (2, 32768, 32905), (3, 19683, 19820), (3, 26244, 26381), (3, 32805, 32942), (3, 19683, 19820), (5, 21875, 22012), (5, 25000, 25137), (5, 28125, 28262)]

def row138_layer000_block001 : List ColouredInterval :=
  [(5, 31250, 31387), (5, 34375, 34512), (5, 37500, 37637), (5, 31250, 31387), (7, 19208, 19345), (7, 21609, 21746), (7, 24010, 24147), (7, 26411, 26548), (7, 28812, 28949), (7, 31213, 31350), (7, 33614, 33751), (7, 36015, 36152), (7, 33614, 33751), (11, 19965, 20102), (11, 21296, 21433)]

def row138_layer000_block002 : List ColouredInterval :=
  [(11, 22627, 22764), (11, 29282, 29419), (13, 19773, 19910), (13, 21970, 22107), (13, 24167, 24304), (13, 26364, 26501), (13, 28561, 28698), (13, 30758, 30895), (13, 32955, 33092), (13, 35152, 35289), (13, 37349, 37486), (13, 28561, 28698), (17, 19652, 19789), (17, 24565, 24702), (17, 29478, 29615)]

def row138_layer000_block003 : List ColouredInterval :=
  [(17, 34391, 34528), (19, 20577, 20714), (19, 27436, 27573), (19, 34295, 34432), (29, 24389, 24526), (31, 29791, 29928), (37, 19166, 19303), (37, 20535, 20672), (37, 21904, 22041), (37, 23273, 23410), (41, 20172, 20309), (41, 21853, 21990), (41, 23534, 23671), (41, 25215, 25352), (41, 26896, 27033)]

def row138_layer000_block004 : List ColouredInterval :=
  [(41, 28577, 28714), (43, 20339, 20476), (43, 22188, 22325), (43, 24037, 24174), (43, 25886, 26023), (43, 27735, 27872), (43, 29584, 29721), (43, 31433, 31570), (47, 19881, 20018), (47, 22090, 22227), (47, 24299, 24436), (47, 26508, 26645), (47, 28717, 28854), (47, 30926, 31063), (47, 33135, 33272)]

def row138_layer000_block005 : List ColouredInterval :=
  [(47, 35344, 35481), (47, 37553, 37690), (53, 19663, 19800), (53, 22472, 22609), (53, 25281, 25418), (53, 28090, 28227), (53, 30899, 31036), (53, 33708, 33845), (53, 36517, 36654), (59, 20886, 21023), (59, 24367, 24504), (59, 27848, 27985), (59, 31329, 31466), (59, 34810, 34947), (61, 22326, 22463)]

def row138_layer000_block006 : List ColouredInterval :=
  [(61, 26047, 26184), (61, 29768, 29905), (61, 33489, 33626), (61, 37210, 37347), (67, 22445, 22582), (67, 26934, 27071), (67, 31423, 31560), (67, 35912, 36049), (71, 20164, 20301), (71, 25205, 25342), (71, 30246, 30383), (71, 35287, 35424), (73, 21316, 21453), (73, 26645, 26782), (73, 31974, 32111)]

def row138_layer000_block007 : List ColouredInterval :=
  [(73, 37303, 37440), (79, 24964, 25101), (79, 31205, 31342), (79, 37446, 37583), (83, 20667, 20804), (83, 27556, 27693), (83, 34445, 34582), (89, 23763, 23900), (89, 31684, 31821), (97, 18906, 18955), (97, 28227, 28364), (97, 37636, 37773), (101, 20402, 20539), (101, 30603, 30740), (103, 21218, 21355)]

def row138_layer000_block008 : List ColouredInterval :=
  [(103, 31827, 31964), (107, 22898, 23035), (107, 34347, 34484), (109, 23762, 23899), (109, 35643, 35780), (113, 25538, 25675), (127, 32258, 32395), (131, 34322, 34459), (137, 18906, 18906), (137, 37538, 37675)]

def row138_layer000_chunks : List (List ColouredInterval) :=
  [row138_layer000_block000, row138_layer000_block001, row138_layer000_block002, row138_layer000_block003, row138_layer000_block004, row138_layer000_block005, row138_layer000_block006, row138_layer000_block007, row138_layer000_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layer000_arithmetic : LayerArithmeticValid row138.height { lower := 18906, upper := 37812, M := 17 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layer000_enumeration :
    activePowerIntervalList 138 17 18906 37812 = row138_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layer000_pairs000 :
    row138_layer000_block000.all (fun I => row138_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row138_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layer000_pairs001 :
    row138_layer000_block001.all (fun I => row138_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row138_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layer000_pairs002 :
    row138_layer000_block002.all (fun I => row138_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row138_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layer000_pairs003 :
    row138_layer000_block003.all (fun I => row138_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row138_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layer000_pairs004 :
    row138_layer000_block004.all (fun I => row138_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row138_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layer000_pairs005 :
    row138_layer000_block005.all (fun I => row138_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row138_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layer000_pairs006 :
    row138_layer000_block006.all (fun I => row138_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row138_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layer000_pairs007 :
    row138_layer000_block007.all (fun I => row138_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row138_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layer000_pairs008 :
    row138_layer000_block008.all (fun I => row138_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row138_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer000_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layer000_chunks_eq : row138_layer000_chunks.flatten = row138_layer000_intervals := by
  rfl

theorem row138_layer000_pairs : pairCoverCheck row138_layer000_intervals row138_bounds = true := by
  apply pairCoverCheck_of_chunks row138_layer000_chunks_eq
  intro block hblock
  simp only [row138_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row138_layer000_pairs000
  · exact row138_layer000_pairs001
  · exact row138_layer000_pairs002
  · exact row138_layer000_pairs003
  · exact row138_layer000_pairs004
  · exact row138_layer000_pairs005
  · exact row138_layer000_pairs006
  · exact row138_layer000_pairs007
  · exact row138_layer000_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer000_pairs
