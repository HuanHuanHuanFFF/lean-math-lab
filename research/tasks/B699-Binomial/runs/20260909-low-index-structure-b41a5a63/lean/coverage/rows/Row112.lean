import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

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

theorem row112_registered :
    decide (row112.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row112_goods_checked :
    row112.goods.all (goodSegmentCheck row112.height.i row112.height.r row112.height.s) = true := by
  decide +kernel

theorem row112_small_checked :
    coverCheck (2 * row112.height.i + 2) (row112.height.i * (row112.height.i - 1) - 1)
      (row112.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row112_layerCover_checked :
    coverCheck (row112.height.i * (row112.height.i - 1)) (row112.height.n0 - 1)
      (row112.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row112_layer000_checked :
    coverLayerCheck row112.height row112.goods { lower := 12432, upper := 24864, M := 26 } = true := by
  decide +kernel

theorem row112_layer001_checked :
    coverLayerCheck row112.height row112.goods { lower := 24864, upper := 49728, M := 22 } = true := by
  decide +kernel

theorem row112_layer002_checked :
    coverLayerCheck row112.height row112.goods { lower := 49728, upper := 99456, M := 18 } = true := by
  decide +kernel

theorem row112_layer003_checked :
    coverLayerCheck row112.height row112.goods { lower := 99456, upper := 198912, M := 15 } = true := by
  decide +kernel

theorem row112_layer004_checked :
    coverLayerCheck row112.height row112.goods { lower := 198912, upper := 397824, M := 12 } = true := by
  decide +kernel

theorem row112_layer005_checked :
    coverLayerCheck row112.height row112.goods { lower := 397824, upper := 795648, M := 10 } = true := by
  decide +kernel

theorem row112_layer006_checked :
    coverLayerCheck row112.height row112.goods { lower := 795648, upper := 1591296, M := 9 } = true := by
  decide +kernel

theorem row112_layer007_checked :
    coverLayerCheck row112.height row112.goods { lower := 1591296, upper := 3182592, M := 7 } = true := by
  decide +kernel

theorem row112_layer008_checked :
    coverLayerCheck row112.height row112.goods { lower := 3182592, upper := 6365184, M := 6 } = true := by
  decide +kernel

theorem row112_layer009_checked :
    coverLayerCheck row112.height row112.goods { lower := 6365184, upper := 12730368, M := 5 } = true := by
  decide +kernel

theorem row112_layer010_checked :
    coverLayerCheck row112.height row112.goods { lower := 12730368, upper := 25460736, M := 4 } = true := by
  decide +kernel

theorem row112_layer011_checked :
    coverLayerCheck row112.height row112.goods { lower := 25460736, upper := 50921472, M := 4 } = true := by
  decide +kernel

theorem row112_layer012_checked :
    coverLayerCheck row112.height row112.goods { lower := 50921472, upper := 101842944, M := 3 } = true := by
  decide +kernel

theorem row112_layer013_checked :
    coverLayerCheck row112.height row112.goods { lower := 101842944, upper := 203685888, M := 3 } = true := by
  decide +kernel

theorem row112_layer014_checked :
    coverLayerCheck row112.height row112.goods { lower := 203685888, upper := 407371776, M := 2 } = true := by
  decide +kernel

theorem row112_layer015_checked :
    coverLayerCheck row112.height row112.goods { lower := 407371776, upper := 814743552, M := 2 } = true := by
  decide +kernel

theorem row112_layer016_checked :
    coverLayerCheck row112.height row112.goods { lower := 814743552, upper := 1629487104, M := 2 } = true := by
  decide +kernel

theorem row112_layer017_checked :
    coverLayerCheck row112.height row112.goods { lower := 1629487104, upper := 3258974208, M := 1 } = true := by
  decide +kernel

theorem row112_layer018_checked :
    coverLayerCheck row112.height row112.goods { lower := 3258974208, upper := 6517948416, M := 1 } = true := by
  decide +kernel

theorem row112_layer019_checked :
    coverLayerCheck row112.height row112.goods { lower := 6517948416, upper := 10000000000, M := 1 } = true := by
  decide +kernel

theorem row112_layers_checked :
    row112.layers.all (coverLayerCheck row112.height row112.goods) = true := by
  change List.all [
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
  ] (coverLayerCheck row112.height row112.goods) = true
  simp only [List.all_cons, List.all_nil,
    row112_layer000_checked,
    row112_layer001_checked,
    row112_layer002_checked,
    row112_layer003_checked,
    row112_layer004_checked,
    row112_layer005_checked,
    row112_layer006_checked,
    row112_layer007_checked,
    row112_layer008_checked,
    row112_layer009_checked,
    row112_layer010_checked,
    row112_layer011_checked,
    row112_layer012_checked,
    row112_layer013_checked,
    row112_layer014_checked,
    row112_layer015_checked,
    row112_layer016_checked,
    row112_layer017_checked,
    row112_layer018_checked,
    row112_layer019_checked,
    Bool.true_and]

theorem row112_checked : finiteCoverRowCheck row112 = true := by
  simp only [finiteCoverRowCheck, row112_registered, row112_goods_checked,
    row112_small_checked, row112_layerCover_checked, row112_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row112_checked

end B699LowIndex
