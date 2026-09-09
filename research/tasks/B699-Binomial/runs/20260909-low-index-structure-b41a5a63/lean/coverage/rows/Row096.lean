import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def row096_height : HeightCertificateDatum := { i := 96, r := 31, s := 67, n0Power10 := 8 }

def row096_goods : List GoodSegment := [
  { lower := 194, upper := 288, witness := RowWitness.topPrime 193 },
  { lower := 289, upper := 378, witness := RowWitness.topPrime 283 },
  { lower := 379, upper := 474, witness := RowWitness.topPrime 379 },
  { lower := 475, upper := 562, witness := RowWitness.topPrime 467 },
  { lower := 563, upper := 658, witness := RowWitness.topPrime 563 },
  { lower := 659, upper := 754, witness := RowWitness.topPrime 659 },
  { lower := 755, upper := 846, witness := RowWitness.topPrime 751 },
  { lower := 847, upper := 934, witness := RowWitness.topPrime 839 },
  { lower := 935, upper := 1024, witness := RowWitness.topPrime 929 },
  { lower := 1025, upper := 1116, witness := RowWitness.topPrime 1021 },
  { lower := 1117, upper := 1212, witness := RowWitness.topPrime 1117 },
  { lower := 1213, upper := 1308, witness := RowWitness.topPrime 1213 },
  { lower := 1309, upper := 1402, witness := RowWitness.topPrime 1307 },
  { lower := 1403, upper := 1494, witness := RowWitness.topPrime 1399 },
  { lower := 1495, upper := 1588, witness := RowWitness.topPrime 1493 },
  { lower := 1589, upper := 1678, witness := RowWitness.topPrime 1583 },
  { lower := 1679, upper := 1764, witness := RowWitness.topPrime 1669 },
  { lower := 1765, upper := 1854, witness := RowWitness.topPrime 1759 },
  { lower := 1855, upper := 1942, witness := RowWitness.topPrime 1847 },
  { lower := 1943, upper := 2028, witness := RowWitness.topPrime 1933 },
  { lower := 2029, upper := 2124, witness := RowWitness.topPrime 2029 },
  { lower := 2125, upper := 2208, witness := RowWitness.topPrime 2113 },
  { lower := 2209, upper := 2302, witness := RowWitness.topPrime 2207 },
  { lower := 2303, upper := 2392, witness := RowWitness.topPrime 2297 },
  { lower := 2393, upper := 2488, witness := RowWitness.topPrime 2393 },
  { lower := 2489, upper := 2572, witness := RowWitness.topPrime 2477 },
  { lower := 2573, upper := 2652, witness := RowWitness.topPrime 2557 },
  { lower := 2653, upper := 2742, witness := RowWitness.topPrime 2647 },
  { lower := 2743, upper := 2836, witness := RowWitness.topPrime 2741 },
  { lower := 2837, upper := 2932, witness := RowWitness.topPrime 2837 },
  { lower := 2933, upper := 3022, witness := RowWitness.topPrime 2927 },
  { lower := 3023, upper := 3118, witness := RowWitness.topPrime 3023 },
  { lower := 3119, upper := 3214, witness := RowWitness.topPrime 3119 },
  { lower := 3215, upper := 3304, witness := RowWitness.topPrime 3209 },
  { lower := 3305, upper := 3396, witness := RowWitness.topPrime 3301 },
  { lower := 3397, upper := 3486, witness := RowWitness.topPrime 3391 },
  { lower := 3487, upper := 3564, witness := RowWitness.topPrime 3469 },
  { lower := 3565, upper := 3654, witness := RowWitness.topPrime 3559 },
  { lower := 3655, upper := 3738, witness := RowWitness.topPrime 3643 },
  { lower := 3739, upper := 3834, witness := RowWitness.topPrime 3739 },
  { lower := 3835, upper := 3928, witness := RowWitness.topPrime 3833 },
  { lower := 3929, upper := 4024, witness := RowWitness.topPrime 3929 },
  { lower := 4025, upper := 4116, witness := RowWitness.topPrime 4021 },
  { lower := 4117, upper := 4206, witness := RowWitness.topPrime 4111 },
  { lower := 4207, upper := 4296, witness := RowWitness.topPrime 4201 },
  { lower := 4297, upper := 4392, witness := RowWitness.topPrime 4297 },
  { lower := 4393, upper := 4486, witness := RowWitness.topPrime 4391 },
  { lower := 4487, upper := 4578, witness := RowWitness.topPrime 4483 },
  { lower := 4579, upper := 4662, witness := RowWitness.topPrime 4567 },
  { lower := 4663, upper := 4758, witness := RowWitness.topPrime 4663 },
  { lower := 4759, upper := 4854, witness := RowWitness.topPrime 4759 },
  { lower := 4855, upper := 4926, witness := RowWitness.topPrime 4831 },
  { lower := 4927, upper := 5014, witness := RowWitness.topPrime 4919 },
  { lower := 5015, upper := 5106, witness := RowWitness.topPrime 5011 },
  { lower := 5107, upper := 5202, witness := RowWitness.topPrime 5107 },
  { lower := 5203, upper := 5292, witness := RowWitness.topPrime 5197 },
  { lower := 5293, upper := 5376, witness := RowWitness.topPrime 5281 },
  { lower := 5377, upper := 5446, witness := RowWitness.topPrime 5351 },
  { lower := 5447, upper := 5538, witness := RowWitness.topPrime 5443 },
  { lower := 5539, upper := 5626, witness := RowWitness.topPrime 5531 },
  { lower := 5627, upper := 5718, witness := RowWitness.topPrime 5623 },
  { lower := 5719, upper := 5812, witness := RowWitness.topPrime 5717 },
  { lower := 5813, upper := 5908, witness := RowWitness.topPrime 5813 },
  { lower := 5909, upper := 5998, witness := RowWitness.topPrime 5903 },
  { lower := 5999, upper := 6082, witness := RowWitness.topPrime 5987 },
  { lower := 6083, upper := 6174, witness := RowWitness.topPrime 6079 },
  { lower := 6175, upper := 6268, witness := RowWitness.topPrime 6173 },
  { lower := 6269, upper := 6364, witness := RowWitness.topPrime 6269 },
  { lower := 6365, upper := 6456, witness := RowWitness.topPrime 6361 },
  { lower := 6457, upper := 6546, witness := RowWitness.topPrime 6451 },
  { lower := 6547, upper := 6642, witness := RowWitness.topPrime 6547 },
  { lower := 6643, upper := 6732, witness := RowWitness.topPrime 6637 },
  { lower := 6733, upper := 6828, witness := RowWitness.topPrime 6733 },
  { lower := 6829, upper := 6924, witness := RowWitness.topPrime 6829 },
  { lower := 6925, upper := 7012, witness := RowWitness.topPrime 6917 },
  { lower := 7013, upper := 7108, witness := RowWitness.topPrime 7013 },
  { lower := 7109, upper := 7204, witness := RowWitness.topPrime 7109 },
  { lower := 7205, upper := 7288, witness := RowWitness.topPrime 7193 },
  { lower := 7289, upper := 7378, witness := RowWitness.topPrime 7283 },
  { lower := 7379, upper := 7464, witness := RowWitness.topPrime 7369 },
  { lower := 7465, upper := 7554, witness := RowWitness.topPrime 7459 },
  { lower := 7555, upper := 7644, witness := RowWitness.topPrime 7549 },
  { lower := 7645, upper := 7738, witness := RowWitness.topPrime 7643 },
  { lower := 7739, upper := 7822, witness := RowWitness.topPrime 7727 },
  { lower := 7823, upper := 7918, witness := RowWitness.topPrime 7823 },
  { lower := 7919, upper := 8014, witness := RowWitness.topPrime 7919 },
  { lower := 8015, upper := 8106, witness := RowWitness.topPrime 8011 },
  { lower := 8107, upper := 8196, witness := RowWitness.topPrime 8101 },
  { lower := 8197, upper := 8286, witness := RowWitness.topPrime 8191 },
  { lower := 8287, upper := 8382, witness := RowWitness.topPrime 8287 },
  { lower := 8383, upper := 8472, witness := RowWitness.topPrime 8377 },
  { lower := 8473, upper := 8562, witness := RowWitness.topPrime 8467 },
  { lower := 8563, upper := 8658, witness := RowWitness.topPrime 8563 },
  { lower := 8659, upper := 8742, witness := RowWitness.topPrime 8647 },
  { lower := 8743, upper := 8836, witness := RowWitness.topPrime 8741 },
  { lower := 8837, upper := 8932, witness := RowWitness.topPrime 8837 },
  { lower := 8933, upper := 9028, witness := RowWitness.topPrime 8933 },
  { lower := 9029, upper := 9119, witness := RowWitness.topPrime 9029 },
  { lower := 9251, upper := 9336, witness := RowWitness.topPrime 9241 },
  { lower := 9337, upper := 9346, witness := RowWitness.topPrime 9337 },
  { lower := 9375, upper := 9412, witness := RowWitness.topPrime 9371 },
  { lower := 9583, upper := 9646, witness := RowWitness.topPrime 9551 },
  { lower := 9647, upper := 9699, witness := RowWitness.topPrime 9643 },
  { lower := 10051, upper := 10134, witness := RowWitness.topPrime 10039 },
  { lower := 10135, upper := 10181, witness := RowWitness.topPrime 10133 },
  { lower := 10625, upper := 10708, witness := RowWitness.topPrime 10613 },
  { lower := 10709, upper := 10743, witness := RowWitness.topPrime 10709 },
  { lower := 10935, upper := 11004, witness := RowWitness.topPrime 10909 },
  { lower := 11005, upper := 11080, witness := RowWitness.topPrime 11003 },
  { lower := 11094, upper := 11140, witness := RowWitness.topPrime 11093 },
  { lower := 11163, upper := 11189, witness := RowWitness.topPrime 11161 },
  { lower := 11236, upper := 11308, witness := RowWitness.topPrime 11213 },
  { lower := 11309, upper := 11331, witness := RowWitness.topPrime 11299 },
  { lower := 11774, upper := 11838, witness := RowWitness.topPrime 11743 },
  { lower := 11839, upper := 11862, witness := RowWitness.topPrime 11839 },
  { lower := 12005, upper := 12074, witness := RowWitness.topPrime 11987 },
  { lower := 12493, upper := 12586, witness := RowWitness.topPrime 12491 },
  { lower := 12587, upper := 12588, witness := RowWitness.topPrime 12583 },
  { lower := 13182, upper := 13217, witness := RowWitness.topPrime 13177 },
  { lower := 13254, upper := 13277, witness := RowWitness.topPrime 13249 },
  { lower := 13310, upper := 13349, witness := RowWitness.topPrime 13309 },
  { lower := 13454, upper := 13546, witness := RowWitness.topPrime 13451 },
  { lower := 13547, upper := 13551, witness := RowWitness.topPrime 13537 },
  { lower := 13718, upper := 13806, witness := RowWitness.topPrime 13711 },
  { lower := 13807, upper := 13813, witness := RowWitness.topPrime 13807 },
  { lower := 14415, upper := 14501, witness := RowWitness.topPrime 14411 },
  { lower := 14792, upper := 14834, witness := RowWitness.topPrime 14783 },
  { lower := 14884, upper := 14887, witness := RowWitness.topPrime 14879 },
  { lower := 15123, upper := 15216, witness := RowWitness.topPrime 15121 },
  { lower := 15217, upper := 15224, witness := RowWitness.topPrime 15217 },
  { lower := 15379, upper := 15472, witness := RowWitness.topPrime 15377 },
  { lower := 15473, upper := 15474, witness := RowWitness.topPrime 15473 },
  { lower := 15979, upper := 16068, witness := RowWitness.topPrime 15973 },
  { lower := 16069, upper := 16074, witness := RowWitness.topPrime 16069 },
  { lower := 16428, upper := 16432, witness := RowWitness.topPrime 16427 },
  { lower := 16810, upper := 16882, witness := RowWitness.topPrime 16787 },
  { lower := 16883, upper := 16905, witness := RowWitness.topPrime 16883 },
  { lower := 17303, upper := 17393, witness := RowWitness.topPrime 17299 },
  { lower := 18491, upper := 18576, witness := RowWitness.topPrime 18481 },
  { lower := 18577, upper := 18585, witness := RowWitness.topPrime 18553 },
  { lower := 18634, upper := 18700, witness := RowWitness.topPrime 18617 },
  { lower := 18723, upper := 18729, witness := RowWitness.topPrime 18719 },
  { lower := 18750, upper := 18818, witness := RowWitness.topPrime 18749 },
  { lower := 19208, upper := 19261, witness := RowWitness.topPrime 19207 },
  { lower := 19663, upper := 19756, witness := RowWitness.topPrime 19661 },
  { lower := 19757, upper := 19758, witness := RowWitness.topPrime 19753 },
  { lower := 19773, upper := 19778, witness := RowWitness.topPrime 19763 },
  { lower := 19965, upper := 19976, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20256, witness := RowWitness.topPrime 20161 },
  { lower := 20257, upper := 20259, witness := RowWitness.topPrime 20249 },
  { lower := 20577, upper := 20630, witness := RowWitness.topPrime 20563 },
  { lower := 20667, upper := 20672, witness := RowWitness.topPrime 20663 },
  { lower := 21316, upper := 21391, witness := RowWitness.topPrime 21313 },
  { lower := 21875, upper := 21966, witness := RowWitness.topPrime 21871 },
  { lower := 21967, upper := 21999, witness := RowWitness.topPrime 21961 },
  { lower := 22472, upper := 22540, witness := RowWitness.topPrime 22469 },
  { lower := 24037, upper := 24105, witness := RowWitness.topPrime 24029 },
  { lower := 24334, upper := 24424, witness := RowWitness.topPrime 24329 },
  { lower := 24425, upper := 24462, witness := RowWitness.topPrime 24421 },
  { lower := 25000, upper := 25059, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25284, witness := RowWitness.topPrime 25189 },
  { lower := 25285, upper := 25310, witness := RowWitness.topPrime 25261 },
  { lower := 26411, upper := 26459, witness := RowWitness.topPrime 26407 },
  { lower := 26934, upper := 26991, witness := RowWitness.topPrime 26927 },
  { lower := 28125, upper := 28185, witness := RowWitness.topPrime 28123 },
  { lower := 28812, upper := 28812, witness := RowWitness.topPrime 28807 },
  { lower := 29791, upper := 29863, witness := RowWitness.topPrime 29789 },
  { lower := 30926, upper := 30994, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31288, witness := RowWitness.topPrime 31193 },
  { lower := 31289, upper := 31308, witness := RowWitness.topPrime 31277 },
  { lower := 31329, upper := 31345, witness := RowWitness.topPrime 31327 },
  { lower := 31423, upper := 31424, witness := RowWitness.topPrime 31397 },
  { lower := 33708, upper := 33709, witness := RowWitness.topPrime 33703 },
  { lower := 34375, upper := 34464, witness := RowWitness.topPrime 34369 },
  { lower := 34465, upper := 34486, witness := RowWitness.topPrime 34457 },
  { lower := 35344, upper := 35382, witness := RowWitness.topPrime 35339 },
  { lower := 37303, upper := 37305, witness := RowWitness.topPrime 37277 },
  { lower := 37500, upper := 37541, witness := RowWitness.topPrime 37493 },
  { lower := 39366, upper := 39399, witness := RowWitness.topPrime 39359 },
  { lower := 40401, upper := 40423, witness := RowWitness.topPrime 40387 },
  { lower := 48013, upper := 48056, witness := RowWitness.topPrime 47981 },
  { lower := 50421, upper := 50505, witness := RowWitness.topPrime 50417 },
  { lower := 55451, upper := 55536, witness := RowWitness.topPrime 55441 },
  { lower := 55537, upper := 55542, witness := RowWitness.topPrime 55529 },
  { lower := 58619, upper := 58659, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59051, witness := RowWitness.topPrime 59029 },
  { lower := 62500, upper := 62505, witness := RowWitness.topPrime 62497 },
  { lower := 68651, upper := 68685, witness := RowWitness.topPrime 68639 },
  { lower := 68921, upper := 68985, witness := RowWitness.topPrime 68917 },
  { lower := 73205, upper := 73262, witness := RowWitness.topPrime 73189 },
  { lower := 148955, upper := 148972, witness := RowWitness.topPrime 148949 }
]

