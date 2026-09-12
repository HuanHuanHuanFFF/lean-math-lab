import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

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


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_good000_checked :
    goodSegmentCheck 156 51 111
      { lower := 314, upper := 468, witness := RowWitness.topPrime 313 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good001_checked :
    goodSegmentCheck 156 51 111
      { lower := 469, upper := 622, witness := RowWitness.topPrime 467 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good002_checked :
    goodSegmentCheck 156 51 111
      { lower := 623, upper := 774, witness := RowWitness.topPrime 619 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good003_checked :
    goodSegmentCheck 156 51 111
      { lower := 775, upper := 928, witness := RowWitness.topPrime 773 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good004_checked :
    goodSegmentCheck 156 51 111
      { lower := 929, upper := 1084, witness := RowWitness.topPrime 929 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good005_checked :
    goodSegmentCheck 156 51 111
      { lower := 1085, upper := 1224, witness := RowWitness.topPrime 1069 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good006_checked :
    goodSegmentCheck 156 51 111
      { lower := 1225, upper := 1378, witness := RowWitness.topPrime 1223 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good007_checked :
    goodSegmentCheck 156 51 111
      { lower := 1379, upper := 1528, witness := RowWitness.topPrime 1373 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good008_checked :
    goodSegmentCheck 156 51 111
      { lower := 1529, upper := 1678, witness := RowWitness.topPrime 1523 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good009_checked :
    goodSegmentCheck 156 51 111
      { lower := 1679, upper := 1824, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good010_checked :
    goodSegmentCheck 156 51 111
      { lower := 1825, upper := 1978, witness := RowWitness.topPrime 1823 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good011_checked :
    goodSegmentCheck 156 51 111
      { lower := 1979, upper := 2134, witness := RowWitness.topPrime 1979 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good012_checked :
    goodSegmentCheck 156 51 111
      { lower := 2135, upper := 2286, witness := RowWitness.topPrime 2131 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good013_checked :
    goodSegmentCheck 156 51 111
      { lower := 2287, upper := 2442, witness := RowWitness.topPrime 2287 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good014_checked :
    goodSegmentCheck 156 51 111
      { lower := 2443, upper := 2596, witness := RowWitness.topPrime 2441 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good015_checked :
    goodSegmentCheck 156 51 111
      { lower := 2597, upper := 2748, witness := RowWitness.topPrime 2593 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_good016_checked :
    goodSegmentCheck 156 51 111
      { lower := 2749, upper := 2904, witness := RowWitness.topPrime 2749 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good017_checked :
    goodSegmentCheck 156 51 111
      { lower := 2905, upper := 3058, witness := RowWitness.topPrime 2903 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good018_checked :
    goodSegmentCheck 156 51 111
      { lower := 3059, upper := 3204, witness := RowWitness.topPrime 3049 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good019_checked :
    goodSegmentCheck 156 51 111
      { lower := 3205, upper := 3358, witness := RowWitness.topPrime 3203 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good020_checked :
    goodSegmentCheck 156 51 111
      { lower := 3359, upper := 3514, witness := RowWitness.topPrime 3359 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good021_checked :
    goodSegmentCheck 156 51 111
      { lower := 3515, upper := 3666, witness := RowWitness.topPrime 3511 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good022_checked :
    goodSegmentCheck 156 51 111
      { lower := 3667, upper := 3814, witness := RowWitness.topPrime 3659 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good023_checked :
    goodSegmentCheck 156 51 111
      { lower := 3815, upper := 3958, witness := RowWitness.topPrime 3803 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good024_checked :
    goodSegmentCheck 156 51 111
      { lower := 3959, upper := 4102, witness := RowWitness.topPrime 3947 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good025_checked :
    goodSegmentCheck 156 51 111
      { lower := 4103, upper := 4254, witness := RowWitness.topPrime 4099 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good026_checked :
    goodSegmentCheck 156 51 111
      { lower := 4255, upper := 4408, witness := RowWitness.topPrime 4253 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good027_checked :
    goodSegmentCheck 156 51 111
      { lower := 4409, upper := 4564, witness := RowWitness.topPrime 4409 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good028_checked :
    goodSegmentCheck 156 51 111
      { lower := 4565, upper := 4716, witness := RowWitness.topPrime 4561 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good029_checked :
    goodSegmentCheck 156 51 111
      { lower := 4717, upper := 4858, witness := RowWitness.topPrime 4703 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good030_checked :
    goodSegmentCheck 156 51 111
      { lower := 4859, upper := 4986, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good031_checked :
    goodSegmentCheck 156 51 111
      { lower := 4987, upper := 5142, witness := RowWitness.topPrime 4987 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_good032_checked :
    goodSegmentCheck 156 51 111
      { lower := 5143, upper := 5274, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good033_checked :
    goodSegmentCheck 156 51 111
      { lower := 5275, upper := 5428, witness := RowWitness.topPrime 5273 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good034_checked :
    goodSegmentCheck 156 51 111
      { lower := 5429, upper := 5574, witness := RowWitness.topPrime 5419 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good035_checked :
    goodSegmentCheck 156 51 111
      { lower := 5575, upper := 5728, witness := RowWitness.topPrime 5573 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good036_checked :
    goodSegmentCheck 156 51 111
      { lower := 5729, upper := 5872, witness := RowWitness.topPrime 5717 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good037_checked :
    goodSegmentCheck 156 51 111
      { lower := 5873, upper := 6024, witness := RowWitness.topPrime 5869 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good038_checked :
    goodSegmentCheck 156 51 111
      { lower := 6025, upper := 6166, witness := RowWitness.topPrime 6011 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good039_checked :
    goodSegmentCheck 156 51 111
      { lower := 6167, upper := 6318, witness := RowWitness.topPrime 6163 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good040_checked :
    goodSegmentCheck 156 51 111
      { lower := 6319, upper := 6472, witness := RowWitness.topPrime 6317 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good041_checked :
    goodSegmentCheck 156 51 111
      { lower := 6473, upper := 6628, witness := RowWitness.topPrime 6473 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good042_checked :
    goodSegmentCheck 156 51 111
      { lower := 6629, upper := 6774, witness := RowWitness.topPrime 6619 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good043_checked :
    goodSegmentCheck 156 51 111
      { lower := 6775, upper := 6918, witness := RowWitness.topPrime 6763 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good044_checked :
    goodSegmentCheck 156 51 111
      { lower := 6919, upper := 7072, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good045_checked :
    goodSegmentCheck 156 51 111
      { lower := 7073, upper := 7224, witness := RowWitness.topPrime 7069 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good046_checked :
    goodSegmentCheck 156 51 111
      { lower := 7225, upper := 7374, witness := RowWitness.topPrime 7219 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good047_checked :
    goodSegmentCheck 156 51 111
      { lower := 7375, upper := 7524, witness := RowWitness.topPrime 7369 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_good048_checked :
    goodSegmentCheck 156 51 111
      { lower := 7525, upper := 7678, witness := RowWitness.topPrime 7523 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good049_checked :
    goodSegmentCheck 156 51 111
      { lower := 7679, upper := 7828, witness := RowWitness.topPrime 7673 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good050_checked :
    goodSegmentCheck 156 51 111
      { lower := 7829, upper := 7984, witness := RowWitness.topPrime 7829 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good051_checked :
    goodSegmentCheck 156 51 111
      { lower := 7985, upper := 8118, witness := RowWitness.topPrime 7963 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good052_checked :
    goodSegmentCheck 156 51 111
      { lower := 8119, upper := 8272, witness := RowWitness.topPrime 8117 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good053_checked :
    goodSegmentCheck 156 51 111
      { lower := 8273, upper := 8428, witness := RowWitness.topPrime 8273 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good054_checked :
    goodSegmentCheck 156 51 111
      { lower := 8429, upper := 8584, witness := RowWitness.topPrime 8429 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good055_checked :
    goodSegmentCheck 156 51 111
      { lower := 8585, upper := 8736, witness := RowWitness.topPrime 8581 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good056_checked :
    goodSegmentCheck 156 51 111
      { lower := 8737, upper := 8892, witness := RowWitness.topPrime 8737 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good057_checked :
    goodSegmentCheck 156 51 111
      { lower := 8893, upper := 9048, witness := RowWitness.topPrime 8893 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good058_checked :
    goodSegmentCheck 156 51 111
      { lower := 9049, upper := 9204, witness := RowWitness.topPrime 9049 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good059_checked :
    goodSegmentCheck 156 51 111
      { lower := 9205, upper := 9358, witness := RowWitness.topPrime 9203 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good060_checked :
    goodSegmentCheck 156 51 111
      { lower := 9359, upper := 9504, witness := RowWitness.topPrime 9349 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good061_checked :
    goodSegmentCheck 156 51 111
      { lower := 9505, upper := 9652, witness := RowWitness.topPrime 9497 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good062_checked :
    goodSegmentCheck 156 51 111
      { lower := 9653, upper := 9804, witness := RowWitness.topPrime 9649 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good063_checked :
    goodSegmentCheck 156 51 111
      { lower := 9805, upper := 9958, witness := RowWitness.topPrime 9803 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_good064_checked :
    goodSegmentCheck 156 51 111
      { lower := 9959, upper := 10104, witness := RowWitness.topPrime 9949 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good065_checked :
    goodSegmentCheck 156 51 111
      { lower := 10105, upper := 10258, witness := RowWitness.topPrime 10103 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good066_checked :
    goodSegmentCheck 156 51 111
      { lower := 10259, upper := 10414, witness := RowWitness.topPrime 10259 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good067_checked :
    goodSegmentCheck 156 51 111
      { lower := 10415, upper := 10554, witness := RowWitness.topPrime 10399 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good068_checked :
    goodSegmentCheck 156 51 111
      { lower := 10555, upper := 10686, witness := RowWitness.topPrime 10531 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good069_checked :
    goodSegmentCheck 156 51 111
      { lower := 10687, upper := 10842, witness := RowWitness.topPrime 10687 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good070_checked :
    goodSegmentCheck 156 51 111
      { lower := 10843, upper := 10992, witness := RowWitness.topPrime 10837 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good071_checked :
    goodSegmentCheck 156 51 111
      { lower := 10993, upper := 11148, witness := RowWitness.topPrime 10993 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good072_checked :
    goodSegmentCheck 156 51 111
      { lower := 11149, upper := 11304, witness := RowWitness.topPrime 11149 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good073_checked :
    goodSegmentCheck 156 51 111
      { lower := 11305, upper := 11454, witness := RowWitness.topPrime 11299 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good074_checked :
    goodSegmentCheck 156 51 111
      { lower := 11455, upper := 11602, witness := RowWitness.topPrime 11447 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good075_checked :
    goodSegmentCheck 156 51 111
      { lower := 11603, upper := 11752, witness := RowWitness.topPrime 11597 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good076_checked :
    goodSegmentCheck 156 51 111
      { lower := 11753, upper := 11898, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good077_checked :
    goodSegmentCheck 156 51 111
      { lower := 11899, upper := 12052, witness := RowWitness.topPrime 11897 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good078_checked :
    goodSegmentCheck 156 51 111
      { lower := 12053, upper := 12204, witness := RowWitness.topPrime 12049 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good079_checked :
    goodSegmentCheck 156 51 111
      { lower := 12205, upper := 12358, witness := RowWitness.topPrime 12203 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_good080_checked :
    goodSegmentCheck 156 51 111
      { lower := 12359, upper := 12502, witness := RowWitness.topPrime 12347 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good081_checked :
    goodSegmentCheck 156 51 111
      { lower := 12503, upper := 12658, witness := RowWitness.topPrime 12503 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good082_checked :
    goodSegmentCheck 156 51 111
      { lower := 12659, upper := 12814, witness := RowWitness.topPrime 12659 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good083_checked :
    goodSegmentCheck 156 51 111
      { lower := 12815, upper := 12964, witness := RowWitness.topPrime 12809 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good084_checked :
    goodSegmentCheck 156 51 111
      { lower := 12965, upper := 13114, witness := RowWitness.topPrime 12959 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good085_checked :
    goodSegmentCheck 156 51 111
      { lower := 13115, upper := 13264, witness := RowWitness.topPrime 13109 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good086_checked :
    goodSegmentCheck 156 51 111
      { lower := 13265, upper := 13414, witness := RowWitness.topPrime 13259 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good087_checked :
    goodSegmentCheck 156 51 111
      { lower := 13415, upper := 13566, witness := RowWitness.topPrime 13411 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good088_checked :
    goodSegmentCheck 156 51 111
      { lower := 13567, upper := 13722, witness := RowWitness.topPrime 13567 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good089_checked :
    goodSegmentCheck 156 51 111
      { lower := 13723, upper := 13878, witness := RowWitness.topPrime 13723 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good090_checked :
    goodSegmentCheck 156 51 111
      { lower := 13879, upper := 14034, witness := RowWitness.topPrime 13879 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good091_checked :
    goodSegmentCheck 156 51 111
      { lower := 14035, upper := 14188, witness := RowWitness.topPrime 14033 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good092_checked :
    goodSegmentCheck 156 51 111
      { lower := 14189, upper := 14332, witness := RowWitness.topPrime 14177 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good093_checked :
    goodSegmentCheck 156 51 111
      { lower := 14333, upper := 14482, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good094_checked :
    goodSegmentCheck 156 51 111
      { lower := 14483, upper := 14634, witness := RowWitness.topPrime 14479 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good095_checked :
    goodSegmentCheck 156 51 111
      { lower := 14635, upper := 14788, witness := RowWitness.topPrime 14633 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_good096_checked :
    goodSegmentCheck 156 51 111
      { lower := 14789, upper := 14938, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good097_checked :
    goodSegmentCheck 156 51 111
      { lower := 14939, upper := 15094, witness := RowWitness.topPrime 14939 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good098_checked :
    goodSegmentCheck 156 51 111
      { lower := 15095, upper := 15246, witness := RowWitness.topPrime 15091 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good099_checked :
    goodSegmentCheck 156 51 111
      { lower := 15247, upper := 15396, witness := RowWitness.topPrime 15241 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good100_checked :
    goodSegmentCheck 156 51 111
      { lower := 15397, upper := 15546, witness := RowWitness.topPrime 15391 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good101_checked :
    goodSegmentCheck 156 51 111
      { lower := 15547, upper := 15696, witness := RowWitness.topPrime 15541 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good102_checked :
    goodSegmentCheck 156 51 111
      { lower := 15697, upper := 15838, witness := RowWitness.topPrime 15683 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good103_checked :
    goodSegmentCheck 156 51 111
      { lower := 15839, upper := 15978, witness := RowWitness.topPrime 15823 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good104_checked :
    goodSegmentCheck 156 51 111
      { lower := 15979, upper := 16128, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good105_checked :
    goodSegmentCheck 156 51 111
      { lower := 16129, upper := 16282, witness := RowWitness.topPrime 16127 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good106_checked :
    goodSegmentCheck 156 51 111
      { lower := 16283, upper := 16428, witness := RowWitness.topPrime 16273 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good107_checked :
    goodSegmentCheck 156 51 111
      { lower := 16429, upper := 16582, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good108_checked :
    goodSegmentCheck 156 51 111
      { lower := 16583, upper := 16728, witness := RowWitness.topPrime 16573 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good109_checked :
    goodSegmentCheck 156 51 111
      { lower := 16729, upper := 16884, witness := RowWitness.topPrime 16729 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good110_checked :
    goodSegmentCheck 156 51 111
      { lower := 16885, upper := 17038, witness := RowWitness.topPrime 16883 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good111_checked :
    goodSegmentCheck 156 51 111
      { lower := 17039, upper := 17188, witness := RowWitness.topPrime 17033 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_good112_checked :
    goodSegmentCheck 156 51 111
      { lower := 17189, upper := 17344, witness := RowWitness.topPrime 17189 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good113_checked :
    goodSegmentCheck 156 51 111
      { lower := 17345, upper := 17496, witness := RowWitness.topPrime 17341 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good114_checked :
    goodSegmentCheck 156 51 111
      { lower := 17497, upper := 17652, witness := RowWitness.topPrime 17497 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good115_checked :
    goodSegmentCheck 156 51 111
      { lower := 17653, upper := 17782, witness := RowWitness.topPrime 17627 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good116_checked :
    goodSegmentCheck 156 51 111
      { lower := 17783, upper := 17938, witness := RowWitness.topPrime 17783 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good117_checked :
    goodSegmentCheck 156 51 111
      { lower := 17939, upper := 18094, witness := RowWitness.topPrime 17939 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good118_checked :
    goodSegmentCheck 156 51 111
      { lower := 18095, upper := 18244, witness := RowWitness.topPrime 18089 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good119_checked :
    goodSegmentCheck 156 51 111
      { lower := 18245, upper := 18388, witness := RowWitness.topPrime 18233 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good120_checked :
    goodSegmentCheck 156 51 111
      { lower := 18389, upper := 18534, witness := RowWitness.topPrime 18379 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good121_checked :
    goodSegmentCheck 156 51 111
      { lower := 18535, upper := 18678, witness := RowWitness.topPrime 18523 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good122_checked :
    goodSegmentCheck 156 51 111
      { lower := 18679, upper := 18834, witness := RowWitness.topPrime 18679 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good123_checked :
    goodSegmentCheck 156 51 111
      { lower := 18835, upper := 18958, witness := RowWitness.topPrime 18803 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good124_checked :
    goodSegmentCheck 156 51 111
      { lower := 18959, upper := 19114, witness := RowWitness.topPrime 18959 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good125_checked :
    goodSegmentCheck 156 51 111
      { lower := 19115, upper := 19242, witness := RowWitness.topPrime 19087 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good126_checked :
    goodSegmentCheck 156 51 111
      { lower := 19243, upper := 19392, witness := RowWitness.topPrime 19237 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good127_checked :
    goodSegmentCheck 156 51 111
      { lower := 19393, upper := 19546, witness := RowWitness.topPrime 19391 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_good128_checked :
    goodSegmentCheck 156 51 111
      { lower := 19547, upper := 19698, witness := RowWitness.topPrime 19543 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good129_checked :
    goodSegmentCheck 156 51 111
      { lower := 19699, upper := 19854, witness := RowWitness.topPrime 19699 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good130_checked :
    goodSegmentCheck 156 51 111
      { lower := 19855, upper := 20008, witness := RowWitness.topPrime 19853 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good131_checked :
    goodSegmentCheck 156 51 111
      { lower := 20009, upper := 20152, witness := RowWitness.topPrime 19997 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good132_checked :
    goodSegmentCheck 156 51 111
      { lower := 20153, upper := 20304, witness := RowWitness.topPrime 20149 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good133_checked :
    goodSegmentCheck 156 51 111
      { lower := 20305, upper := 20452, witness := RowWitness.topPrime 20297 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good134_checked :
    goodSegmentCheck 156 51 111
      { lower := 20453, upper := 20598, witness := RowWitness.topPrime 20443 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good135_checked :
    goodSegmentCheck 156 51 111
      { lower := 20599, upper := 20754, witness := RowWitness.topPrime 20599 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good136_checked :
    goodSegmentCheck 156 51 111
      { lower := 20755, upper := 20908, witness := RowWitness.topPrime 20753 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good137_checked :
    goodSegmentCheck 156 51 111
      { lower := 20909, upper := 21058, witness := RowWitness.topPrime 20903 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good138_checked :
    goodSegmentCheck 156 51 111
      { lower := 21059, upper := 21214, witness := RowWitness.topPrime 21059 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good139_checked :
    goodSegmentCheck 156 51 111
      { lower := 21215, upper := 21366, witness := RowWitness.topPrime 21211 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good140_checked :
    goodSegmentCheck 156 51 111
      { lower := 21367, upper := 21502, witness := RowWitness.topPrime 21347 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good141_checked :
    goodSegmentCheck 156 51 111
      { lower := 21503, upper := 21658, witness := RowWitness.topPrime 21503 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good142_checked :
    goodSegmentCheck 156 51 111
      { lower := 21659, upper := 21804, witness := RowWitness.topPrime 21649 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good143_checked :
    goodSegmentCheck 156 51 111
      { lower := 21805, upper := 21958, witness := RowWitness.topPrime 21803 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_good144_checked :
    goodSegmentCheck 156 51 111
      { lower := 21959, upper := 22098, witness := RowWitness.topPrime 21943 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good145_checked :
    goodSegmentCheck 156 51 111
      { lower := 22099, upper := 22248, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good146_checked :
    goodSegmentCheck 156 51 111
      { lower := 22249, upper := 22402, witness := RowWitness.topPrime 22247 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good147_checked :
    goodSegmentCheck 156 51 111
      { lower := 22403, upper := 22552, witness := RowWitness.topPrime 22397 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good148_checked :
    goodSegmentCheck 156 51 111
      { lower := 22553, upper := 22704, witness := RowWitness.topPrime 22549 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good149_checked :
    goodSegmentCheck 156 51 111
      { lower := 22705, upper := 22854, witness := RowWitness.topPrime 22699 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good150_checked :
    goodSegmentCheck 156 51 111
      { lower := 22855, upper := 23008, witness := RowWitness.topPrime 22853 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good151_checked :
    goodSegmentCheck 156 51 111
      { lower := 23009, upper := 23158, witness := RowWitness.topPrime 23003 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good152_checked :
    goodSegmentCheck 156 51 111
      { lower := 23159, upper := 23314, witness := RowWitness.topPrime 23159 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good153_checked :
    goodSegmentCheck 156 51 111
      { lower := 23315, upper := 23466, witness := RowWitness.topPrime 23311 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good154_checked :
    goodSegmentCheck 156 51 111
      { lower := 23467, upper := 23614, witness := RowWitness.topPrime 23459 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good155_checked :
    goodSegmentCheck 156 51 111
      { lower := 23615, upper := 23764, witness := RowWitness.topPrime 23609 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good156_checked :
    goodSegmentCheck 156 51 111
      { lower := 23765, upper := 23916, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good157_checked :
    goodSegmentCheck 156 51 111
      { lower := 23917, upper := 24072, witness := RowWitness.topPrime 23917 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good158_checked :
    goodSegmentCheck 156 51 111
      { lower := 24073, upper := 24179, witness := RowWitness.topPrime 24071 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good159_checked :
    goodSegmentCheck 156 51 111
      { lower := 24334, upper := 24484, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_good160_checked :
    goodSegmentCheck 156 51 111
      { lower := 24485, upper := 24522, witness := RowWitness.topPrime 24481 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good161_checked :
    goodSegmentCheck 156 51 111
      { lower := 24576, upper := 24720, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good162_checked :
    goodSegmentCheck 156 51 111
      { lower := 25000, upper := 25119, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good163_checked :
    goodSegmentCheck 156 51 111
      { lower := 25281, upper := 25360, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good164_checked :
    goodSegmentCheck 156 51 111
      { lower := 26508, upper := 26566, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good165_checked :
    goodSegmentCheck 156 51 111
      { lower := 26645, upper := 26663, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good166_checked :
    goodSegmentCheck 156 51 111
      { lower := 27556, upper := 27591, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good167_checked :
    goodSegmentCheck 156 51 111
      { lower := 28125, upper := 28278, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good168_checked :
    goodSegmentCheck 156 51 111
      { lower := 28279, upper := 28280, witness := RowWitness.topPrime 28279 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good169_checked :
    goodSegmentCheck 156 51 111
      { lower := 28812, upper := 28872, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good170_checked :
    goodSegmentCheck 156 51 111
      { lower := 29791, upper := 29923, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good171_checked :
    goodSegmentCheck 156 51 111
      { lower := 30926, upper := 31054, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good172_checked :
    goodSegmentCheck 156 51 111
      { lower := 31213, upper := 31348, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good173_checked :
    goodSegmentCheck 156 51 111
      { lower := 31349, upper := 31405, witness := RowWitness.topPrime 31337 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good174_checked :
    goodSegmentCheck 156 51 111
      { lower := 31423, upper := 31484, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good175_checked :
    goodSegmentCheck 156 51 111
      { lower := 31827, upper := 31839, witness := RowWitness.topPrime 31817 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_good176_checked :
    goodSegmentCheck 156 51 111
      { lower := 31974, upper := 31982, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good177_checked :
    goodSegmentCheck 156 51 111
      { lower := 33614, upper := 33644, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good178_checked :
    goodSegmentCheck 156 51 111
      { lower := 33708, upper := 33769, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good179_checked :
    goodSegmentCheck 156 51 111
      { lower := 34322, upper := 34474, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good180_checked :
    goodSegmentCheck 156 51 111
      { lower := 34475, upper := 34546, witness := RowWitness.topPrime 34471 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good181_checked :
    goodSegmentCheck 156 51 111
      { lower := 36517, upper := 36652, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good182_checked :
    goodSegmentCheck 156 51 111
      { lower := 36653, upper := 36656, witness := RowWitness.topPrime 36653 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good183_checked :
    goodSegmentCheck 156 51 111
      { lower := 37303, upper := 37365, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good184_checked :
    goodSegmentCheck 156 51 111
      { lower := 37446, upper := 37458, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good185_checked :
    goodSegmentCheck 156 51 111
      { lower := 37500, upper := 37648, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good186_checked :
    goodSegmentCheck 156 51 111
      { lower := 37649, upper := 37693, witness := RowWitness.topPrime 37649 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good187_checked :
    goodSegmentCheck 156 51 111
      { lower := 38307, upper := 38446, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good188_checked :
    goodSegmentCheck 156 51 111
      { lower := 39326, upper := 39478, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good189_checked :
    goodSegmentCheck 156 51 111
      { lower := 39479, upper := 39481, witness := RowWitness.topPrime 39461 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good190_checked :
    goodSegmentCheck 156 51 111
      { lower := 40401, upper := 40483, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good191_checked :
    goodSegmentCheck 156 51 111
      { lower := 40931, upper := 40959, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_good192_checked :
    goodSegmentCheck 156 51 111
      { lower := 43750, upper := 43842, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good193_checked :
    goodSegmentCheck 156 51 111
      { lower := 45369, upper := 45408, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good194_checked :
    goodSegmentCheck 156 51 111
      { lower := 47526, upper := 47676, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good195_checked :
    goodSegmentCheck 156 51 111
      { lower := 47677, upper := 47679, witness := RowWitness.topPrime 47659 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good196_checked :
    goodSegmentCheck 156 51 111
      { lower := 48013, upper := 48116, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good197_checked :
    goodSegmentCheck 156 51 111
      { lower := 48778, upper := 48823, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good198_checked :
    goodSegmentCheck 156 51 111
      { lower := 50421, upper := 50565, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good199_checked :
    goodSegmentCheck 156 51 111
      { lower := 51076, upper := 51160, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good200_checked :
    goodSegmentCheck 156 51 111
      { lower := 56307, upper := 56324, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good201_checked :
    goodSegmentCheck 156 51 111
      { lower := 56454, upper := 56462, witness := RowWitness.topPrime 56453 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good202_checked :
    goodSegmentCheck 156 51 111
      { lower := 62500, upper := 62565, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good203_checked :
    goodSegmentCheck 156 51 111
      { lower := 68644, upper := 68794, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good204_checked :
    goodSegmentCheck 156 51 111
      { lower := 68795, upper := 68799, witness := RowWitness.topPrime 68791 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good205_checked :
    goodSegmentCheck 156 51 111
      { lower := 68921, upper := 69045, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good206_checked :
    goodSegmentCheck 156 51 111
      { lower := 71289, upper := 71442, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good207_checked :
    goodSegmentCheck 156 51 111
      { lower := 71443, upper := 71444, witness := RowWitness.topPrime 71443 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_good208_checked :
    goodSegmentCheck 156 51 111
      { lower := 73205, upper := 73322, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good209_checked :
    goodSegmentCheck 156 51 111
      { lower := 89383, upper := 89528, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good210_checked :
    goodSegmentCheck 156 51 111
      { lower := 93845, upper := 93905, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good211_checked :
    goodSegmentCheck 156 51 111
      { lower := 148955, upper := 149032, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good211_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_goods_checked :
    row156.goods.all (goodSegmentCheck row156.height.i row156.height.r row156.height.s) = true := by
  change row156_goods.all (goodSegmentCheck 156 51 111) = true
  simp only [row156_goods, List.all_cons, List.all_nil,
    row156_good000_checked,
    row156_good001_checked,
    row156_good002_checked,
    row156_good003_checked,
    row156_good004_checked,
    row156_good005_checked,
    row156_good006_checked,
    row156_good007_checked,
    row156_good008_checked,
    row156_good009_checked,
    row156_good010_checked,
    row156_good011_checked,
    row156_good012_checked,
    row156_good013_checked,
    row156_good014_checked,
    row156_good015_checked,
    row156_good016_checked,
    row156_good017_checked,
    row156_good018_checked,
    row156_good019_checked,
    row156_good020_checked,
    row156_good021_checked,
    row156_good022_checked,
    row156_good023_checked,
    row156_good024_checked,
    row156_good025_checked,
    row156_good026_checked,
    row156_good027_checked,
    row156_good028_checked,
    row156_good029_checked,
    row156_good030_checked,
    row156_good031_checked,
    row156_good032_checked,
    row156_good033_checked,
    row156_good034_checked,
    row156_good035_checked,
    row156_good036_checked,
    row156_good037_checked,
    row156_good038_checked,
    row156_good039_checked,
    row156_good040_checked,
    row156_good041_checked,
    row156_good042_checked,
    row156_good043_checked,
    row156_good044_checked,
    row156_good045_checked,
    row156_good046_checked,
    row156_good047_checked,
    row156_good048_checked,
    row156_good049_checked,
    row156_good050_checked,
    row156_good051_checked,
    row156_good052_checked,
    row156_good053_checked,
    row156_good054_checked,
    row156_good055_checked,
    row156_good056_checked,
    row156_good057_checked,
    row156_good058_checked,
    row156_good059_checked,
    row156_good060_checked,
    row156_good061_checked,
    row156_good062_checked,
    row156_good063_checked,
    row156_good064_checked,
    row156_good065_checked,
    row156_good066_checked,
    row156_good067_checked,
    row156_good068_checked,
    row156_good069_checked,
    row156_good070_checked,
    row156_good071_checked,
    row156_good072_checked,
    row156_good073_checked,
    row156_good074_checked,
    row156_good075_checked,
    row156_good076_checked,
    row156_good077_checked,
    row156_good078_checked,
    row156_good079_checked,
    row156_good080_checked,
    row156_good081_checked,
    row156_good082_checked,
    row156_good083_checked,
    row156_good084_checked,
    row156_good085_checked,
    row156_good086_checked,
    row156_good087_checked,
    row156_good088_checked,
    row156_good089_checked,
    row156_good090_checked,
    row156_good091_checked,
    row156_good092_checked,
    row156_good093_checked,
    row156_good094_checked,
    row156_good095_checked,
    row156_good096_checked,
    row156_good097_checked,
    row156_good098_checked,
    row156_good099_checked,
    row156_good100_checked,
    row156_good101_checked,
    row156_good102_checked,
    row156_good103_checked,
    row156_good104_checked,
    row156_good105_checked,
    row156_good106_checked,
    row156_good107_checked,
    row156_good108_checked,
    row156_good109_checked,
    row156_good110_checked,
    row156_good111_checked,
    row156_good112_checked,
    row156_good113_checked,
    row156_good114_checked,
    row156_good115_checked,
    row156_good116_checked,
    row156_good117_checked,
    row156_good118_checked,
    row156_good119_checked,
    row156_good120_checked,
    row156_good121_checked,
    row156_good122_checked,
    row156_good123_checked,
    row156_good124_checked,
    row156_good125_checked,
    row156_good126_checked,
    row156_good127_checked,
    row156_good128_checked,
    row156_good129_checked,
    row156_good130_checked,
    row156_good131_checked,
    row156_good132_checked,
    row156_good133_checked,
    row156_good134_checked,
    row156_good135_checked,
    row156_good136_checked,
    row156_good137_checked,
    row156_good138_checked,
    row156_good139_checked,
    row156_good140_checked,
    row156_good141_checked,
    row156_good142_checked,
    row156_good143_checked,
    row156_good144_checked,
    row156_good145_checked,
    row156_good146_checked,
    row156_good147_checked,
    row156_good148_checked,
    row156_good149_checked,
    row156_good150_checked,
    row156_good151_checked,
    row156_good152_checked,
    row156_good153_checked,
    row156_good154_checked,
    row156_good155_checked,
    row156_good156_checked,
    row156_good157_checked,
    row156_good158_checked,
    row156_good159_checked,
    row156_good160_checked,
    row156_good161_checked,
    row156_good162_checked,
    row156_good163_checked,
    row156_good164_checked,
    row156_good165_checked,
    row156_good166_checked,
    row156_good167_checked,
    row156_good168_checked,
    row156_good169_checked,
    row156_good170_checked,
    row156_good171_checked,
    row156_good172_checked,
    row156_good173_checked,
    row156_good174_checked,
    row156_good175_checked,
    row156_good176_checked,
    row156_good177_checked,
    row156_good178_checked,
    row156_good179_checked,
    row156_good180_checked,
    row156_good181_checked,
    row156_good182_checked,
    row156_good183_checked,
    row156_good184_checked,
    row156_good185_checked,
    row156_good186_checked,
    row156_good187_checked,
    row156_good188_checked,
    row156_good189_checked,
    row156_good190_checked,
    row156_good191_checked,
    row156_good192_checked,
    row156_good193_checked,
    row156_good194_checked,
    row156_good195_checked,
    row156_good196_checked,
    row156_good197_checked,
    row156_good198_checked,
    row156_good199_checked,
    row156_good200_checked,
    row156_good201_checked,
    row156_good202_checked,
    row156_good203_checked,
    row156_good204_checked,
    row156_good205_checked,
    row156_good206_checked,
    row156_good207_checked,
    row156_good208_checked,
    row156_good209_checked,
    row156_good210_checked,
    row156_good211_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_registered :
    decide (row156.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row156_small_checked :
    coverCheck (2 * row156.height.i + 2) (row156.height.i * (row156.height.i - 1) - 1)
      (row156.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row156_layerCover_checked :
    coverCheck (row156.height.i * (row156.height.i - 1)) (row156.height.n0 - 1)
      (row156.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row156_bounds : List NatInterval :=
  [(314, 468), (469, 622), (623, 774), (775, 928), (929, 1084), (1085, 1224), (1225, 1378), (1379, 1528), (1529, 1678), (1679, 1824), (1825, 1978), (1979, 2134), (2135, 2286), (2287, 2442), (2443, 2596), (2597, 2748), (2749, 2904), (2905, 3058), (3059, 3204), (3205, 3358), (3359, 3514), (3515, 3666), (3667, 3814), (3815, 3958), (3959, 4102), (4103, 4254), (4255, 4408), (4409, 4564), (4565, 4716), (4717, 4858), (4859, 4986), (4987, 5142), (5143, 5274), (5275, 5428), (5429, 5574), (5575, 5728), (5729, 5872), (5873, 6024), (6025, 6166), (6167, 6318), (6319, 6472), (6473, 6628), (6629, 6774), (6775, 6918), (6919, 7072), (7073, 7224), (7225, 7374), (7375, 7524), (7525, 7678), (7679, 7828), (7829, 7984), (7985, 8118), (8119, 8272), (8273, 8428), (8429, 8584), (8585, 8736), (8737, 8892), (8893, 9048), (9049, 9204), (9205, 9358), (9359, 9504), (9505, 9652), (9653, 9804), (9805, 9958), (9959, 10104), (10105, 10258), (10259, 10414), (10415, 10554), (10555, 10686), (10687, 10842), (10843, 10992), (10993, 11148), (11149, 11304), (11305, 11454), (11455, 11602), (11603, 11752), (11753, 11898), (11899, 12052), (12053, 12204), (12205, 12358), (12359, 12502), (12503, 12658), (12659, 12814), (12815, 12964), (12965, 13114), (13115, 13264), (13265, 13414), (13415, 13566), (13567, 13722), (13723, 13878), (13879, 14034), (14035, 14188), (14189, 14332), (14333, 14482), (14483, 14634), (14635, 14788), (14789, 14938), (14939, 15094), (15095, 15246), (15247, 15396), (15397, 15546), (15547, 15696), (15697, 15838), (15839, 15978), (15979, 16128), (16129, 16282), (16283, 16428), (16429, 16582), (16583, 16728), (16729, 16884), (16885, 17038), (17039, 17188), (17189, 17344), (17345, 17496), (17497, 17652), (17653, 17782), (17783, 17938), (17939, 18094), (18095, 18244), (18245, 18388), (18389, 18534), (18535, 18678), (18679, 18834), (18835, 18958), (18959, 19114), (19115, 19242), (19243, 19392), (19393, 19546), (19547, 19698), (19699, 19854), (19855, 20008), (20009, 20152), (20153, 20304), (20305, 20452), (20453, 20598), (20599, 20754), (20755, 20908), (20909, 21058), (21059, 21214), (21215, 21366), (21367, 21502), (21503, 21658), (21659, 21804), (21805, 21958), (21959, 22098), (22099, 22248), (22249, 22402), (22403, 22552), (22553, 22704), (22705, 22854), (22855, 23008), (23009, 23158), (23159, 23314), (23315, 23466), (23467, 23614), (23615, 23764), (23765, 23916), (23917, 24072), (24073, 24179), (24334, 24484), (24485, 24522), (24576, 24720), (25000, 25119), (25281, 25360), (26508, 26566), (26645, 26663), (27556, 27591), (28125, 28278), (28279, 28280), (28812, 28872), (29791, 29923), (30926, 31054), (31213, 31348), (31349, 31405), (31423, 31484), (31827, 31839), (31974, 31982), (33614, 33644), (33708, 33769), (34322, 34474), (34475, 34546), (36517, 36652), (36653, 36656), (37303, 37365), (37446, 37458), (37500, 37648), (37649, 37693), (38307, 38446), (39326, 39478), (39479, 39481), (40401, 40483), (40931, 40959), (43750, 43842), (45369, 45408), (47526, 47676), (47677, 47679), (48013, 48116), (48778, 48823), (50421, 50565), (51076, 51160), (56307, 56324), (56454, 56462), (62500, 62565), (68644, 68794), (68795, 68799), (68921, 69045), (71289, 71442), (71443, 71444), (73205, 73322), (89383, 89528), (93845, 93905), (148955, 149032)]

theorem row156_bounds_eq : row156.goods.map goodSegmentBounds = row156_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row156_layer000_intervals : List ColouredInterval :=
  [(2, 24576, 24731), (2, 32768, 32923), (2, 32768, 32923), (3, 26244, 26399), (3, 39366, 39521), (5, 25000, 25155), (5, 28125, 28280), (5, 31250, 31405), (5, 34375, 34530), (5, 37500, 37655), (5, 40625, 40780), (5, 43750, 43905), (5, 31250, 31405), (5, 46875, 47030), (7, 26411, 26566), (7, 28812, 28967), (7, 31213, 31368), (7, 33614, 33769), (7, 33614, 33769), (11, 29282, 29437), (11, 43923, 44078), (13, 28561, 28716), (17, 24565, 24720), (17, 29478, 29633), (17, 34391, 34546), (17, 39304, 39459), (17, 44217, 44372), (19, 27436, 27591), (19, 34295, 34450), (19, 41154, 41309), (19, 48013, 48168), (23, 24334, 24489), (23, 36501, 36656), (29, 24389, 24544), (31, 29791, 29946), (43, 24180, 24192), (43, 25886, 26041), (47, 24299, 24454), (47, 26508, 26663), (47, 28717, 28872), (47, 30926, 31081), (53, 25281, 25436), (53, 28090, 28245), (53, 30899, 31054), (53, 33708, 33863), (53, 36517, 36672), (53, 39326, 39481), (59, 24367, 24522), (59, 27848, 28003), (59, 31329, 31484), (59, 34810, 34965), (59, 38291, 38446), (59, 41772, 41927), (59, 45253, 45408), (61, 26047, 26202), (61, 29768, 29923), (61, 33489, 33644), (61, 37210, 37365), (61, 40931, 41086), (61, 44652, 44807), (67, 26934, 27089), (67, 31423, 31578), (67, 35912, 36067), (67, 40401, 40556), (67, 44890, 45045), (71, 25205, 25360), (71, 30246, 30401), (71, 35287, 35442), (71, 40328, 40483), (71, 45369, 45524), (73, 26645, 26800), (73, 31974, 32129), (73, 37303, 37458), (73, 42632, 42787), (73, 47961, 48116), (79, 24964, 25119), (79, 31205, 31360), (79, 37446, 37601), (79, 43687, 43842), (83, 27556, 27711), (83, 34445, 34600), (83, 41334, 41489), (83, 48223, 48359), (89, 31684, 31839), (89, 39605, 39760), (89, 47526, 47681), (97, 28227, 28382), (97, 37636, 37791), (97, 47045, 47200), (101, 30603, 30758), (101, 40804, 40959), (103, 31827, 31982), (103, 42436, 42591), (107, 34347, 34502), (107, 45796, 45951), (109, 35643, 35798), (109, 47524, 47679), (113, 25538, 25693), (113, 38307, 38462), (127, 32258, 32413), (131, 34322, 34477), (137, 37538, 37693), (139, 38642, 38797), (149, 44402, 44557), (151, 45602, 45757)]

def row156_layer000_block000 : List ColouredInterval :=
  [(2, 24576, 24731), (2, 32768, 32923), (2, 32768, 32923), (3, 26244, 26399), (3, 39366, 39521), (5, 25000, 25155), (5, 28125, 28280), (5, 31250, 31405), (5, 34375, 34530), (5, 37500, 37655), (5, 40625, 40780), (5, 43750, 43905), (5, 31250, 31405), (5, 46875, 47030), (7, 26411, 26566), (7, 28812, 28967)]

def row156_layer000_block001 : List ColouredInterval :=
  [(7, 31213, 31368), (7, 33614, 33769), (7, 33614, 33769), (11, 29282, 29437), (11, 43923, 44078), (13, 28561, 28716), (17, 24565, 24720), (17, 29478, 29633), (17, 34391, 34546), (17, 39304, 39459), (17, 44217, 44372), (19, 27436, 27591), (19, 34295, 34450), (19, 41154, 41309), (19, 48013, 48168), (23, 24334, 24489)]

def row156_layer000_block002 : List ColouredInterval :=
  [(23, 36501, 36656), (29, 24389, 24544), (31, 29791, 29946), (43, 24180, 24192), (43, 25886, 26041), (47, 24299, 24454), (47, 26508, 26663), (47, 28717, 28872), (47, 30926, 31081), (53, 25281, 25436), (53, 28090, 28245), (53, 30899, 31054), (53, 33708, 33863), (53, 36517, 36672), (53, 39326, 39481), (59, 24367, 24522)]

def row156_layer000_block003 : List ColouredInterval :=
  [(59, 27848, 28003), (59, 31329, 31484), (59, 34810, 34965), (59, 38291, 38446), (59, 41772, 41927), (59, 45253, 45408), (61, 26047, 26202), (61, 29768, 29923), (61, 33489, 33644), (61, 37210, 37365), (61, 40931, 41086), (61, 44652, 44807), (67, 26934, 27089), (67, 31423, 31578), (67, 35912, 36067), (67, 40401, 40556)]

def row156_layer000_block004 : List ColouredInterval :=
  [(67, 44890, 45045), (71, 25205, 25360), (71, 30246, 30401), (71, 35287, 35442), (71, 40328, 40483), (71, 45369, 45524), (73, 26645, 26800), (73, 31974, 32129), (73, 37303, 37458), (73, 42632, 42787), (73, 47961, 48116), (79, 24964, 25119), (79, 31205, 31360), (79, 37446, 37601), (79, 43687, 43842), (83, 27556, 27711)]

def row156_layer000_block005 : List ColouredInterval :=
  [(83, 34445, 34600), (83, 41334, 41489), (83, 48223, 48359), (89, 31684, 31839), (89, 39605, 39760), (89, 47526, 47681), (97, 28227, 28382), (97, 37636, 37791), (97, 47045, 47200), (101, 30603, 30758), (101, 40804, 40959), (103, 31827, 31982), (103, 42436, 42591), (107, 34347, 34502), (107, 45796, 45951), (109, 35643, 35798)]

def row156_layer000_block006 : List ColouredInterval :=
  [(109, 47524, 47679), (113, 25538, 25693), (113, 38307, 38462), (127, 32258, 32413), (131, 34322, 34477), (137, 37538, 37693), (139, 38642, 38797), (149, 44402, 44557), (151, 45602, 45757)]

def row156_layer000_chunks : List (List ColouredInterval) :=
  [row156_layer000_block000, row156_layer000_block001, row156_layer000_block002, row156_layer000_block003, row156_layer000_block004, row156_layer000_block005, row156_layer000_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_layer000_arithmetic : LayerArithmeticValid row156.height { lower := 24180, upper := 48360, M := 14 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_layer000_enumeration :
    activePowerIntervalList 156 14 24180 48360 = row156_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_layer000_pairs000 :
    row156_layer000_block000.all (fun I => row156_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row156_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_layer000_pairs001 :
    row156_layer000_block001.all (fun I => row156_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row156_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_layer000_pairs002 :
    row156_layer000_block002.all (fun I => row156_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row156_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_layer000_pairs003 :
    row156_layer000_block003.all (fun I => row156_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row156_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_layer000_pairs004 :
    row156_layer000_block004.all (fun I => row156_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row156_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_layer000_pairs005 :
    row156_layer000_block005.all (fun I => row156_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row156_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_layer000_pairs006 :
    row156_layer000_block006.all (fun I => row156_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row156_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_layer000_chunks_eq : row156_layer000_chunks.flatten = row156_layer000_intervals := by
  rfl

theorem row156_layer000_pairs : pairCoverCheck row156_layer000_intervals row156_bounds = true := by
  apply pairCoverCheck_of_chunks row156_layer000_chunks_eq
  intro block hblock
  simp only [row156_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row156_layer000_pairs000
  · exact row156_layer000_pairs001
  · exact row156_layer000_pairs002
  · exact row156_layer000_pairs003
  · exact row156_layer000_pairs004
  · exact row156_layer000_pairs005
  · exact row156_layer000_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_layer000_checked :
    coverLayerCheck row156.height row156.goods { lower := 24180, upper := 48360, M := 14 } = true := by
  exact coverLayerCheck_of_parts row156_layer000_arithmetic row156_layer000_enumeration row156_bounds_eq row156_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row156_layer001_intervals : List ColouredInterval :=
  [(2, 65536, 65691), (2, 65536, 65691), (3, 59049, 59204), (3, 59049, 59204), (5, 62500, 62655), (5, 78125, 78280), (5, 93750, 93905), (5, 78125, 78280), (7, 50421, 50576), (7, 67228, 67383), (7, 84035, 84190), (11, 58564, 58719), (11, 73205, 73360), (11, 87846, 88001), (17, 49130, 49285), (17, 83521, 83676), (19, 54872, 55027), (19, 61731, 61886), (19, 68590, 68745), (23, 48668, 48823), (23, 60835, 60990), (23, 73002, 73157), (23, 85169, 85324), (29, 48778, 48933), (29, 73167, 73322), (31, 59582, 59737), (31, 89373, 89528), (37, 50653, 50808), (41, 68921, 69076), (43, 79507, 79662), (71, 50410, 50565), (73, 53290, 53445), (79, 49928, 50083), (79, 56169, 56324), (79, 62410, 62565), (83, 48360, 48378), (83, 55112, 55267), (83, 62001, 62156), (83, 68890, 69045), (89, 55447, 55602), (89, 63368, 63523), (89, 71289, 71444), (89, 79210, 79365), (97, 56454, 56609), (97, 65863, 66018), (97, 75272, 75427), (97, 84681, 84836), (97, 94090, 94245), (101, 51005, 51160), (101, 61206, 61361), (101, 71407, 71562), (101, 81608, 81763), (101, 91809, 91964), (103, 53045, 53200), (103, 63654, 63809), (103, 74263, 74418), (103, 84872, 85027), (103, 95481, 95636), (107, 57245, 57400), (107, 68694, 68849), (107, 80143, 80298), (107, 91592, 91747), (109, 59405, 59560), (109, 71286, 71441), (109, 83167, 83322), (109, 95048, 95203), (113, 51076, 51231), (113, 63845, 64000), (113, 76614, 76769), (113, 89383, 89538), (127, 48387, 48542), (127, 64516, 64671), (127, 80645, 80800), (131, 51483, 51638), (131, 68644, 68799), (131, 85805, 85960), (137, 56307, 56462), (137, 75076, 75231), (137, 93845, 94000), (139, 57963, 58118), (139, 77284, 77439), (139, 96605, 96719), (149, 66603, 66758), (149, 88804, 88959), (151, 68403, 68558), (151, 91204, 91359)]

def row156_layer001_block000 : List ColouredInterval :=
  [(2, 65536, 65691), (2, 65536, 65691), (3, 59049, 59204), (3, 59049, 59204), (5, 62500, 62655), (5, 78125, 78280), (5, 93750, 93905), (5, 78125, 78280), (7, 50421, 50576), (7, 67228, 67383), (7, 84035, 84190), (11, 58564, 58719), (11, 73205, 73360), (11, 87846, 88001), (17, 49130, 49285), (17, 83521, 83676)]

def row156_layer001_block001 : List ColouredInterval :=
  [(19, 54872, 55027), (19, 61731, 61886), (19, 68590, 68745), (23, 48668, 48823), (23, 60835, 60990), (23, 73002, 73157), (23, 85169, 85324), (29, 48778, 48933), (29, 73167, 73322), (31, 59582, 59737), (31, 89373, 89528), (37, 50653, 50808), (41, 68921, 69076), (43, 79507, 79662), (71, 50410, 50565), (73, 53290, 53445)]

def row156_layer001_block002 : List ColouredInterval :=
  [(79, 49928, 50083), (79, 56169, 56324), (79, 62410, 62565), (83, 48360, 48378), (83, 55112, 55267), (83, 62001, 62156), (83, 68890, 69045), (89, 55447, 55602), (89, 63368, 63523), (89, 71289, 71444), (89, 79210, 79365), (97, 56454, 56609), (97, 65863, 66018), (97, 75272, 75427), (97, 84681, 84836), (97, 94090, 94245)]

def row156_layer001_block003 : List ColouredInterval :=
  [(101, 51005, 51160), (101, 61206, 61361), (101, 71407, 71562), (101, 81608, 81763), (101, 91809, 91964), (103, 53045, 53200), (103, 63654, 63809), (103, 74263, 74418), (103, 84872, 85027), (103, 95481, 95636), (107, 57245, 57400), (107, 68694, 68849), (107, 80143, 80298), (107, 91592, 91747), (109, 59405, 59560), (109, 71286, 71441)]

def row156_layer001_block004 : List ColouredInterval :=
  [(109, 83167, 83322), (109, 95048, 95203), (113, 51076, 51231), (113, 63845, 64000), (113, 76614, 76769), (113, 89383, 89538), (127, 48387, 48542), (127, 64516, 64671), (127, 80645, 80800), (131, 51483, 51638), (131, 68644, 68799), (131, 85805, 85960), (137, 56307, 56462), (137, 75076, 75231), (137, 93845, 94000), (139, 57963, 58118)]

def row156_layer001_block005 : List ColouredInterval :=
  [(139, 77284, 77439), (139, 96605, 96719), (149, 66603, 66758), (149, 88804, 88959), (151, 68403, 68558), (151, 91204, 91359)]

def row156_layer001_chunks : List (List ColouredInterval) :=
  [row156_layer001_block000, row156_layer001_block001, row156_layer001_block002, row156_layer001_block003, row156_layer001_block004, row156_layer001_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_layer001_arithmetic : LayerArithmeticValid row156.height { lower := 48360, upper := 96720, M := 10 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layer001_arithmetic
