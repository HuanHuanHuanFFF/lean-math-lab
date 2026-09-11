import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row112_height : HeightCertificateDatum := { i := 112, r := 37, s := 78, n0Power10 := 10 }

def row112_goods : List GoodSegment := [
  { lower := 226, upper := 334, witness := RowWitness.topPrime 223 },
  { lower := 335, upper := 442, witness := RowWitness.topPrime 331 },
  { lower := 443, upper := 554, witness := RowWitness.topPrime 443 },
  { lower := 555, upper := 658, witness := RowWitness.topPrime 547 },
  { lower := 659, upper := 770, witness := RowWitness.topPrime 659 },
  { lower := 771, upper := 880, witness := RowWitness.topPrime 769 },
  { lower := 881, upper := 992, witness := RowWitness.topPrime 881 },
  { lower := 993, upper := 1102, witness := RowWitness.topPrime 991 },
  { lower := 1103, upper := 1214, witness := RowWitness.topPrime 1103 },
  { lower := 1215, upper := 1324, witness := RowWitness.topPrime 1213 },
  { lower := 1325, upper := 1432, witness := RowWitness.topPrime 1321 },
  { lower := 1433, upper := 1544, witness := RowWitness.topPrime 1433 },
  { lower := 1545, upper := 1654, witness := RowWitness.topPrime 1543 },
  { lower := 1655, upper := 1748, witness := RowWitness.topPrime 1637 },
  { lower := 1749, upper := 1858, witness := RowWitness.topPrime 1747 },
  { lower := 1859, upper := 1958, witness := RowWitness.topPrime 1847 },
  { lower := 1959, upper := 2062, witness := RowWitness.topPrime 1951 },
  { lower := 2063, upper := 2174, witness := RowWitness.topPrime 2063 },
  { lower := 2175, upper := 2272, witness := RowWitness.topPrime 2161 },
  { lower := 2273, upper := 2384, witness := RowWitness.topPrime 2273 },
  { lower := 2385, upper := 2494, witness := RowWitness.topPrime 2383 },
  { lower := 2495, upper := 2588, witness := RowWitness.topPrime 2477 },
  { lower := 2589, upper := 2690, witness := RowWitness.topPrime 2579 },
  { lower := 2691, upper := 2800, witness := RowWitness.topPrime 2689 },
  { lower := 2801, upper := 2912, witness := RowWitness.topPrime 2801 },
  { lower := 2913, upper := 3020, witness := RowWitness.topPrime 2909 },
  { lower := 3021, upper := 3130, witness := RowWitness.topPrime 3019 },
  { lower := 3131, upper := 3232, witness := RowWitness.topPrime 3121 },
  { lower := 3233, upper := 3340, witness := RowWitness.topPrime 3229 },
  { lower := 3341, upper := 3442, witness := RowWitness.topPrime 3331 },
  { lower := 3443, upper := 3544, witness := RowWitness.topPrime 3433 },
  { lower := 3545, upper := 3652, witness := RowWitness.topPrime 3541 },
  { lower := 3653, upper := 3754, witness := RowWitness.topPrime 3643 },
  { lower := 3755, upper := 3850, witness := RowWitness.topPrime 3739 },
  { lower := 3851, upper := 3962, witness := RowWitness.topPrime 3851 },
  { lower := 3963, upper := 4058, witness := RowWitness.topPrime 3947 },
  { lower := 4059, upper := 4168, witness := RowWitness.topPrime 4057 },
  { lower := 4169, upper := 4270, witness := RowWitness.topPrime 4159 },
  { lower := 4271, upper := 4382, witness := RowWitness.topPrime 4271 },
  { lower := 4383, upper := 4484, witness := RowWitness.topPrime 4373 },
  { lower := 4485, upper := 4594, witness := RowWitness.topPrime 4483 },
  { lower := 4595, upper := 4702, witness := RowWitness.topPrime 4591 },
  { lower := 4703, upper := 4814, witness := RowWitness.topPrime 4703 },
  { lower := 4815, upper := 4924, witness := RowWitness.topPrime 4813 },
  { lower := 4925, upper := 5030, witness := RowWitness.topPrime 4919 },
  { lower := 5031, upper := 5134, witness := RowWitness.topPrime 5023 },
  { lower := 5135, upper := 5230, witness := RowWitness.topPrime 5119 },
  { lower := 5231, upper := 5342, witness := RowWitness.topPrime 5231 },
  { lower := 5343, upper := 5444, witness := RowWitness.topPrime 5333 },
  { lower := 5445, upper := 5554, witness := RowWitness.topPrime 5443 },
  { lower := 5555, upper := 5642, witness := RowWitness.topPrime 5531 },
  { lower := 5643, upper := 5752, witness := RowWitness.topPrime 5641 },
  { lower := 5753, upper := 5860, witness := RowWitness.topPrime 5749 },
  { lower := 5861, upper := 5972, witness := RowWitness.topPrime 5861 },
  { lower := 5973, upper := 6064, witness := RowWitness.topPrime 5953 },
  { lower := 6065, upper := 6164, witness := RowWitness.topPrime 6053 },
  { lower := 6165, upper := 6274, witness := RowWitness.topPrime 6163 },
  { lower := 6275, upper := 6382, witness := RowWitness.topPrime 6271 },
  { lower := 6383, upper := 6490, witness := RowWitness.topPrime 6379 },
  { lower := 6491, upper := 6602, witness := RowWitness.topPrime 6491 },
  { lower := 6603, upper := 6710, witness := RowWitness.topPrime 6599 },
  { lower := 6711, upper := 6820, witness := RowWitness.topPrime 6709 },
  { lower := 6821, upper := 6914, witness := RowWitness.topPrime 6803 },
  { lower := 6915, upper := 7022, witness := RowWitness.topPrime 6911 },
  { lower := 7023, upper := 7130, witness := RowWitness.topPrime 7019 },
  { lower := 7131, upper := 7240, witness := RowWitness.topPrime 7129 },
  { lower := 7241, upper := 7348, witness := RowWitness.topPrime 7237 },
  { lower := 7349, upper := 7460, witness := RowWitness.topPrime 7349 },
  { lower := 7461, upper := 7570, witness := RowWitness.topPrime 7459 },
  { lower := 7571, upper := 7672, witness := RowWitness.topPrime 7561 },
  { lower := 7673, upper := 7784, witness := RowWitness.topPrime 7673 },
  { lower := 7785, upper := 7870, witness := RowWitness.topPrime 7759 },
  { lower := 7871, upper := 7978, witness := RowWitness.topPrime 7867 },
  { lower := 7979, upper := 8074, witness := RowWitness.topPrime 7963 },
  { lower := 8075, upper := 8180, witness := RowWitness.topPrime 8069 },
  { lower := 8181, upper := 8290, witness := RowWitness.topPrime 8179 },
  { lower := 8291, upper := 8402, witness := RowWitness.topPrime 8291 },
  { lower := 8403, upper := 8500, witness := RowWitness.topPrime 8389 },
  { lower := 8501, upper := 8612, witness := RowWitness.topPrime 8501 },
  { lower := 8613, upper := 8720, witness := RowWitness.topPrime 8609 },
  { lower := 8721, upper := 8830, witness := RowWitness.topPrime 8719 },
  { lower := 8831, upper := 8942, witness := RowWitness.topPrime 8831 },
  { lower := 8943, upper := 9052, witness := RowWitness.topPrime 8941 },
  { lower := 9053, upper := 9160, witness := RowWitness.topPrime 9049 },
  { lower := 9161, upper := 9272, witness := RowWitness.topPrime 9161 },
  { lower := 9273, upper := 9368, witness := RowWitness.topPrime 9257 },
  { lower := 9369, upper := 9460, witness := RowWitness.topPrime 9349 },
  { lower := 9461, upper := 9572, witness := RowWitness.topPrime 9461 },
  { lower := 9573, upper := 9662, witness := RowWitness.topPrime 9551 },
  { lower := 9663, upper := 9772, witness := RowWitness.topPrime 9661 },
  { lower := 9773, upper := 9880, witness := RowWitness.topPrime 9769 },
  { lower := 9881, upper := 9982, witness := RowWitness.topPrime 9871 },
  { lower := 9983, upper := 10084, witness := RowWitness.topPrime 9973 },
  { lower := 10085, upper := 10190, witness := RowWitness.topPrime 10079 },
  { lower := 10191, upper := 10292, witness := RowWitness.topPrime 10181 },
  { lower := 10293, upper := 10400, witness := RowWitness.topPrime 10289 },
  { lower := 10401, upper := 10510, witness := RowWitness.topPrime 10399 },
  { lower := 10511, upper := 10612, witness := RowWitness.topPrime 10501 },
  { lower := 10613, upper := 10724, witness := RowWitness.topPrime 10613 },
  { lower := 10725, upper := 10834, witness := RowWitness.topPrime 10723 },
  { lower := 10835, upper := 10942, witness := RowWitness.topPrime 10831 },
  { lower := 10943, upper := 11050, witness := RowWitness.topPrime 10939 },
  { lower := 11051, upper := 11158, witness := RowWitness.topPrime 11047 },
  { lower := 11159, upper := 11270, witness := RowWitness.topPrime 11159 },
  { lower := 11271, upper := 11372, witness := RowWitness.topPrime 11261 },
  { lower := 11373, upper := 11480, witness := RowWitness.topPrime 11369 },
  { lower := 11481, upper := 11582, witness := RowWitness.topPrime 11471 },
  { lower := 11583, upper := 11690, witness := RowWitness.topPrime 11579 },
  { lower := 11691, upper := 11800, witness := RowWitness.topPrime 11689 },
  { lower := 11801, upper := 11912, witness := RowWitness.topPrime 11801 },
  { lower := 11913, upper := 12020, witness := RowWitness.topPrime 11909 },
  { lower := 12021, upper := 12122, witness := RowWitness.topPrime 12011 },
  { lower := 12123, upper := 12230, witness := RowWitness.topPrime 12119 },
  { lower := 12231, upper := 12338, witness := RowWitness.topPrime 12227 },
  { lower := 12339, upper := 12432, witness := RowWitness.topPrime 12329 },
  { lower := 12482, upper := 12590, witness := RowWitness.topPrime 12479 },
  { lower := 12591, upper := 12604, witness := RowWitness.topPrime 12589 },
  { lower := 12696, upper := 12726, witness := RowWitness.topPrime 12689 },
  { lower := 13125, upper := 13232, witness := RowWitness.topPrime 13121 },
  { lower := 13233, upper := 13340, witness := RowWitness.topPrime 13229 },
  { lower := 13341, upper := 13365, witness := RowWitness.topPrime 13339 },
  { lower := 13454, upper := 13562, witness := RowWitness.topPrime 13451 },
  { lower := 13563, upper := 13567, witness := RowWitness.topPrime 13553 },
  { lower := 13718, upper := 13822, witness := RowWitness.topPrime 13711 },
  { lower := 13823, upper := 13889, witness := RowWitness.topPrime 13807 },
  { lower := 13924, upper := 13962, witness := RowWitness.topPrime 13921 },
  { lower := 14375, upper := 14408, witness := RowWitness.topPrime 14369 },
  { lower := 14415, upper := 14486, witness := RowWitness.topPrime 14411 },
  { lower := 14641, upper := 14691, witness := RowWitness.topPrime 14639 },
  { lower := 14739, upper := 14752, witness := RowWitness.topPrime 14737 },
  { lower := 14792, upper := 14850, witness := RowWitness.topPrime 14783 },
  { lower := 14884, upper := 14903, witness := RowWitness.topPrime 14879 },
  { lower := 15059, upper := 15111, witness := RowWitness.topPrime 15053 },
  { lower := 15123, upper := 15232, witness := RowWitness.topPrime 15121 },
  { lower := 15233, upper := 15240, witness := RowWitness.topPrime 15233 },
  { lower := 15376, upper := 15484, witness := RowWitness.topPrime 15373 },
  { lower := 15485, upper := 15490, witness := RowWitness.topPrime 15473 },
  { lower := 15979, upper := 16084, witness := RowWitness.topPrime 15973 },
  { lower := 16085, upper := 16098, witness := RowWitness.topPrime 16073 },
  { lower := 16337, upper := 16361, witness := RowWitness.topPrime 16333 },
  { lower := 16384, upper := 16492, witness := RowWitness.topPrime 16381 },
  { lower := 16493, upper := 16495, witness := RowWitness.topPrime 16493 },
  { lower := 16807, upper := 16898, witness := RowWitness.topPrime 16787 },
  { lower := 16899, upper := 16931, witness := RowWitness.topPrime 16889 },
  { lower := 17303, upper := 17410, witness := RowWitness.topPrime 17299 },
  { lower := 17411, upper := 17414, witness := RowWitness.topPrime 17401 },
  { lower := 17496, upper := 17516, witness := RowWitness.topPrime 17491 },
  { lower := 17576, upper := 17607, witness := RowWitness.topPrime 17573 },
  { lower := 17661, upper := 17770, witness := RowWitness.topPrime 17659 },
  { lower := 17771, upper := 17772, witness := RowWitness.topPrime 17761 },
  { lower := 18259, upper := 18336, witness := RowWitness.topPrime 18257 },
  { lower := 18491, upper := 18592, witness := RowWitness.topPrime 18481 },
  { lower := 18593, upper := 18602, witness := RowWitness.topPrime 18593 },
  { lower := 18605, upper := 18613, witness := RowWitness.topPrime 18593 },
  { lower := 18634, upper := 18716, witness := RowWitness.topPrime 18617 },
  { lower := 18723, upper := 18745, witness := RowWitness.topPrime 18719 },
  { lower := 18750, upper := 18860, witness := RowWitness.topPrime 18749 },
  { lower := 18861, upper := 18861, witness := RowWitness.topPrime 18859 },
  { lower := 19220, upper := 19277, witness := RowWitness.topPrime 19219 },
  { lower := 19663, upper := 19772, witness := RowWitness.topPrime 19661 },
  { lower := 19773, upper := 19794, witness := RowWitness.topPrime 19763 },
  { lower := 19881, upper := 19884, witness := RowWitness.topPrime 19867 },
  { lower := 19965, upper := 19992, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20272, witness := RowWitness.topPrime 20161 },
  { lower := 20273, upper := 20292, witness := RowWitness.topPrime 20269 },
  { lower := 20402, upper := 20450, witness := RowWitness.topPrime 20399 },
  { lower := 20577, upper := 20646, witness := RowWitness.topPrime 20563 },
  { lower := 20667, upper := 20688, witness := RowWitness.topPrime 20663 },
  { lower := 21218, upper := 21253, witness := RowWitness.topPrime 21211 },
  { lower := 21296, upper := 21394, witness := RowWitness.topPrime 21283 },
  { lower := 21395, upper := 21407, witness := RowWitness.topPrime 21391 },
  { lower := 21866, upper := 21974, witness := RowWitness.topPrime 21863 },
  { lower := 21975, upper := 22015, witness := RowWitness.topPrime 21961 },
  { lower := 22103, upper := 22204, witness := RowWitness.topPrime 22093 },
  { lower := 22205, upper := 22214, witness := RowWitness.topPrime 22193 },
  { lower := 22472, upper := 22556, witness := RowWitness.topPrime 22469 },
  { lower := 23763, upper := 23872, witness := RowWitness.topPrime 23761 },
  { lower := 23873, upper := 23873, witness := RowWitness.topPrime 23873 },
  { lower := 24025, upper := 24134, witness := RowWitness.topPrime 24023 },
  { lower := 24135, upper := 24148, witness := RowWitness.topPrime 24133 },
  { lower := 24167, upper := 24168, witness := RowWitness.topPrime 24151 },
  { lower := 24334, upper := 24440, witness := RowWitness.topPrime 24329 },
  { lower := 24441, upper := 24478, witness := RowWitness.topPrime 24439 },
  { lower := 24642, upper := 24676, witness := RowWitness.topPrime 24631 },
  { lower := 25000, upper := 25075, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25300, witness := RowWitness.topPrime 25189 },
  { lower := 25301, upper := 25392, witness := RowWitness.topPrime 25301 },
  { lower := 26047, upper := 26122, witness := RowWitness.topPrime 26041 },
  { lower := 26645, upper := 26731, witness := RowWitness.topPrime 26641 },
  { lower := 26934, upper := 27007, witness := RowWitness.topPrime 26927 },
  { lower := 27436, upper := 27491, witness := RowWitness.topPrime 27431 },
  { lower := 27951, upper := 27959, witness := RowWitness.topPrime 27947 },
  { lower := 28125, upper := 28201, witness := RowWitness.topPrime 28123 },
  { lower := 28227, upper := 28236, witness := RowWitness.topPrime 28219 },
  { lower := 28577, upper := 28672, witness := RowWitness.topPrime 28573 },
  { lower := 28749, upper := 28828, witness := RowWitness.topPrime 28729 },
  { lower := 29584, upper := 29589, witness := RowWitness.topPrime 29581 },
  { lower := 29791, upper := 29879, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30357, witness := RowWitness.topPrime 30253 },
  { lower := 30618, upper := 30704, witness := RowWitness.topPrime 30593 },
  { lower := 30705, upper := 30714, witness := RowWitness.topPrime 30703 },
  { lower := 30926, upper := 31010, witness := RowWitness.topPrime 30911 },
  { lower := 31250, upper := 31316, witness := RowWitness.topPrime 31249 },
  { lower := 31329, upper := 31361, witness := RowWitness.topPrime 31327 },
  { lower := 31423, upper := 31508, witness := RowWitness.topPrime 31397 },
  { lower := 31509, upper := 31534, witness := RowWitness.topPrime 31489 },
  { lower := 31974, upper := 32050, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32879, witness := RowWitness.topPrime 32803 },
  { lower := 33620, upper := 33730, witness := RowWitness.topPrime 33619 },
  { lower := 33731, upper := 33731, witness := RowWitness.topPrime 33721 },
  { lower := 34347, upper := 34448, witness := RowWitness.topPrime 34337 },
  { lower := 34449, upper := 34502, witness := RowWitness.topPrime 34439 },
  { lower := 35152, upper := 35242, witness := RowWitness.topPrime 35149 },
  { lower := 35301, upper := 35402, witness := RowWitness.topPrime 35291 },
  { lower := 35403, upper := 35412, witness := RowWitness.topPrime 35401 },
  { lower := 36517, upper := 36608, witness := RowWitness.topPrime 36497 },
  { lower := 36609, upper := 36612, witness := RowWitness.topPrime 36607 },
  { lower := 36982, upper := 37090, witness := RowWitness.topPrime 36979 },
  { lower := 37091, upper := 37091, witness := RowWitness.topPrime 37087 },
  { lower := 37210, upper := 37290, witness := RowWitness.topPrime 37201 },
  { lower := 37303, upper := 37321, witness := RowWitness.topPrime 37277 },
  { lower := 37349, upper := 37414, witness := RowWitness.topPrime 37339 },
  { lower := 37446, upper := 37460, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37604, witness := RowWitness.topPrime 37493 },
  { lower := 37605, upper := 37611, witness := RowWitness.topPrime 37591 },
  { lower := 37636, upper := 37664, witness := RowWitness.topPrime 37633 },
  { lower := 39326, upper := 39434, witness := RowWitness.topPrime 39323 },
  { lower := 39435, upper := 39437, witness := RowWitness.topPrime 39419 },
  { lower := 39605, upper := 39657, witness := RowWitness.topPrime 39581 },
  { lower := 40401, upper := 40439, witness := RowWitness.topPrime 40387 },
  { lower := 40678, upper := 40736, witness := RowWitness.topPrime 40639 },
  { lower := 41772, upper := 41854, witness := RowWitness.topPrime 41771 },
  { lower := 43740, upper := 43832, witness := RowWitness.topPrime 43721 },
  { lower := 43833, upper := 43851, witness := RowWitness.topPrime 43801 },
  { lower := 43940, upper := 44034, witness := RowWitness.topPrime 43933 },
  { lower := 44217, upper := 44291, witness := RowWitness.topPrime 44207 },
  { lower := 44944, upper := 45001, witness := RowWitness.topPrime 44939 },
  { lower := 47526, upper := 47632, witness := RowWitness.topPrime 47521 },
  { lower := 47633, upper := 47635, witness := RowWitness.topPrime 47629 },
  { lower := 48013, upper := 48072, witness := RowWitness.topPrime 47981 },
  { lower := 48114, upper := 48124, witness := RowWitness.topPrime 48109 },
  { lower := 48223, upper := 48225, witness := RowWitness.topPrime 48221 },
  { lower := 48334, upper := 48334, witness := RowWitness.topPrime 48313 },
  { lower := 48373, upper := 48445, witness := RowWitness.topPrime 48371 },
  { lower := 48668, upper := 48709, witness := RowWitness.topPrime 48661 },
  { lower := 48734, upper := 48844, witness := RowWitness.topPrime 48733 },
  { lower := 48845, upper := 48845, witness := RowWitness.topPrime 48823 },
  { lower := 50000, upper := 50039, witness := RowWitness.topPrime 49999 },
  { lower := 50653, upper := 50673, witness := RowWitness.topPrime 50651 },
  { lower := 53125, upper := 53156, witness := RowWitness.topPrime 53117 },
  { lower := 55451, upper := 55552, witness := RowWitness.topPrime 55441 },
  { lower := 55553, upper := 55558, witness := RowWitness.topPrime 55547 },
  { lower := 56250, upper := 56280, witness := RowWitness.topPrime 56249 },
  { lower := 58619, upper := 58675, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59067, witness := RowWitness.topPrime 59029 },
  { lower := 59582, upper := 59647, witness := RowWitness.topPrime 59581 },
  { lower := 62500, upper := 62521, witness := RowWitness.topPrime 62497 },
  { lower := 63368, upper := 63368, witness := RowWitness.topPrime 63367 },
  { lower := 63948, upper := 63980, witness := RowWitness.topPrime 63929 },
  { lower := 65536, upper := 65632, witness := RowWitness.topPrime 65521 },
  { lower := 65633, upper := 65647, witness := RowWitness.topPrime 65633 },
  { lower := 68651, upper := 68750, witness := RowWitness.topPrime 68639 },
  { lower := 68751, upper := 68762, witness := RowWitness.topPrime 68749 },
  { lower := 68782, upper := 68805, witness := RowWitness.topPrime 68777 },
  { lower := 68890, upper := 68893, witness := RowWitness.topPrime 68881 },
  { lower := 68921, upper := 69001, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71397, witness := RowWitness.topPrime 71287 },
  { lower := 73205, upper := 73278, witness := RowWitness.topPrime 73189 },
  { lower := 85264, upper := 85280, witness := RowWitness.topPrime 85259 },
  { lower := 85293, upper := 85370, witness := RowWitness.topPrime 85259 },
  { lower := 85371, upper := 85375, witness := RowWitness.topPrime 85369 },
  { lower := 85697, upper := 85794, witness := RowWitness.topPrime 85691 },
  { lower := 91854, upper := 91920, witness := RowWitness.topPrime 91841 },
  { lower := 95052, upper := 95138, witness := RowWitness.topPrime 95027 },
  { lower := 95139, upper := 95159, witness := RowWitness.topPrime 95131 },
  { lower := 96026, upper := 96033, witness := RowWitness.topPrime 96017 },
  { lower := 102973, upper := 102996, witness := RowWitness.topPrime 102967 },
  { lower := 103041, upper := 103084, witness := RowWitness.topPrime 103007 },
  { lower := 118815, upper := 118912, witness := RowWitness.topPrime 118801 },
  { lower := 118913, upper := 118921, witness := RowWitness.topPrime 118913 },
  { lower := 122412, upper := 122428, witness := RowWitness.topPrime 122401 },
  { lower := 131769, upper := 131837, witness := RowWitness.topPrime 131759 },
  { lower := 137842, upper := 137892, witness := RowWitness.topPrime 137831 },
  { lower := 137917, upper := 137953, witness := RowWitness.topPrime 137911 },
  { lower := 142814, upper := 142916, witness := RowWitness.topPrime 142811 },
  { lower := 146410, upper := 146445, witness := RowWitness.topPrime 146407 },
  { lower := 148877, upper := 148948, witness := RowWitness.topPrime 148873 },
  { lower := 148955, upper := 148988, witness := RowWitness.topPrime 148949 }
]