def row096_layers : List CoverLayer := [
  { lower := 9120, upper := 18240, M := 19 },
  { lower := 18240, upper := 36480, M := 16 },
  { lower := 36480, upper := 72960, M := 12 },
  { lower := 72960, upper := 145920, M := 10 },
  { lower := 145920, upper := 291840, M := 8 },
  { lower := 291840, upper := 583680, M := 7 },
  { lower := 583680, upper := 1167360, M := 5 },
  { lower := 1167360, upper := 2334720, M := 4 },
  { lower := 2334720, upper := 4669440, M := 4 },
  { lower := 4669440, upper := 9338880, M := 3 },
  { lower := 9338880, upper := 18677760, M := 2 },
  { lower := 18677760, upper := 37355520, M := 2 },
  { lower := 37355520, upper := 74711040, M := 2 },
  { lower := 74711040, upper := 100000000, M := 1 }
]

def row096 : FiniteCoverRow := {
  height := row096_height,
  goods := row096_goods,
  layers := row096_layers
}

theorem row096_registered :
    decide (row096.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row096_goods_checked :
    row096.goods.all (goodSegmentCheck row096.height.i row096.height.r row096.height.s) = true := by
  decide +kernel

theorem row096_small_checked :
    coverCheck (2 * row096.height.i + 2) (row096.height.i * (row096.height.i - 1) - 1)
      (row096.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row096_layerCover_checked :
    coverCheck (row096.height.i * (row096.height.i - 1)) (row096.height.n0 - 1)
      (row096.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row096_layer000_checked :
    coverLayerCheck row096.height row096.goods { lower := 9120, upper := 18240, M := 19 } = true := by
  decide +kernel

theorem row096_layer001_checked :
    coverLayerCheck row096.height row096.goods { lower := 18240, upper := 36480, M := 16 } = true := by
  decide +kernel

theorem row096_layer002_checked :
    coverLayerCheck row096.height row096.goods { lower := 36480, upper := 72960, M := 12 } = true := by
  decide +kernel

theorem row096_layer003_checked :
    coverLayerCheck row096.height row096.goods { lower := 72960, upper := 145920, M := 10 } = true := by
  decide +kernel

theorem row096_layer004_checked :
    coverLayerCheck row096.height row096.goods { lower := 145920, upper := 291840, M := 8 } = true := by
  decide +kernel

theorem row096_layer005_checked :
    coverLayerCheck row096.height row096.goods { lower := 291840, upper := 583680, M := 7 } = true := by
  decide +kernel

theorem row096_layer006_checked :
    coverLayerCheck row096.height row096.goods { lower := 583680, upper := 1167360, M := 5 } = true := by
  decide +kernel

theorem row096_layer007_checked :
    coverLayerCheck row096.height row096.goods { lower := 1167360, upper := 2334720, M := 4 } = true := by
  decide +kernel

theorem row096_layer008_checked :
    coverLayerCheck row096.height row096.goods { lower := 2334720, upper := 4669440, M := 4 } = true := by
  decide +kernel

theorem row096_layer009_checked :
    coverLayerCheck row096.height row096.goods { lower := 4669440, upper := 9338880, M := 3 } = true := by
  decide +kernel

theorem row096_layer010_checked :
    coverLayerCheck row096.height row096.goods { lower := 9338880, upper := 18677760, M := 2 } = true := by
  decide +kernel

theorem row096_layer011_checked :
    coverLayerCheck row096.height row096.goods { lower := 18677760, upper := 37355520, M := 2 } = true := by
  decide +kernel

theorem row096_layer012_checked :
    coverLayerCheck row096.height row096.goods { lower := 37355520, upper := 74711040, M := 2 } = true := by
  decide +kernel

theorem row096_layer013_checked :
    coverLayerCheck row096.height row096.goods { lower := 74711040, upper := 100000000, M := 1 } = true := by
  decide +kernel

theorem row096_layers_checked :
    row096.layers.all (coverLayerCheck row096.height row096.goods) = true := by
  change List.all [
    { lower := 9120, upper := 18240, M := 19 },
    { lower := 18240, upper := 36480, M := 16 },
    { lower := 36480, upper := 72960, M := 12 },
    { lower := 72960, upper := 145920, M := 10 },
    { lower := 145920, upper := 291840, M := 8 },
    { lower := 291840, upper := 583680, M := 7 },
    { lower := 583680, upper := 1167360, M := 5 },
    { lower := 1167360, upper := 2334720, M := 4 },
    { lower := 2334720, upper := 4669440, M := 4 },
    { lower := 4669440, upper := 9338880, M := 3 },
    { lower := 9338880, upper := 18677760, M := 2 },
    { lower := 18677760, upper := 37355520, M := 2 },
    { lower := 37355520, upper := 74711040, M := 2 },
    { lower := 74711040, upper := 100000000, M := 1 }
  ] (coverLayerCheck row096.height row096.goods) = true
  simp only [List.all_cons, List.all_nil,
    row096_layer000_checked,
    row096_layer001_checked,
    row096_layer002_checked,
    row096_layer003_checked,
    row096_layer004_checked,
    row096_layer005_checked,
    row096_layer006_checked,
    row096_layer007_checked,
    row096_layer008_checked,
    row096_layer009_checked,
    row096_layer010_checked,
    row096_layer011_checked,
    row096_layer012_checked,
    row096_layer013_checked,
    Bool.true_and]

theorem row096_checked : finiteCoverRowCheck row096 = true := by
  simp only [finiteCoverRowCheck, row096_registered, row096_goods_checked,
    row096_small_checked, row096_layerCover_checked, row096_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row096_checked

end B699LowIndex
