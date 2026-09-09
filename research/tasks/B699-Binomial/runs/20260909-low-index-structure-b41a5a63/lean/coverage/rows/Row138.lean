import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

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

theorem row138_registered :
    decide (row138.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row138_goods_checked :
    row138.goods.all (goodSegmentCheck row138.height.i row138.height.r row138.height.s) = true := by
  decide +kernel

theorem row138_small_checked :
    coverCheck (2 * row138.height.i + 2) (row138.height.i * (row138.height.i - 1) - 1)
      (row138.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row138_layerCover_checked :
    coverCheck (row138.height.i * (row138.height.i - 1)) (row138.height.n0 - 1)
      (row138.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row138_layer000_checked :
    coverLayerCheck row138.height row138.goods { lower := 18906, upper := 37812, M := 17 } = true := by
  decide +kernel

theorem row138_layer001_checked :
    coverLayerCheck row138.height row138.goods { lower := 37812, upper := 75624, M := 13 } = true := by
  decide +kernel

theorem row138_layer002_checked :
    coverLayerCheck row138.height row138.goods { lower := 75624, upper := 151248, M := 10 } = true := by
  decide +kernel

theorem row138_layer003_checked :
    coverLayerCheck row138.height row138.goods { lower := 151248, upper := 302496, M := 8 } = true := by
  decide +kernel

theorem row138_layer004_checked :
    coverLayerCheck row138.height row138.goods { lower := 302496, upper := 604992, M := 6 } = true := by
  decide +kernel

theorem row138_layer005_checked :
    coverLayerCheck row138.height row138.goods { lower := 604992, upper := 1209984, M := 5 } = true := by
  decide +kernel

theorem row138_layer006_checked :
    coverLayerCheck row138.height row138.goods { lower := 1209984, upper := 2419968, M := 4 } = true := by
  decide +kernel

theorem row138_layer007_checked :
    coverLayerCheck row138.height row138.goods { lower := 2419968, upper := 4839936, M := 3 } = true := by
  decide +kernel

theorem row138_layer008_checked :
    coverLayerCheck row138.height row138.goods { lower := 4839936, upper := 9679872, M := 2 } = true := by
  decide +kernel

theorem row138_layer009_checked :
    coverLayerCheck row138.height row138.goods { lower := 9679872, upper := 19359744, M := 2 } = true := by
  decide +kernel

theorem row138_layer010_checked :
    coverLayerCheck row138.height row138.goods { lower := 19359744, upper := 38719488, M := 2 } = true := by
  decide +kernel

theorem row138_layer011_checked :
    coverLayerCheck row138.height row138.goods { lower := 38719488, upper := 77438976, M := 1 } = true := by
  decide +kernel

theorem row138_layer012_checked :
    coverLayerCheck row138.height row138.goods { lower := 77438976, upper := 100000000, M := 1 } = true := by
  decide +kernel

theorem row138_layers_checked :
    row138.layers.all (coverLayerCheck row138.height row138.goods) = true := by
  change List.all [
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
  ] (coverLayerCheck row138.height row138.goods) = true
  simp only [List.all_cons, List.all_nil,
    row138_layer000_checked,
    row138_layer001_checked,
    row138_layer002_checked,
    row138_layer003_checked,
    row138_layer004_checked,
    row138_layer005_checked,
    row138_layer006_checked,
    row138_layer007_checked,
    row138_layer008_checked,
    row138_layer009_checked,
    row138_layer010_checked,
    row138_layer011_checked,
    row138_layer012_checked,
    Bool.true_and]

theorem row138_checked : finiteCoverRowCheck row138 = true := by
  simp only [finiteCoverRowCheck, row138_registered, row138_goods_checked,
    row138_small_checked, row138_layerCover_checked, row138_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row138_checked

end B699LowIndex
