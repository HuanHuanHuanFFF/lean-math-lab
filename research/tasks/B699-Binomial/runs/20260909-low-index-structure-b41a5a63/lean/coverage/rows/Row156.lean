import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def row156_height : HeightCertificateDatum := { i := 156, r := 51, s := 111, n0Power10 := 7 }

def row156_goods : List GoodSegment := [
  { lower := 314, upper := 468, witness := RowWitness.topPrime 313 },
  { lower := 469, upper := 622, witness := RowWitness.topPrime 467 },
  { lower := 623, upper := 774, witness := RowWitness.topPrime 619 },
  { lower := 775, upper := 928, witness := RowWitness.topPrime 773 },
  { lower := 929, upper := 1084, witness := RowWitness.topPrime 929 },
  { lower := 1085, upper := 1224, witness := RowWitness.topPrime 1069 },
  { lower := 1225, upper := 1378, witness := RowWitness.topPrime 1223 },
  { lower := 1379, upper := 1528, witness := RowWitness.topPrime 1373 },
  { lower := 1529, upper := 1678, witness := RowWitness.topPrime 1523 },
  { lower := 1679, upper := 1824, witness := RowWitness.topPrime 1669 },
  { lower := 1825, upper := 1978, witness := RowWitness.topPrime 1823 },
  { lower := 1979, upper := 2134, witness := RowWitness.topPrime 1979 },
  { lower := 2135, upper := 2286, witness := RowWitness.topPrime 2131 },
  { lower := 2287, upper := 2442, witness := RowWitness.topPrime 2287 },
  { lower := 2443, upper := 2596, witness := RowWitness.topPrime 2441 },
  { lower := 2597, upper := 2748, witness := RowWitness.topPrime 2593 },
  { lower := 2749, upper := 2904, witness := RowWitness.topPrime 2749 },
  { lower := 2905, upper := 3058, witness := RowWitness.topPrime 2903 },
  { lower := 3059, upper := 3204, witness := RowWitness.topPrime 3049 },
  { lower := 3205, upper := 3358, witness := RowWitness.topPrime 3203 },
  { lower := 3359, upper := 3514, witness := RowWitness.topPrime 3359 },
  { lower := 3515, upper := 3666, witness := RowWitness.topPrime 3511 },
  { lower := 3667, upper := 3814, witness := RowWitness.topPrime 3659 },
  { lower := 3815, upper := 3958, witness := RowWitness.topPrime 3803 },
  { lower := 3959, upper := 4102, witness := RowWitness.topPrime 3947 },
  { lower := 4103, upper := 4254, witness := RowWitness.topPrime 4099 },
  { lower := 4255, upper := 4408, witness := RowWitness.topPrime 4253 },
  { lower := 4409, upper := 4564, witness := RowWitness.topPrime 4409 },
  { lower := 4565, upper := 4716, witness := RowWitness.topPrime 4561 },
  { lower := 4717, upper := 4858, witness := RowWitness.topPrime 4703 },
  { lower := 4859, upper := 4986, witness := RowWitness.topPrime 4831 },
  { lower := 4987, upper := 5142, witness := RowWitness.topPrime 4987 },
  { lower := 5143, upper := 5274, witness := RowWitness.topPrime 5119 },
  { lower := 5275, upper := 5428, witness := RowWitness.topPrime 5273 },
  { lower := 5429, upper := 5574, witness := RowWitness.topPrime 5419 },
  { lower := 5575, upper := 5728, witness := RowWitness.topPrime 5573 },
  { lower := 5729, upper := 5872, witness := RowWitness.topPrime 5717 },
  { lower := 5873, upper := 6024, witness := RowWitness.topPrime 5869 },
  { lower := 6025, upper := 6166, witness := RowWitness.topPrime 6011 },
  { lower := 6167, upper := 6318, witness := RowWitness.topPrime 6163 },
  { lower := 6319, upper := 6472, witness := RowWitness.topPrime 6317 },
  { lower := 6473, upper := 6628, witness := RowWitness.topPrime 6473 },
  { lower := 6629, upper := 6774, witness := RowWitness.topPrime 6619 },
  { lower := 6775, upper := 6918, witness := RowWitness.topPrime 6763 },
  { lower := 6919, upper := 7072, witness := RowWitness.topPrime 6917 },
  { lower := 7073, upper := 7224, witness := RowWitness.topPrime 7069 },
  { lower := 7225, upper := 7374, witness := RowWitness.topPrime 7219 },
  { lower := 7375, upper := 7524, witness := RowWitness.topPrime 7369 },
  { lower := 7525, upper := 7678, witness := RowWitness.topPrime 7523 },
  { lower := 7679, upper := 7828, witness := RowWitness.topPrime 7673 },
  { lower := 7829, upper := 7984, witness := RowWitness.topPrime 7829 },
  { lower := 7985, upper := 8118, witness := RowWitness.topPrime 7963 },
  { lower := 8119, upper := 8272, witness := RowWitness.topPrime 8117 },
  { lower := 8273, upper := 8428, witness := RowWitness.topPrime 8273 },
  { lower := 8429, upper := 8584, witness := RowWitness.topPrime 8429 },
  { lower := 8585, upper := 8736, witness := RowWitness.topPrime 8581 },
  { lower := 8737, upper := 8892, witness := RowWitness.topPrime 8737 },
  { lower := 8893, upper := 9048, witness := RowWitness.topPrime 8893 },
  { lower := 9049, upper := 9204, witness := RowWitness.topPrime 9049 },
  { lower := 9205, upper := 9358, witness := RowWitness.topPrime 9203 },
  { lower := 9359, upper := 9504, witness := RowWitness.topPrime 9349 },
  { lower := 9505, upper := 9652, witness := RowWitness.topPrime 9497 },
  { lower := 9653, upper := 9804, witness := RowWitness.topPrime 9649 },
  { lower := 9805, upper := 9958, witness := RowWitness.topPrime 9803 },
  { lower := 9959, upper := 10104, witness := RowWitness.topPrime 9949 },
  { lower := 10105, upper := 10258, witness := RowWitness.topPrime 10103 },
  { lower := 10259, upper := 10414, witness := RowWitness.topPrime 10259 },
  { lower := 10415, upper := 10554, witness := RowWitness.topPrime 10399 },
  { lower := 10555, upper := 10686, witness := RowWitness.topPrime 10531 },
  { lower := 10687, upper := 10842, witness := RowWitness.topPrime 10687 },
  { lower := 10843, upper := 10992, witness := RowWitness.topPrime 10837 },
  { lower := 10993, upper := 11148, witness := RowWitness.topPrime 10993 },
  { lower := 11149, upper := 11304, witness := RowWitness.topPrime 11149 },
  { lower := 11305, upper := 11454, witness := RowWitness.topPrime 11299 },
  { lower := 11455, upper := 11602, witness := RowWitness.topPrime 11447 },
  { lower := 11603, upper := 11752, witness := RowWitness.topPrime 11597 },
  { lower := 11753, upper := 11898, witness := RowWitness.topPrime 11743 },
  { lower := 11899, upper := 12052, witness := RowWitness.topPrime 11897 },
  { lower := 12053, upper := 12204, witness := RowWitness.topPrime 12049 },
  { lower := 12205, upper := 12358, witness := RowWitness.topPrime 12203 },
  { lower := 12359, upper := 12502, witness := RowWitness.topPrime 12347 },
  { lower := 12503, upper := 12658, witness := RowWitness.topPrime 12503 },
  { lower := 12659, upper := 12814, witness := RowWitness.topPrime 12659 },
  { lower := 12815, upper := 12964, witness := RowWitness.topPrime 12809 },
  { lower := 12965, upper := 13114, witness := RowWitness.topPrime 12959 },
  { lower := 13115, upper := 13264, witness := RowWitness.topPrime 13109 },
  { lower := 13265, upper := 13414, witness := RowWitness.topPrime 13259 },
  { lower := 13415, upper := 13566, witness := RowWitness.topPrime 13411 },
  { lower := 13567, upper := 13722, witness := RowWitness.topPrime 13567 },
  { lower := 13723, upper := 13878, witness := RowWitness.topPrime 13723 },
  { lower := 13879, upper := 14034, witness := RowWitness.topPrime 13879 },
  { lower := 14035, upper := 14188, witness := RowWitness.topPrime 14033 },
  { lower := 14189, upper := 14332, witness := RowWitness.topPrime 14177 },
  { lower := 14333, upper := 14482, witness := RowWitness.topPrime 14327 },
  { lower := 14483, upper := 14634, witness := RowWitness.topPrime 14479 },
  { lower := 14635, upper := 14788, witness := RowWitness.topPrime 14633 },
  { lower := 14789, upper := 14938, witness := RowWitness.topPrime 14783 },
  { lower := 14939, upper := 15094, witness := RowWitness.topPrime 14939 },
  { lower := 15095, upper := 15246, witness := RowWitness.topPrime 15091 },
  { lower := 15247, upper := 15396, witness := RowWitness.topPrime 15241 },
  { lower := 15397, upper := 15546, witness := RowWitness.topPrime 15391 },
  { lower := 15547, upper := 15696, witness := RowWitness.topPrime 15541 },
  { lower := 15697, upper := 15838, witness := RowWitness.topPrime 15683 },
  { lower := 15839, upper := 15978, witness := RowWitness.topPrime 15823 },
  { lower := 15979, upper := 16128, witness := RowWitness.topPrime 15973 },
  { lower := 16129, upper := 16282, witness := RowWitness.topPrime 16127 },
  { lower := 16283, upper := 16428, witness := RowWitness.topPrime 16273 },
  { lower := 16429, upper := 16582, witness := RowWitness.topPrime 16427 },
  { lower := 16583, upper := 16728, witness := RowWitness.topPrime 16573 },
  { lower := 16729, upper := 16884, witness := RowWitness.topPrime 16729 },
  { lower := 16885, upper := 17038, witness := RowWitness.topPrime 16883 },
  { lower := 17039, upper := 17188, witness := RowWitness.topPrime 17033 },
  { lower := 17189, upper := 17344, witness := RowWitness.topPrime 17189 },
  { lower := 17345, upper := 17496, witness := RowWitness.topPrime 17341 },
  { lower := 17497, upper := 17652, witness := RowWitness.topPrime 17497 },
  { lower := 17653, upper := 17782, witness := RowWitness.topPrime 17627 },
  { lower := 17783, upper := 17938, witness := RowWitness.topPrime 17783 },
  { lower := 17939, upper := 18094, witness := RowWitness.topPrime 17939 },
  { lower := 18095, upper := 18244, witness := RowWitness.topPrime 18089 },
  { lower := 18245, upper := 18388, witness := RowWitness.topPrime 18233 },
  { lower := 18389, upper := 18534, witness := RowWitness.topPrime 18379 },
  { lower := 18535, upper := 18678, witness := RowWitness.topPrime 18523 },
  { lower := 18679, upper := 18834, witness := RowWitness.topPrime 18679 },
  { lower := 18835, upper := 18958, witness := RowWitness.topPrime 18803 },
  { lower := 18959, upper := 19114, witness := RowWitness.topPrime 18959 },
  { lower := 19115, upper := 19242, witness := RowWitness.topPrime 19087 },
  { lower := 19243, upper := 19392, witness := RowWitness.topPrime 19237 },
  { lower := 19393, upper := 19546, witness := RowWitness.topPrime 19391 },
  { lower := 19547, upper := 19698, witness := RowWitness.topPrime 19543 },
  { lower := 19699, upper := 19854, witness := RowWitness.topPrime 19699 },
  { lower := 19855, upper := 20008, witness := RowWitness.topPrime 19853 },
  { lower := 20009, upper := 20152, witness := RowWitness.topPrime 19997 },
  { lower := 20153, upper := 20304, witness := RowWitness.topPrime 20149 },
  { lower := 20305, upper := 20452, witness := RowWitness.topPrime 20297 },
  { lower := 20453, upper := 20598, witness := RowWitness.topPrime 20443 },
  { lower := 20599, upper := 20754, witness := RowWitness.topPrime 20599 },
  { lower := 20755, upper := 20908, witness := RowWitness.topPrime 20753 },
  { lower := 20909, upper := 21058, witness := RowWitness.topPrime 20903 },
  { lower := 21059, upper := 21214, witness := RowWitness.topPrime 21059 },
  { lower := 21215, upper := 21366, witness := RowWitness.topPrime 21211 },
  { lower := 21367, upper := 21502, witness := RowWitness.topPrime 21347 },
  { lower := 21503, upper := 21658, witness := RowWitness.topPrime 21503 },
  { lower := 21659, upper := 21804, witness := RowWitness.topPrime 21649 },
  { lower := 21805, upper := 21958, witness := RowWitness.topPrime 21803 },
  { lower := 21959, upper := 22098, witness := RowWitness.topPrime 21943 },
  { lower := 22099, upper := 22248, witness := RowWitness.topPrime 22093 },
  { lower := 22249, upper := 22402, witness := RowWitness.topPrime 22247 },
  { lower := 22403, upper := 22552, witness := RowWitness.topPrime 22397 },
  { lower := 22553, upper := 22704, witness := RowWitness.topPrime 22549 },
  { lower := 22705, upper := 22854, witness := RowWitness.topPrime 22699 },
  { lower := 22855, upper := 23008, witness := RowWitness.topPrime 22853 },
  { lower := 23009, upper := 23158, witness := RowWitness.topPrime 23003 },
  { lower := 23159, upper := 23314, witness := RowWitness.topPrime 23159 },
  { lower := 23315, upper := 23466, witness := RowWitness.topPrime 23311 },
  { lower := 23467, upper := 23614, witness := RowWitness.topPrime 23459 },
  { lower := 23615, upper := 23764, witness := RowWitness.topPrime 23609 },
  { lower := 23765, upper := 23916, witness := RowWitness.topPrime 23761 },
  { lower := 23917, upper := 24072, witness := RowWitness.topPrime 23917 },
  { lower := 24073, upper := 24179, witness := RowWitness.topPrime 24071 },
  { lower := 24334, upper := 24484, witness := RowWitness.topPrime 24329 },
  { lower := 24485, upper := 24522, witness := RowWitness.topPrime 24481 },
  { lower := 24576, upper := 24720, witness := RowWitness.topPrime 24571 },
  { lower := 25000, upper := 25119, witness := RowWitness.topPrime 24989 },
  { lower := 25281, upper := 25360, witness := RowWitness.topPrime 25261 },
  { lower := 26508, upper := 26566, witness := RowWitness.topPrime 26501 },
  { lower := 26645, upper := 26663, witness := RowWitness.topPrime 26641 },
  { lower := 27556, upper := 27591, witness := RowWitness.topPrime 27551 },
  { lower := 28125, upper := 28278, witness := RowWitness.topPrime 28123 },
  { lower := 28279, upper := 28280, witness := RowWitness.topPrime 28279 },
  { lower := 28812, upper := 28872, witness := RowWitness.topPrime 28807 },
  { lower := 29791, upper := 29923, witness := RowWitness.topPrime 29789 },
  { lower := 30926, upper := 31054, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31348, witness := RowWitness.topPrime 31193 },
  { lower := 31349, upper := 31405, witness := RowWitness.topPrime 31337 },
  { lower := 31423, upper := 31484, witness := RowWitness.topPrime 31397 },
  { lower := 31827, upper := 31839, witness := RowWitness.topPrime 31817 },
  { lower := 31974, upper := 31982, witness := RowWitness.topPrime 31973 },
  { lower := 33614, upper := 33644, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33769, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34474, witness := RowWitness.topPrime 34319 },
  { lower := 34475, upper := 34546, witness := RowWitness.topPrime 34471 },
  { lower := 36517, upper := 36652, witness := RowWitness.topPrime 36497 },
  { lower := 36653, upper := 36656, witness := RowWitness.topPrime 36653 },
  { lower := 37303, upper := 37365, witness := RowWitness.topPrime 37277 },
  { lower := 37446, upper := 37458, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37648, witness := RowWitness.topPrime 37493 },
  { lower := 37649, upper := 37693, witness := RowWitness.topPrime 37649 },
  { lower := 38307, upper := 38446, witness := RowWitness.topPrime 38303 },
  { lower := 39326, upper := 39478, witness := RowWitness.topPrime 39323 },
  { lower := 39479, upper := 39481, witness := RowWitness.topPrime 39461 },
  { lower := 40401, upper := 40483, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 40959, witness := RowWitness.topPrime 40927 },
  { lower := 43750, upper := 43842, witness := RowWitness.topPrime 43721 },
  { lower := 45369, upper := 45408, witness := RowWitness.topPrime 45361 },
  { lower := 47526, upper := 47676, witness := RowWitness.topPrime 47521 },
  { lower := 47677, upper := 47679, witness := RowWitness.topPrime 47659 },
  { lower := 48013, upper := 48116, witness := RowWitness.topPrime 47981 },
  { lower := 48778, upper := 48823, witness := RowWitness.topPrime 48767 },
  { lower := 50421, upper := 50565, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51160, witness := RowWitness.topPrime 51071 },
  { lower := 56307, upper := 56324, witness := RowWitness.topPrime 56299 },
  { lower := 56454, upper := 56462, witness := RowWitness.topPrime 56453 },
  { lower := 62500, upper := 62565, witness := RowWitness.topPrime 62497 },
  { lower := 68644, upper := 68794, witness := RowWitness.topPrime 68639 },
  { lower := 68795, upper := 68799, witness := RowWitness.topPrime 68791 },
  { lower := 68921, upper := 69045, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71442, witness := RowWitness.topPrime 71287 },
  { lower := 71443, upper := 71444, witness := RowWitness.topPrime 71443 },
  { lower := 73205, upper := 73322, witness := RowWitness.topPrime 73189 },
  { lower := 89383, upper := 89528, witness := RowWitness.topPrime 89381 },
  { lower := 93845, upper := 93905, witness := RowWitness.topPrime 93827 },
  { lower := 148955, upper := 149032, witness := RowWitness.topPrime 148949 }
]

