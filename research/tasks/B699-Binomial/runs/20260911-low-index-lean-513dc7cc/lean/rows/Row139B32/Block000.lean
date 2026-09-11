import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row139_height : HeightCertificateDatum := { i := 139, r := 46, s := 98, n0Power10 := 8 }

def row139_goods : List GoodSegment := [
  { lower := 280, upper := 415, witness := RowWitness.topPrime 277 },
  { lower := 416, upper := 547, witness := RowWitness.topPrime 409 },
  { lower := 548, upper := 685, witness := RowWitness.topPrime 547 },
  { lower := 686, upper := 821, witness := RowWitness.topPrime 683 },
  { lower := 822, upper := 959, witness := RowWitness.topPrime 821 },
  { lower := 960, upper := 1091, witness := RowWitness.topPrime 953 },
  { lower := 1092, upper := 1229, witness := RowWitness.topPrime 1091 },
  { lower := 1230, upper := 1367, witness := RowWitness.topPrime 1229 },
  { lower := 1368, upper := 1505, witness := RowWitness.topPrime 1367 },
  { lower := 1506, upper := 1637, witness := RowWitness.topPrime 1499 },
  { lower := 1638, upper := 1775, witness := RowWitness.topPrime 1637 },
  { lower := 1776, upper := 1897, witness := RowWitness.topPrime 1759 },
  { lower := 1898, upper := 2027, witness := RowWitness.topPrime 1889 },
  { lower := 2028, upper := 2165, witness := RowWitness.topPrime 2027 },
  { lower := 2166, upper := 2299, witness := RowWitness.topPrime 2161 },
  { lower := 2300, upper := 2435, witness := RowWitness.topPrime 2297 },
  { lower := 2436, upper := 2561, witness := RowWitness.topPrime 2423 },
  { lower := 2562, upper := 2695, witness := RowWitness.topPrime 2557 },
  { lower := 2696, upper := 2831, witness := RowWitness.topPrime 2693 },
  { lower := 2832, upper := 2957, witness := RowWitness.topPrime 2819 },
  { lower := 2958, upper := 3095, witness := RowWitness.topPrime 2957 },
  { lower := 3096, upper := 3227, witness := RowWitness.topPrime 3089 },
  { lower := 3228, upper := 3359, witness := RowWitness.topPrime 3221 },
  { lower := 3360, upper := 3497, witness := RowWitness.topPrime 3359 },
  { lower := 3498, upper := 3629, witness := RowWitness.topPrime 3491 },
  { lower := 3630, upper := 3761, witness := RowWitness.topPrime 3623 },
  { lower := 3762, upper := 3899, witness := RowWitness.topPrime 3761 },
  { lower := 3900, upper := 4027, witness := RowWitness.topPrime 3889 },
  { lower := 4028, upper := 4165, witness := RowWitness.topPrime 4027 },
  { lower := 4166, upper := 4297, witness := RowWitness.topPrime 4159 },
  { lower := 4298, upper := 4435, witness := RowWitness.topPrime 4297 },
  { lower := 4436, upper := 4561, witness := RowWitness.topPrime 4423 },
  { lower := 4562, upper := 4699, witness := RowWitness.topPrime 4561 },
  { lower := 4700, upper := 4829, witness := RowWitness.topPrime 4691 },
  { lower := 4830, upper := 4955, witness := RowWitness.topPrime 4817 },
  { lower := 4956, upper := 5089, witness := RowWitness.topPrime 4951 },
  { lower := 5090, upper := 5225, witness := RowWitness.topPrime 5087 },
  { lower := 5226, upper := 5347, witness := RowWitness.topPrime 5209 },
  { lower := 5348, upper := 5485, witness := RowWitness.topPrime 5347 },
  { lower := 5486, upper := 5621, witness := RowWitness.topPrime 5483 },
  { lower := 5622, upper := 5729, witness := RowWitness.topPrime 5591 },
  { lower := 5730, upper := 5855, witness := RowWitness.topPrime 5717 },
  { lower := 5856, upper := 5989, witness := RowWitness.topPrime 5851 },
  { lower := 5990, upper := 6125, witness := RowWitness.topPrime 5987 },
  { lower := 6126, upper := 6259, witness := RowWitness.topPrime 6121 },
  { lower := 6260, upper := 6395, witness := RowWitness.topPrime 6257 },
  { lower := 6396, upper := 6527, witness := RowWitness.topPrime 6389 },
  { lower := 6528, upper := 6659, witness := RowWitness.topPrime 6521 },
  { lower := 6660, upper := 6797, witness := RowWitness.topPrime 6659 },
  { lower := 6798, upper := 6931, witness := RowWitness.topPrime 6793 },
  { lower := 6932, upper := 7055, witness := RowWitness.topPrime 6917 },
  { lower := 7056, upper := 7181, witness := RowWitness.topPrime 7043 },
  { lower := 7182, upper := 7315, witness := RowWitness.topPrime 7177 },
  { lower := 7316, upper := 7447, witness := RowWitness.topPrime 7309 },
  { lower := 7448, upper := 7571, witness := RowWitness.topPrime 7433 },
  { lower := 7572, upper := 7699, witness := RowWitness.topPrime 7561 },
  { lower := 7700, upper := 7837, witness := RowWitness.topPrime 7699 },
  { lower := 7838, upper := 7967, witness := RowWitness.topPrime 7829 },
  { lower := 7968, upper := 8101, witness := RowWitness.topPrime 7963 },
  { lower := 8102, upper := 8239, witness := RowWitness.topPrime 8101 },
  { lower := 8240, upper := 8375, witness := RowWitness.topPrime 8237 },
  { lower := 8376, upper := 8507, witness := RowWitness.topPrime 8369 },
  { lower := 8508, upper := 8639, witness := RowWitness.topPrime 8501 },
  { lower := 8640, upper := 8767, witness := RowWitness.topPrime 8629 },
  { lower := 8768, upper := 8899, witness := RowWitness.topPrime 8761 },
  { lower := 8900, upper := 9031, witness := RowWitness.topPrime 8893 },
  { lower := 9032, upper := 9167, witness := RowWitness.topPrime 9029 },
  { lower := 9168, upper := 9299, witness := RowWitness.topPrime 9161 },
  { lower := 9300, upper := 9431, witness := RowWitness.topPrime 9293 },
  { lower := 9432, upper := 9569, witness := RowWitness.topPrime 9431 },
  { lower := 9570, upper := 9689, witness := RowWitness.topPrime 9551 },
  { lower := 9690, upper := 9827, witness := RowWitness.topPrime 9689 },
  { lower := 9828, upper := 9955, witness := RowWitness.topPrime 9817 },
  { lower := 9956, upper := 10087, witness := RowWitness.topPrime 9949 },
  { lower := 10088, upper := 10217, witness := RowWitness.topPrime 10079 },
  { lower := 10218, upper := 10349, witness := RowWitness.topPrime 10211 },
  { lower := 10350, upper := 10481, witness := RowWitness.topPrime 10343 },
  { lower := 10482, upper := 10615, witness := RowWitness.topPrime 10477 },
  { lower := 10616, upper := 10751, witness := RowWitness.topPrime 10613 },
  { lower := 10752, upper := 10877, witness := RowWitness.topPrime 10739 },
  { lower := 10878, upper := 11005, witness := RowWitness.topPrime 10867 },
  { lower := 11006, upper := 11141, witness := RowWitness.topPrime 11003 },
  { lower := 11142, upper := 11269, witness := RowWitness.topPrime 11131 },
  { lower := 11270, upper := 11399, witness := RowWitness.topPrime 11261 },
  { lower := 11400, upper := 11537, witness := RowWitness.topPrime 11399 },
  { lower := 11538, upper := 11665, witness := RowWitness.topPrime 11527 },
  { lower := 11666, upper := 11795, witness := RowWitness.topPrime 11657 },
  { lower := 11796, upper := 11927, witness := RowWitness.topPrime 11789 },
  { lower := 11928, upper := 12065, witness := RowWitness.topPrime 11927 },
  { lower := 12066, upper := 12187, witness := RowWitness.topPrime 12049 },
  { lower := 12188, upper := 12301, witness := RowWitness.topPrime 12163 },
  { lower := 12302, upper := 12439, witness := RowWitness.topPrime 12301 },
  { lower := 12440, upper := 12575, witness := RowWitness.topPrime 12437 },
  { lower := 12576, upper := 12707, witness := RowWitness.topPrime 12569 },
  { lower := 12708, upper := 12841, witness := RowWitness.topPrime 12703 },
  { lower := 12842, upper := 12979, witness := RowWitness.topPrime 12841 },
  { lower := 12980, upper := 13117, witness := RowWitness.topPrime 12979 },
  { lower := 13118, upper := 13247, witness := RowWitness.topPrime 13109 },
  { lower := 13248, upper := 13379, witness := RowWitness.topPrime 13241 },
  { lower := 13380, upper := 13505, witness := RowWitness.topPrime 13367 },
  { lower := 13506, upper := 13637, witness := RowWitness.topPrime 13499 },
  { lower := 13638, upper := 13771, witness := RowWitness.topPrime 13633 },
  { lower := 13772, upper := 13901, witness := RowWitness.topPrime 13763 },
  { lower := 13902, upper := 14039, witness := RowWitness.topPrime 13901 },
  { lower := 14040, upper := 14171, witness := RowWitness.topPrime 14033 },
  { lower := 14172, upper := 14297, witness := RowWitness.topPrime 14159 },
  { lower := 14298, upper := 14431, witness := RowWitness.topPrime 14293 },
  { lower := 14432, upper := 14569, witness := RowWitness.topPrime 14431 },
  { lower := 14570, upper := 14701, witness := RowWitness.topPrime 14563 },
  { lower := 14702, upper := 14837, witness := RowWitness.topPrime 14699 },
  { lower := 14838, upper := 14969, witness := RowWitness.topPrime 14831 },
  { lower := 14970, upper := 15107, witness := RowWitness.topPrime 14969 },
  { lower := 15108, upper := 15245, witness := RowWitness.topPrime 15107 },
  { lower := 15246, upper := 15379, witness := RowWitness.topPrime 15241 },
  { lower := 15380, upper := 15515, witness := RowWitness.topPrime 15377 },
  { lower := 15516, upper := 15649, witness := RowWitness.topPrime 15511 },
  { lower := 15650, upper := 15787, witness := RowWitness.topPrime 15649 },
  { lower := 15788, upper := 15925, witness := RowWitness.topPrime 15787 },
  { lower := 15926, upper := 16061, witness := RowWitness.topPrime 15923 },
  { lower := 16062, upper := 16199, witness := RowWitness.topPrime 16061 },
  { lower := 16200, upper := 16331, witness := RowWitness.topPrime 16193 },
  { lower := 16332, upper := 16457, witness := RowWitness.topPrime 16319 },
  { lower := 16458, upper := 16591, witness := RowWitness.topPrime 16453 },
  { lower := 16592, upper := 16711, witness := RowWitness.topPrime 16573 },
  { lower := 16712, upper := 16841, witness := RowWitness.topPrime 16703 },
  { lower := 16842, upper := 16969, witness := RowWitness.topPrime 16831 },
  { lower := 16970, upper := 17101, witness := RowWitness.topPrime 16963 },
  { lower := 17102, upper := 17237, witness := RowWitness.topPrime 17099 },
  { lower := 17238, upper := 17369, witness := RowWitness.topPrime 17231 },
  { lower := 17370, upper := 17497, witness := RowWitness.topPrime 17359 },
  { lower := 17498, upper := 17635, witness := RowWitness.topPrime 17497 },
  { lower := 17636, upper := 17765, witness := RowWitness.topPrime 17627 },
  { lower := 17766, upper := 17899, witness := RowWitness.topPrime 17761 },
  { lower := 17900, upper := 18029, witness := RowWitness.topPrime 17891 },
  { lower := 18030, upper := 18151, witness := RowWitness.topPrime 18013 },
  { lower := 18152, upper := 18287, witness := RowWitness.topPrime 18149 },
  { lower := 18288, upper := 18425, witness := RowWitness.topPrime 18287 },
  { lower := 18426, upper := 18551, witness := RowWitness.topPrime 18413 },
  { lower := 18552, upper := 18679, witness := RowWitness.topPrime 18541 },
  { lower := 18680, upper := 18817, witness := RowWitness.topPrime 18679 },
  { lower := 18818, upper := 18941, witness := RowWitness.topPrime 18803 },
  { lower := 18942, upper := 19057, witness := RowWitness.topPrime 18919 },
  { lower := 19058, upper := 19181, witness := RowWitness.topPrime 19051 },
  { lower := 19208, upper := 19304, witness := RowWitness.topPrime 19207 },
  { lower := 19663, upper := 19799, witness := RowWitness.topPrime 19661 },
  { lower := 19800, upper := 19821, witness := RowWitness.topPrime 19793 },
  { lower := 19881, upper := 19911, witness := RowWitness.topPrime 19867 },
  { lower := 19965, upper := 20019, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20299, witness := RowWitness.topPrime 20161 },
  { lower := 20300, upper := 20302, witness := RowWitness.topPrime 20297 },
  { lower := 20402, upper := 20477, witness := RowWitness.topPrime 20399 },
  { lower := 20480, upper := 20617, witness := RowWitness.topPrime 20479 },
  { lower := 20618, upper := 20715, witness := RowWitness.topPrime 20611 },
  { lower := 21296, upper := 21421, witness := RowWitness.topPrime 21283 },
  { lower := 21422, upper := 21434, witness := RowWitness.topPrime 21419 },
  { lower := 21870, upper := 22001, witness := RowWitness.topPrime 21863 },
  { lower := 22002, upper := 22042, witness := RowWitness.topPrime 21997 },
  { lower := 22090, upper := 22108, witness := RowWitness.topPrime 22079 },
  { lower := 22188, upper := 22228, witness := RowWitness.topPrime 22171 },
  { lower := 22326, upper := 22326, witness := RowWitness.topPrime 22307 },
  { lower := 22445, upper := 22464, witness := RowWitness.topPrime 22441 },
  { lower := 22472, upper := 22607, witness := RowWitness.topPrime 22469 },
  { lower := 22608, upper := 22610, witness := RowWitness.topPrime 22573 },
  { lower := 23763, upper := 23899, witness := RowWitness.topPrime 23761 },
  { lower := 23900, upper := 23900, witness := RowWitness.topPrime 23899 },
  { lower := 24037, upper := 24167, witness := RowWitness.topPrime 24029 },
  { lower := 24168, upper := 24195, witness := RowWitness.topPrime 24151 },
  { lower := 24299, upper := 24305, witness := RowWitness.topPrime 24281 },
  { lower := 24334, upper := 24467, witness := RowWitness.topPrime 24329 },
  { lower := 24468, upper := 24505, witness := RowWitness.topPrime 24443 },
  { lower := 24576, upper := 24703, witness := RowWitness.topPrime 24571 },
  { lower := 25000, upper := 25102, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25327, witness := RowWitness.topPrime 25189 },
  { lower := 25328, upper := 25353, witness := RowWitness.topPrime 25321 },
  { lower := 26364, upper := 26382, witness := RowWitness.topPrime 26357 },
  { lower := 26411, upper := 26502, witness := RowWitness.topPrime 26407 },
  { lower := 26508, upper := 26549, witness := RowWitness.topPrime 26501 },
  { lower := 26624, upper := 26735, witness := RowWitness.topPrime 26597 },
  { lower := 26736, upper := 26762, witness := RowWitness.topPrime 26731 },
  { lower := 26934, upper := 27034, witness := RowWitness.topPrime 26927 },
  { lower := 27556, upper := 27574, witness := RowWitness.topPrime 27551 },
  { lower := 27848, upper := 27873, witness := RowWitness.topPrime 27847 },
  { lower := 28125, upper := 28261, witness := RowWitness.topPrime 28123 },
  { lower := 28262, upper := 28263, witness := RowWitness.topPrime 28229 },
  { lower := 28561, upper := 28569, witness := RowWitness.topPrime 28559 },
  { lower := 28672, upper := 28699, witness := RowWitness.topPrime 28669 },
  { lower := 28717, upper := 28810, witness := RowWitness.topPrime 28711 },
  { lower := 28812, upper := 28855, witness := RowWitness.topPrime 28807 },
  { lower := 29584, upper := 29616, witness := RowWitness.topPrime 29581 },
  { lower := 29791, upper := 29906, witness := RowWitness.topPrime 29789 },
  { lower := 30618, upper := 30731, witness := RowWitness.topPrime 30593 },
  { lower := 30732, upper := 30756, witness := RowWitness.topPrime 30727 },
  { lower := 30758, upper := 30858, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 31037, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31331, witness := RowWitness.topPrime 31193 },
  { lower := 31332, upper := 31388, witness := RowWitness.topPrime 31327 },
  { lower := 31423, upper := 31467, witness := RowWitness.topPrime 31397 },
  { lower := 32805, upper := 32906, witness := RowWitness.topPrime 32803 },
  { lower := 33614, upper := 33627, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33752, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34457, witness := RowWitness.topPrime 34319 },
  { lower := 34458, upper := 34529, witness := RowWitness.topPrime 34457 },
  { lower := 35287, upper := 35290, witness := RowWitness.topPrime 35281 },
  { lower := 35344, upper := 35425, witness := RowWitness.topPrime 35339 },
  { lower := 36015, upper := 36050, witness := RowWitness.topPrime 36013 },
  { lower := 36517, upper := 36635, witness := RowWitness.topPrime 36497 },
  { lower := 36636, upper := 36639, witness := RowWitness.topPrime 36629 },
  { lower := 37303, upper := 37348, witness := RowWitness.topPrime 37277 },
  { lower := 37500, upper := 37631, witness := RowWitness.topPrime 37493 },
  { lower := 37632, upper := 37676, witness := RowWitness.topPrime 37619 },
  { lower := 38307, upper := 38429, witness := RowWitness.topPrime 38303 },
  { lower := 39366, upper := 39442, witness := RowWitness.topPrime 39359 },
  { lower := 40401, upper := 40466, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 40942, witness := RowWitness.topPrime 40927 },
  { lower := 40960, upper := 41069, witness := RowWitness.topPrime 40949 },
  { lower := 45369, upper := 45391, witness := RowWitness.topPrime 45361 },
  { lower := 45927, upper := 45934, witness := RowWitness.topPrime 45893 },
  { lower := 47526, upper := 47659, witness := RowWitness.topPrime 47521 },
  { lower := 47660, upper := 47662, witness := RowWitness.topPrime 47659 },
  { lower := 48013, upper := 48099, witness := RowWitness.topPrime 47981 },
  { lower := 48387, upper := 48511, witness := RowWitness.topPrime 48383 },
  { lower := 48778, upper := 48806, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49268, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50548, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51143, witness := RowWitness.topPrime 51071 },
  { lower := 53290, upper := 53386, witness := RowWitness.topPrime 53281 },
  { lower := 55451, upper := 55579, witness := RowWitness.topPrime 55441 },
  { lower := 55580, upper := 55585, witness := RowWitness.topPrime 55579 },
  { lower := 56307, upper := 56307, witness := RowWitness.topPrime 56299 },
  { lower := 57245, upper := 57260, witness := RowWitness.topPrime 57241 },
  { lower := 57344, upper := 57383, witness := RowWitness.topPrime 57331 },
  { lower := 58619, upper := 58702, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59094, witness := RowWitness.topPrime 59029 },
  { lower := 62500, upper := 62548, witness := RowWitness.topPrime 62497 },
  { lower := 63869, upper := 64001, witness := RowWitness.topPrime 63863 },
  { lower := 64002, upper := 64007, witness := RowWitness.topPrime 63997 },
  { lower := 65536, upper := 65659, witness := RowWitness.topPrime 65521 },
  { lower := 65660, upper := 65674, witness := RowWitness.topPrime 65657 },
  { lower := 68644, upper := 68777, witness := RowWitness.topPrime 68639 },
  { lower := 68778, upper := 68789, witness := RowWitness.topPrime 68777 },
  { lower := 68921, upper := 69028, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71425, witness := RowWitness.topPrime 71287 },
  { lower := 71426, upper := 71427, witness := RowWitness.topPrime 71419 },
  { lower := 73205, upper := 73305, witness := RowWitness.topPrime 73189 },
  { lower := 85805, upper := 85821, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89511, witness := RowWitness.topPrime 89381 },
  { lower := 93845, upper := 93888, witness := RowWitness.topPrime 93827 },
  { lower := 98415, upper := 98442, witness := RowWitness.topPrime 98411 },
  { lower := 103041, upper := 103104, witness := RowWitness.topPrime 103007 },
  { lower := 109503, upper := 109513, witness := RowWitness.topPrime 109481 },
  { lower := 137842, upper := 137919, witness := RowWitness.topPrime 137831 },
  { lower := 146410, upper := 146472, witness := RowWitness.topPrime 146407 },
  { lower := 148955, upper := 149015, witness := RowWitness.topPrime 148949 }
]