def row112_layers : List CoverLayer := [
  { lower := 12432, upper := 24864, M := 26 },
  { lower := 24864, upper := 49728, M := 22 },
  { lower := 49728, upper := 99456, M := 18 },
  { lower := 99456, upper := 198912, M := 15 },
  { lower := 198912, upper := 397824, M := 12 },
  { lower := 397824, upper := 795648, M := 10 },
  { lower := 795648, upper := 1591296, M := 9 },
  { lower := 1591296, upper := 3182592, M := 7 },
  { lower := 3182592, upper := 6365184, M := 6 },
  { lower := 6365184, upper := 12730368, M := 5 },
  { lower := 12730368, upper := 25460736, M := 4 },
  { lower := 25460736, upper := 50921472, M := 4 },
  { lower := 50921472, upper := 101842944, M := 3 },
  { lower := 101842944, upper := 203685888, M := 3 },
  { lower := 203685888, upper := 407371776, M := 2 },
  { lower := 407371776, upper := 814743552, M := 2 },
  { lower := 814743552, upper := 1629487104, M := 2 },
  { lower := 1629487104, upper := 3258974208, M := 1 },
  { lower := 3258974208, upper := 6517948416, M := 1 },
  { lower := 6517948416, upper := 10000000000, M := 1 }
]

