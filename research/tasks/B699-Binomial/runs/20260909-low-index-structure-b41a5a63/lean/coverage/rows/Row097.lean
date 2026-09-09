import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

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

theorem row097_registered :
    decide (row097.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row097_goods_checked :
    row097.goods.all (goodSegmentCheck row097.height.i row097.height.r row097.height.s) = true := by
  decide +kernel

theorem row097_small_checked :
    coverCheck (2 * row097.height.i + 2) (row097.height.i * (row097.height.i - 1) - 1)
      (row097.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row097_layerCover_checked :
    coverCheck (row097.height.i * (row097.height.i - 1)) (row097.height.n0 - 1)
      (row097.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row097_layer000_checked :
    coverLayerCheck row097.height row097.goods { lower := 9312, upper := 18624, M := 18 } = true := by
  decide +kernel

theorem row097_layer001_checked :
    coverLayerCheck row097.height row097.goods { lower := 18624, upper := 37248, M := 14 } = true := by
  decide +kernel

theorem row097_layer002_checked :
    coverLayerCheck row097.height row097.goods { lower := 37248, upper := 74496, M := 11 } = true := by
  decide +kernel

theorem row097_layer003_checked :
    coverLayerCheck row097.height row097.goods { lower := 74496, upper := 148992, M := 9 } = true := by
  decide +kernel

theorem row097_layer004_checked :
    coverLayerCheck row097.height row097.goods { lower := 148992, upper := 297984, M := 7 } = true := by
  decide +kernel

theorem row097_layer005_checked :
    coverLayerCheck row097.height row097.goods { lower := 297984, upper := 595968, M := 6 } = true := by
  decide +kernel

theorem row097_layer006_checked :
    coverLayerCheck row097.height row097.goods { lower := 595968, upper := 1191936, M := 5 } = true := by
  decide +kernel

theorem row097_layer007_checked :
    coverLayerCheck row097.height row097.goods { lower := 1191936, upper := 2383872, M := 4 } = true := by
  decide +kernel

theorem row097_layer008_checked :
    coverLayerCheck row097.height row097.goods { lower := 2383872, upper := 4767744, M := 3 } = true := by
  decide +kernel

theorem row097_layer009_checked :
    coverLayerCheck row097.height row097.goods { lower := 4767744, upper := 9535488, M := 3 } = true := by
  decide +kernel

theorem row097_layer010_checked :
    coverLayerCheck row097.height row097.goods { lower := 9535488, upper := 19070976, M := 2 } = true := by
  decide +kernel

theorem row097_layer011_checked :
    coverLayerCheck row097.height row097.goods { lower := 19070976, upper := 38141952, M := 2 } = true := by
  decide +kernel

theorem row097_layer012_checked :
    coverLayerCheck row097.height row097.goods { lower := 38141952, upper := 76283904, M := 2 } = true := by
  decide +kernel

theorem row097_layer013_checked :
    coverLayerCheck row097.height row097.goods { lower := 76283904, upper := 100000000, M := 1 } = true := by
  decide +kernel

theorem row097_layers_checked :
    row097.layers.all (coverLayerCheck row097.height row097.goods) = true := by
  change List.all [
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
  ] (coverLayerCheck row097.height row097.goods) = true
  simp only [List.all_cons, List.all_nil,
    row097_layer000_checked,
    row097_layer001_checked,
    row097_layer002_checked,
    row097_layer003_checked,
    row097_layer004_checked,
    row097_layer005_checked,
    row097_layer006_checked,
    row097_layer007_checked,
    row097_layer008_checked,
    row097_layer009_checked,
    row097_layer010_checked,
    row097_layer011_checked,
    row097_layer012_checked,
    row097_layer013_checked,
    Bool.true_and]

theorem row097_checked : finiteCoverRowCheck row097 = true := by
  simp only [finiteCoverRowCheck, row097_registered, row097_goods_checked,
    row097_small_checked, row097_layerCover_checked, row097_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row097_checked

end B699LowIndex