def row139_layers : List CoverLayer := [
  { lower := 19182, upper := 38364, M := 16 },
  { lower := 38364, upper := 76728, M := 13 },
  { lower := 76728, upper := 153456, M := 10 },
  { lower := 153456, upper := 306912, M := 7 },
  { lower := 306912, upper := 613824, M := 6 },
  { lower := 613824, upper := 1227648, M := 4 },
  { lower := 1227648, upper := 2455296, M := 4 },
  { lower := 2455296, upper := 4910592, M := 3 },
  { lower := 4910592, upper := 9821184, M := 2 },
  { lower := 9821184, upper := 19642368, M := 2 },
  { lower := 19642368, upper := 39284736, M := 1 },
  { lower := 39284736, upper := 78569472, M := 1 },
  { lower := 78569472, upper := 100000000, M := 1 }
]

def row139 : FiniteCoverRow := {
  height := row139_height,
  goods := row139_goods,
  layers := row139_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_good000_checked :
    goodSegmentCheck 139 46 98
      { lower := 280, upper := 415, witness := RowWitness.topPrime 277 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good001_checked :
    goodSegmentCheck 139 46 98
      { lower := 416, upper := 547, witness := RowWitness.topPrime 409 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good002_checked :
    goodSegmentCheck 139 46 98
      { lower := 548, upper := 685, witness := RowWitness.topPrime 547 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good003_checked :
    goodSegmentCheck 139 46 98
      { lower := 686, upper := 821, witness := RowWitness.topPrime 683 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good004_checked :
    goodSegmentCheck 139 46 98
      { lower := 822, upper := 959, witness := RowWitness.topPrime 821 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good005_checked :
    goodSegmentCheck 139 46 98
      { lower := 960, upper := 1091, witness := RowWitness.topPrime 953 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good006_checked :
    goodSegmentCheck 139 46 98
      { lower := 1092, upper := 1229, witness := RowWitness.topPrime 1091 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good007_checked :
    goodSegmentCheck 139 46 98
      { lower := 1230, upper := 1367, witness := RowWitness.topPrime 1229 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good008_checked :
    goodSegmentCheck 139 46 98
      { lower := 1368, upper := 1505, witness := RowWitness.topPrime 1367 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good009_checked :
    goodSegmentCheck 139 46 98
      { lower := 1506, upper := 1637, witness := RowWitness.topPrime 1499 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good010_checked :
    goodSegmentCheck 139 46 98
      { lower := 1638, upper := 1775, witness := RowWitness.topPrime 1637 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good011_checked :
    goodSegmentCheck 139 46 98
      { lower := 1776, upper := 1897, witness := RowWitness.topPrime 1759 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good012_checked :
    goodSegmentCheck 139 46 98
      { lower := 1898, upper := 2027, witness := RowWitness.topPrime 1889 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good013_checked :
    goodSegmentCheck 139 46 98
      { lower := 2028, upper := 2165, witness := RowWitness.topPrime 2027 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good014_checked :
    goodSegmentCheck 139 46 98
      { lower := 2166, upper := 2299, witness := RowWitness.topPrime 2161 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good015_checked :
    goodSegmentCheck 139 46 98
      { lower := 2300, upper := 2435, witness := RowWitness.topPrime 2297 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_good016_checked :
    goodSegmentCheck 139 46 98
      { lower := 2436, upper := 2561, witness := RowWitness.topPrime 2423 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good017_checked :
    goodSegmentCheck 139 46 98
      { lower := 2562, upper := 2695, witness := RowWitness.topPrime 2557 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good018_checked :
    goodSegmentCheck 139 46 98
      { lower := 2696, upper := 2831, witness := RowWitness.topPrime 2693 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good019_checked :
    goodSegmentCheck 139 46 98
      { lower := 2832, upper := 2957, witness := RowWitness.topPrime 2819 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good020_checked :
    goodSegmentCheck 139 46 98
      { lower := 2958, upper := 3095, witness := RowWitness.topPrime 2957 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good021_checked :
    goodSegmentCheck 139 46 98
      { lower := 3096, upper := 3227, witness := RowWitness.topPrime 3089 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good022_checked :
    goodSegmentCheck 139 46 98
      { lower := 3228, upper := 3359, witness := RowWitness.topPrime 3221 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good023_checked :
    goodSegmentCheck 139 46 98
      { lower := 3360, upper := 3497, witness := RowWitness.topPrime 3359 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good024_checked :
    goodSegmentCheck 139 46 98
      { lower := 3498, upper := 3629, witness := RowWitness.topPrime 3491 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good025_checked :
    goodSegmentCheck 139 46 98
      { lower := 3630, upper := 3761, witness := RowWitness.topPrime 3623 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good026_checked :
    goodSegmentCheck 139 46 98
      { lower := 3762, upper := 3899, witness := RowWitness.topPrime 3761 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good027_checked :
    goodSegmentCheck 139 46 98
      { lower := 3900, upper := 4027, witness := RowWitness.topPrime 3889 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good028_checked :
    goodSegmentCheck 139 46 98
      { lower := 4028, upper := 4165, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good029_checked :
    goodSegmentCheck 139 46 98
      { lower := 4166, upper := 4297, witness := RowWitness.topPrime 4159 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good030_checked :
    goodSegmentCheck 139 46 98
      { lower := 4298, upper := 4435, witness := RowWitness.topPrime 4297 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good031_checked :
    goodSegmentCheck 139 46 98
      { lower := 4436, upper := 4561, witness := RowWitness.topPrime 4423 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_good032_checked :
    goodSegmentCheck 139 46 98
      { lower := 4562, upper := 4699, witness := RowWitness.topPrime 4561 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good033_checked :
    goodSegmentCheck 139 46 98
      { lower := 4700, upper := 4829, witness := RowWitness.topPrime 4691 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good034_checked :
    goodSegmentCheck 139 46 98
      { lower := 4830, upper := 4955, witness := RowWitness.topPrime 4817 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good035_checked :
    goodSegmentCheck 139 46 98
      { lower := 4956, upper := 5089, witness := RowWitness.topPrime 4951 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good036_checked :
    goodSegmentCheck 139 46 98
      { lower := 5090, upper := 5225, witness := RowWitness.topPrime 5087 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good037_checked :
    goodSegmentCheck 139 46 98
      { lower := 5226, upper := 5347, witness := RowWitness.topPrime 5209 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good038_checked :
    goodSegmentCheck 139 46 98
      { lower := 5348, upper := 5485, witness := RowWitness.topPrime 5347 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good039_checked :
    goodSegmentCheck 139 46 98
      { lower := 5486, upper := 5621, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good040_checked :
    goodSegmentCheck 139 46 98
      { lower := 5622, upper := 5729, witness := RowWitness.topPrime 5591 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good041_checked :
    goodSegmentCheck 139 46 98
      { lower := 5730, upper := 5855, witness := RowWitness.topPrime 5717 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good042_checked :
    goodSegmentCheck 139 46 98
      { lower := 5856, upper := 5989, witness := RowWitness.topPrime 5851 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good043_checked :
    goodSegmentCheck 139 46 98
      { lower := 5990, upper := 6125, witness := RowWitness.topPrime 5987 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good044_checked :
    goodSegmentCheck 139 46 98
      { lower := 6126, upper := 6259, witness := RowWitness.topPrime 6121 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good045_checked :
    goodSegmentCheck 139 46 98
      { lower := 6260, upper := 6395, witness := RowWitness.topPrime 6257 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good046_checked :
    goodSegmentCheck 139 46 98
      { lower := 6396, upper := 6527, witness := RowWitness.topPrime 6389 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good047_checked :
    goodSegmentCheck 139 46 98
      { lower := 6528, upper := 6659, witness := RowWitness.topPrime 6521 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_good048_checked :
    goodSegmentCheck 139 46 98
      { lower := 6660, upper := 6797, witness := RowWitness.topPrime 6659 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good049_checked :
    goodSegmentCheck 139 46 98
      { lower := 6798, upper := 6931, witness := RowWitness.topPrime 6793 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good050_checked :
    goodSegmentCheck 139 46 98
      { lower := 6932, upper := 7055, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good051_checked :
    goodSegmentCheck 139 46 98
      { lower := 7056, upper := 7181, witness := RowWitness.topPrime 7043 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good052_checked :
    goodSegmentCheck 139 46 98
      { lower := 7182, upper := 7315, witness := RowWitness.topPrime 7177 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good053_checked :
    goodSegmentCheck 139 46 98
      { lower := 7316, upper := 7447, witness := RowWitness.topPrime 7309 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good054_checked :
    goodSegmentCheck 139 46 98
      { lower := 7448, upper := 7571, witness := RowWitness.topPrime 7433 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good055_checked :
    goodSegmentCheck 139 46 98
      { lower := 7572, upper := 7699, witness := RowWitness.topPrime 7561 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good056_checked :
    goodSegmentCheck 139 46 98
      { lower := 7700, upper := 7837, witness := RowWitness.topPrime 7699 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good057_checked :
    goodSegmentCheck 139 46 98
      { lower := 7838, upper := 7967, witness := RowWitness.topPrime 7829 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good058_checked :
    goodSegmentCheck 139 46 98
      { lower := 7968, upper := 8101, witness := RowWitness.topPrime 7963 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good059_checked :
    goodSegmentCheck 139 46 98
      { lower := 8102, upper := 8239, witness := RowWitness.topPrime 8101 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good060_checked :
    goodSegmentCheck 139 46 98
      { lower := 8240, upper := 8375, witness := RowWitness.topPrime 8237 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good061_checked :
    goodSegmentCheck 139 46 98
      { lower := 8376, upper := 8507, witness := RowWitness.topPrime 8369 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good062_checked :
    goodSegmentCheck 139 46 98
      { lower := 8508, upper := 8639, witness := RowWitness.topPrime 8501 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good063_checked :
    goodSegmentCheck 139 46 98
      { lower := 8640, upper := 8767, witness := RowWitness.topPrime 8629 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_good064_checked :
    goodSegmentCheck 139 46 98
      { lower := 8768, upper := 8899, witness := RowWitness.topPrime 8761 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good065_checked :
    goodSegmentCheck 139 46 98
      { lower := 8900, upper := 9031, witness := RowWitness.topPrime 8893 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good066_checked :
    goodSegmentCheck 139 46 98
      { lower := 9032, upper := 9167, witness := RowWitness.topPrime 9029 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good067_checked :
    goodSegmentCheck 139 46 98
      { lower := 9168, upper := 9299, witness := RowWitness.topPrime 9161 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good068_checked :
    goodSegmentCheck 139 46 98
      { lower := 9300, upper := 9431, witness := RowWitness.topPrime 9293 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good069_checked :
    goodSegmentCheck 139 46 98
      { lower := 9432, upper := 9569, witness := RowWitness.topPrime 9431 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good070_checked :
    goodSegmentCheck 139 46 98
      { lower := 9570, upper := 9689, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good071_checked :
    goodSegmentCheck 139 46 98
      { lower := 9690, upper := 9827, witness := RowWitness.topPrime 9689 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good072_checked :
    goodSegmentCheck 139 46 98
      { lower := 9828, upper := 9955, witness := RowWitness.topPrime 9817 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good073_checked :
    goodSegmentCheck 139 46 98
      { lower := 9956, upper := 10087, witness := RowWitness.topPrime 9949 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good074_checked :
    goodSegmentCheck 139 46 98
      { lower := 10088, upper := 10217, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good075_checked :
    goodSegmentCheck 139 46 98
      { lower := 10218, upper := 10349, witness := RowWitness.topPrime 10211 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good076_checked :
    goodSegmentCheck 139 46 98
      { lower := 10350, upper := 10481, witness := RowWitness.topPrime 10343 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good077_checked :
    goodSegmentCheck 139 46 98
      { lower := 10482, upper := 10615, witness := RowWitness.topPrime 10477 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good078_checked :
    goodSegmentCheck 139 46 98
      { lower := 10616, upper := 10751, witness := RowWitness.topPrime 10613 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good079_checked :
    goodSegmentCheck 139 46 98
      { lower := 10752, upper := 10877, witness := RowWitness.topPrime 10739 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_good080_checked :
    goodSegmentCheck 139 46 98
      { lower := 10878, upper := 11005, witness := RowWitness.topPrime 10867 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good081_checked :
    goodSegmentCheck 139 46 98
      { lower := 11006, upper := 11141, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good082_checked :
    goodSegmentCheck 139 46 98
      { lower := 11142, upper := 11269, witness := RowWitness.topPrime 11131 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good083_checked :
    goodSegmentCheck 139 46 98
      { lower := 11270, upper := 11399, witness := RowWitness.topPrime 11261 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good084_checked :
    goodSegmentCheck 139 46 98
      { lower := 11400, upper := 11537, witness := RowWitness.topPrime 11399 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good085_checked :
    goodSegmentCheck 139 46 98
      { lower := 11538, upper := 11665, witness := RowWitness.topPrime 11527 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good086_checked :
    goodSegmentCheck 139 46 98
      { lower := 11666, upper := 11795, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good087_checked :
    goodSegmentCheck 139 46 98
      { lower := 11796, upper := 11927, witness := RowWitness.topPrime 11789 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good088_checked :
    goodSegmentCheck 139 46 98
      { lower := 11928, upper := 12065, witness := RowWitness.topPrime 11927 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good089_checked :
    goodSegmentCheck 139 46 98
      { lower := 12066, upper := 12187, witness := RowWitness.topPrime 12049 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good090_checked :
    goodSegmentCheck 139 46 98
      { lower := 12188, upper := 12301, witness := RowWitness.topPrime 12163 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good091_checked :
    goodSegmentCheck 139 46 98
      { lower := 12302, upper := 12439, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good092_checked :
    goodSegmentCheck 139 46 98
      { lower := 12440, upper := 12575, witness := RowWitness.topPrime 12437 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good093_checked :
    goodSegmentCheck 139 46 98
      { lower := 12576, upper := 12707, witness := RowWitness.topPrime 12569 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good094_checked :
    goodSegmentCheck 139 46 98
      { lower := 12708, upper := 12841, witness := RowWitness.topPrime 12703 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good095_checked :
    goodSegmentCheck 139 46 98
      { lower := 12842, upper := 12979, witness := RowWitness.topPrime 12841 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_good096_checked :
    goodSegmentCheck 139 46 98
      { lower := 12980, upper := 13117, witness := RowWitness.topPrime 12979 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good097_checked :
    goodSegmentCheck 139 46 98
      { lower := 13118, upper := 13247, witness := RowWitness.topPrime 13109 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good098_checked :
    goodSegmentCheck 139 46 98
      { lower := 13248, upper := 13379, witness := RowWitness.topPrime 13241 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good099_checked :
    goodSegmentCheck 139 46 98
      { lower := 13380, upper := 13505, witness := RowWitness.topPrime 13367 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good100_checked :
    goodSegmentCheck 139 46 98
      { lower := 13506, upper := 13637, witness := RowWitness.topPrime 13499 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good101_checked :
    goodSegmentCheck 139 46 98
      { lower := 13638, upper := 13771, witness := RowWitness.topPrime 13633 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good102_checked :
    goodSegmentCheck 139 46 98
      { lower := 13772, upper := 13901, witness := RowWitness.topPrime 13763 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good103_checked :
    goodSegmentCheck 139 46 98
      { lower := 13902, upper := 14039, witness := RowWitness.topPrime 13901 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good104_checked :
    goodSegmentCheck 139 46 98
      { lower := 14040, upper := 14171, witness := RowWitness.topPrime 14033 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good105_checked :
    goodSegmentCheck 139 46 98
      { lower := 14172, upper := 14297, witness := RowWitness.topPrime 14159 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good106_checked :
    goodSegmentCheck 139 46 98
      { lower := 14298, upper := 14431, witness := RowWitness.topPrime 14293 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good107_checked :
    goodSegmentCheck 139 46 98
      { lower := 14432, upper := 14569, witness := RowWitness.topPrime 14431 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good108_checked :
    goodSegmentCheck 139 46 98
      { lower := 14570, upper := 14701, witness := RowWitness.topPrime 14563 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good109_checked :
    goodSegmentCheck 139 46 98
      { lower := 14702, upper := 14837, witness := RowWitness.topPrime 14699 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good110_checked :
    goodSegmentCheck 139 46 98
      { lower := 14838, upper := 14969, witness := RowWitness.topPrime 14831 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good111_checked :
    goodSegmentCheck 139 46 98
      { lower := 14970, upper := 15107, witness := RowWitness.topPrime 14969 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_good112_checked :
    goodSegmentCheck 139 46 98
      { lower := 15108, upper := 15245, witness := RowWitness.topPrime 15107 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good113_checked :
    goodSegmentCheck 139 46 98
      { lower := 15246, upper := 15379, witness := RowWitness.topPrime 15241 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good114_checked :
    goodSegmentCheck 139 46 98
      { lower := 15380, upper := 15515, witness := RowWitness.topPrime 15377 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good115_checked :
    goodSegmentCheck 139 46 98
      { lower := 15516, upper := 15649, witness := RowWitness.topPrime 15511 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good116_checked :
    goodSegmentCheck 139 46 98
      { lower := 15650, upper := 15787, witness := RowWitness.topPrime 15649 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good117_checked :
    goodSegmentCheck 139 46 98
      { lower := 15788, upper := 15925, witness := RowWitness.topPrime 15787 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good118_checked :
    goodSegmentCheck 139 46 98
      { lower := 15926, upper := 16061, witness := RowWitness.topPrime 15923 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good119_checked :
    goodSegmentCheck 139 46 98
      { lower := 16062, upper := 16199, witness := RowWitness.topPrime 16061 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good120_checked :
    goodSegmentCheck 139 46 98
      { lower := 16200, upper := 16331, witness := RowWitness.topPrime 16193 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good121_checked :
    goodSegmentCheck 139 46 98
      { lower := 16332, upper := 16457, witness := RowWitness.topPrime 16319 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good122_checked :
    goodSegmentCheck 139 46 98
      { lower := 16458, upper := 16591, witness := RowWitness.topPrime 16453 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good123_checked :
    goodSegmentCheck 139 46 98
      { lower := 16592, upper := 16711, witness := RowWitness.topPrime 16573 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good124_checked :
    goodSegmentCheck 139 46 98
      { lower := 16712, upper := 16841, witness := RowWitness.topPrime 16703 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good125_checked :
    goodSegmentCheck 139 46 98
      { lower := 16842, upper := 16969, witness := RowWitness.topPrime 16831 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good126_checked :
    goodSegmentCheck 139 46 98
      { lower := 16970, upper := 17101, witness := RowWitness.topPrime 16963 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good127_checked :
    goodSegmentCheck 139 46 98
      { lower := 17102, upper := 17237, witness := RowWitness.topPrime 17099 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_good128_checked :
    goodSegmentCheck 139 46 98
      { lower := 17238, upper := 17369, witness := RowWitness.topPrime 17231 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good129_checked :
    goodSegmentCheck 139 46 98
      { lower := 17370, upper := 17497, witness := RowWitness.topPrime 17359 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good130_checked :
    goodSegmentCheck 139 46 98
      { lower := 17498, upper := 17635, witness := RowWitness.topPrime 17497 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good131_checked :
    goodSegmentCheck 139 46 98
      { lower := 17636, upper := 17765, witness := RowWitness.topPrime 17627 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good132_checked :
    goodSegmentCheck 139 46 98
      { lower := 17766, upper := 17899, witness := RowWitness.topPrime 17761 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good133_checked :
    goodSegmentCheck 139 46 98
      { lower := 17900, upper := 18029, witness := RowWitness.topPrime 17891 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good134_checked :
    goodSegmentCheck 139 46 98
      { lower := 18030, upper := 18151, witness := RowWitness.topPrime 18013 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good135_checked :
    goodSegmentCheck 139 46 98
      { lower := 18152, upper := 18287, witness := RowWitness.topPrime 18149 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good136_checked :
    goodSegmentCheck 139 46 98
      { lower := 18288, upper := 18425, witness := RowWitness.topPrime 18287 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good137_checked :
    goodSegmentCheck 139 46 98
      { lower := 18426, upper := 18551, witness := RowWitness.topPrime 18413 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good138_checked :
    goodSegmentCheck 139 46 98
      { lower := 18552, upper := 18679, witness := RowWitness.topPrime 18541 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good139_checked :
    goodSegmentCheck 139 46 98
      { lower := 18680, upper := 18817, witness := RowWitness.topPrime 18679 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good140_checked :
    goodSegmentCheck 139 46 98
      { lower := 18818, upper := 18941, witness := RowWitness.topPrime 18803 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good141_checked :
    goodSegmentCheck 139 46 98
      { lower := 18942, upper := 19057, witness := RowWitness.topPrime 18919 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good142_checked :
    goodSegmentCheck 139 46 98
      { lower := 19058, upper := 19181, witness := RowWitness.topPrime 19051 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good143_checked :
    goodSegmentCheck 139 46 98
      { lower := 19208, upper := 19304, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_good144_checked :
    goodSegmentCheck 139 46 98
      { lower := 19663, upper := 19799, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good145_checked :
    goodSegmentCheck 139 46 98
      { lower := 19800, upper := 19821, witness := RowWitness.topPrime 19793 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good146_checked :
    goodSegmentCheck 139 46 98
      { lower := 19881, upper := 19911, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good147_checked :
    goodSegmentCheck 139 46 98
      { lower := 19965, upper := 20019, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good148_checked :
    goodSegmentCheck 139 46 98
      { lower := 20172, upper := 20299, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good149_checked :
    goodSegmentCheck 139 46 98
      { lower := 20300, upper := 20302, witness := RowWitness.topPrime 20297 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good150_checked :
    goodSegmentCheck 139 46 98
      { lower := 20402, upper := 20477, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good151_checked :
    goodSegmentCheck 139 46 98
      { lower := 20480, upper := 20617, witness := RowWitness.topPrime 20479 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good152_checked :
    goodSegmentCheck 139 46 98
      { lower := 20618, upper := 20715, witness := RowWitness.topPrime 20611 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good153_checked :
    goodSegmentCheck 139 46 98
      { lower := 21296, upper := 21421, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good154_checked :
    goodSegmentCheck 139 46 98
      { lower := 21422, upper := 21434, witness := RowWitness.topPrime 21419 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good155_checked :
    goodSegmentCheck 139 46 98
      { lower := 21870, upper := 22001, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good156_checked :
    goodSegmentCheck 139 46 98
      { lower := 22002, upper := 22042, witness := RowWitness.topPrime 21997 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good157_checked :
    goodSegmentCheck 139 46 98
      { lower := 22090, upper := 22108, witness := RowWitness.topPrime 22079 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good158_checked :
    goodSegmentCheck 139 46 98
      { lower := 22188, upper := 22228, witness := RowWitness.topPrime 22171 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good159_checked :
    goodSegmentCheck 139 46 98
      { lower := 22326, upper := 22326, witness := RowWitness.topPrime 22307 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_good160_checked :
    goodSegmentCheck 139 46 98
      { lower := 22445, upper := 22464, witness := RowWitness.topPrime 22441 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good161_checked :
    goodSegmentCheck 139 46 98
      { lower := 22472, upper := 22607, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good162_checked :
    goodSegmentCheck 139 46 98
      { lower := 22608, upper := 22610, witness := RowWitness.topPrime 22573 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good163_checked :
    goodSegmentCheck 139 46 98
      { lower := 23763, upper := 23899, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good164_checked :
    goodSegmentCheck 139 46 98
      { lower := 23900, upper := 23900, witness := RowWitness.topPrime 23899 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good165_checked :
    goodSegmentCheck 139 46 98
      { lower := 24037, upper := 24167, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good166_checked :
    goodSegmentCheck 139 46 98
      { lower := 24168, upper := 24195, witness := RowWitness.topPrime 24151 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good167_checked :
    goodSegmentCheck 139 46 98
      { lower := 24299, upper := 24305, witness := RowWitness.topPrime 24281 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good168_checked :
    goodSegmentCheck 139 46 98
      { lower := 24334, upper := 24467, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good169_checked :
    goodSegmentCheck 139 46 98
      { lower := 24468, upper := 24505, witness := RowWitness.topPrime 24443 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good170_checked :
    goodSegmentCheck 139 46 98
      { lower := 24576, upper := 24703, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good171_checked :
    goodSegmentCheck 139 46 98
      { lower := 25000, upper := 25102, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good172_checked :
    goodSegmentCheck 139 46 98
      { lower := 25215, upper := 25327, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good173_checked :
    goodSegmentCheck 139 46 98
      { lower := 25328, upper := 25353, witness := RowWitness.topPrime 25321 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good174_checked :
    goodSegmentCheck 139 46 98
      { lower := 26364, upper := 26382, witness := RowWitness.topPrime 26357 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good175_checked :
    goodSegmentCheck 139 46 98
      { lower := 26411, upper := 26502, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_good176_checked :
    goodSegmentCheck 139 46 98
      { lower := 26508, upper := 26549, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good177_checked :
    goodSegmentCheck 139 46 98
      { lower := 26624, upper := 26735, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good178_checked :
    goodSegmentCheck 139 46 98
      { lower := 26736, upper := 26762, witness := RowWitness.topPrime 26731 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good179_checked :
    goodSegmentCheck 139 46 98
      { lower := 26934, upper := 27034, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good180_checked :
    goodSegmentCheck 139 46 98
      { lower := 27556, upper := 27574, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good181_checked :
    goodSegmentCheck 139 46 98
      { lower := 27848, upper := 27873, witness := RowWitness.topPrime 27847 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good182_checked :
    goodSegmentCheck 139 46 98
      { lower := 28125, upper := 28261, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good183_checked :
    goodSegmentCheck 139 46 98
      { lower := 28262, upper := 28263, witness := RowWitness.topPrime 28229 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good184_checked :
    goodSegmentCheck 139 46 98
      { lower := 28561, upper := 28569, witness := RowWitness.topPrime 28559 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good185_checked :
    goodSegmentCheck 139 46 98
      { lower := 28672, upper := 28699, witness := RowWitness.topPrime 28669 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good186_checked :
    goodSegmentCheck 139 46 98
      { lower := 28717, upper := 28810, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good187_checked :
    goodSegmentCheck 139 46 98
      { lower := 28812, upper := 28855, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good188_checked :
    goodSegmentCheck 139 46 98
      { lower := 29584, upper := 29616, witness := RowWitness.topPrime 29581 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good189_checked :
    goodSegmentCheck 139 46 98
      { lower := 29791, upper := 29906, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good190_checked :
    goodSegmentCheck 139 46 98
      { lower := 30618, upper := 30731, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good191_checked :
    goodSegmentCheck 139 46 98
      { lower := 30732, upper := 30756, witness := RowWitness.topPrime 30727 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_good192_checked :
    goodSegmentCheck 139 46 98
      { lower := 30758, upper := 30858, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good193_checked :
    goodSegmentCheck 139 46 98
      { lower := 30926, upper := 31037, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good194_checked :
    goodSegmentCheck 139 46 98
      { lower := 31213, upper := 31331, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good195_checked :
    goodSegmentCheck 139 46 98
      { lower := 31332, upper := 31388, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good196_checked :
    goodSegmentCheck 139 46 98
      { lower := 31423, upper := 31467, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good197_checked :
    goodSegmentCheck 139 46 98
      { lower := 32805, upper := 32906, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good198_checked :
    goodSegmentCheck 139 46 98
      { lower := 33614, upper := 33627, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good199_checked :
    goodSegmentCheck 139 46 98
      { lower := 33708, upper := 33752, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good200_checked :
    goodSegmentCheck 139 46 98
      { lower := 34322, upper := 34457, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good201_checked :
    goodSegmentCheck 139 46 98
      { lower := 34458, upper := 34529, witness := RowWitness.topPrime 34457 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good202_checked :
    goodSegmentCheck 139 46 98
      { lower := 35287, upper := 35290, witness := RowWitness.topPrime 35281 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good203_checked :
    goodSegmentCheck 139 46 98
      { lower := 35344, upper := 35425, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good204_checked :
    goodSegmentCheck 139 46 98
      { lower := 36015, upper := 36050, witness := RowWitness.topPrime 36013 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good205_checked :
    goodSegmentCheck 139 46 98
      { lower := 36517, upper := 36635, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good206_checked :
    goodSegmentCheck 139 46 98
      { lower := 36636, upper := 36639, witness := RowWitness.topPrime 36629 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good207_checked :
    goodSegmentCheck 139 46 98
      { lower := 37303, upper := 37348, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_good208_checked :
    goodSegmentCheck 139 46 98
      { lower := 37500, upper := 37631, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good209_checked :
    goodSegmentCheck 139 46 98
      { lower := 37632, upper := 37676, witness := RowWitness.topPrime 37619 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good210_checked :
    goodSegmentCheck 139 46 98
      { lower := 38307, upper := 38429, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good211_checked :
    goodSegmentCheck 139 46 98
      { lower := 39366, upper := 39442, witness := RowWitness.topPrime 39359 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good212_checked :
    goodSegmentCheck 139 46 98
      { lower := 40401, upper := 40466, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good213_checked :
    goodSegmentCheck 139 46 98
      { lower := 40931, upper := 40942, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good214_checked :
    goodSegmentCheck 139 46 98
      { lower := 40960, upper := 41069, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good215_checked :
    goodSegmentCheck 139 46 98
      { lower := 45369, upper := 45391, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good216_checked :
    goodSegmentCheck 139 46 98
      { lower := 45927, upper := 45934, witness := RowWitness.topPrime 45893 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good217_checked :
    goodSegmentCheck 139 46 98
      { lower := 47526, upper := 47659, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good218_checked :
    goodSegmentCheck 139 46 98
      { lower := 47660, upper := 47662, witness := RowWitness.topPrime 47659 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good219_checked :
    goodSegmentCheck 139 46 98
      { lower := 48013, upper := 48099, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good220_checked :
    goodSegmentCheck 139 46 98
      { lower := 48387, upper := 48511, witness := RowWitness.topPrime 48383 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good221_checked :
    goodSegmentCheck 139 46 98
      { lower := 48778, upper := 48806, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good222_checked :
    goodSegmentCheck 139 46 98
      { lower := 49152, upper := 49268, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good223_checked :
    goodSegmentCheck 139 46 98
      { lower := 50421, upper := 50548, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_good224_checked :
    goodSegmentCheck 139 46 98
      { lower := 51076, upper := 51143, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good225_checked :
    goodSegmentCheck 139 46 98
      { lower := 53290, upper := 53386, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good226_checked :
    goodSegmentCheck 139 46 98
      { lower := 55451, upper := 55579, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good227_checked :
    goodSegmentCheck 139 46 98
      { lower := 55580, upper := 55585, witness := RowWitness.topPrime 55579 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good228_checked :
    goodSegmentCheck 139 46 98
      { lower := 56307, upper := 56307, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good229_checked :
    goodSegmentCheck 139 46 98
      { lower := 57245, upper := 57260, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good230_checked :
    goodSegmentCheck 139 46 98
      { lower := 57344, upper := 57383, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good231_checked :
    goodSegmentCheck 139 46 98
      { lower := 58619, upper := 58702, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good232_checked :
    goodSegmentCheck 139 46 98
      { lower := 59049, upper := 59094, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good233_checked :
    goodSegmentCheck 139 46 98
      { lower := 62500, upper := 62548, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good234_checked :
    goodSegmentCheck 139 46 98
      { lower := 63869, upper := 64001, witness := RowWitness.topPrime 63863 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good235_checked :
    goodSegmentCheck 139 46 98
      { lower := 64002, upper := 64007, witness := RowWitness.topPrime 63997 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good236_checked :
    goodSegmentCheck 139 46 98
      { lower := 65536, upper := 65659, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good237_checked :
    goodSegmentCheck 139 46 98
      { lower := 65660, upper := 65674, witness := RowWitness.topPrime 65657 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good238_checked :
    goodSegmentCheck 139 46 98
      { lower := 68644, upper := 68777, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good239_checked :
    goodSegmentCheck 139 46 98
      { lower := 68778, upper := 68789, witness := RowWitness.topPrime 68777 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_good240_checked :
    goodSegmentCheck 139 46 98
      { lower := 68921, upper := 69028, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good241_checked :
    goodSegmentCheck 139 46 98
      { lower := 71289, upper := 71425, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good242_checked :
    goodSegmentCheck 139 46 98
      { lower := 71426, upper := 71427, witness := RowWitness.topPrime 71419 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good243_checked :
    goodSegmentCheck 139 46 98
      { lower := 73205, upper := 73305, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good244_checked :
    goodSegmentCheck 139 46 98
      { lower := 85805, upper := 85821, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good245_checked :
    goodSegmentCheck 139 46 98
      { lower := 89383, upper := 89511, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good246_checked :
    goodSegmentCheck 139 46 98
      { lower := 93845, upper := 93888, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good247_checked :
    goodSegmentCheck 139 46 98
      { lower := 98415, upper := 98442, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good248_checked :
    goodSegmentCheck 139 46 98
      { lower := 103041, upper := 103104, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good249_checked :
    goodSegmentCheck 139 46 98
      { lower := 109503, upper := 109513, witness := RowWitness.topPrime 109481 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good250_checked :
    goodSegmentCheck 139 46 98
      { lower := 137842, upper := 137919, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good251_checked :
    goodSegmentCheck 139 46 98
      { lower := 146410, upper := 146472, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row139_good252_checked :
    goodSegmentCheck 139 46 98
      { lower := 148955, upper := 149015, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 139) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good251_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_good252_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_goods_checked :
    row139.goods.all (goodSegmentCheck row139.height.i row139.height.r row139.height.s) = true := by
  change row139_goods.all (goodSegmentCheck 139 46 98) = true
  simp only [row139_goods, List.all_cons, List.all_nil,
    row139_good000_checked,
    row139_good001_checked,
    row139_good002_checked,
    row139_good003_checked,
    row139_good004_checked,
    row139_good005_checked,
    row139_good006_checked,
    row139_good007_checked,
    row139_good008_checked,
    row139_good009_checked,
    row139_good010_checked,
    row139_good011_checked,
    row139_good012_checked,
    row139_good013_checked,
    row139_good014_checked,
    row139_good015_checked,
    row139_good016_checked,
    row139_good017_checked,
    row139_good018_checked,
    row139_good019_checked,
    row139_good020_checked,
    row139_good021_checked,
    row139_good022_checked,
    row139_good023_checked,
    row139_good024_checked,
    row139_good025_checked,
    row139_good026_checked,
    row139_good027_checked,
    row139_good028_checked,
    row139_good029_checked,
    row139_good030_checked,
    row139_good031_checked,
    row139_good032_checked,
    row139_good033_checked,
    row139_good034_checked,
    row139_good035_checked,
    row139_good036_checked,
    row139_good037_checked,
    row139_good038_checked,
    row139_good039_checked,
    row139_good040_checked,
    row139_good041_checked,
    row139_good042_checked,
    row139_good043_checked,
    row139_good044_checked,
    row139_good045_checked,
    row139_good046_checked,
    row139_good047_checked,
    row139_good048_checked,
    row139_good049_checked,
    row139_good050_checked,
    row139_good051_checked,
    row139_good052_checked,
    row139_good053_checked,
    row139_good054_checked,
    row139_good055_checked,
    row139_good056_checked,
    row139_good057_checked,
    row139_good058_checked,
    row139_good059_checked,
    row139_good060_checked,
    row139_good061_checked,
    row139_good062_checked,
    row139_good063_checked,
    row139_good064_checked,
    row139_good065_checked,
    row139_good066_checked,
    row139_good067_checked,
    row139_good068_checked,
    row139_good069_checked,
    row139_good070_checked,
    row139_good071_checked,
    row139_good072_checked,
    row139_good073_checked,
    row139_good074_checked,
    row139_good075_checked,
    row139_good076_checked,
    row139_good077_checked,
    row139_good078_checked,
    row139_good079_checked,
    row139_good080_checked,
    row139_good081_checked,
    row139_good082_checked,
    row139_good083_checked,
    row139_good084_checked,
    row139_good085_checked,
    row139_good086_checked,
    row139_good087_checked,
    row139_good088_checked,
    row139_good089_checked,
    row139_good090_checked,
    row139_good091_checked,
    row139_good092_checked,
    row139_good093_checked,
    row139_good094_checked,
    row139_good095_checked,
    row139_good096_checked,
    row139_good097_checked,
    row139_good098_checked,
    row139_good099_checked,
    row139_good100_checked,
    row139_good101_checked,
    row139_good102_checked,
    row139_good103_checked,
    row139_good104_checked,
    row139_good105_checked,
    row139_good106_checked,
    row139_good107_checked,
    row139_good108_checked,
    row139_good109_checked,
    row139_good110_checked,
    row139_good111_checked,
    row139_good112_checked,
    row139_good113_checked,
    row139_good114_checked,
    row139_good115_checked,
    row139_good116_checked,
    row139_good117_checked,
    row139_good118_checked,
    row139_good119_checked,
    row139_good120_checked,
    row139_good121_checked,
    row139_good122_checked,
    row139_good123_checked,
    row139_good124_checked,
    row139_good125_checked,
    row139_good126_checked,
    row139_good127_checked,
    row139_good128_checked,
    row139_good129_checked,
    row139_good130_checked,
    row139_good131_checked,
    row139_good132_checked,
    row139_good133_checked,
    row139_good134_checked,
    row139_good135_checked,
    row139_good136_checked,
    row139_good137_checked,
    row139_good138_checked,
    row139_good139_checked,
    row139_good140_checked,
    row139_good141_checked,
    row139_good142_checked,
    row139_good143_checked,
    row139_good144_checked,
    row139_good145_checked,
    row139_good146_checked,
    row139_good147_checked,
    row139_good148_checked,
    row139_good149_checked,
    row139_good150_checked,
    row139_good151_checked,
    row139_good152_checked,
    row139_good153_checked,
    row139_good154_checked,
    row139_good155_checked,
    row139_good156_checked,
    row139_good157_checked,
    row139_good158_checked,
    row139_good159_checked,
    row139_good160_checked,
    row139_good161_checked,
    row139_good162_checked,
    row139_good163_checked,
    row139_good164_checked,
    row139_good165_checked,
    row139_good166_checked,
    row139_good167_checked,
    row139_good168_checked,
    row139_good169_checked,
    row139_good170_checked,
    row139_good171_checked,
    row139_good172_checked,
    row139_good173_checked,
    row139_good174_checked,
    row139_good175_checked,
    row139_good176_checked,
    row139_good177_checked,
    row139_good178_checked,
    row139_good179_checked,
    row139_good180_checked,
    row139_good181_checked,
    row139_good182_checked,
    row139_good183_checked,
    row139_good184_checked,
    row139_good185_checked,
    row139_good186_checked,
    row139_good187_checked,
    row139_good188_checked,
    row139_good189_checked,
    row139_good190_checked,
    row139_good191_checked,
    row139_good192_checked,
    row139_good193_checked,
    row139_good194_checked,
    row139_good195_checked,
    row139_good196_checked,
    row139_good197_checked,
    row139_good198_checked,
    row139_good199_checked,
    row139_good200_checked,
    row139_good201_checked,
    row139_good202_checked,
    row139_good203_checked,
    row139_good204_checked,
    row139_good205_checked,
    row139_good206_checked,
    row139_good207_checked,
    row139_good208_checked,
    row139_good209_checked,
    row139_good210_checked,
    row139_good211_checked,
    row139_good212_checked,
    row139_good213_checked,
    row139_good214_checked,
    row139_good215_checked,
    row139_good216_checked,
    row139_good217_checked,
    row139_good218_checked,
    row139_good219_checked,
    row139_good220_checked,
    row139_good221_checked,
    row139_good222_checked,
    row139_good223_checked,
    row139_good224_checked,
    row139_good225_checked,
    row139_good226_checked,
    row139_good227_checked,
    row139_good228_checked,
    row139_good229_checked,
    row139_good230_checked,
    row139_good231_checked,
    row139_good232_checked,
    row139_good233_checked,
    row139_good234_checked,
    row139_good235_checked,
    row139_good236_checked,
    row139_good237_checked,
    row139_good238_checked,
    row139_good239_checked,
    row139_good240_checked,
    row139_good241_checked,
    row139_good242_checked,
    row139_good243_checked,
    row139_good244_checked,
    row139_good245_checked,
    row139_good246_checked,
    row139_good247_checked,
    row139_good248_checked,
    row139_good249_checked,
    row139_good250_checked,
    row139_good251_checked,
    row139_good252_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_registered :
    decide (row139.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row139_small_checked :
    coverCheck (2 * row139.height.i + 2) (row139.height.i * (row139.height.i - 1) - 1)
      (row139.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row139_layerCover_checked :
    coverCheck (row139.height.i * (row139.height.i - 1)) (row139.height.n0 - 1)
      (row139.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row139_bounds : List NatInterval :=
  [(280, 415), (416, 547), (548, 685), (686, 821), (822, 959), (960, 1091), (1092, 1229), (1230, 1367), (1368, 1505), (1506, 1637), (1638, 1775), (1776, 1897), (1898, 2027), (2028, 2165), (2166, 2299), (2300, 2435), (2436, 2561), (2562, 2695), (2696, 2831), (2832, 2957), (2958, 3095), (3096, 3227), (3228, 3359), (3360, 3497), (3498, 3629), (3630, 3761), (3762, 3899), (3900, 4027), (4028, 4165), (4166, 4297), (4298, 4435), (4436, 4561), (4562, 4699), (4700, 4829), (4830, 4955), (4956, 5089), (5090, 5225), (5226, 5347), (5348, 5485), (5486, 5621), (5622, 5729), (5730, 5855), (5856, 5989), (5990, 6125), (6126, 6259), (6260, 6395), (6396, 6527), (6528, 6659), (6660, 6797), (6798, 6931), (6932, 7055), (7056, 7181), (7182, 7315), (7316, 7447), (7448, 7571), (7572, 7699), (7700, 7837), (7838, 7967), (7968, 8101), (8102, 8239), (8240, 8375), (8376, 8507), (8508, 8639), (8640, 8767), (8768, 8899), (8900, 9031), (9032, 9167), (9168, 9299), (9300, 9431), (9432, 9569), (9570, 9689), (9690, 9827), (9828, 9955), (9956, 10087), (10088, 10217), (10218, 10349), (10350, 10481), (10482, 10615), (10616, 10751), (10752, 10877), (10878, 11005), (11006, 11141), (11142, 11269), (11270, 11399), (11400, 11537), (11538, 11665), (11666, 11795), (11796, 11927), (11928, 12065), (12066, 12187), (12188, 12301), (12302, 12439), (12440, 12575), (12576, 12707), (12708, 12841), (12842, 12979), (12980, 13117), (13118, 13247), (13248, 13379), (13380, 13505), (13506, 13637), (13638, 13771), (13772, 13901), (13902, 14039), (14040, 14171), (14172, 14297), (14298, 14431), (14432, 14569), (14570, 14701), (14702, 14837), (14838, 14969), (14970, 15107), (15108, 15245), (15246, 15379), (15380, 15515), (15516, 15649), (15650, 15787), (15788, 15925), (15926, 16061), (16062, 16199), (16200, 16331), (16332, 16457), (16458, 16591), (16592, 16711), (16712, 16841), (16842, 16969), (16970, 17101), (17102, 17237), (17238, 17369), (17370, 17497), (17498, 17635), (17636, 17765), (17766, 17899), (17900, 18029), (18030, 18151), (18152, 18287), (18288, 18425), (18426, 18551), (18552, 18679), (18680, 18817), (18818, 18941), (18942, 19057), (19058, 19181), (19208, 19304), (19663, 19799), (19800, 19821), (19881, 19911), (19965, 20019), (20172, 20299), (20300, 20302), (20402, 20477), (20480, 20617), (20618, 20715), (21296, 21421), (21422, 21434), (21870, 22001), (22002, 22042), (22090, 22108), (22188, 22228), (22326, 22326), (22445, 22464), (22472, 22607), (22608, 22610), (23763, 23899), (23900, 23900), (24037, 24167), (24168, 24195), (24299, 24305), (24334, 24467), (24468, 24505), (24576, 24703), (25000, 25102), (25215, 25327), (25328, 25353), (26364, 26382), (26411, 26502), (26508, 26549), (26624, 26735), (26736, 26762), (26934, 27034), (27556, 27574), (27848, 27873), (28125, 28261), (28262, 28263), (28561, 28569), (28672, 28699), (28717, 28810), (28812, 28855), (29584, 29616), (29791, 29906), (30618, 30731), (30732, 30756), (30758, 30858), (30926, 31037), (31213, 31331), (31332, 31388), (31423, 31467), (32805, 32906), (33614, 33627), (33708, 33752), (34322, 34457), (34458, 34529), (35287, 35290), (35344, 35425), (36015, 36050), (36517, 36635), (36636, 36639), (37303, 37348), (37500, 37631), (37632, 37676), (38307, 38429), (39366, 39442), (40401, 40466), (40931, 40942), (40960, 41069), (45369, 45391), (45927, 45934), (47526, 47659), (47660, 47662), (48013, 48099), (48387, 48511), (48778, 48806), (49152, 49268), (50421, 50548), (51076, 51143), (53290, 53386), (55451, 55579), (55580, 55585), (56307, 56307), (57245, 57260), (57344, 57383), (58619, 58702), (59049, 59094), (62500, 62548), (63869, 64001), (64002, 64007), (65536, 65659), (65660, 65674), (68644, 68777), (68778, 68789), (68921, 69028), (71289, 71425), (71426, 71427), (73205, 73305), (85805, 85821), (89383, 89511), (93845, 93888), (98415, 98442), (103041, 103104), (109503, 109513), (137842, 137919), (146410, 146472), (148955, 149015)]

theorem row139_bounds_eq : row139.goods.map goodSegmentBounds = row139_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row139_layer000_intervals : List ColouredInterval :=
  [(2, 20480, 20618), (2, 22528, 22666), (2, 24576, 24714), (2, 26624, 26762), (2, 28672, 28810), (2, 30720, 30858), (2, 32768, 32906), (2, 20480, 20618), (2, 24576, 24714), (2, 28672, 28810), (2, 32768, 32906), (2, 36864, 37002), (2, 24576, 24714), (2, 32768, 32906), (2, 32768, 32906), (2, 32768, 32906), (3, 19683, 19821), (3, 21870, 22008), (3, 24057, 24195), (3, 26244, 26382), (3, 28431, 28569), (3, 30618, 30756), (3, 32805, 32943), (3, 34992, 35130), (3, 19683, 19821), (3, 26244, 26382), (3, 32805, 32943), (3, 19683, 19821), (5, 21875, 22013), (5, 25000, 25138), (5, 28125, 28263), (5, 31250, 31388), (5, 34375, 34513), (5, 37500, 37638), (5, 31250, 31388), (7, 19208, 19346), (7, 21609, 21747), (7, 24010, 24148), (7, 26411, 26549), (7, 28812, 28950), (7, 31213, 31351), (7, 33614, 33752), (7, 36015, 36153), (7, 33614, 33752), (11, 19965, 20103), (11, 21296, 21434), (11, 29282, 29420), (13, 19773, 19911), (13, 21970, 22108), (13, 24167, 24305), (13, 26364, 26502), (13, 28561, 28699), (13, 30758, 30896), (13, 32955, 33093), (13, 35152, 35290), (13, 28561, 28699), (17, 19652, 19790), (17, 24565, 24703), (17, 29478, 29616), (17, 34391, 34529), (19, 20577, 20715), (19, 27436, 27574), (19, 34295, 34433), (23, 24334, 24472), (23, 36501, 36639), (29, 24389, 24527), (31, 29791, 29929), (37, 19182, 19304), (37, 20535, 20673), (37, 21904, 22042), (41, 20172, 20310), (41, 21853, 21991), (41, 23534, 23672), (41, 25215, 25353), (41, 26896, 27034), (43, 20339, 20477), (43, 22188, 22326), (43, 24037, 24175), (43, 25886, 26024), (43, 27735, 27873), (43, 29584, 29722), (47, 19881, 20019), (47, 22090, 22228), (47, 24299, 24437), (47, 26508, 26646), (47, 28717, 28855), (47, 30926, 31064), (47, 33135, 33273), (47, 35344, 35482), (53, 19663, 19801), (53, 22472, 22610), (53, 25281, 25419), (53, 28090, 28228), (53, 30899, 31037), (53, 33708, 33846), (53, 36517, 36655), (59, 20886, 21024), (59, 24367, 24505), (59, 27848, 27986), (59, 31329, 31467), (59, 34810, 34948), (59, 38291, 38363), (61, 22326, 22464), (61, 26047, 26185), (61, 29768, 29906), (61, 33489, 33627), (61, 37210, 37348), (67, 22445, 22583), (67, 26934, 27072), (67, 31423, 31561), (67, 35912, 36050), (71, 20164, 20302), (71, 25205, 25343), (71, 30246, 30384), (71, 35287, 35425), (73, 21316, 21454), (73, 26645, 26783), (73, 31974, 32112), (73, 37303, 37441), (79, 24964, 25102), (79, 31205, 31343), (79, 37446, 37584), (83, 20667, 20805), (83, 27556, 27694), (83, 34445, 34583), (89, 23763, 23901), (89, 31684, 31822), (97, 28227, 28365), (97, 37636, 37774), (101, 20402, 20540), (101, 30603, 30741), (103, 21218, 21356), (103, 31827, 31965), (107, 22898, 23036), (107, 34347, 34485), (109, 23762, 23900), (109, 35643, 35781), (113, 25538, 25676), (113, 38307, 38363), (127, 32258, 32396), (131, 34322, 34460), (137, 37538, 37676)]

def row139_layer000_block000 : List ColouredInterval :=
  [(2, 20480, 20618), (2, 22528, 22666), (2, 24576, 24714), (2, 26624, 26762), (2, 28672, 28810), (2, 30720, 30858), (2, 32768, 32906), (2, 20480, 20618), (2, 24576, 24714), (2, 28672, 28810), (2, 32768, 32906), (2, 36864, 37002), (2, 24576, 24714), (2, 32768, 32906)]

def row139_layer000_block001 : List ColouredInterval :=
  [(2, 32768, 32906), (2, 32768, 32906), (3, 19683, 19821), (3, 21870, 22008), (3, 24057, 24195), (3, 26244, 26382), (3, 28431, 28569), (3, 30618, 30756), (3, 32805, 32943), (3, 34992, 35130), (3, 19683, 19821), (3, 26244, 26382), (3, 32805, 32943), (3, 19683, 19821)]

def row139_layer000_block002 : List ColouredInterval :=
  [(5, 21875, 22013), (5, 25000, 25138), (5, 28125, 28263), (5, 31250, 31388), (5, 34375, 34513), (5, 37500, 37638), (5, 31250, 31388), (7, 19208, 19346), (7, 21609, 21747), (7, 24010, 24148), (7, 26411, 26549), (7, 28812, 28950), (7, 31213, 31351), (7, 33614, 33752)]

def row139_layer000_block003 : List ColouredInterval :=
  [(7, 36015, 36153), (7, 33614, 33752), (11, 19965, 20103), (11, 21296, 21434), (11, 29282, 29420), (13, 19773, 19911), (13, 21970, 22108), (13, 24167, 24305), (13, 26364, 26502), (13, 28561, 28699), (13, 30758, 30896), (13, 32955, 33093), (13, 35152, 35290), (13, 28561, 28699)]

def row139_layer000_block004 : List ColouredInterval :=
  [(17, 19652, 19790), (17, 24565, 24703), (17, 29478, 29616), (17, 34391, 34529), (19, 20577, 20715), (19, 27436, 27574), (19, 34295, 34433), (23, 24334, 24472), (23, 36501, 36639), (29, 24389, 24527), (31, 29791, 29929), (37, 19182, 19304), (37, 20535, 20673), (37, 21904, 22042)]

def row139_layer000_block005 : List ColouredInterval :=
  [(41, 20172, 20310), (41, 21853, 21991), (41, 23534, 23672), (41, 25215, 25353), (41, 26896, 27034), (43, 20339, 20477), (43, 22188, 22326), (43, 24037, 24175), (43, 25886, 26024), (43, 27735, 27873), (43, 29584, 29722), (47, 19881, 20019), (47, 22090, 22228), (47, 24299, 24437)]

def row139_layer000_block006 : List ColouredInterval :=
  [(47, 26508, 26646), (47, 28717, 28855), (47, 30926, 31064), (47, 33135, 33273), (47, 35344, 35482), (53, 19663, 19801), (53, 22472, 22610), (53, 25281, 25419), (53, 28090, 28228), (53, 30899, 31037), (53, 33708, 33846), (53, 36517, 36655), (59, 20886, 21024), (59, 24367, 24505)]

def row139_layer000_block007 : List ColouredInterval :=
  [(59, 27848, 27986), (59, 31329, 31467), (59, 34810, 34948), (59, 38291, 38363), (61, 22326, 22464), (61, 26047, 26185), (61, 29768, 29906), (61, 33489, 33627), (61, 37210, 37348), (67, 22445, 22583), (67, 26934, 27072), (67, 31423, 31561), (67, 35912, 36050), (71, 20164, 20302)]

def row139_layer000_block008 : List ColouredInterval :=
  [(71, 25205, 25343), (71, 30246, 30384), (71, 35287, 35425), (73, 21316, 21454), (73, 26645, 26783), (73, 31974, 32112), (73, 37303, 37441), (79, 24964, 25102), (79, 31205, 31343), (79, 37446, 37584), (83, 20667, 20805), (83, 27556, 27694), (83, 34445, 34583), (89, 23763, 23901)]

def row139_layer000_block009 : List ColouredInterval :=
  [(89, 31684, 31822), (97, 28227, 28365), (97, 37636, 37774), (101, 20402, 20540), (101, 30603, 30741), (103, 21218, 21356), (103, 31827, 31965), (107, 22898, 23036), (107, 34347, 34485), (109, 23762, 23900), (109, 35643, 35781), (113, 25538, 25676), (113, 38307, 38363), (127, 32258, 32396)]

def row139_layer000_block010 : List ColouredInterval :=
  [(131, 34322, 34460), (137, 37538, 37676)]

def row139_layer000_chunks : List (List ColouredInterval) :=
  [row139_layer000_block000, row139_layer000_block001, row139_layer000_block002, row139_layer000_block003, row139_layer000_block004, row139_layer000_block005, row139_layer000_block006, row139_layer000_block007, row139_layer000_block008, row139_layer000_block009, row139_layer000_block010]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer000_arithmetic : LayerArithmeticValid row139.height { lower := 19182, upper := 38364, M := 16 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer000_enumeration :
    activePowerIntervalList 139 16 19182 38364 = row139_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer000_pairs000 :
    row139_layer000_block000.all (fun I => row139_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row139_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer000_pairs001 :
    row139_layer000_block001.all (fun I => row139_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row139_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer000_pairs002 :
    row139_layer000_block002.all (fun I => row139_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row139_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer000_pairs003 :
    row139_layer000_block003.all (fun I => row139_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row139_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer000_pairs004 :
    row139_layer000_block004.all (fun I => row139_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row139_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer000_pairs005 :
    row139_layer000_block005.all (fun I => row139_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row139_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer000_pairs006 :
    row139_layer000_block006.all (fun I => row139_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row139_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer000_pairs007 :
    row139_layer000_block007.all (fun I => row139_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row139_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer000_pairs008 :
    row139_layer000_block008.all (fun I => row139_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row139_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer000_pairs008