def row156_layers : List CoverLayer := [
  { lower := 24180, upper := 48360, M := 14 },
  { lower := 48360, upper := 96720, M := 10 },
  { lower := 96720, upper := 193440, M := 8 },
  { lower := 193440, upper := 386880, M := 6 },
  { lower := 386880, upper := 773760, M := 4 },
  { lower := 773760, upper := 1547520, M := 3 },
  { lower := 1547520, upper := 3095040, M := 3 },
  { lower := 3095040, upper := 6190080, M := 2 },
  { lower := 6190080, upper := 10000000, M := 2 }
]

def row156 : FiniteCoverRow := {
  height := row156_height,
  goods := row156_goods,
  layers := row156_layers
}

theorem row156_registered :
    decide (row156.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row156_goods_checked :
    row156.goods.all (goodSegmentCheck row156.height.i row156.height.r row156.height.s) = true := by
  decide +kernel

theorem row156_small_checked :
    coverCheck (2 * row156.height.i + 2) (row156.height.i * (row156.height.i - 1) - 1)
      (row156.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row156_layerCover_checked :
    coverCheck (row156.height.i * (row156.height.i - 1)) (row156.height.n0 - 1)
      (row156.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row156_layer000_checked :
    coverLayerCheck row156.height row156.goods { lower := 24180, upper := 48360, M := 14 } = true := by
  decide +kernel

theorem row156_layer001_checked :
    coverLayerCheck row156.height row156.goods { lower := 48360, upper := 96720, M := 10 } = true := by
  decide +kernel

theorem row156_layer002_checked :
    coverLayerCheck row156.height row156.goods { lower := 96720, upper := 193440, M := 8 } = true := by
  decide +kernel

theorem row156_layer003_checked :
    coverLayerCheck row156.height row156.goods { lower := 193440, upper := 386880, M := 6 } = true := by
  decide +kernel

theorem row156_layer004_checked :
    coverLayerCheck row156.height row156.goods { lower := 386880, upper := 773760, M := 4 } = true := by
  decide +kernel

theorem row156_layer005_checked :
    coverLayerCheck row156.height row156.goods { lower := 773760, upper := 1547520, M := 3 } = true := by
  decide +kernel

theorem row156_layer006_checked :
    coverLayerCheck row156.height row156.goods { lower := 1547520, upper := 3095040, M := 3 } = true := by
  decide +kernel

theorem row156_layer007_checked :
    coverLayerCheck row156.height row156.goods { lower := 3095040, upper := 6190080, M := 2 } = true := by
  decide +kernel

theorem row156_layer008_checked :
    coverLayerCheck row156.height row156.goods { lower := 6190080, upper := 10000000, M := 2 } = true := by
  decide +kernel

theorem row156_layers_checked :
    row156.layers.all (coverLayerCheck row156.height row156.goods) = true := by
  change List.all [
    { lower := 24180, upper := 48360, M := 14 },
    { lower := 48360, upper := 96720, M := 10 },
    { lower := 96720, upper := 193440, M := 8 },
    { lower := 193440, upper := 386880, M := 6 },
    { lower := 386880, upper := 773760, M := 4 },
    { lower := 773760, upper := 1547520, M := 3 },
    { lower := 1547520, upper := 3095040, M := 3 },
    { lower := 3095040, upper := 6190080, M := 2 },
    { lower := 6190080, upper := 10000000, M := 2 }
  ] (coverLayerCheck row156.height row156.goods) = true
  simp only [List.all_cons, List.all_nil,
    row156_layer000_checked,
    row156_layer001_checked,
    row156_layer002_checked,
    row156_layer003_checked,
    row156_layer004_checked,
    row156_layer005_checked,
    row156_layer006_checked,
    row156_layer007_checked,
    row156_layer008_checked,
    Bool.true_and]

theorem row156_checked : finiteCoverRowCheck row156 = true := by
  simp only [finiteCoverRowCheck, row156_registered, row156_goods_checked,
    row156_small_checked, row156_layerCover_checked, row156_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row156_checked

end B699LowIndex