def row112 : FiniteCoverRow := {
  height := row112_height,
  goods := row112_goods,
  layers := row112_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_good000_checked :
    goodSegmentCheck 112 37 78
      { lower := 226, upper := 334, witness := RowWitness.topPrime 223 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good001_checked :
    goodSegmentCheck 112 37 78
      { lower := 335, upper := 442, witness := RowWitness.topPrime 331 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good002_checked :
    goodSegmentCheck 112 37 78
      { lower := 443, upper := 554, witness := RowWitness.topPrime 443 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good003_checked :
    goodSegmentCheck 112 37 78
      { lower := 555, upper := 658, witness := RowWitness.topPrime 547 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good004_checked :
    goodSegmentCheck 112 37 78
      { lower := 659, upper := 770, witness := RowWitness.topPrime 659 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good005_checked :
    goodSegmentCheck 112 37 78
      { lower := 771, upper := 880, witness := RowWitness.topPrime 769 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good006_checked :
    goodSegmentCheck 112 37 78
      { lower := 881, upper := 992, witness := RowWitness.topPrime 881 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good007_checked :
    goodSegmentCheck 112 37 78
      { lower := 993, upper := 1102, witness := RowWitness.topPrime 991 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good008_checked :
    goodSegmentCheck 112 37 78
      { lower := 1103, upper := 1214, witness := RowWitness.topPrime 1103 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good009_checked :
    goodSegmentCheck 112 37 78
      { lower := 1215, upper := 1324, witness := RowWitness.topPrime 1213 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good010_checked :
    goodSegmentCheck 112 37 78
      { lower := 1325, upper := 1432, witness := RowWitness.topPrime 1321 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good011_checked :
    goodSegmentCheck 112 37 78
      { lower := 1433, upper := 1544, witness := RowWitness.topPrime 1433 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good012_checked :
    goodSegmentCheck 112 37 78
      { lower := 1545, upper := 1654, witness := RowWitness.topPrime 1543 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good013_checked :
    goodSegmentCheck 112 37 78
      { lower := 1655, upper := 1748, witness := RowWitness.topPrime 1637 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good014_checked :
    goodSegmentCheck 112 37 78
      { lower := 1749, upper := 1858, witness := RowWitness.topPrime 1747 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good015_checked :
    goodSegmentCheck 112 37 78
      { lower := 1859, upper := 1958, witness := RowWitness.topPrime 1847 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_good016_checked :
    goodSegmentCheck 112 37 78
      { lower := 1959, upper := 2062, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good017_checked :
    goodSegmentCheck 112 37 78
      { lower := 2063, upper := 2174, witness := RowWitness.topPrime 2063 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good018_checked :
    goodSegmentCheck 112 37 78
      { lower := 2175, upper := 2272, witness := RowWitness.topPrime 2161 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good019_checked :
    goodSegmentCheck 112 37 78
      { lower := 2273, upper := 2384, witness := RowWitness.topPrime 2273 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good020_checked :
    goodSegmentCheck 112 37 78
      { lower := 2385, upper := 2494, witness := RowWitness.topPrime 2383 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good021_checked :
    goodSegmentCheck 112 37 78
      { lower := 2495, upper := 2588, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good022_checked :
    goodSegmentCheck 112 37 78
      { lower := 2589, upper := 2690, witness := RowWitness.topPrime 2579 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good023_checked :
    goodSegmentCheck 112 37 78
      { lower := 2691, upper := 2800, witness := RowWitness.topPrime 2689 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good024_checked :
    goodSegmentCheck 112 37 78
      { lower := 2801, upper := 2912, witness := RowWitness.topPrime 2801 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good025_checked :
    goodSegmentCheck 112 37 78
      { lower := 2913, upper := 3020, witness := RowWitness.topPrime 2909 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good026_checked :
    goodSegmentCheck 112 37 78
      { lower := 3021, upper := 3130, witness := RowWitness.topPrime 3019 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good027_checked :
    goodSegmentCheck 112 37 78
      { lower := 3131, upper := 3232, witness := RowWitness.topPrime 3121 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good028_checked :
    goodSegmentCheck 112 37 78
      { lower := 3233, upper := 3340, witness := RowWitness.topPrime 3229 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good029_checked :
    goodSegmentCheck 112 37 78
      { lower := 3341, upper := 3442, witness := RowWitness.topPrime 3331 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good030_checked :
    goodSegmentCheck 112 37 78
      { lower := 3443, upper := 3544, witness := RowWitness.topPrime 3433 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good031_checked :
    goodSegmentCheck 112 37 78
      { lower := 3545, upper := 3652, witness := RowWitness.topPrime 3541 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_good032_checked :
    goodSegmentCheck 112 37 78
      { lower := 3653, upper := 3754, witness := RowWitness.topPrime 3643 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good033_checked :
    goodSegmentCheck 112 37 78
      { lower := 3755, upper := 3850, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good034_checked :
    goodSegmentCheck 112 37 78
      { lower := 3851, upper := 3962, witness := RowWitness.topPrime 3851 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good035_checked :
    goodSegmentCheck 112 37 78
      { lower := 3963, upper := 4058, witness := RowWitness.topPrime 3947 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good036_checked :
    goodSegmentCheck 112 37 78
      { lower := 4059, upper := 4168, witness := RowWitness.topPrime 4057 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good037_checked :
    goodSegmentCheck 112 37 78
      { lower := 4169, upper := 4270, witness := RowWitness.topPrime 4159 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good038_checked :
    goodSegmentCheck 112 37 78
      { lower := 4271, upper := 4382, witness := RowWitness.topPrime 4271 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good039_checked :
    goodSegmentCheck 112 37 78
      { lower := 4383, upper := 4484, witness := RowWitness.topPrime 4373 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good040_checked :
    goodSegmentCheck 112 37 78
      { lower := 4485, upper := 4594, witness := RowWitness.topPrime 4483 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good041_checked :
    goodSegmentCheck 112 37 78
      { lower := 4595, upper := 4702, witness := RowWitness.topPrime 4591 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good042_checked :
    goodSegmentCheck 112 37 78
      { lower := 4703, upper := 4814, witness := RowWitness.topPrime 4703 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good043_checked :
    goodSegmentCheck 112 37 78
      { lower := 4815, upper := 4924, witness := RowWitness.topPrime 4813 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good044_checked :
    goodSegmentCheck 112 37 78
      { lower := 4925, upper := 5030, witness := RowWitness.topPrime 4919 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good045_checked :
    goodSegmentCheck 112 37 78
      { lower := 5031, upper := 5134, witness := RowWitness.topPrime 5023 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good046_checked :
    goodSegmentCheck 112 37 78
      { lower := 5135, upper := 5230, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good047_checked :
    goodSegmentCheck 112 37 78
      { lower := 5231, upper := 5342, witness := RowWitness.topPrime 5231 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_good048_checked :
    goodSegmentCheck 112 37 78
      { lower := 5343, upper := 5444, witness := RowWitness.topPrime 5333 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good049_checked :
    goodSegmentCheck 112 37 78
      { lower := 5445, upper := 5554, witness := RowWitness.topPrime 5443 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good050_checked :
    goodSegmentCheck 112 37 78
      { lower := 5555, upper := 5642, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good051_checked :
    goodSegmentCheck 112 37 78
      { lower := 5643, upper := 5752, witness := RowWitness.topPrime 5641 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good052_checked :
    goodSegmentCheck 112 37 78
      { lower := 5753, upper := 5860, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good053_checked :
    goodSegmentCheck 112 37 78
      { lower := 5861, upper := 5972, witness := RowWitness.topPrime 5861 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good054_checked :
    goodSegmentCheck 112 37 78
      { lower := 5973, upper := 6064, witness := RowWitness.topPrime 5953 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good055_checked :
    goodSegmentCheck 112 37 78
      { lower := 6065, upper := 6164, witness := RowWitness.topPrime 6053 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good056_checked :
    goodSegmentCheck 112 37 78
      { lower := 6165, upper := 6274, witness := RowWitness.topPrime 6163 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good057_checked :
    goodSegmentCheck 112 37 78
      { lower := 6275, upper := 6382, witness := RowWitness.topPrime 6271 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good058_checked :
    goodSegmentCheck 112 37 78
      { lower := 6383, upper := 6490, witness := RowWitness.topPrime 6379 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good059_checked :
    goodSegmentCheck 112 37 78
      { lower := 6491, upper := 6602, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good060_checked :
    goodSegmentCheck 112 37 78
      { lower := 6603, upper := 6710, witness := RowWitness.topPrime 6599 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good061_checked :
    goodSegmentCheck 112 37 78
      { lower := 6711, upper := 6820, witness := RowWitness.topPrime 6709 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good062_checked :
    goodSegmentCheck 112 37 78
      { lower := 6821, upper := 6914, witness := RowWitness.topPrime 6803 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good063_checked :
    goodSegmentCheck 112 37 78
      { lower := 6915, upper := 7022, witness := RowWitness.topPrime 6911 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_good064_checked :
    goodSegmentCheck 112 37 78
      { lower := 7023, upper := 7130, witness := RowWitness.topPrime 7019 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good065_checked :
    goodSegmentCheck 112 37 78
      { lower := 7131, upper := 7240, witness := RowWitness.topPrime 7129 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good066_checked :
    goodSegmentCheck 112 37 78
      { lower := 7241, upper := 7348, witness := RowWitness.topPrime 7237 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good067_checked :
    goodSegmentCheck 112 37 78
      { lower := 7349, upper := 7460, witness := RowWitness.topPrime 7349 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good068_checked :
    goodSegmentCheck 112 37 78
      { lower := 7461, upper := 7570, witness := RowWitness.topPrime 7459 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good069_checked :
    goodSegmentCheck 112 37 78
      { lower := 7571, upper := 7672, witness := RowWitness.topPrime 7561 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good070_checked :
    goodSegmentCheck 112 37 78
      { lower := 7673, upper := 7784, witness := RowWitness.topPrime 7673 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good071_checked :
    goodSegmentCheck 112 37 78
      { lower := 7785, upper := 7870, witness := RowWitness.topPrime 7759 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good072_checked :
    goodSegmentCheck 112 37 78
      { lower := 7871, upper := 7978, witness := RowWitness.topPrime 7867 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good073_checked :
    goodSegmentCheck 112 37 78
      { lower := 7979, upper := 8074, witness := RowWitness.topPrime 7963 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good074_checked :
    goodSegmentCheck 112 37 78
      { lower := 8075, upper := 8180, witness := RowWitness.topPrime 8069 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good075_checked :
    goodSegmentCheck 112 37 78
      { lower := 8181, upper := 8290, witness := RowWitness.topPrime 8179 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good076_checked :
    goodSegmentCheck 112 37 78
      { lower := 8291, upper := 8402, witness := RowWitness.topPrime 8291 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good077_checked :
    goodSegmentCheck 112 37 78
      { lower := 8403, upper := 8500, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good078_checked :
    goodSegmentCheck 112 37 78
      { lower := 8501, upper := 8612, witness := RowWitness.topPrime 8501 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good079_checked :
    goodSegmentCheck 112 37 78
      { lower := 8613, upper := 8720, witness := RowWitness.topPrime 8609 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_good080_checked :
    goodSegmentCheck 112 37 78
      { lower := 8721, upper := 8830, witness := RowWitness.topPrime 8719 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good081_checked :
    goodSegmentCheck 112 37 78
      { lower := 8831, upper := 8942, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good082_checked :
    goodSegmentCheck 112 37 78
      { lower := 8943, upper := 9052, witness := RowWitness.topPrime 8941 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good083_checked :
    goodSegmentCheck 112 37 78
      { lower := 9053, upper := 9160, witness := RowWitness.topPrime 9049 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good084_checked :
    goodSegmentCheck 112 37 78
      { lower := 9161, upper := 9272, witness := RowWitness.topPrime 9161 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good085_checked :
    goodSegmentCheck 112 37 78
      { lower := 9273, upper := 9368, witness := RowWitness.topPrime 9257 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good086_checked :
    goodSegmentCheck 112 37 78
      { lower := 9369, upper := 9460, witness := RowWitness.topPrime 9349 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good087_checked :
    goodSegmentCheck 112 37 78
      { lower := 9461, upper := 9572, witness := RowWitness.topPrime 9461 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good088_checked :
    goodSegmentCheck 112 37 78
      { lower := 9573, upper := 9662, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good089_checked :
    goodSegmentCheck 112 37 78
      { lower := 9663, upper := 9772, witness := RowWitness.topPrime 9661 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good090_checked :
    goodSegmentCheck 112 37 78
      { lower := 9773, upper := 9880, witness := RowWitness.topPrime 9769 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good091_checked :
    goodSegmentCheck 112 37 78
      { lower := 9881, upper := 9982, witness := RowWitness.topPrime 9871 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good092_checked :
    goodSegmentCheck 112 37 78
      { lower := 9983, upper := 10084, witness := RowWitness.topPrime 9973 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good093_checked :
    goodSegmentCheck 112 37 78
      { lower := 10085, upper := 10190, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good094_checked :
    goodSegmentCheck 112 37 78
      { lower := 10191, upper := 10292, witness := RowWitness.topPrime 10181 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good095_checked :
    goodSegmentCheck 112 37 78
      { lower := 10293, upper := 10400, witness := RowWitness.topPrime 10289 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_good096_checked :
    goodSegmentCheck 112 37 78
      { lower := 10401, upper := 10510, witness := RowWitness.topPrime 10399 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good097_checked :
    goodSegmentCheck 112 37 78
      { lower := 10511, upper := 10612, witness := RowWitness.topPrime 10501 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good098_checked :
    goodSegmentCheck 112 37 78
      { lower := 10613, upper := 10724, witness := RowWitness.topPrime 10613 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good099_checked :
    goodSegmentCheck 112 37 78
      { lower := 10725, upper := 10834, witness := RowWitness.topPrime 10723 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good100_checked :
    goodSegmentCheck 112 37 78
      { lower := 10835, upper := 10942, witness := RowWitness.topPrime 10831 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good101_checked :
    goodSegmentCheck 112 37 78
      { lower := 10943, upper := 11050, witness := RowWitness.topPrime 10939 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good102_checked :
    goodSegmentCheck 112 37 78
      { lower := 11051, upper := 11158, witness := RowWitness.topPrime 11047 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good103_checked :
    goodSegmentCheck 112 37 78
      { lower := 11159, upper := 11270, witness := RowWitness.topPrime 11159 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good104_checked :
    goodSegmentCheck 112 37 78
      { lower := 11271, upper := 11372, witness := RowWitness.topPrime 11261 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good105_checked :
    goodSegmentCheck 112 37 78
      { lower := 11373, upper := 11480, witness := RowWitness.topPrime 11369 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good106_checked :
    goodSegmentCheck 112 37 78
      { lower := 11481, upper := 11582, witness := RowWitness.topPrime 11471 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good107_checked :
    goodSegmentCheck 112 37 78
      { lower := 11583, upper := 11690, witness := RowWitness.topPrime 11579 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good108_checked :
    goodSegmentCheck 112 37 78
      { lower := 11691, upper := 11800, witness := RowWitness.topPrime 11689 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good109_checked :
    goodSegmentCheck 112 37 78
      { lower := 11801, upper := 11912, witness := RowWitness.topPrime 11801 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good110_checked :
    goodSegmentCheck 112 37 78
      { lower := 11913, upper := 12020, witness := RowWitness.topPrime 11909 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good111_checked :
    goodSegmentCheck 112 37 78
      { lower := 12021, upper := 12122, witness := RowWitness.topPrime 12011 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_good112_checked :
    goodSegmentCheck 112 37 78
      { lower := 12123, upper := 12230, witness := RowWitness.topPrime 12119 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good113_checked :
    goodSegmentCheck 112 37 78
      { lower := 12231, upper := 12338, witness := RowWitness.topPrime 12227 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good114_checked :
    goodSegmentCheck 112 37 78
      { lower := 12339, upper := 12432, witness := RowWitness.topPrime 12329 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good115_checked :
    goodSegmentCheck 112 37 78
      { lower := 12482, upper := 12590, witness := RowWitness.topPrime 12479 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good116_checked :
    goodSegmentCheck 112 37 78
      { lower := 12591, upper := 12604, witness := RowWitness.topPrime 12589 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good117_checked :
    goodSegmentCheck 112 37 78
      { lower := 12696, upper := 12726, witness := RowWitness.topPrime 12689 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good118_checked :
    goodSegmentCheck 112 37 78
      { lower := 13125, upper := 13232, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good119_checked :
    goodSegmentCheck 112 37 78
      { lower := 13233, upper := 13340, witness := RowWitness.topPrime 13229 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good120_checked :
    goodSegmentCheck 112 37 78
      { lower := 13341, upper := 13365, witness := RowWitness.topPrime 13339 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good121_checked :
    goodSegmentCheck 112 37 78
      { lower := 13454, upper := 13562, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good122_checked :
    goodSegmentCheck 112 37 78
      { lower := 13563, upper := 13567, witness := RowWitness.topPrime 13553 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good123_checked :
    goodSegmentCheck 112 37 78
      { lower := 13718, upper := 13822, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good124_checked :
    goodSegmentCheck 112 37 78
      { lower := 13823, upper := 13889, witness := RowWitness.topPrime 13807 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good125_checked :
    goodSegmentCheck 112 37 78
      { lower := 13924, upper := 13962, witness := RowWitness.topPrime 13921 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good126_checked :
    goodSegmentCheck 112 37 78
      { lower := 14375, upper := 14408, witness := RowWitness.topPrime 14369 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good127_checked :
    goodSegmentCheck 112 37 78
      { lower := 14415, upper := 14486, witness := RowWitness.topPrime 14411 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_good128_checked :
    goodSegmentCheck 112 37 78
      { lower := 14641, upper := 14691, witness := RowWitness.topPrime 14639 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good129_checked :
    goodSegmentCheck 112 37 78
      { lower := 14739, upper := 14752, witness := RowWitness.topPrime 14737 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good130_checked :
    goodSegmentCheck 112 37 78
      { lower := 14792, upper := 14850, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good131_checked :
    goodSegmentCheck 112 37 78
      { lower := 14884, upper := 14903, witness := RowWitness.topPrime 14879 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good132_checked :
    goodSegmentCheck 112 37 78
      { lower := 15059, upper := 15111, witness := RowWitness.topPrime 15053 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good133_checked :
    goodSegmentCheck 112 37 78
      { lower := 15123, upper := 15232, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good134_checked :
    goodSegmentCheck 112 37 78
      { lower := 15233, upper := 15240, witness := RowWitness.topPrime 15233 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good135_checked :
    goodSegmentCheck 112 37 78
      { lower := 15376, upper := 15484, witness := RowWitness.topPrime 15373 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good136_checked :
    goodSegmentCheck 112 37 78
      { lower := 15485, upper := 15490, witness := RowWitness.topPrime 15473 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good137_checked :
    goodSegmentCheck 112 37 78
      { lower := 15979, upper := 16084, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good138_checked :
    goodSegmentCheck 112 37 78
      { lower := 16085, upper := 16098, witness := RowWitness.topPrime 16073 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good139_checked :
    goodSegmentCheck 112 37 78
      { lower := 16337, upper := 16361, witness := RowWitness.topPrime 16333 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good140_checked :
    goodSegmentCheck 112 37 78
      { lower := 16384, upper := 16492, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good141_checked :
    goodSegmentCheck 112 37 78
      { lower := 16493, upper := 16495, witness := RowWitness.topPrime 16493 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good142_checked :
    goodSegmentCheck 112 37 78
      { lower := 16807, upper := 16898, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good143_checked :
    goodSegmentCheck 112 37 78
      { lower := 16899, upper := 16931, witness := RowWitness.topPrime 16889 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_good144_checked :
    goodSegmentCheck 112 37 78
      { lower := 17303, upper := 17410, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good145_checked :
    goodSegmentCheck 112 37 78
      { lower := 17411, upper := 17414, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good146_checked :
    goodSegmentCheck 112 37 78
      { lower := 17496, upper := 17516, witness := RowWitness.topPrime 17491 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good147_checked :
    goodSegmentCheck 112 37 78
      { lower := 17576, upper := 17607, witness := RowWitness.topPrime 17573 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good148_checked :
    goodSegmentCheck 112 37 78
      { lower := 17661, upper := 17770, witness := RowWitness.topPrime 17659 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good149_checked :
    goodSegmentCheck 112 37 78
      { lower := 17771, upper := 17772, witness := RowWitness.topPrime 17761 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good150_checked :
    goodSegmentCheck 112 37 78
      { lower := 18259, upper := 18336, witness := RowWitness.topPrime 18257 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good151_checked :
    goodSegmentCheck 112 37 78
      { lower := 18491, upper := 18592, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good152_checked :
    goodSegmentCheck 112 37 78
      { lower := 18593, upper := 18602, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good153_checked :
    goodSegmentCheck 112 37 78
      { lower := 18605, upper := 18613, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good154_checked :
    goodSegmentCheck 112 37 78
      { lower := 18634, upper := 18716, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good155_checked :
    goodSegmentCheck 112 37 78
      { lower := 18723, upper := 18745, witness := RowWitness.topPrime 18719 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good156_checked :
    goodSegmentCheck 112 37 78
      { lower := 18750, upper := 18860, witness := RowWitness.topPrime 18749 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good157_checked :
    goodSegmentCheck 112 37 78
      { lower := 18861, upper := 18861, witness := RowWitness.topPrime 18859 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good158_checked :
    goodSegmentCheck 112 37 78
      { lower := 19220, upper := 19277, witness := RowWitness.topPrime 19219 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good159_checked :
    goodSegmentCheck 112 37 78
      { lower := 19663, upper := 19772, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_good160_checked :
    goodSegmentCheck 112 37 78
      { lower := 19773, upper := 19794, witness := RowWitness.topPrime 19763 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good161_checked :
    goodSegmentCheck 112 37 78
      { lower := 19881, upper := 19884, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good162_checked :
    goodSegmentCheck 112 37 78
      { lower := 19965, upper := 19992, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good163_checked :
    goodSegmentCheck 112 37 78
      { lower := 20172, upper := 20272, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good164_checked :
    goodSegmentCheck 112 37 78
      { lower := 20273, upper := 20292, witness := RowWitness.topPrime 20269 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good165_checked :
    goodSegmentCheck 112 37 78
      { lower := 20402, upper := 20450, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good166_checked :
    goodSegmentCheck 112 37 78
      { lower := 20577, upper := 20646, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good167_checked :
    goodSegmentCheck 112 37 78
      { lower := 20667, upper := 20688, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good168_checked :
    goodSegmentCheck 112 37 78
      { lower := 21218, upper := 21253, witness := RowWitness.topPrime 21211 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good169_checked :
    goodSegmentCheck 112 37 78
      { lower := 21296, upper := 21394, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good170_checked :
    goodSegmentCheck 112 37 78
      { lower := 21395, upper := 21407, witness := RowWitness.topPrime 21391 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good171_checked :
    goodSegmentCheck 112 37 78
      { lower := 21866, upper := 21974, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good172_checked :
    goodSegmentCheck 112 37 78
      { lower := 21975, upper := 22015, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good173_checked :
    goodSegmentCheck 112 37 78
      { lower := 22103, upper := 22204, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good174_checked :
    goodSegmentCheck 112 37 78
      { lower := 22205, upper := 22214, witness := RowWitness.topPrime 22193 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good175_checked :
    goodSegmentCheck 112 37 78
      { lower := 22472, upper := 22556, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_good176_checked :
    goodSegmentCheck 112 37 78
      { lower := 23763, upper := 23872, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good177_checked :
    goodSegmentCheck 112 37 78
      { lower := 23873, upper := 23873, witness := RowWitness.topPrime 23873 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good178_checked :
    goodSegmentCheck 112 37 78
      { lower := 24025, upper := 24134, witness := RowWitness.topPrime 24023 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good179_checked :
    goodSegmentCheck 112 37 78
      { lower := 24135, upper := 24148, witness := RowWitness.topPrime 24133 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good180_checked :
    goodSegmentCheck 112 37 78
      { lower := 24167, upper := 24168, witness := RowWitness.topPrime 24151 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good181_checked :
    goodSegmentCheck 112 37 78
      { lower := 24334, upper := 24440, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good182_checked :
    goodSegmentCheck 112 37 78
      { lower := 24441, upper := 24478, witness := RowWitness.topPrime 24439 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good183_checked :
    goodSegmentCheck 112 37 78
      { lower := 24642, upper := 24676, witness := RowWitness.topPrime 24631 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good184_checked :
    goodSegmentCheck 112 37 78
      { lower := 25000, upper := 25075, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good185_checked :
    goodSegmentCheck 112 37 78
      { lower := 25215, upper := 25300, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good186_checked :
    goodSegmentCheck 112 37 78
      { lower := 25301, upper := 25392, witness := RowWitness.topPrime 25301 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good187_checked :
    goodSegmentCheck 112 37 78
      { lower := 26047, upper := 26122, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good188_checked :
    goodSegmentCheck 112 37 78
      { lower := 26645, upper := 26731, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good189_checked :
    goodSegmentCheck 112 37 78
      { lower := 26934, upper := 27007, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good190_checked :
    goodSegmentCheck 112 37 78
      { lower := 27436, upper := 27491, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good191_checked :
    goodSegmentCheck 112 37 78
      { lower := 27951, upper := 27959, witness := RowWitness.topPrime 27947 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_good192_checked :
    goodSegmentCheck 112 37 78
      { lower := 28125, upper := 28201, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good193_checked :
    goodSegmentCheck 112 37 78
      { lower := 28227, upper := 28236, witness := RowWitness.topPrime 28219 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good194_checked :
    goodSegmentCheck 112 37 78
      { lower := 28577, upper := 28672, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good195_checked :
    goodSegmentCheck 112 37 78
      { lower := 28749, upper := 28828, witness := RowWitness.topPrime 28729 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good196_checked :
    goodSegmentCheck 112 37 78
      { lower := 29584, upper := 29589, witness := RowWitness.topPrime 29581 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good197_checked :
    goodSegmentCheck 112 37 78
      { lower := 29791, upper := 29879, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good198_checked :
    goodSegmentCheck 112 37 78
      { lower := 30258, upper := 30357, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good199_checked :
    goodSegmentCheck 112 37 78
      { lower := 30618, upper := 30704, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good200_checked :
    goodSegmentCheck 112 37 78
      { lower := 30705, upper := 30714, witness := RowWitness.topPrime 30703 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good201_checked :
    goodSegmentCheck 112 37 78
      { lower := 30926, upper := 31010, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good202_checked :
    goodSegmentCheck 112 37 78
      { lower := 31250, upper := 31316, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good203_checked :
    goodSegmentCheck 112 37 78
      { lower := 31329, upper := 31361, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good204_checked :
    goodSegmentCheck 112 37 78
      { lower := 31423, upper := 31508, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good205_checked :
    goodSegmentCheck 112 37 78
      { lower := 31509, upper := 31534, witness := RowWitness.topPrime 31489 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good206_checked :
    goodSegmentCheck 112 37 78
      { lower := 31974, upper := 32050, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good207_checked :
    goodSegmentCheck 112 37 78
      { lower := 32805, upper := 32879, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_good208_checked :
    goodSegmentCheck 112 37 78
      { lower := 33620, upper := 33730, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good209_checked :
    goodSegmentCheck 112 37 78
      { lower := 33731, upper := 33731, witness := RowWitness.topPrime 33721 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good210_checked :
    goodSegmentCheck 112 37 78
      { lower := 34347, upper := 34448, witness := RowWitness.topPrime 34337 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good211_checked :
    goodSegmentCheck 112 37 78
      { lower := 34449, upper := 34502, witness := RowWitness.topPrime 34439 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good212_checked :
    goodSegmentCheck 112 37 78
      { lower := 35152, upper := 35242, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good213_checked :
    goodSegmentCheck 112 37 78
      { lower := 35301, upper := 35402, witness := RowWitness.topPrime 35291 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good214_checked :
    goodSegmentCheck 112 37 78
      { lower := 35403, upper := 35412, witness := RowWitness.topPrime 35401 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good215_checked :
    goodSegmentCheck 112 37 78
      { lower := 36517, upper := 36608, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good216_checked :
    goodSegmentCheck 112 37 78
      { lower := 36609, upper := 36612, witness := RowWitness.topPrime 36607 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good217_checked :
    goodSegmentCheck 112 37 78
      { lower := 36982, upper := 37090, witness := RowWitness.topPrime 36979 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good218_checked :
    goodSegmentCheck 112 37 78
      { lower := 37091, upper := 37091, witness := RowWitness.topPrime 37087 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good219_checked :
    goodSegmentCheck 112 37 78
      { lower := 37210, upper := 37290, witness := RowWitness.topPrime 37201 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good220_checked :
    goodSegmentCheck 112 37 78
      { lower := 37303, upper := 37321, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good221_checked :
    goodSegmentCheck 112 37 78
      { lower := 37349, upper := 37414, witness := RowWitness.topPrime 37339 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good222_checked :
    goodSegmentCheck 112 37 78
      { lower := 37446, upper := 37460, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good223_checked :
    goodSegmentCheck 112 37 78
      { lower := 37500, upper := 37604, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_good224_checked :
    goodSegmentCheck 112 37 78
      { lower := 37605, upper := 37611, witness := RowWitness.topPrime 37591 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good225_checked :
    goodSegmentCheck 112 37 78
      { lower := 37636, upper := 37664, witness := RowWitness.topPrime 37633 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good226_checked :
    goodSegmentCheck 112 37 78
      { lower := 39326, upper := 39434, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good227_checked :
    goodSegmentCheck 112 37 78
      { lower := 39435, upper := 39437, witness := RowWitness.topPrime 39419 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good228_checked :
    goodSegmentCheck 112 37 78
      { lower := 39605, upper := 39657, witness := RowWitness.topPrime 39581 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good229_checked :
    goodSegmentCheck 112 37 78
      { lower := 40401, upper := 40439, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good230_checked :
    goodSegmentCheck 112 37 78
      { lower := 40678, upper := 40736, witness := RowWitness.topPrime 40639 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good231_checked :
    goodSegmentCheck 112 37 78
      { lower := 41772, upper := 41854, witness := RowWitness.topPrime 41771 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good232_checked :
    goodSegmentCheck 112 37 78
      { lower := 43740, upper := 43832, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good233_checked :
    goodSegmentCheck 112 37 78
      { lower := 43833, upper := 43851, witness := RowWitness.topPrime 43801 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good234_checked :
    goodSegmentCheck 112 37 78
      { lower := 43940, upper := 44034, witness := RowWitness.topPrime 43933 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good235_checked :
    goodSegmentCheck 112 37 78
      { lower := 44217, upper := 44291, witness := RowWitness.topPrime 44207 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good236_checked :
    goodSegmentCheck 112 37 78
      { lower := 44944, upper := 45001, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good237_checked :
    goodSegmentCheck 112 37 78
      { lower := 47526, upper := 47632, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good238_checked :
    goodSegmentCheck 112 37 78
      { lower := 47633, upper := 47635, witness := RowWitness.topPrime 47629 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good239_checked :
    goodSegmentCheck 112 37 78
      { lower := 48013, upper := 48072, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_good240_checked :
    goodSegmentCheck 112 37 78
      { lower := 48114, upper := 48124, witness := RowWitness.topPrime 48109 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good241_checked :
    goodSegmentCheck 112 37 78
      { lower := 48223, upper := 48225, witness := RowWitness.topPrime 48221 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good242_checked :
    goodSegmentCheck 112 37 78
      { lower := 48334, upper := 48334, witness := RowWitness.topPrime 48313 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good243_checked :
    goodSegmentCheck 112 37 78
      { lower := 48373, upper := 48445, witness := RowWitness.topPrime 48371 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good244_checked :
    goodSegmentCheck 112 37 78
      { lower := 48668, upper := 48709, witness := RowWitness.topPrime 48661 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good245_checked :
    goodSegmentCheck 112 37 78
      { lower := 48734, upper := 48844, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good246_checked :
    goodSegmentCheck 112 37 78
      { lower := 48845, upper := 48845, witness := RowWitness.topPrime 48823 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good247_checked :
    goodSegmentCheck 112 37 78
      { lower := 50000, upper := 50039, witness := RowWitness.topPrime 49999 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good248_checked :
    goodSegmentCheck 112 37 78
      { lower := 50653, upper := 50673, witness := RowWitness.topPrime 50651 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good249_checked :
    goodSegmentCheck 112 37 78
      { lower := 53125, upper := 53156, witness := RowWitness.topPrime 53117 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good250_checked :
    goodSegmentCheck 112 37 78
      { lower := 55451, upper := 55552, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good251_checked :
    goodSegmentCheck 112 37 78
      { lower := 55553, upper := 55558, witness := RowWitness.topPrime 55547 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good252_checked :
    goodSegmentCheck 112 37 78
      { lower := 56250, upper := 56280, witness := RowWitness.topPrime 56249 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good253_checked :
    goodSegmentCheck 112 37 78
      { lower := 58619, upper := 58675, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good254_checked :
    goodSegmentCheck 112 37 78
      { lower := 59049, upper := 59067, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good255_checked :
    goodSegmentCheck 112 37 78
      { lower := 59582, upper := 59647, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good251_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good252_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good253_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good254_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good255_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_good256_checked :
    goodSegmentCheck 112 37 78
      { lower := 62500, upper := 62521, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good257_checked :
    goodSegmentCheck 112 37 78
      { lower := 63368, upper := 63368, witness := RowWitness.topPrime 63367 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good258_checked :
    goodSegmentCheck 112 37 78
      { lower := 63948, upper := 63980, witness := RowWitness.topPrime 63929 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good259_checked :
    goodSegmentCheck 112 37 78
      { lower := 65536, upper := 65632, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good260_checked :
    goodSegmentCheck 112 37 78
      { lower := 65633, upper := 65647, witness := RowWitness.topPrime 65633 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good261_checked :
    goodSegmentCheck 112 37 78
      { lower := 68651, upper := 68750, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good262_checked :
    goodSegmentCheck 112 37 78
      { lower := 68751, upper := 68762, witness := RowWitness.topPrime 68749 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good263_checked :
    goodSegmentCheck 112 37 78
      { lower := 68782, upper := 68805, witness := RowWitness.topPrime 68777 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good264_checked :
    goodSegmentCheck 112 37 78
      { lower := 68890, upper := 68893, witness := RowWitness.topPrime 68881 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good265_checked :
    goodSegmentCheck 112 37 78
      { lower := 68921, upper := 69001, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good266_checked :
    goodSegmentCheck 112 37 78
      { lower := 71289, upper := 71397, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good267_checked :
    goodSegmentCheck 112 37 78
      { lower := 73205, upper := 73278, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good268_checked :
    goodSegmentCheck 112 37 78
      { lower := 85264, upper := 85280, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good269_checked :
    goodSegmentCheck 112 37 78
      { lower := 85293, upper := 85370, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good270_checked :
    goodSegmentCheck 112 37 78
      { lower := 85371, upper := 85375, witness := RowWitness.topPrime 85369 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good271_checked :
    goodSegmentCheck 112 37 78
      { lower := 85697, upper := 85794, witness := RowWitness.topPrime 85691 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good258_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good259_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good260_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good261_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good262_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good263_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good264_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good265_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good266_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good267_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good268_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good269_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good270_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good271_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_good272_checked :
    goodSegmentCheck 112 37 78
      { lower := 91854, upper := 91920, witness := RowWitness.topPrime 91841 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good273_checked :
    goodSegmentCheck 112 37 78
      { lower := 95052, upper := 95138, witness := RowWitness.topPrime 95027 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good274_checked :
    goodSegmentCheck 112 37 78
      { lower := 95139, upper := 95159, witness := RowWitness.topPrime 95131 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good275_checked :
    goodSegmentCheck 112 37 78
      { lower := 96026, upper := 96033, witness := RowWitness.topPrime 96017 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good276_checked :
    goodSegmentCheck 112 37 78
      { lower := 102973, upper := 102996, witness := RowWitness.topPrime 102967 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good277_checked :
    goodSegmentCheck 112 37 78
      { lower := 103041, upper := 103084, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good278_checked :
    goodSegmentCheck 112 37 78
      { lower := 118815, upper := 118912, witness := RowWitness.topPrime 118801 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good279_checked :
    goodSegmentCheck 112 37 78
      { lower := 118913, upper := 118921, witness := RowWitness.topPrime 118913 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good280_checked :
    goodSegmentCheck 112 37 78
      { lower := 122412, upper := 122428, witness := RowWitness.topPrime 122401 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good281_checked :
    goodSegmentCheck 112 37 78
      { lower := 131769, upper := 131837, witness := RowWitness.topPrime 131759 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good282_checked :
    goodSegmentCheck 112 37 78
      { lower := 137842, upper := 137892, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good283_checked :
    goodSegmentCheck 112 37 78
      { lower := 137917, upper := 137953, witness := RowWitness.topPrime 137911 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good284_checked :
    goodSegmentCheck 112 37 78
      { lower := 142814, upper := 142916, witness := RowWitness.topPrime 142811 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good285_checked :
    goodSegmentCheck 112 37 78
      { lower := 146410, upper := 146445, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good286_checked :
    goodSegmentCheck 112 37 78
      { lower := 148877, upper := 148948, witness := RowWitness.topPrime 148873 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row112_good287_checked :
    goodSegmentCheck 112 37 78
      { lower := 148955, upper := 148988, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 112) (r := 37) (s := 78) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good272_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good273_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good274_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good275_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good276_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good277_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good278_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good279_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good280_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good281_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good282_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good283_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good284_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good285_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good286_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_good287_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_goods_checked :
    row112.goods.all (goodSegmentCheck row112.height.i row112.height.r row112.height.s) = true := by
  change row112_goods.all (goodSegmentCheck 112 37 78) = true
  simp only [row112_goods, List.all_cons, List.all_nil,
    row112_good000_checked,
    row112_good001_checked,
    row112_good002_checked,
    row112_good003_checked,
    row112_good004_checked,
    row112_good005_checked,
    row112_good006_checked,
    row112_good007_checked,
    row112_good008_checked,
    row112_good009_checked,
    row112_good010_checked,
    row112_good011_checked,
    row112_good012_checked,
    row112_good013_checked,
    row112_good014_checked,
    row112_good015_checked,
    row112_good016_checked,
    row112_good017_checked,
    row112_good018_checked,
    row112_good019_checked,
    row112_good020_checked,
    row112_good021_checked,
    row112_good022_checked,
    row112_good023_checked,
    row112_good024_checked,
    row112_good025_checked,
    row112_good026_checked,
    row112_good027_checked,
    row112_good028_checked,
    row112_good029_checked,
    row112_good030_checked,
    row112_good031_checked,
    row112_good032_checked,
    row112_good033_checked,
    row112_good034_checked,
    row112_good035_checked,
    row112_good036_checked,
    row112_good037_checked,
    row112_good038_checked,
    row112_good039_checked,
    row112_good040_checked,
    row112_good041_checked,
    row112_good042_checked,
    row112_good043_checked,
    row112_good044_checked,
    row112_good045_checked,
    row112_good046_checked,
    row112_good047_checked,
    row112_good048_checked,
    row112_good049_checked,
    row112_good050_checked,
    row112_good051_checked,
    row112_good052_checked,
    row112_good053_checked,
    row112_good054_checked,
    row112_good055_checked,
    row112_good056_checked,
    row112_good057_checked,
    row112_good058_checked,
    row112_good059_checked,
    row112_good060_checked,
    row112_good061_checked,
    row112_good062_checked,
    row112_good063_checked,
    row112_good064_checked,
    row112_good065_checked,
    row112_good066_checked,
    row112_good067_checked,
    row112_good068_checked,
    row112_good069_checked,
    row112_good070_checked,
    row112_good071_checked,
    row112_good072_checked,
    row112_good073_checked,
    row112_good074_checked,
    row112_good075_checked,
    row112_good076_checked,
    row112_good077_checked,
    row112_good078_checked,
    row112_good079_checked,
    row112_good080_checked,
    row112_good081_checked,
    row112_good082_checked,
    row112_good083_checked,
    row112_good084_checked,
    row112_good085_checked,
    row112_good086_checked,
    row112_good087_checked,
    row112_good088_checked,
    row112_good089_checked,
    row112_good090_checked,
    row112_good091_checked,
    row112_good092_checked,
    row112_good093_checked,
    row112_good094_checked,
    row112_good095_checked,
    row112_good096_checked,
    row112_good097_checked,
    row112_good098_checked,
    row112_good099_checked,
    row112_good100_checked,
    row112_good101_checked,
    row112_good102_checked,
    row112_good103_checked,
    row112_good104_checked,
    row112_good105_checked,
    row112_good106_checked,
    row112_good107_checked,
    row112_good108_checked,
    row112_good109_checked,
    row112_good110_checked,
    row112_good111_checked,
    row112_good112_checked,
    row112_good113_checked,
    row112_good114_checked,
    row112_good115_checked,
    row112_good116_checked,
    row112_good117_checked,
    row112_good118_checked,
    row112_good119_checked,
    row112_good120_checked,
    row112_good121_checked,
    row112_good122_checked,
    row112_good123_checked,
    row112_good124_checked,
    row112_good125_checked,
    row112_good126_checked,
    row112_good127_checked,
    row112_good128_checked,
    row112_good129_checked,
    row112_good130_checked,
    row112_good131_checked,
    row112_good132_checked,
    row112_good133_checked,
    row112_good134_checked,
    row112_good135_checked,
    row112_good136_checked,
    row112_good137_checked,
    row112_good138_checked,
    row112_good139_checked,
    row112_good140_checked,
    row112_good141_checked,
    row112_good142_checked,
    row112_good143_checked,
    row112_good144_checked,
    row112_good145_checked,
    row112_good146_checked,
    row112_good147_checked,
    row112_good148_checked,
    row112_good149_checked,
    row112_good150_checked,
    row112_good151_checked,
    row112_good152_checked,
    row112_good153_checked,
    row112_good154_checked,
    row112_good155_checked,
    row112_good156_checked,
    row112_good157_checked,
    row112_good158_checked,
    row112_good159_checked,
    row112_good160_checked,
    row112_good161_checked,
    row112_good162_checked,
    row112_good163_checked,
    row112_good164_checked,
    row112_good165_checked,
    row112_good166_checked,
    row112_good167_checked,
    row112_good168_checked,
    row112_good169_checked,
    row112_good170_checked,
    row112_good171_checked,
    row112_good172_checked,
    row112_good173_checked,
    row112_good174_checked,
    row112_good175_checked,
    row112_good176_checked,
    row112_good177_checked,
    row112_good178_checked,
    row112_good179_checked,
    row112_good180_checked,
    row112_good181_checked,
    row112_good182_checked,
    row112_good183_checked,
    row112_good184_checked,
    row112_good185_checked,
    row112_good186_checked,
    row112_good187_checked,
    row112_good188_checked,
    row112_good189_checked,
    row112_good190_checked,
    row112_good191_checked,
    row112_good192_checked,
    row112_good193_checked,
    row112_good194_checked,
    row112_good195_checked,
    row112_good196_checked,
    row112_good197_checked,
    row112_good198_checked,
    row112_good199_checked,
    row112_good200_checked,
    row112_good201_checked,
    row112_good202_checked,
    row112_good203_checked,
    row112_good204_checked,
    row112_good205_checked,
    row112_good206_checked,
    row112_good207_checked,
    row112_good208_checked,
    row112_good209_checked,
    row112_good210_checked,
    row112_good211_checked,
    row112_good212_checked,
    row112_good213_checked,
    row112_good214_checked,
    row112_good215_checked,
    row112_good216_checked,
    row112_good217_checked,
    row112_good218_checked,
    row112_good219_checked,
    row112_good220_checked,
    row112_good221_checked,
    row112_good222_checked,
    row112_good223_checked,
    row112_good224_checked,
    row112_good225_checked,
    row112_good226_checked,
    row112_good227_checked,
    row112_good228_checked,
    row112_good229_checked,
    row112_good230_checked,
    row112_good231_checked,
    row112_good232_checked,
    row112_good233_checked,
    row112_good234_checked,
    row112_good235_checked,
    row112_good236_checked,
    row112_good237_checked,
    row112_good238_checked,
    row112_good239_checked,
    row112_good240_checked,
    row112_good241_checked,
    row112_good242_checked,
    row112_good243_checked,
    row112_good244_checked,
    row112_good245_checked,
    row112_good246_checked,
    row112_good247_checked,
    row112_good248_checked,
    row112_good249_checked,
    row112_good250_checked,
    row112_good251_checked,
    row112_good252_checked,
    row112_good253_checked,
    row112_good254_checked,
    row112_good255_checked,
    row112_good256_checked,
    row112_good257_checked,
    row112_good258_checked,
    row112_good259_checked,
    row112_good260_checked,
    row112_good261_checked,
    row112_good262_checked,
    row112_good263_checked,
    row112_good264_checked,
    row112_good265_checked,
    row112_good266_checked,
    row112_good267_checked,
    row112_good268_checked,
    row112_good269_checked,
    row112_good270_checked,
    row112_good271_checked,
    row112_good272_checked,
    row112_good273_checked,
    row112_good274_checked,
    row112_good275_checked,
    row112_good276_checked,
    row112_good277_checked,
    row112_good278_checked,
    row112_good279_checked,
    row112_good280_checked,
    row112_good281_checked,
    row112_good282_checked,
    row112_good283_checked,
    row112_good284_checked,
    row112_good285_checked,
    row112_good286_checked,
    row112_good287_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_registered :
    decide (row112.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row112_small_checked :
    coverCheck (2 * row112.height.i + 2) (row112.height.i * (row112.height.i - 1) - 1)
      (row112.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row112_layerCover_checked :
    coverCheck (row112.height.i * (row112.height.i - 1)) (row112.height.n0 - 1)
      (row112.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row112_bounds : List NatInterval :=
  [(226, 334), (335, 442), (443, 554), (555, 658), (659, 770), (771, 880), (881, 992), (993, 1102), (1103, 1214), (1215, 1324), (1325, 1432), (1433, 1544), (1545, 1654), (1655, 1748), (1749, 1858), (1859, 1958), (1959, 2062), (2063, 2174), (2175, 2272), (2273, 2384), (2385, 2494), (2495, 2588), (2589, 2690), (2691, 2800), (2801, 2912), (2913, 3020), (3021, 3130), (3131, 3232), (3233, 3340), (3341, 3442), (3443, 3544), (3545, 3652), (3653, 3754), (3755, 3850), (3851, 3962), (3963, 4058), (4059, 4168), (4169, 4270), (4271, 4382), (4383, 4484), (4485, 4594), (4595, 4702), (4703, 4814), (4815, 4924), (4925, 5030), (5031, 5134), (5135, 5230), (5231, 5342), (5343, 5444), (5445, 5554), (5555, 5642), (5643, 5752), (5753, 5860), (5861, 5972), (5973, 6064), (6065, 6164), (6165, 6274), (6275, 6382), (6383, 6490), (6491, 6602), (6603, 6710), (6711, 6820), (6821, 6914), (6915, 7022), (7023, 7130), (7131, 7240), (7241, 7348), (7349, 7460), (7461, 7570), (7571, 7672), (7673, 7784), (7785, 7870), (7871, 7978), (7979, 8074), (8075, 8180), (8181, 8290), (8291, 8402), (8403, 8500), (8501, 8612), (8613, 8720), (8721, 8830), (8831, 8942), (8943, 9052), (9053, 9160), (9161, 9272), (9273, 9368), (9369, 9460), (9461, 9572), (9573, 9662), (9663, 9772), (9773, 9880), (9881, 9982), (9983, 10084), (10085, 10190), (10191, 10292), (10293, 10400), (10401, 10510), (10511, 10612), (10613, 10724), (10725, 10834), (10835, 10942), (10943, 11050), (11051, 11158), (11159, 11270), (11271, 11372), (11373, 11480), (11481, 11582), (11583, 11690), (11691, 11800), (11801, 11912), (11913, 12020), (12021, 12122), (12123, 12230), (12231, 12338), (12339, 12432), (12482, 12590), (12591, 12604), (12696, 12726), (13125, 13232), (13233, 13340), (13341, 13365), (13454, 13562), (13563, 13567), (13718, 13822), (13823, 13889), (13924, 13962), (14375, 14408), (14415, 14486), (14641, 14691), (14739, 14752), (14792, 14850), (14884, 14903), (15059, 15111), (15123, 15232), (15233, 15240), (15376, 15484), (15485, 15490), (15979, 16084), (16085, 16098), (16337, 16361), (16384, 16492), (16493, 16495), (16807, 16898), (16899, 16931), (17303, 17410), (17411, 17414), (17496, 17516), (17576, 17607), (17661, 17770), (17771, 17772), (18259, 18336), (18491, 18592), (18593, 18602), (18605, 18613), (18634, 18716), (18723, 18745), (18750, 18860), (18861, 18861), (19220, 19277), (19663, 19772), (19773, 19794), (19881, 19884), (19965, 19992), (20172, 20272), (20273, 20292), (20402, 20450), (20577, 20646), (20667, 20688), (21218, 21253), (21296, 21394), (21395, 21407), (21866, 21974), (21975, 22015), (22103, 22204), (22205, 22214), (22472, 22556), (23763, 23872), (23873, 23873), (24025, 24134), (24135, 24148), (24167, 24168), (24334, 24440), (24441, 24478), (24642, 24676), (25000, 25075), (25215, 25300), (25301, 25392), (26047, 26122), (26645, 26731), (26934, 27007), (27436, 27491), (27951, 27959), (28125, 28201), (28227, 28236), (28577, 28672), (28749, 28828), (29584, 29589), (29791, 29879), (30258, 30357), (30618, 30704), (30705, 30714), (30926, 31010), (31250, 31316), (31329, 31361), (31423, 31508), (31509, 31534), (31974, 32050), (32805, 32879), (33620, 33730), (33731, 33731), (34347, 34448), (34449, 34502), (35152, 35242), (35301, 35402), (35403, 35412), (36517, 36608), (36609, 36612), (36982, 37090), (37091, 37091), (37210, 37290), (37303, 37321), (37349, 37414), (37446, 37460), (37500, 37604), (37605, 37611), (37636, 37664), (39326, 39434), (39435, 39437), (39605, 39657), (40401, 40439), (40678, 40736), (41772, 41854), (43740, 43832), (43833, 43851), (43940, 44034), (44217, 44291), (44944, 45001), (47526, 47632), (47633, 47635), (48013, 48072), (48114, 48124), (48223, 48225), (48334, 48334), (48373, 48445), (48668, 48709), (48734, 48844), (48845, 48845), (50000, 50039), (50653, 50673), (53125, 53156), (55451, 55552), (55553, 55558), (56250, 56280), (58619, 58675), (59049, 59067), (59582, 59647), (62500, 62521), (63368, 63368), (63948, 63980), (65536, 65632), (65633, 65647), (68651, 68750), (68751, 68762), (68782, 68805), (68890, 68893), (68921, 69001), (71289, 71397), (73205, 73278), (85264, 85280), (85293, 85370), (85371, 85375), (85697, 85794), (91854, 91920), (95052, 95138), (95139, 95159), (96026, 96033), (102973, 102996), (103041, 103084), (118815, 118912), (118913, 118921), (122412, 122428), (131769, 131837), (137842, 137892), (137917, 137953), (142814, 142916), (146410, 146445), (148877, 148948), (148955, 148988)]

theorem row112_bounds_eq : row112.goods.map goodSegmentBounds = row112_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row112_layer000_intervals : List ColouredInterval :=
  [(2, 16384, 16495), (3, 12432, 12504), (3, 13122, 13233), (3, 13851, 13962), (3, 14580, 14691), (3, 15309, 15420), (3, 16038, 16149), (3, 16767, 16878), (3, 17496, 17607), (3, 18225, 18336), (3, 18954, 19065), (3, 13122, 13233), (3, 15309, 15420), (3, 17496, 17607), (3, 19683, 19794), (3, 21870, 21981), (3, 24057, 24168), (3, 13122, 13233), (3, 19683, 19794), (3, 19683, 19794), (5, 12500, 12611), (5, 13125, 13236), (5, 13750, 13861), (5, 14375, 14486), (5, 15000, 15111), (5, 15625, 15736), (5, 16250, 16361), (5, 12500, 12611), (5, 15625, 15736), (5, 18750, 18861), (5, 21875, 21986), (5, 15625, 15736), (7, 16807, 16918), (11, 13310, 13421), (11, 14641, 14752), (11, 15972, 16083), (11, 17303, 17414), (11, 18634, 18745), (11, 19965, 20076), (11, 21296, 21407), (11, 22627, 22738), (11, 23958, 24069), (11, 14641, 14752), (13, 13182, 13293), (13, 15379, 15490), (13, 17576, 17687), (13, 19773, 19884), (13, 21970, 22081), (13, 24167, 24278), (17, 14739, 14850), (17, 19652, 19763), (17, 24565, 24676), (19, 13718, 13829), (19, 20577, 20688), (23, 12696, 12807), (23, 13225, 13336), (23, 13754, 13865), (23, 24334, 24445), (29, 12615, 12726), (29, 13456, 13567), (29, 14297, 14408), (29, 15138, 15249), (29, 15979, 16090), (29, 16820, 16931), (29, 17661, 17772), (29, 18502, 18613), (29, 19343, 19454), (29, 20184, 20295), (29, 21025, 21136), (29, 21866, 21977), (29, 24389, 24500), (31, 12493, 12604), (31, 13454, 13565), (31, 14415, 14526), (31, 15376, 15487), (31, 16337, 16448), (31, 17298, 17409), (31, 18259, 18370), (31, 19220, 19331), (31, 20181, 20292), (31, 21142, 21253), (31, 22103, 22214), (31, 23064, 23175), (31, 24025, 24136), (37, 12432, 12432), (37, 13690, 13801), (37, 15059, 15170), (37, 16428, 16539), (37, 17797, 17908), (37, 19166, 19277), (37, 20535, 20646), (37, 21904, 22015), (37, 23273, 23384), (37, 24642, 24753), (41, 13448, 13559), (41, 15129, 15240), (41, 16810, 16921), (41, 18491, 18602), (41, 20172, 20283), (41, 21853, 21964), (41, 23534, 23645), (43, 12943, 13054), (43, 14792, 14903), (43, 16641, 16752), (43, 18490, 18601), (43, 20339, 20450), (43, 22188, 22299), (43, 24037, 24148), (47, 13254, 13365), (47, 15463, 15574), (47, 17672, 17783), (47, 19881, 19992), (47, 22090, 22201), (47, 24299, 24410), (53, 14045, 14156), (53, 16854, 16965), (53, 19663, 19774), (53, 22472, 22583), (59, 13924, 14035), (59, 17405, 17516), (59, 20886, 20997), (59, 24367, 24478), (61, 14884, 14995), (61, 18605, 18716), (61, 22326, 22437), (67, 13467, 13578), (67, 17956, 18067), (67, 22445, 22556), (71, 15123, 15234), (71, 20164, 20275), (73, 15987, 16098), (73, 21316, 21427), (79, 12482, 12593), (79, 18723, 18834), (83, 13778, 13889), (83, 20667, 20778), (89, 15842, 15953), (89, 23763, 23874), (97, 18818, 18929), (101, 20402, 20513), (103, 21218, 21329), (107, 22898, 23009), (109, 23762, 23873)]

def row112_layer000_block000 : List ColouredInterval :=
  [(2, 16384, 16495), (3, 12432, 12504), (3, 13122, 13233), (3, 13851, 13962), (3, 14580, 14691), (3, 15309, 15420), (3, 16038, 16149), (3, 16767, 16878), (3, 17496, 17607), (3, 18225, 18336), (3, 18954, 19065), (3, 13122, 13233), (3, 15309, 15420), (3, 17496, 17607)]

def row112_layer000_block001 : List ColouredInterval :=
  [(3, 19683, 19794), (3, 21870, 21981), (3, 24057, 24168), (3, 13122, 13233), (3, 19683, 19794), (3, 19683, 19794), (5, 12500, 12611), (5, 13125, 13236), (5, 13750, 13861), (5, 14375, 14486), (5, 15000, 15111), (5, 15625, 15736), (5, 16250, 16361), (5, 12500, 12611)]

def row112_layer000_block002 : List ColouredInterval :=
  [(5, 15625, 15736), (5, 18750, 18861), (5, 21875, 21986), (5, 15625, 15736), (7, 16807, 16918), (11, 13310, 13421), (11, 14641, 14752), (11, 15972, 16083), (11, 17303, 17414), (11, 18634, 18745), (11, 19965, 20076), (11, 21296, 21407), (11, 22627, 22738), (11, 23958, 24069)]

def row112_layer000_block003 : List ColouredInterval :=
  [(11, 14641, 14752), (13, 13182, 13293), (13, 15379, 15490), (13, 17576, 17687), (13, 19773, 19884), (13, 21970, 22081), (13, 24167, 24278), (17, 14739, 14850), (17, 19652, 19763), (17, 24565, 24676), (19, 13718, 13829), (19, 20577, 20688), (23, 12696, 12807), (23, 13225, 13336)]

def row112_layer000_block004 : List ColouredInterval :=
  [(23, 13754, 13865), (23, 24334, 24445), (29, 12615, 12726), (29, 13456, 13567), (29, 14297, 14408), (29, 15138, 15249), (29, 15979, 16090), (29, 16820, 16931), (29, 17661, 17772), (29, 18502, 18613), (29, 19343, 19454), (29, 20184, 20295), (29, 21025, 21136), (29, 21866, 21977)]

def row112_layer000_block005 : List ColouredInterval :=
  [(29, 24389, 24500), (31, 12493, 12604), (31, 13454, 13565), (31, 14415, 14526), (31, 15376, 15487), (31, 16337, 16448), (31, 17298, 17409), (31, 18259, 18370), (31, 19220, 19331), (31, 20181, 20292), (31, 21142, 21253), (31, 22103, 22214), (31, 23064, 23175), (31, 24025, 24136)]

def row112_layer000_block006 : List ColouredInterval :=
  [(37, 12432, 12432), (37, 13690, 13801), (37, 15059, 15170), (37, 16428, 16539), (37, 17797, 17908), (37, 19166, 19277), (37, 20535, 20646), (37, 21904, 22015), (37, 23273, 23384), (37, 24642, 24753), (41, 13448, 13559), (41, 15129, 15240), (41, 16810, 16921), (41, 18491, 18602)]

def row112_layer000_block007 : List ColouredInterval :=
  [(41, 20172, 20283), (41, 21853, 21964), (41, 23534, 23645), (43, 12943, 13054), (43, 14792, 14903), (43, 16641, 16752), (43, 18490, 18601), (43, 20339, 20450), (43, 22188, 22299), (43, 24037, 24148), (47, 13254, 13365), (47, 15463, 15574), (47, 17672, 17783), (47, 19881, 19992)]

def row112_layer000_block008 : List ColouredInterval :=
  [(47, 22090, 22201), (47, 24299, 24410), (53, 14045, 14156), (53, 16854, 16965), (53, 19663, 19774), (53, 22472, 22583), (59, 13924, 14035), (59, 17405, 17516), (59, 20886, 20997), (59, 24367, 24478), (61, 14884, 14995), (61, 18605, 18716), (61, 22326, 22437), (67, 13467, 13578)]

def row112_layer000_block009 : List ColouredInterval :=
  [(67, 17956, 18067), (67, 22445, 22556), (71, 15123, 15234), (71, 20164, 20275), (73, 15987, 16098), (73, 21316, 21427), (79, 12482, 12593), (79, 18723, 18834), (83, 13778, 13889), (83, 20667, 20778), (89, 15842, 15953), (89, 23763, 23874), (97, 18818, 18929), (101, 20402, 20513)]

def row112_layer000_block010 : List ColouredInterval :=
  [(103, 21218, 21329), (107, 22898, 23009), (109, 23762, 23873)]

def row112_layer000_chunks : List (List ColouredInterval) :=
  [row112_layer000_block000, row112_layer000_block001, row112_layer000_block002, row112_layer000_block003, row112_layer000_block004, row112_layer000_block005, row112_layer000_block006, row112_layer000_block007, row112_layer000_block008, row112_layer000_block009, row112_layer000_block010]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer000_arithmetic : LayerArithmeticValid row112.height { lower := 12432, upper := 24864, M := 26 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer000_enumeration :
    activePowerIntervalList 112 26 12432 24864 = row112_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer000_pairs000 :
    row112_layer000_block000.all (fun I => row112_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row112_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer000_pairs001 :
    row112_layer000_block001.all (fun I => row112_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row112_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer000_pairs002 :
    row112_layer000_block002.all (fun I => row112_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row112_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer000_pairs003 :
    row112_layer000_block003.all (fun I => row112_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row112_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer000_pairs004 :
    row112_layer000_block004.all (fun I => row112_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row112_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer000_pairs005 :
    row112_layer000_block005.all (fun I => row112_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row112_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer000_pairs006 :
    row112_layer000_block006.all (fun I => row112_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row112_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer000_pairs006
