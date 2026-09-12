import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row097_height : HeightCertificateDatum := { i := 97, r := 32, s := 68, n0Power10 := 8 }

def row097_goods : List GoodSegment := [
  { lower := 196, upper := 289, witness := RowWitness.topPrime 193 },
  { lower := 290, upper := 379, witness := RowWitness.topPrime 283 },
  { lower := 380, upper := 475, witness := RowWitness.topPrime 379 },
  { lower := 476, upper := 563, witness := RowWitness.topPrime 467 },
  { lower := 564, upper := 659, witness := RowWitness.topPrime 563 },
  { lower := 660, upper := 755, witness := RowWitness.topPrime 659 },
  { lower := 756, upper := 847, witness := RowWitness.topPrime 751 },
  { lower := 848, upper := 935, witness := RowWitness.topPrime 839 },
  { lower := 936, upper := 1025, witness := RowWitness.topPrime 929 },
  { lower := 1026, upper := 1117, witness := RowWitness.topPrime 1021 },
  { lower := 1118, upper := 1213, witness := RowWitness.topPrime 1117 },
  { lower := 1214, upper := 1309, witness := RowWitness.topPrime 1213 },
  { lower := 1310, upper := 1403, witness := RowWitness.topPrime 1307 },
  { lower := 1404, upper := 1495, witness := RowWitness.topPrime 1399 },
  { lower := 1496, upper := 1589, witness := RowWitness.topPrime 1493 },
  { lower := 1590, upper := 1679, witness := RowWitness.topPrime 1583 },
  { lower := 1680, upper := 1765, witness := RowWitness.topPrime 1669 },
  { lower := 1766, upper := 1855, witness := RowWitness.topPrime 1759 },
  { lower := 1856, upper := 1943, witness := RowWitness.topPrime 1847 },
  { lower := 1944, upper := 2029, witness := RowWitness.topPrime 1933 },
  { lower := 2030, upper := 2125, witness := RowWitness.topPrime 2029 },
  { lower := 2126, upper := 2209, witness := RowWitness.topPrime 2113 },
  { lower := 2210, upper := 2303, witness := RowWitness.topPrime 2207 },
  { lower := 2304, upper := 2393, witness := RowWitness.topPrime 2297 },
  { lower := 2394, upper := 2489, witness := RowWitness.topPrime 2393 },
  { lower := 2490, upper := 2573, witness := RowWitness.topPrime 2477 },
  { lower := 2574, upper := 2653, witness := RowWitness.topPrime 2557 },
  { lower := 2654, upper := 2743, witness := RowWitness.topPrime 2647 },
  { lower := 2744, upper := 2837, witness := RowWitness.topPrime 2741 },
  { lower := 2838, upper := 2933, witness := RowWitness.topPrime 2837 },
  { lower := 2934, upper := 3023, witness := RowWitness.topPrime 2927 },
  { lower := 3024, upper := 3119, witness := RowWitness.topPrime 3023 },
  { lower := 3120, upper := 3215, witness := RowWitness.topPrime 3119 },
  { lower := 3216, upper := 3305, witness := RowWitness.topPrime 3209 },
  { lower := 3306, upper := 3397, witness := RowWitness.topPrime 3301 },
  { lower := 3398, upper := 3487, witness := RowWitness.topPrime 3391 },
  { lower := 3488, upper := 3565, witness := RowWitness.topPrime 3469 },
  { lower := 3566, upper := 3655, witness := RowWitness.topPrime 3559 },
  { lower := 3656, upper := 3739, witness := RowWitness.topPrime 3643 },
  { lower := 3740, upper := 3835, witness := RowWitness.topPrime 3739 },
  { lower := 3836, upper := 3929, witness := RowWitness.topPrime 3833 },
  { lower := 3930, upper := 4025, witness := RowWitness.topPrime 3929 },
  { lower := 4026, upper := 4117, witness := RowWitness.topPrime 4021 },
  { lower := 4118, upper := 4207, witness := RowWitness.topPrime 4111 },
  { lower := 4208, upper := 4297, witness := RowWitness.topPrime 4201 },
  { lower := 4298, upper := 4393, witness := RowWitness.topPrime 4297 },
  { lower := 4394, upper := 4487, witness := RowWitness.topPrime 4391 },
  { lower := 4488, upper := 4579, witness := RowWitness.topPrime 4483 },
  { lower := 4580, upper := 4663, witness := RowWitness.topPrime 4567 },
  { lower := 4664, upper := 4759, witness := RowWitness.topPrime 4663 },
  { lower := 4760, upper := 4855, witness := RowWitness.topPrime 4759 },
  { lower := 4856, upper := 4927, witness := RowWitness.topPrime 4831 },
  { lower := 4928, upper := 5015, witness := RowWitness.topPrime 4919 },
  { lower := 5016, upper := 5107, witness := RowWitness.topPrime 5011 },
  { lower := 5108, upper := 5203, witness := RowWitness.topPrime 5107 },
  { lower := 5204, upper := 5293, witness := RowWitness.topPrime 5197 },
  { lower := 5294, upper := 5377, witness := RowWitness.topPrime 5281 },
  { lower := 5378, upper := 5447, witness := RowWitness.topPrime 5351 },
  { lower := 5448, upper := 5539, witness := RowWitness.topPrime 5443 },
  { lower := 5540, upper := 5627, witness := RowWitness.topPrime 5531 },
  { lower := 5628, upper := 5719, witness := RowWitness.topPrime 5623 },
  { lower := 5720, upper := 5813, witness := RowWitness.topPrime 5717 },
  { lower := 5814, upper := 5909, witness := RowWitness.topPrime 5813 },
  { lower := 5910, upper := 5999, witness := RowWitness.topPrime 5903 },
  { lower := 6000, upper := 6083, witness := RowWitness.topPrime 5987 },
  { lower := 6084, upper := 6175, witness := RowWitness.topPrime 6079 },
  { lower := 6176, upper := 6269, witness := RowWitness.topPrime 6173 },
  { lower := 6270, upper := 6365, witness := RowWitness.topPrime 6269 },
  { lower := 6366, upper := 6457, witness := RowWitness.topPrime 6361 },
  { lower := 6458, upper := 6547, witness := RowWitness.topPrime 6451 },
  { lower := 6548, upper := 6643, witness := RowWitness.topPrime 6547 },
  { lower := 6644, upper := 6733, witness := RowWitness.topPrime 6637 },
  { lower := 6734, upper := 6829, witness := RowWitness.topPrime 6733 },
  { lower := 6830, upper := 6925, witness := RowWitness.topPrime 6829 },
  { lower := 6926, upper := 7013, witness := RowWitness.topPrime 6917 },
  { lower := 7014, upper := 7109, witness := RowWitness.topPrime 7013 },
  { lower := 7110, upper := 7205, witness := RowWitness.topPrime 7109 },
  { lower := 7206, upper := 7289, witness := RowWitness.topPrime 7193 },
  { lower := 7290, upper := 7379, witness := RowWitness.topPrime 7283 },
  { lower := 7380, upper := 7465, witness := RowWitness.topPrime 7369 },
  { lower := 7466, upper := 7555, witness := RowWitness.topPrime 7459 },
  { lower := 7556, upper := 7645, witness := RowWitness.topPrime 7549 },
  { lower := 7646, upper := 7739, witness := RowWitness.topPrime 7643 },
  { lower := 7740, upper := 7823, witness := RowWitness.topPrime 7727 },
  { lower := 7824, upper := 7919, witness := RowWitness.topPrime 7823 },
  { lower := 7920, upper := 8015, witness := RowWitness.topPrime 7919 },
  { lower := 8016, upper := 8107, witness := RowWitness.topPrime 8011 },
  { lower := 8108, upper := 8197, witness := RowWitness.topPrime 8101 },
  { lower := 8198, upper := 8287, witness := RowWitness.topPrime 8191 },
  { lower := 8288, upper := 8383, witness := RowWitness.topPrime 8287 },
  { lower := 8384, upper := 8473, witness := RowWitness.topPrime 8377 },
  { lower := 8474, upper := 8563, witness := RowWitness.topPrime 8467 },
  { lower := 8564, upper := 8659, witness := RowWitness.topPrime 8563 },
  { lower := 8660, upper := 8743, witness := RowWitness.topPrime 8647 },
  { lower := 8744, upper := 8837, witness := RowWitness.topPrime 8741 },
  { lower := 8838, upper := 8933, witness := RowWitness.topPrime 8837 },
  { lower := 8934, upper := 9029, witness := RowWitness.topPrime 8933 },
  { lower := 9030, upper := 9125, witness := RowWitness.topPrime 9029 },
  { lower := 9126, upper := 9205, witness := RowWitness.topPrime 9109 },
  { lower := 9206, upper := 9299, witness := RowWitness.topPrime 9203 },
  { lower := 9300, upper := 9347, witness := RowWitness.topPrime 9293 },
  { lower := 9375, upper := 9413, witness := RowWitness.topPrime 9371 },
  { lower := 9522, upper := 9573, witness := RowWitness.topPrime 9521 },
  { lower := 9583, upper := 9647, witness := RowWitness.topPrime 9551 },
  { lower := 9648, upper := 9700, witness := RowWitness.topPrime 9643 },
  { lower := 10082, upper := 10175, witness := RowWitness.topPrime 10079 },
  { lower := 10176, upper := 10182, witness := RowWitness.topPrime 10169 },
  { lower := 10240, upper := 10302, witness := RowWitness.topPrime 10223 },
  { lower := 10625, upper := 10709, witness := RowWitness.topPrime 10613 },
  { lower := 10710, upper := 10744, witness := RowWitness.topPrime 10709 },
  { lower := 10935, upper := 11005, witness := RowWitness.topPrime 10909 },
  { lower := 11006, upper := 11081, witness := RowWitness.topPrime 11003 },
  { lower := 11094, upper := 11141, witness := RowWitness.topPrime 11093 },
  { lower := 11163, upper := 11190, witness := RowWitness.topPrime 11161 },
  { lower := 11236, upper := 11309, witness := RowWitness.topPrime 11213 },
  { lower := 11310, upper := 11346, witness := RowWitness.topPrime 11299 },
  { lower := 11774, upper := 11839, witness := RowWitness.topPrime 11743 },
  { lower := 11840, upper := 11863, witness := RowWitness.topPrime 11839 },
  { lower := 12005, upper := 12075, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12384, witness := RowWitness.topPrime 12301 },
  { lower := 12393, upper := 12417, witness := RowWitness.topPrime 12391 },
  { lower := 12482, upper := 12489, witness := RowWitness.topPrime 12479 },
  { lower := 12493, upper := 12587, witness := RowWitness.topPrime 12491 },
  { lower := 12588, upper := 12589, witness := RowWitness.topPrime 12583 },
  { lower := 13182, upper := 13218, witness := RowWitness.topPrime 13177 },
  { lower := 13254, upper := 13278, witness := RowWitness.topPrime 13249 },
  { lower := 13310, upper := 13405, witness := RowWitness.topPrime 13309 },
  { lower := 13406, upper := 13406, witness := RowWitness.topPrime 13399 },
  { lower := 13454, upper := 13547, witness := RowWitness.topPrime 13451 },
  { lower := 13548, upper := 13552, witness := RowWitness.topPrime 13537 },
  { lower := 13718, upper := 13807, witness := RowWitness.topPrime 13711 },
  { lower := 13808, upper := 13814, witness := RowWitness.topPrime 13807 },
  { lower := 14336, upper := 14393, witness := RowWitness.topPrime 14327 },
  { lower := 14406, upper := 14497, witness := RowWitness.topPrime 14401 },
  { lower := 14498, upper := 14502, witness := RowWitness.topPrime 14489 },
  { lower := 14792, upper := 14835, witness := RowWitness.topPrime 14783 },
  { lower := 14884, upper := 14888, witness := RowWitness.topPrime 14879 },
  { lower := 15123, upper := 15217, witness := RowWitness.topPrime 15121 },
  { lower := 15218, upper := 15225, witness := RowWitness.topPrime 15217 },
  { lower := 15360, upper := 15455, witness := RowWitness.topPrime 15359 },
  { lower := 15456, upper := 15475, witness := RowWitness.topPrime 15451 },
  { lower := 15987, upper := 16068, witness := RowWitness.topPrime 15973 },
  { lower := 16384, upper := 16477, witness := RowWitness.topPrime 16381 },
  { lower := 16478, upper := 16480, witness := RowWitness.topPrime 16477 },
  { lower := 16810, upper := 16883, witness := RowWitness.topPrime 16787 },
  { lower := 16884, upper := 16906, witness := RowWitness.topPrime 16883 },
  { lower := 17303, upper := 17394, witness := RowWitness.topPrime 17299 },
  { lower := 17408, upper := 17497, witness := RowWitness.topPrime 17401 },
  { lower := 17498, upper := 17504, witness := RowWitness.topPrime 17497 },
  { lower := 17576, upper := 17592, witness := RowWitness.topPrime 17573 },
  { lower := 17672, upper := 17672, witness := RowWitness.topPrime 17669 },
  { lower := 18490, upper := 18577, witness := RowWitness.topPrime 18481 },
  { lower := 18578, upper := 18586, witness := RowWitness.topPrime 18553 },
  { lower := 18634, upper := 18701, witness := RowWitness.topPrime 18617 },
  { lower := 18723, upper := 18730, witness := RowWitness.topPrime 18719 },
  { lower := 18750, upper := 18819, witness := RowWitness.topPrime 18749 },
  { lower := 19208, upper := 19262, witness := RowWitness.topPrime 19207 },
  { lower := 19663, upper := 19757, witness := RowWitness.topPrime 19661 },
  { lower := 19758, upper := 19759, witness := RowWitness.topPrime 19753 },
  { lower := 19773, upper := 19779, witness := RowWitness.topPrime 19763 },
  { lower := 20172, upper := 20257, witness := RowWitness.topPrime 20161 },
  { lower := 20258, upper := 20260, witness := RowWitness.topPrime 20249 },
  { lower := 20667, upper := 20673, witness := RowWitness.topPrime 20663 },
  { lower := 21870, upper := 21959, witness := RowWitness.topPrime 21863 },
  { lower := 21960, upper := 21966, witness := RowWitness.topPrime 21943 },
  { lower := 21970, upper := 21971, witness := RowWitness.topPrime 21961 },
  { lower := 22472, upper := 22565, witness := RowWitness.topPrime 22469 },
  { lower := 22566, upper := 22568, witness := RowWitness.topPrime 22549 },
  { lower := 24037, upper := 24125, witness := RowWitness.topPrime 24029 },
  { lower := 24126, upper := 24133, witness := RowWitness.topPrime 24121 },
  { lower := 24334, upper := 24425, witness := RowWitness.topPrime 24329 },
  { lower := 24426, upper := 24463, witness := RowWitness.topPrime 24421 },
  { lower := 24576, upper := 24661, witness := RowWitness.topPrime 24571 },
  { lower := 25000, upper := 25060, witness := RowWitness.topPrime 24989 },
  { lower := 25281, upper := 25301, witness := RowWitness.topPrime 25261 },
  { lower := 26411, upper := 26460, witness := RowWitness.topPrime 26407 },
  { lower := 26645, upper := 26720, witness := RowWitness.topPrime 26641 },
  { lower := 28125, upper := 28186, witness := RowWitness.topPrime 28123 },
  { lower := 28717, upper := 28768, witness := RowWitness.topPrime 28711 },
  { lower := 28812, upper := 28813, witness := RowWitness.topPrime 28807 },
  { lower := 29791, upper := 29864, witness := RowWitness.topPrime 29789 },
  { lower := 30926, upper := 30995, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31289, witness := RowWitness.topPrime 31193 },
  { lower := 31290, upper := 31309, witness := RowWitness.topPrime 31277 },
  { lower := 31329, upper := 31346, witness := RowWitness.topPrime 31327 },
  { lower := 31423, upper := 31425, witness := RowWitness.topPrime 31397 },
  { lower := 32805, upper := 32864, witness := RowWitness.topPrime 32803 },
  { lower := 33708, upper := 33710, witness := RowWitness.topPrime 33703 },
  { lower := 34375, upper := 34465, witness := RowWitness.topPrime 34369 },
  { lower := 34466, upper := 34487, witness := RowWitness.topPrime 34457 },
  { lower := 36517, upper := 36593, witness := RowWitness.topPrime 36497 },
  { lower := 36594, upper := 36597, witness := RowWitness.topPrime 36587 },
  { lower := 37303, upper := 37306, witness := RowWitness.topPrime 37277 },
  { lower := 39366, upper := 39400, witness := RowWitness.topPrime 39359 },
  { lower := 40401, upper := 40424, witness := RowWitness.topPrime 40387 },
  { lower := 40960, upper := 41027, witness := RowWitness.topPrime 40949 },
  { lower := 48013, upper := 48057, witness := RowWitness.topPrime 47981 },
  { lower := 49152, upper := 49226, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50506, witness := RowWitness.topPrime 50417 },
  { lower := 55451, upper := 55537, witness := RowWitness.topPrime 55441 },
  { lower := 55538, upper := 55543, witness := RowWitness.topPrime 55529 },
  { lower := 58619, upper := 58660, witness := RowWitness.topPrime 58613 },
  { lower := 62500, upper := 62506, witness := RowWitness.topPrime 62497 },
  { lower := 65610, upper := 65632, witness := RowWitness.topPrime 65609 },
  { lower := 68651, upper := 68686, witness := RowWitness.topPrime 68639 },
  { lower := 68921, upper := 68986, witness := RowWitness.topPrime 68917 },
  { lower := 73205, upper := 73263, witness := RowWitness.topPrime 73189 },
  { lower := 137842, upper := 137877, witness := RowWitness.topPrime 137831 },
  { lower := 148955, upper := 148973, witness := RowWitness.topPrime 148949 }
]

def row097_layers : List CoverLayer := [
  { lower := 9312, upper := 18624, M := 18 },
  { lower := 18624, upper := 37248, M := 14 },
  { lower := 37248, upper := 74496, M := 11 },
  { lower := 74496, upper := 148992, M := 9 },
  { lower := 148992, upper := 297984, M := 7 },
  { lower := 297984, upper := 595968, M := 6 },
  { lower := 595968, upper := 1191936, M := 5 },
  { lower := 1191936, upper := 2383872, M := 4 },
  { lower := 2383872, upper := 4767744, M := 3 },
  { lower := 4767744, upper := 9535488, M := 3 },
  { lower := 9535488, upper := 19070976, M := 2 },
  { lower := 19070976, upper := 38141952, M := 2 },
  { lower := 38141952, upper := 76283904, M := 2 },
  { lower := 76283904, upper := 100000000, M := 1 }
]

def row097 : FiniteCoverRow := {
  height := row097_height,
  goods := row097_goods,
  layers := row097_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_good000_checked :
    goodSegmentCheck 97 32 68
      { lower := 196, upper := 289, witness := RowWitness.topPrime 193 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good001_checked :
    goodSegmentCheck 97 32 68
      { lower := 290, upper := 379, witness := RowWitness.topPrime 283 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good002_checked :
    goodSegmentCheck 97 32 68
      { lower := 380, upper := 475, witness := RowWitness.topPrime 379 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good003_checked :
    goodSegmentCheck 97 32 68
      { lower := 476, upper := 563, witness := RowWitness.topPrime 467 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good004_checked :
    goodSegmentCheck 97 32 68
      { lower := 564, upper := 659, witness := RowWitness.topPrime 563 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good005_checked :
    goodSegmentCheck 97 32 68
      { lower := 660, upper := 755, witness := RowWitness.topPrime 659 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good006_checked :
    goodSegmentCheck 97 32 68
      { lower := 756, upper := 847, witness := RowWitness.topPrime 751 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good007_checked :
    goodSegmentCheck 97 32 68
      { lower := 848, upper := 935, witness := RowWitness.topPrime 839 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good008_checked :
    goodSegmentCheck 97 32 68
      { lower := 936, upper := 1025, witness := RowWitness.topPrime 929 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good009_checked :
    goodSegmentCheck 97 32 68
      { lower := 1026, upper := 1117, witness := RowWitness.topPrime 1021 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good010_checked :
    goodSegmentCheck 97 32 68
      { lower := 1118, upper := 1213, witness := RowWitness.topPrime 1117 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good011_checked :
    goodSegmentCheck 97 32 68
      { lower := 1214, upper := 1309, witness := RowWitness.topPrime 1213 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good012_checked :
    goodSegmentCheck 97 32 68
      { lower := 1310, upper := 1403, witness := RowWitness.topPrime 1307 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good013_checked :
    goodSegmentCheck 97 32 68
      { lower := 1404, upper := 1495, witness := RowWitness.topPrime 1399 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good014_checked :
    goodSegmentCheck 97 32 68
      { lower := 1496, upper := 1589, witness := RowWitness.topPrime 1493 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good015_checked :
    goodSegmentCheck 97 32 68
      { lower := 1590, upper := 1679, witness := RowWitness.topPrime 1583 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_good016_checked :
    goodSegmentCheck 97 32 68
      { lower := 1680, upper := 1765, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good017_checked :
    goodSegmentCheck 97 32 68
      { lower := 1766, upper := 1855, witness := RowWitness.topPrime 1759 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good018_checked :
    goodSegmentCheck 97 32 68
      { lower := 1856, upper := 1943, witness := RowWitness.topPrime 1847 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good019_checked :
    goodSegmentCheck 97 32 68
      { lower := 1944, upper := 2029, witness := RowWitness.topPrime 1933 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good020_checked :
    goodSegmentCheck 97 32 68
      { lower := 2030, upper := 2125, witness := RowWitness.topPrime 2029 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good021_checked :
    goodSegmentCheck 97 32 68
      { lower := 2126, upper := 2209, witness := RowWitness.topPrime 2113 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good022_checked :
    goodSegmentCheck 97 32 68
      { lower := 2210, upper := 2303, witness := RowWitness.topPrime 2207 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good023_checked :
    goodSegmentCheck 97 32 68
      { lower := 2304, upper := 2393, witness := RowWitness.topPrime 2297 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good024_checked :
    goodSegmentCheck 97 32 68
      { lower := 2394, upper := 2489, witness := RowWitness.topPrime 2393 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good025_checked :
    goodSegmentCheck 97 32 68
      { lower := 2490, upper := 2573, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good026_checked :
    goodSegmentCheck 97 32 68
      { lower := 2574, upper := 2653, witness := RowWitness.topPrime 2557 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good027_checked :
    goodSegmentCheck 97 32 68
      { lower := 2654, upper := 2743, witness := RowWitness.topPrime 2647 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good028_checked :
    goodSegmentCheck 97 32 68
      { lower := 2744, upper := 2837, witness := RowWitness.topPrime 2741 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good029_checked :
    goodSegmentCheck 97 32 68
      { lower := 2838, upper := 2933, witness := RowWitness.topPrime 2837 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good030_checked :
    goodSegmentCheck 97 32 68
      { lower := 2934, upper := 3023, witness := RowWitness.topPrime 2927 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good031_checked :
    goodSegmentCheck 97 32 68
      { lower := 3024, upper := 3119, witness := RowWitness.topPrime 3023 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_good032_checked :
    goodSegmentCheck 97 32 68
      { lower := 3120, upper := 3215, witness := RowWitness.topPrime 3119 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good033_checked :
    goodSegmentCheck 97 32 68
      { lower := 3216, upper := 3305, witness := RowWitness.topPrime 3209 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good034_checked :
    goodSegmentCheck 97 32 68
      { lower := 3306, upper := 3397, witness := RowWitness.topPrime 3301 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good035_checked :
    goodSegmentCheck 97 32 68
      { lower := 3398, upper := 3487, witness := RowWitness.topPrime 3391 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good036_checked :
    goodSegmentCheck 97 32 68
      { lower := 3488, upper := 3565, witness := RowWitness.topPrime 3469 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good037_checked :
    goodSegmentCheck 97 32 68
      { lower := 3566, upper := 3655, witness := RowWitness.topPrime 3559 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good038_checked :
    goodSegmentCheck 97 32 68
      { lower := 3656, upper := 3739, witness := RowWitness.topPrime 3643 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good039_checked :
    goodSegmentCheck 97 32 68
      { lower := 3740, upper := 3835, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good040_checked :
    goodSegmentCheck 97 32 68
      { lower := 3836, upper := 3929, witness := RowWitness.topPrime 3833 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good041_checked :
    goodSegmentCheck 97 32 68
      { lower := 3930, upper := 4025, witness := RowWitness.topPrime 3929 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good042_checked :
    goodSegmentCheck 97 32 68
      { lower := 4026, upper := 4117, witness := RowWitness.topPrime 4021 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good043_checked :
    goodSegmentCheck 97 32 68
      { lower := 4118, upper := 4207, witness := RowWitness.topPrime 4111 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good044_checked :
    goodSegmentCheck 97 32 68
      { lower := 4208, upper := 4297, witness := RowWitness.topPrime 4201 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good045_checked :
    goodSegmentCheck 97 32 68
      { lower := 4298, upper := 4393, witness := RowWitness.topPrime 4297 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good046_checked :
    goodSegmentCheck 97 32 68
      { lower := 4394, upper := 4487, witness := RowWitness.topPrime 4391 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good047_checked :
    goodSegmentCheck 97 32 68
      { lower := 4488, upper := 4579, witness := RowWitness.topPrime 4483 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_good048_checked :
    goodSegmentCheck 97 32 68
      { lower := 4580, upper := 4663, witness := RowWitness.topPrime 4567 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good049_checked :
    goodSegmentCheck 97 32 68
      { lower := 4664, upper := 4759, witness := RowWitness.topPrime 4663 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good050_checked :
    goodSegmentCheck 97 32 68
      { lower := 4760, upper := 4855, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good051_checked :
    goodSegmentCheck 97 32 68
      { lower := 4856, upper := 4927, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good052_checked :
    goodSegmentCheck 97 32 68
      { lower := 4928, upper := 5015, witness := RowWitness.topPrime 4919 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good053_checked :
    goodSegmentCheck 97 32 68
      { lower := 5016, upper := 5107, witness := RowWitness.topPrime 5011 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good054_checked :
    goodSegmentCheck 97 32 68
      { lower := 5108, upper := 5203, witness := RowWitness.topPrime 5107 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good055_checked :
    goodSegmentCheck 97 32 68
      { lower := 5204, upper := 5293, witness := RowWitness.topPrime 5197 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good056_checked :
    goodSegmentCheck 97 32 68
      { lower := 5294, upper := 5377, witness := RowWitness.topPrime 5281 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good057_checked :
    goodSegmentCheck 97 32 68
      { lower := 5378, upper := 5447, witness := RowWitness.topPrime 5351 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good058_checked :
    goodSegmentCheck 97 32 68
      { lower := 5448, upper := 5539, witness := RowWitness.topPrime 5443 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good059_checked :
    goodSegmentCheck 97 32 68
      { lower := 5540, upper := 5627, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good060_checked :
    goodSegmentCheck 97 32 68
      { lower := 5628, upper := 5719, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good061_checked :
    goodSegmentCheck 97 32 68
      { lower := 5720, upper := 5813, witness := RowWitness.topPrime 5717 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good062_checked :
    goodSegmentCheck 97 32 68
      { lower := 5814, upper := 5909, witness := RowWitness.topPrime 5813 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good063_checked :
    goodSegmentCheck 97 32 68
      { lower := 5910, upper := 5999, witness := RowWitness.topPrime 5903 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_good064_checked :
    goodSegmentCheck 97 32 68
      { lower := 6000, upper := 6083, witness := RowWitness.topPrime 5987 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good065_checked :
    goodSegmentCheck 97 32 68
      { lower := 6084, upper := 6175, witness := RowWitness.topPrime 6079 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good066_checked :
    goodSegmentCheck 97 32 68
      { lower := 6176, upper := 6269, witness := RowWitness.topPrime 6173 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good067_checked :
    goodSegmentCheck 97 32 68
      { lower := 6270, upper := 6365, witness := RowWitness.topPrime 6269 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good068_checked :
    goodSegmentCheck 97 32 68
      { lower := 6366, upper := 6457, witness := RowWitness.topPrime 6361 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good069_checked :
    goodSegmentCheck 97 32 68
      { lower := 6458, upper := 6547, witness := RowWitness.topPrime 6451 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good070_checked :
    goodSegmentCheck 97 32 68
      { lower := 6548, upper := 6643, witness := RowWitness.topPrime 6547 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good071_checked :
    goodSegmentCheck 97 32 68
      { lower := 6644, upper := 6733, witness := RowWitness.topPrime 6637 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good072_checked :
    goodSegmentCheck 97 32 68
      { lower := 6734, upper := 6829, witness := RowWitness.topPrime 6733 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good073_checked :
    goodSegmentCheck 97 32 68
      { lower := 6830, upper := 6925, witness := RowWitness.topPrime 6829 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good074_checked :
    goodSegmentCheck 97 32 68
      { lower := 6926, upper := 7013, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good075_checked :
    goodSegmentCheck 97 32 68
      { lower := 7014, upper := 7109, witness := RowWitness.topPrime 7013 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good076_checked :
    goodSegmentCheck 97 32 68
      { lower := 7110, upper := 7205, witness := RowWitness.topPrime 7109 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good077_checked :
    goodSegmentCheck 97 32 68
      { lower := 7206, upper := 7289, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good078_checked :
    goodSegmentCheck 97 32 68
      { lower := 7290, upper := 7379, witness := RowWitness.topPrime 7283 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good079_checked :
    goodSegmentCheck 97 32 68
      { lower := 7380, upper := 7465, witness := RowWitness.topPrime 7369 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_good080_checked :
    goodSegmentCheck 97 32 68
      { lower := 7466, upper := 7555, witness := RowWitness.topPrime 7459 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good081_checked :
    goodSegmentCheck 97 32 68
      { lower := 7556, upper := 7645, witness := RowWitness.topPrime 7549 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good082_checked :
    goodSegmentCheck 97 32 68
      { lower := 7646, upper := 7739, witness := RowWitness.topPrime 7643 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good083_checked :
    goodSegmentCheck 97 32 68
      { lower := 7740, upper := 7823, witness := RowWitness.topPrime 7727 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good084_checked :
    goodSegmentCheck 97 32 68
      { lower := 7824, upper := 7919, witness := RowWitness.topPrime 7823 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good085_checked :
    goodSegmentCheck 97 32 68
      { lower := 7920, upper := 8015, witness := RowWitness.topPrime 7919 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good086_checked :
    goodSegmentCheck 97 32 68
      { lower := 8016, upper := 8107, witness := RowWitness.topPrime 8011 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good087_checked :
    goodSegmentCheck 97 32 68
      { lower := 8108, upper := 8197, witness := RowWitness.topPrime 8101 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good088_checked :
    goodSegmentCheck 97 32 68
      { lower := 8198, upper := 8287, witness := RowWitness.topPrime 8191 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good089_checked :
    goodSegmentCheck 97 32 68
      { lower := 8288, upper := 8383, witness := RowWitness.topPrime 8287 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good090_checked :
    goodSegmentCheck 97 32 68
      { lower := 8384, upper := 8473, witness := RowWitness.topPrime 8377 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good091_checked :
    goodSegmentCheck 97 32 68
      { lower := 8474, upper := 8563, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good092_checked :
    goodSegmentCheck 97 32 68
      { lower := 8564, upper := 8659, witness := RowWitness.topPrime 8563 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good093_checked :
    goodSegmentCheck 97 32 68
      { lower := 8660, upper := 8743, witness := RowWitness.topPrime 8647 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good094_checked :
    goodSegmentCheck 97 32 68
      { lower := 8744, upper := 8837, witness := RowWitness.topPrime 8741 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good095_checked :
    goodSegmentCheck 97 32 68
      { lower := 8838, upper := 8933, witness := RowWitness.topPrime 8837 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_good096_checked :
    goodSegmentCheck 97 32 68
      { lower := 8934, upper := 9029, witness := RowWitness.topPrime 8933 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good097_checked :
    goodSegmentCheck 97 32 68
      { lower := 9030, upper := 9125, witness := RowWitness.topPrime 9029 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good098_checked :
    goodSegmentCheck 97 32 68
      { lower := 9126, upper := 9205, witness := RowWitness.topPrime 9109 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good099_checked :
    goodSegmentCheck 97 32 68
      { lower := 9206, upper := 9299, witness := RowWitness.topPrime 9203 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good100_checked :
    goodSegmentCheck 97 32 68
      { lower := 9300, upper := 9347, witness := RowWitness.topPrime 9293 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good101_checked :
    goodSegmentCheck 97 32 68
      { lower := 9375, upper := 9413, witness := RowWitness.topPrime 9371 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good102_checked :
    goodSegmentCheck 97 32 68
      { lower := 9522, upper := 9573, witness := RowWitness.topPrime 9521 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good103_checked :
    goodSegmentCheck 97 32 68
      { lower := 9583, upper := 9647, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good104_checked :
    goodSegmentCheck 97 32 68
      { lower := 9648, upper := 9700, witness := RowWitness.topPrime 9643 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good105_checked :
    goodSegmentCheck 97 32 68
      { lower := 10082, upper := 10175, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good106_checked :
    goodSegmentCheck 97 32 68
      { lower := 10176, upper := 10182, witness := RowWitness.topPrime 10169 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good107_checked :
    goodSegmentCheck 97 32 68
      { lower := 10240, upper := 10302, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good108_checked :
    goodSegmentCheck 97 32 68
      { lower := 10625, upper := 10709, witness := RowWitness.topPrime 10613 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good109_checked :
    goodSegmentCheck 97 32 68
      { lower := 10710, upper := 10744, witness := RowWitness.topPrime 10709 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good110_checked :
    goodSegmentCheck 97 32 68
      { lower := 10935, upper := 11005, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good111_checked :
    goodSegmentCheck 97 32 68
      { lower := 11006, upper := 11081, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_good112_checked :
    goodSegmentCheck 97 32 68
      { lower := 11094, upper := 11141, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good113_checked :
    goodSegmentCheck 97 32 68
      { lower := 11163, upper := 11190, witness := RowWitness.topPrime 11161 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good114_checked :
    goodSegmentCheck 97 32 68
      { lower := 11236, upper := 11309, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good115_checked :
    goodSegmentCheck 97 32 68
      { lower := 11310, upper := 11346, witness := RowWitness.topPrime 11299 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good116_checked :
    goodSegmentCheck 97 32 68
      { lower := 11774, upper := 11839, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good117_checked :
    goodSegmentCheck 97 32 68
      { lower := 11840, upper := 11863, witness := RowWitness.topPrime 11839 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good118_checked :
    goodSegmentCheck 97 32 68
      { lower := 12005, upper := 12075, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good119_checked :
    goodSegmentCheck 97 32 68
      { lower := 12321, upper := 12384, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good120_checked :
    goodSegmentCheck 97 32 68
      { lower := 12393, upper := 12417, witness := RowWitness.topPrime 12391 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good121_checked :
    goodSegmentCheck 97 32 68
      { lower := 12482, upper := 12489, witness := RowWitness.topPrime 12479 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good122_checked :
    goodSegmentCheck 97 32 68
      { lower := 12493, upper := 12587, witness := RowWitness.topPrime 12491 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good123_checked :
    goodSegmentCheck 97 32 68
      { lower := 12588, upper := 12589, witness := RowWitness.topPrime 12583 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good124_checked :
    goodSegmentCheck 97 32 68
      { lower := 13182, upper := 13218, witness := RowWitness.topPrime 13177 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good125_checked :
    goodSegmentCheck 97 32 68
      { lower := 13254, upper := 13278, witness := RowWitness.topPrime 13249 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good126_checked :
    goodSegmentCheck 97 32 68
      { lower := 13310, upper := 13405, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good127_checked :
    goodSegmentCheck 97 32 68
      { lower := 13406, upper := 13406, witness := RowWitness.topPrime 13399 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_good128_checked :
    goodSegmentCheck 97 32 68
      { lower := 13454, upper := 13547, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good129_checked :
    goodSegmentCheck 97 32 68
      { lower := 13548, upper := 13552, witness := RowWitness.topPrime 13537 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good130_checked :
    goodSegmentCheck 97 32 68
      { lower := 13718, upper := 13807, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good131_checked :
    goodSegmentCheck 97 32 68
      { lower := 13808, upper := 13814, witness := RowWitness.topPrime 13807 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good132_checked :
    goodSegmentCheck 97 32 68
      { lower := 14336, upper := 14393, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good133_checked :
    goodSegmentCheck 97 32 68
      { lower := 14406, upper := 14497, witness := RowWitness.topPrime 14401 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good134_checked :
    goodSegmentCheck 97 32 68
      { lower := 14498, upper := 14502, witness := RowWitness.topPrime 14489 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good135_checked :
    goodSegmentCheck 97 32 68
      { lower := 14792, upper := 14835, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good136_checked :
    goodSegmentCheck 97 32 68
      { lower := 14884, upper := 14888, witness := RowWitness.topPrime 14879 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good137_checked :
    goodSegmentCheck 97 32 68
      { lower := 15123, upper := 15217, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good138_checked :
    goodSegmentCheck 97 32 68
      { lower := 15218, upper := 15225, witness := RowWitness.topPrime 15217 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good139_checked :
    goodSegmentCheck 97 32 68
      { lower := 15360, upper := 15455, witness := RowWitness.topPrime 15359 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good140_checked :
    goodSegmentCheck 97 32 68
      { lower := 15456, upper := 15475, witness := RowWitness.topPrime 15451 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good141_checked :
    goodSegmentCheck 97 32 68
      { lower := 15987, upper := 16068, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good142_checked :
    goodSegmentCheck 97 32 68
      { lower := 16384, upper := 16477, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good143_checked :
    goodSegmentCheck 97 32 68
      { lower := 16478, upper := 16480, witness := RowWitness.topPrime 16477 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_good144_checked :
    goodSegmentCheck 97 32 68
      { lower := 16810, upper := 16883, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good145_checked :
    goodSegmentCheck 97 32 68
      { lower := 16884, upper := 16906, witness := RowWitness.topPrime 16883 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good146_checked :
    goodSegmentCheck 97 32 68
      { lower := 17303, upper := 17394, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good147_checked :
    goodSegmentCheck 97 32 68
      { lower := 17408, upper := 17497, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good148_checked :
    goodSegmentCheck 97 32 68
      { lower := 17498, upper := 17504, witness := RowWitness.topPrime 17497 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good149_checked :
    goodSegmentCheck 97 32 68
      { lower := 17576, upper := 17592, witness := RowWitness.topPrime 17573 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good150_checked :
    goodSegmentCheck 97 32 68
      { lower := 17672, upper := 17672, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good151_checked :
    goodSegmentCheck 97 32 68
      { lower := 18490, upper := 18577, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good152_checked :
    goodSegmentCheck 97 32 68
      { lower := 18578, upper := 18586, witness := RowWitness.topPrime 18553 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good153_checked :
    goodSegmentCheck 97 32 68
      { lower := 18634, upper := 18701, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good154_checked :
    goodSegmentCheck 97 32 68
      { lower := 18723, upper := 18730, witness := RowWitness.topPrime 18719 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good155_checked :
    goodSegmentCheck 97 32 68
      { lower := 18750, upper := 18819, witness := RowWitness.topPrime 18749 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good156_checked :
    goodSegmentCheck 97 32 68
      { lower := 19208, upper := 19262, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good157_checked :
    goodSegmentCheck 97 32 68
      { lower := 19663, upper := 19757, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good158_checked :
    goodSegmentCheck 97 32 68
      { lower := 19758, upper := 19759, witness := RowWitness.topPrime 19753 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good159_checked :
    goodSegmentCheck 97 32 68
      { lower := 19773, upper := 19779, witness := RowWitness.topPrime 19763 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_good160_checked :
    goodSegmentCheck 97 32 68
      { lower := 20172, upper := 20257, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good161_checked :
    goodSegmentCheck 97 32 68
      { lower := 20258, upper := 20260, witness := RowWitness.topPrime 20249 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good162_checked :
    goodSegmentCheck 97 32 68
      { lower := 20667, upper := 20673, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good163_checked :
    goodSegmentCheck 97 32 68
      { lower := 21870, upper := 21959, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good164_checked :
    goodSegmentCheck 97 32 68
      { lower := 21960, upper := 21966, witness := RowWitness.topPrime 21943 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good165_checked :
    goodSegmentCheck 97 32 68
      { lower := 21970, upper := 21971, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good166_checked :
    goodSegmentCheck 97 32 68
      { lower := 22472, upper := 22565, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good167_checked :
    goodSegmentCheck 97 32 68
      { lower := 22566, upper := 22568, witness := RowWitness.topPrime 22549 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good168_checked :
    goodSegmentCheck 97 32 68
      { lower := 24037, upper := 24125, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good169_checked :
    goodSegmentCheck 97 32 68
      { lower := 24126, upper := 24133, witness := RowWitness.topPrime 24121 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good170_checked :
    goodSegmentCheck 97 32 68
      { lower := 24334, upper := 24425, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good171_checked :
    goodSegmentCheck 97 32 68
      { lower := 24426, upper := 24463, witness := RowWitness.topPrime 24421 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good172_checked :
    goodSegmentCheck 97 32 68
      { lower := 24576, upper := 24661, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good173_checked :
    goodSegmentCheck 97 32 68
      { lower := 25000, upper := 25060, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good174_checked :
    goodSegmentCheck 97 32 68
      { lower := 25281, upper := 25301, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good175_checked :
    goodSegmentCheck 97 32 68
      { lower := 26411, upper := 26460, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_good176_checked :
    goodSegmentCheck 97 32 68
      { lower := 26645, upper := 26720, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good177_checked :
    goodSegmentCheck 97 32 68
      { lower := 28125, upper := 28186, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good178_checked :
    goodSegmentCheck 97 32 68
      { lower := 28717, upper := 28768, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good179_checked :
    goodSegmentCheck 97 32 68
      { lower := 28812, upper := 28813, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good180_checked :
    goodSegmentCheck 97 32 68
      { lower := 29791, upper := 29864, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good181_checked :
    goodSegmentCheck 97 32 68
      { lower := 30926, upper := 30995, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good182_checked :
    goodSegmentCheck 97 32 68
      { lower := 31213, upper := 31289, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good183_checked :
    goodSegmentCheck 97 32 68
      { lower := 31290, upper := 31309, witness := RowWitness.topPrime 31277 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good184_checked :
    goodSegmentCheck 97 32 68
      { lower := 31329, upper := 31346, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good185_checked :
    goodSegmentCheck 97 32 68
      { lower := 31423, upper := 31425, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good186_checked :
    goodSegmentCheck 97 32 68
      { lower := 32805, upper := 32864, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good187_checked :
    goodSegmentCheck 97 32 68
      { lower := 33708, upper := 33710, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good188_checked :
    goodSegmentCheck 97 32 68
      { lower := 34375, upper := 34465, witness := RowWitness.topPrime 34369 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good189_checked :
    goodSegmentCheck 97 32 68
      { lower := 34466, upper := 34487, witness := RowWitness.topPrime 34457 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good190_checked :
    goodSegmentCheck 97 32 68
      { lower := 36517, upper := 36593, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good191_checked :
    goodSegmentCheck 97 32 68
      { lower := 36594, upper := 36597, witness := RowWitness.topPrime 36587 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_good192_checked :
    goodSegmentCheck 97 32 68
      { lower := 37303, upper := 37306, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good193_checked :
    goodSegmentCheck 97 32 68
      { lower := 39366, upper := 39400, witness := RowWitness.topPrime 39359 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good194_checked :
    goodSegmentCheck 97 32 68
      { lower := 40401, upper := 40424, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good195_checked :
    goodSegmentCheck 97 32 68
      { lower := 40960, upper := 41027, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good196_checked :
    goodSegmentCheck 97 32 68
      { lower := 48013, upper := 48057, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good197_checked :
    goodSegmentCheck 97 32 68
      { lower := 49152, upper := 49226, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good198_checked :
    goodSegmentCheck 97 32 68
      { lower := 50421, upper := 50506, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good199_checked :
    goodSegmentCheck 97 32 68
      { lower := 55451, upper := 55537, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good200_checked :
    goodSegmentCheck 97 32 68
      { lower := 55538, upper := 55543, witness := RowWitness.topPrime 55529 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good201_checked :
    goodSegmentCheck 97 32 68
      { lower := 58619, upper := 58660, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good202_checked :
    goodSegmentCheck 97 32 68
      { lower := 62500, upper := 62506, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good203_checked :
    goodSegmentCheck 97 32 68
      { lower := 65610, upper := 65632, witness := RowWitness.topPrime 65609 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good204_checked :
    goodSegmentCheck 97 32 68
      { lower := 68651, upper := 68686, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good205_checked :
    goodSegmentCheck 97 32 68
      { lower := 68921, upper := 68986, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good206_checked :
    goodSegmentCheck 97 32 68
      { lower := 73205, upper := 73263, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row097_good207_checked :
    goodSegmentCheck 97 32 68
      { lower := 137842, upper := 137877, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_good208_checked :
    goodSegmentCheck 97 32 68
      { lower := 148955, upper := 148973, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good208_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_goods_checked :
    row097.goods.all (goodSegmentCheck row097.height.i row097.height.r row097.height.s) = true := by
  change row097_goods.all (goodSegmentCheck 97 32 68) = true
  simp only [row097_goods, List.all_cons, List.all_nil,
    row097_good000_checked,
    row097_good001_checked,
    row097_good002_checked,
    row097_good003_checked,
    row097_good004_checked,
    row097_good005_checked,
    row097_good006_checked,
    row097_good007_checked,
    row097_good008_checked,
    row097_good009_checked,
    row097_good010_checked,
    row097_good011_checked,
    row097_good012_checked,
    row097_good013_checked,
    row097_good014_checked,
    row097_good015_checked,
    row097_good016_checked,
    row097_good017_checked,
    row097_good018_checked,
    row097_good019_checked,
    row097_good020_checked,
    row097_good021_checked,
    row097_good022_checked,
    row097_good023_checked,
    row097_good024_checked,
    row097_good025_checked,
    row097_good026_checked,
    row097_good027_checked,
    row097_good028_checked,
    row097_good029_checked,
    row097_good030_checked,
    row097_good031_checked,
    row097_good032_checked,
    row097_good033_checked,
    row097_good034_checked,
    row097_good035_checked,
    row097_good036_checked,
    row097_good037_checked,
    row097_good038_checked,
    row097_good039_checked,
    row097_good040_checked,
    row097_good041_checked,
    row097_good042_checked,
    row097_good043_checked,
    row097_good044_checked,
    row097_good045_checked,
    row097_good046_checked,
    row097_good047_checked,
    row097_good048_checked,
    row097_good049_checked,
    row097_good050_checked,
    row097_good051_checked,
    row097_good052_checked,
    row097_good053_checked,
    row097_good054_checked,
    row097_good055_checked,
    row097_good056_checked,
    row097_good057_checked,
    row097_good058_checked,
    row097_good059_checked,
    row097_good060_checked,
    row097_good061_checked,
    row097_good062_checked,
    row097_good063_checked,
    row097_good064_checked,
    row097_good065_checked,
    row097_good066_checked,
    row097_good067_checked,
    row097_good068_checked,
    row097_good069_checked,
    row097_good070_checked,
    row097_good071_checked,
    row097_good072_checked,
    row097_good073_checked,
    row097_good074_checked,
    row097_good075_checked,
    row097_good076_checked,
    row097_good077_checked,
    row097_good078_checked,
    row097_good079_checked,
    row097_good080_checked,
    row097_good081_checked,
    row097_good082_checked,
    row097_good083_checked,
    row097_good084_checked,
    row097_good085_checked,
    row097_good086_checked,
    row097_good087_checked,
    row097_good088_checked,
    row097_good089_checked,
    row097_good090_checked,
    row097_good091_checked,
    row097_good092_checked,
    row097_good093_checked,
    row097_good094_checked,
    row097_good095_checked,
    row097_good096_checked,
    row097_good097_checked,
    row097_good098_checked,
    row097_good099_checked,
    row097_good100_checked,
    row097_good101_checked,
    row097_good102_checked,
    row097_good103_checked,
    row097_good104_checked,
    row097_good105_checked,
    row097_good106_checked,
    row097_good107_checked,
    row097_good108_checked,
    row097_good109_checked,
    row097_good110_checked,
    row097_good111_checked,
    row097_good112_checked,
    row097_good113_checked,
    row097_good114_checked,
    row097_good115_checked,
    row097_good116_checked,
    row097_good117_checked,
    row097_good118_checked,
    row097_good119_checked,
    row097_good120_checked,
    row097_good121_checked,
    row097_good122_checked,
    row097_good123_checked,
    row097_good124_checked,
    row097_good125_checked,
    row097_good126_checked,
    row097_good127_checked,
    row097_good128_checked,
    row097_good129_checked,
    row097_good130_checked,
    row097_good131_checked,
    row097_good132_checked,
    row097_good133_checked,
    row097_good134_checked,
    row097_good135_checked,
    row097_good136_checked,
    row097_good137_checked,
    row097_good138_checked,
    row097_good139_checked,
    row097_good140_checked,
    row097_good141_checked,
    row097_good142_checked,
    row097_good143_checked,
    row097_good144_checked,
    row097_good145_checked,
    row097_good146_checked,
    row097_good147_checked,
    row097_good148_checked,
    row097_good149_checked,
    row097_good150_checked,
    row097_good151_checked,
    row097_good152_checked,
    row097_good153_checked,
    row097_good154_checked,
    row097_good155_checked,
    row097_good156_checked,
    row097_good157_checked,
    row097_good158_checked,
    row097_good159_checked,
    row097_good160_checked,
    row097_good161_checked,
    row097_good162_checked,
    row097_good163_checked,
    row097_good164_checked,
    row097_good165_checked,
    row097_good166_checked,
    row097_good167_checked,
    row097_good168_checked,
    row097_good169_checked,
    row097_good170_checked,
    row097_good171_checked,
    row097_good172_checked,
    row097_good173_checked,
    row097_good174_checked,
    row097_good175_checked,
    row097_good176_checked,
    row097_good177_checked,
    row097_good178_checked,
    row097_good179_checked,
    row097_good180_checked,
    row097_good181_checked,
    row097_good182_checked,
    row097_good183_checked,
    row097_good184_checked,
    row097_good185_checked,
    row097_good186_checked,
    row097_good187_checked,
    row097_good188_checked,
    row097_good189_checked,
    row097_good190_checked,
    row097_good191_checked,
    row097_good192_checked,
    row097_good193_checked,
    row097_good194_checked,
    row097_good195_checked,
    row097_good196_checked,
    row097_good197_checked,
    row097_good198_checked,
    row097_good199_checked,
    row097_good200_checked,
    row097_good201_checked,
    row097_good202_checked,
    row097_good203_checked,
    row097_good204_checked,
    row097_good205_checked,
    row097_good206_checked,
    row097_good207_checked,
    row097_good208_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_registered :
    decide (row097.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row097_small_checked :
    coverCheck (2 * row097.height.i + 2) (row097.height.i * (row097.height.i - 1) - 1)
      (row097.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row097_layerCover_checked :
    coverCheck (row097.height.i * (row097.height.i - 1)) (row097.height.n0 - 1)
      (row097.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row097_bounds : List NatInterval :=
  [(196, 289), (290, 379), (380, 475), (476, 563), (564, 659), (660, 755), (756, 847), (848, 935), (936, 1025), (1026, 1117), (1118, 1213), (1214, 1309), (1310, 1403), (1404, 1495), (1496, 1589), (1590, 1679), (1680, 1765), (1766, 1855), (1856, 1943), (1944, 2029), (2030, 2125), (2126, 2209), (2210, 2303), (2304, 2393), (2394, 2489), (2490, 2573), (2574, 2653), (2654, 2743), (2744, 2837), (2838, 2933), (2934, 3023), (3024, 3119), (3120, 3215), (3216, 3305), (3306, 3397), (3398, 3487), (3488, 3565), (3566, 3655), (3656, 3739), (3740, 3835), (3836, 3929), (3930, 4025), (4026, 4117), (4118, 4207), (4208, 4297), (4298, 4393), (4394, 4487), (4488, 4579), (4580, 4663), (4664, 4759), (4760, 4855), (4856, 4927), (4928, 5015), (5016, 5107), (5108, 5203), (5204, 5293), (5294, 5377), (5378, 5447), (5448, 5539), (5540, 5627), (5628, 5719), (5720, 5813), (5814, 5909), (5910, 5999), (6000, 6083), (6084, 6175), (6176, 6269), (6270, 6365), (6366, 6457), (6458, 6547), (6548, 6643), (6644, 6733), (6734, 6829), (6830, 6925), (6926, 7013), (7014, 7109), (7110, 7205), (7206, 7289), (7290, 7379), (7380, 7465), (7466, 7555), (7556, 7645), (7646, 7739), (7740, 7823), (7824, 7919), (7920, 8015), (8016, 8107), (8108, 8197), (8198, 8287), (8288, 8383), (8384, 8473), (8474, 8563), (8564, 8659), (8660, 8743), (8744, 8837), (8838, 8933), (8934, 9029), (9030, 9125), (9126, 9205), (9206, 9299), (9300, 9347), (9375, 9413), (9522, 9573), (9583, 9647), (9648, 9700), (10082, 10175), (10176, 10182), (10240, 10302), (10625, 10709), (10710, 10744), (10935, 11005), (11006, 11081), (11094, 11141), (11163, 11190), (11236, 11309), (11310, 11346), (11774, 11839), (11840, 11863), (12005, 12075), (12321, 12384), (12393, 12417), (12482, 12489), (12493, 12587), (12588, 12589), (13182, 13218), (13254, 13278), (13310, 13405), (13406, 13406), (13454, 13547), (13548, 13552), (13718, 13807), (13808, 13814), (14336, 14393), (14406, 14497), (14498, 14502), (14792, 14835), (14884, 14888), (15123, 15217), (15218, 15225), (15360, 15455), (15456, 15475), (15987, 16068), (16384, 16477), (16478, 16480), (16810, 16883), (16884, 16906), (17303, 17394), (17408, 17497), (17498, 17504), (17576, 17592), (17672, 17672), (18490, 18577), (18578, 18586), (18634, 18701), (18723, 18730), (18750, 18819), (19208, 19262), (19663, 19757), (19758, 19759), (19773, 19779), (20172, 20257), (20258, 20260), (20667, 20673), (21870, 21959), (21960, 21966), (21970, 21971), (22472, 22565), (22566, 22568), (24037, 24125), (24126, 24133), (24334, 24425), (24426, 24463), (24576, 24661), (25000, 25060), (25281, 25301), (26411, 26460), (26645, 26720), (28125, 28186), (28717, 28768), (28812, 28813), (29791, 29864), (30926, 30995), (31213, 31289), (31290, 31309), (31329, 31346), (31423, 31425), (32805, 32864), (33708, 33710), (34375, 34465), (34466, 34487), (36517, 36593), (36594, 36597), (37303, 37306), (39366, 39400), (40401, 40424), (40960, 41027), (48013, 48057), (49152, 49226), (50421, 50506), (55451, 55537), (55538, 55543), (58619, 58660), (62500, 62506), (65610, 65632), (68651, 68686), (68921, 68986), (73205, 73263), (137842, 137877), (148955, 148973)]

theorem row097_bounds_eq : row097.goods.map goodSegmentBounds = row097_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row097_layer000_intervals : List ColouredInterval :=
  [(2, 9312, 9312), (2, 9312, 9312), (2, 10240, 10336), (2, 11264, 11360), (2, 12288, 12384), (2, 13312, 13408), (2, 14336, 14432), (2, 15360, 15456), (2, 16384, 16480), (2, 17408, 17504), (2, 18432, 18528), (2, 10240, 10336), (2, 12288, 12384), (2, 14336, 14432), (2, 16384, 16480), (2, 18432, 18528), (2, 12288, 12384), (2, 16384, 16480), (2, 16384, 16480), (2, 16384, 16480), (3, 9477, 9573), (3, 10206, 10302), (3, 10935, 11031), (3, 11664, 11760), (3, 12393, 12489), (3, 13122, 13218), (3, 10935, 11031), (3, 13122, 13218), (3, 15309, 15405), (3, 17496, 17592), (3, 13122, 13218), (5, 9375, 9471), (5, 10000, 10096), (5, 10625, 10721), (5, 11250, 11346), (5, 9375, 9471), (5, 12500, 12596), (5, 15625, 15721), (5, 15625, 15721), (7, 9604, 9700), (7, 12005, 12101), (7, 14406, 14502), (7, 16807, 16903), (7, 16807, 16903), (11, 9317, 9413), (11, 10648, 10744), (11, 11979, 12075), (11, 13310, 13406), (11, 14641, 14737), (11, 15972, 16068), (11, 17303, 17399), (11, 14641, 14737), (13, 10985, 11081), (13, 13182, 13278), (13, 15379, 15475), (13, 17576, 17672), (17, 9826, 9922), (17, 14739, 14835), (19, 13718, 13814), (23, 9522, 9618), (23, 12167, 12263), (29, 9312, 9347), (29, 10092, 10188), (29, 10933, 11029), (29, 11774, 11870), (29, 12615, 12711), (29, 13456, 13552), (29, 14297, 14393), (29, 15138, 15234), (31, 9610, 9706), (31, 10571, 10667), (31, 11532, 11628), (31, 12493, 12589), (31, 13454, 13550), (31, 14415, 14511), (31, 15376, 15472), (31, 16337, 16433), (31, 17298, 17394), (37, 9583, 9679), (37, 10952, 11048), (37, 12321, 12417), (37, 13690, 13786), (37, 15059, 15155), (37, 16428, 16524), (37, 17797, 17893), (41, 10086, 10182), (41, 11767, 11863), (41, 13448, 13544), (41, 15129, 15225), (41, 16810, 16906), (41, 18491, 18587), (43, 9312, 9341), (43, 11094, 11190), (43, 12943, 13039), (43, 14792, 14888), (43, 16641, 16737), (43, 18490, 18586), (47, 11045, 11141), (47, 13254, 13350), (47, 15463, 15559), (47, 17672, 17768), (53, 11236, 11332), (53, 14045, 14141), (53, 16854, 16950), (59, 10443, 10539), (59, 13924, 14020), (59, 17405, 17501), (61, 11163, 11259), (61, 14884, 14980), (61, 18605, 18623), (67, 13467, 13563), (67, 17956, 18052), (71, 10082, 10178), (71, 15123, 15219), (73, 10658, 10754), (73, 15987, 16083), (79, 12482, 12578), (83, 13778, 13874), (89, 15842, 15938)]

def row097_layer000_block000 : List ColouredInterval :=
  [(2, 9312, 9312), (2, 9312, 9312), (2, 10240, 10336), (2, 11264, 11360), (2, 12288, 12384), (2, 13312, 13408), (2, 14336, 14432), (2, 15360, 15456), (2, 16384, 16480), (2, 17408, 17504), (2, 18432, 18528), (2, 10240, 10336), (2, 12288, 12384), (2, 14336, 14432), (2, 16384, 16480), (2, 18432, 18528)]

def row097_layer000_block001 : List ColouredInterval :=
  [(2, 12288, 12384), (2, 16384, 16480), (2, 16384, 16480), (2, 16384, 16480), (3, 9477, 9573), (3, 10206, 10302), (3, 10935, 11031), (3, 11664, 11760), (3, 12393, 12489), (3, 13122, 13218), (3, 10935, 11031), (3, 13122, 13218), (3, 15309, 15405), (3, 17496, 17592), (3, 13122, 13218), (5, 9375, 9471)]

def row097_layer000_block002 : List ColouredInterval :=
  [(5, 10000, 10096), (5, 10625, 10721), (5, 11250, 11346), (5, 9375, 9471), (5, 12500, 12596), (5, 15625, 15721), (5, 15625, 15721), (7, 9604, 9700), (7, 12005, 12101), (7, 14406, 14502), (7, 16807, 16903), (7, 16807, 16903), (11, 9317, 9413), (11, 10648, 10744), (11, 11979, 12075), (11, 13310, 13406)]

def row097_layer000_block003 : List ColouredInterval :=
  [(11, 14641, 14737), (11, 15972, 16068), (11, 17303, 17399), (11, 14641, 14737), (13, 10985, 11081), (13, 13182, 13278), (13, 15379, 15475), (13, 17576, 17672), (17, 9826, 9922), (17, 14739, 14835), (19, 13718, 13814), (23, 9522, 9618), (23, 12167, 12263), (29, 9312, 9347), (29, 10092, 10188), (29, 10933, 11029)]

def row097_layer000_block004 : List ColouredInterval :=
  [(29, 11774, 11870), (29, 12615, 12711), (29, 13456, 13552), (29, 14297, 14393), (29, 15138, 15234), (31, 9610, 9706), (31, 10571, 10667), (31, 11532, 11628), (31, 12493, 12589), (31, 13454, 13550), (31, 14415, 14511), (31, 15376, 15472), (31, 16337, 16433), (31, 17298, 17394), (37, 9583, 9679), (37, 10952, 11048)]

def row097_layer000_block005 : List ColouredInterval :=
  [(37, 12321, 12417), (37, 13690, 13786), (37, 15059, 15155), (37, 16428, 16524), (37, 17797, 17893), (41, 10086, 10182), (41, 11767, 11863), (41, 13448, 13544), (41, 15129, 15225), (41, 16810, 16906), (41, 18491, 18587), (43, 9312, 9341), (43, 11094, 11190), (43, 12943, 13039), (43, 14792, 14888), (43, 16641, 16737)]

def row097_layer000_block006 : List ColouredInterval :=
  [(43, 18490, 18586), (47, 11045, 11141), (47, 13254, 13350), (47, 15463, 15559), (47, 17672, 17768), (53, 11236, 11332), (53, 14045, 14141), (53, 16854, 16950), (59, 10443, 10539), (59, 13924, 14020), (59, 17405, 17501), (61, 11163, 11259), (61, 14884, 14980), (61, 18605, 18623), (67, 13467, 13563), (67, 17956, 18052)]

def row097_layer000_block007 : List ColouredInterval :=
  [(71, 10082, 10178), (71, 15123, 15219), (73, 10658, 10754), (73, 15987, 16083), (79, 12482, 12578), (83, 13778, 13874), (89, 15842, 15938)]

def row097_layer000_chunks : List (List ColouredInterval) :=
  [row097_layer000_block000, row097_layer000_block001, row097_layer000_block002, row097_layer000_block003, row097_layer000_block004, row097_layer000_block005, row097_layer000_block006, row097_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layer000_arithmetic : LayerArithmeticValid row097.height { lower := 9312, upper := 18624, M := 18 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layer000_enumeration :
    activePowerIntervalList 97 18 9312 18624 = row097_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layer000_pairs000 :
    row097_layer000_block000.all (fun I => row097_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row097_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layer000_pairs001 :
    row097_layer000_block001.all (fun I => row097_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row097_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layer000_pairs002 :
    row097_layer000_block002.all (fun I => row097_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row097_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layer000_pairs003 :
    row097_layer000_block003.all (fun I => row097_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row097_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layer000_pairs004 :
    row097_layer000_block004.all (fun I => row097_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row097_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layer000_pairs005 :
    row097_layer000_block005.all (fun I => row097_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row097_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layer000_pairs006 :
    row097_layer000_block006.all (fun I => row097_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row097_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layer000_pairs007 :
    row097_layer000_block007.all (fun I => row097_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row097_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layer000_chunks_eq : row097_layer000_chunks.flatten = row097_layer000_intervals := by
  rfl

theorem row097_layer000_pairs : pairCoverCheck row097_layer000_intervals row097_bounds = true := by
  apply pairCoverCheck_of_chunks row097_layer000_chunks_eq
  intro block hblock
  simp only [row097_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row097_layer000_pairs000
  · exact row097_layer000_pairs001
  · exact row097_layer000_pairs002
  · exact row097_layer000_pairs003
  · exact row097_layer000_pairs004
  · exact row097_layer000_pairs005
  · exact row097_layer000_pairs006
  · exact row097_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layer000_checked :
    coverLayerCheck row097.height row097.goods { lower := 9312, upper := 18624, M := 18 } = true := by
  exact coverLayerCheck_of_parts row097_layer000_arithmetic row097_layer000_enumeration row097_bounds_eq row097_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row097_layer001_intervals : List ColouredInterval :=
  [(2, 20480, 20576), (2, 22528, 22624), (2, 24576, 24672), (2, 26624, 26720), (2, 28672, 28768), (2, 20480, 20576), (2, 24576, 24672), (2, 28672, 28768), (2, 32768, 32864), (2, 36864, 36960), (2, 24576, 24672), (2, 32768, 32864), (2, 32768, 32864), (2, 32768, 32864), (3, 19683, 19779), (3, 21870, 21966), (3, 24057, 24153), (3, 26244, 26340), (3, 28431, 28527), (3, 30618, 30714), (3, 19683, 19779), (3, 26244, 26340), (3, 32805, 32901), (3, 19683, 19779), (5, 18750, 18846), (5, 21875, 21971), (5, 25000, 25096), (5, 28125, 28221), (5, 31250, 31346), (5, 34375, 34471), (5, 31250, 31346), (7, 19208, 19304), (7, 21609, 21705), (7, 24010, 24106), (7, 26411, 26507), (7, 28812, 28908), (7, 31213, 31309), (7, 33614, 33710), (7, 33614, 33710), (11, 18634, 18730), (11, 29282, 29378), (13, 19773, 19869), (13, 21970, 22066), (13, 24167, 24263), (13, 26364, 26460), (13, 28561, 28657), (13, 30758, 30854), (13, 28561, 28657), (17, 19652, 19748), (17, 24565, 24661), (17, 29478, 29574), (17, 34391, 34487), (19, 20577, 20673), (19, 27436, 27532), (19, 34295, 34391), (23, 24334, 24430), (23, 36501, 36597), (29, 24389, 24485), (31, 29791, 29887), (37, 19166, 19262), (41, 20172, 20268), (41, 21853, 21949), (41, 23534, 23630), (43, 20339, 20435), (43, 22188, 22284), (43, 24037, 24133), (43, 25886, 25982), (47, 19881, 19977), (47, 22090, 22186), (47, 24299, 24395), (47, 26508, 26604), (47, 28717, 28813), (47, 30926, 31022), (53, 19663, 19759), (53, 22472, 22568), (53, 25281, 25377), (53, 28090, 28186), (53, 30899, 30995), (53, 33708, 33804), (53, 36517, 36613), (59, 20886, 20982), (59, 24367, 24463), (59, 27848, 27944), (59, 31329, 31425), (59, 34810, 34906), (61, 18624, 18701), (61, 22326, 22422), (61, 26047, 26143), (61, 29768, 29864), (61, 33489, 33585), (61, 37210, 37247), (67, 22445, 22541), (67, 26934, 27030), (67, 31423, 31519), (67, 35912, 36008), (71, 20164, 20260), (71, 25205, 25301), (71, 30246, 30342), (71, 35287, 35383), (73, 21316, 21412), (73, 26645, 26741), (73, 31974, 32070), (79, 18723, 18819), (79, 24964, 25060), (79, 31205, 31301), (83, 20667, 20763), (83, 27556, 27652), (83, 34445, 34541), (89, 23763, 23859), (89, 31684, 31780)]

def row097_layer001_block000 : List ColouredInterval :=
  [(2, 20480, 20576), (2, 22528, 22624), (2, 24576, 24672), (2, 26624, 26720), (2, 28672, 28768), (2, 20480, 20576), (2, 24576, 24672), (2, 28672, 28768), (2, 32768, 32864), (2, 36864, 36960), (2, 24576, 24672), (2, 32768, 32864), (2, 32768, 32864), (2, 32768, 32864), (3, 19683, 19779), (3, 21870, 21966)]

def row097_layer001_block001 : List ColouredInterval :=
  [(3, 24057, 24153), (3, 26244, 26340), (3, 28431, 28527), (3, 30618, 30714), (3, 19683, 19779), (3, 26244, 26340), (3, 32805, 32901), (3, 19683, 19779), (5, 18750, 18846), (5, 21875, 21971), (5, 25000, 25096), (5, 28125, 28221), (5, 31250, 31346), (5, 34375, 34471), (5, 31250, 31346), (7, 19208, 19304)]

def row097_layer001_block002 : List ColouredInterval :=
  [(7, 21609, 21705), (7, 24010, 24106), (7, 26411, 26507), (7, 28812, 28908), (7, 31213, 31309), (7, 33614, 33710), (7, 33614, 33710), (11, 18634, 18730), (11, 29282, 29378), (13, 19773, 19869), (13, 21970, 22066), (13, 24167, 24263), (13, 26364, 26460), (13, 28561, 28657), (13, 30758, 30854), (13, 28561, 28657)]

def row097_layer001_block003 : List ColouredInterval :=
  [(17, 19652, 19748), (17, 24565, 24661), (17, 29478, 29574), (17, 34391, 34487), (19, 20577, 20673), (19, 27436, 27532), (19, 34295, 34391), (23, 24334, 24430), (23, 36501, 36597), (29, 24389, 24485), (31, 29791, 29887), (37, 19166, 19262), (41, 20172, 20268), (41, 21853, 21949), (41, 23534, 23630), (43, 20339, 20435)]

def row097_layer001_block004 : List ColouredInterval :=
  [(43, 22188, 22284), (43, 24037, 24133), (43, 25886, 25982), (47, 19881, 19977), (47, 22090, 22186), (47, 24299, 24395), (47, 26508, 26604), (47, 28717, 28813), (47, 30926, 31022), (53, 19663, 19759), (53, 22472, 22568), (53, 25281, 25377), (53, 28090, 28186), (53, 30899, 30995), (53, 33708, 33804), (53, 36517, 36613)]

def row097_layer001_block005 : List ColouredInterval :=
  [(59, 20886, 20982), (59, 24367, 24463), (59, 27848, 27944), (59, 31329, 31425), (59, 34810, 34906), (61, 18624, 18701), (61, 22326, 22422), (61, 26047, 26143), (61, 29768, 29864), (61, 33489, 33585), (61, 37210, 37247), (67, 22445, 22541), (67, 26934, 27030), (67, 31423, 31519), (67, 35912, 36008), (71, 20164, 20260)]

def row097_layer001_block006 : List ColouredInterval :=
  [(71, 25205, 25301), (71, 30246, 30342), (71, 35287, 35383), (73, 21316, 21412), (73, 26645, 26741), (73, 31974, 32070), (79, 18723, 18819), (79, 24964, 25060), (79, 31205, 31301), (83, 20667, 20763), (83, 27556, 27652), (83, 34445, 34541), (89, 23763, 23859), (89, 31684, 31780)]

def row097_layer001_chunks : List (List ColouredInterval) :=
  [row097_layer001_block000, row097_layer001_block001, row097_layer001_block002, row097_layer001_block003, row097_layer001_block004, row097_layer001_block005, row097_layer001_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer001_intervals
