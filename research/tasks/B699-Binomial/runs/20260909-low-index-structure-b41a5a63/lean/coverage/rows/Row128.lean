import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def row128_height : HeightCertificateDatum := { i := 128, r := 42, s := 90, n0Power10 := 8 }

def row128_goods : List GoodSegment := [
  { lower := 258, upper := 384, witness := RowWitness.topPrime 257 },
  { lower := 385, upper := 510, witness := RowWitness.topPrime 383 },
  { lower := 511, upper := 636, witness := RowWitness.topPrime 509 },
  { lower := 637, upper := 758, witness := RowWitness.topPrime 631 },
  { lower := 759, upper := 884, witness := RowWitness.topPrime 757 },
  { lower := 885, upper := 1010, witness := RowWitness.topPrime 883 },
  { lower := 1011, upper := 1136, witness := RowWitness.topPrime 1009 },
  { lower := 1137, upper := 1256, witness := RowWitness.topPrime 1129 },
  { lower := 1257, upper := 1376, witness := RowWitness.topPrime 1249 },
  { lower := 1377, upper := 1500, witness := RowWitness.topPrime 1373 },
  { lower := 1501, upper := 1626, witness := RowWitness.topPrime 1499 },
  { lower := 1627, upper := 1754, witness := RowWitness.topPrime 1627 },
  { lower := 1755, upper := 1880, witness := RowWitness.topPrime 1753 },
  { lower := 1881, upper := 2006, witness := RowWitness.topPrime 1879 },
  { lower := 2007, upper := 2130, witness := RowWitness.topPrime 2003 },
  { lower := 2131, upper := 2258, witness := RowWitness.topPrime 2131 },
  { lower := 2259, upper := 2378, witness := RowWitness.topPrime 2251 },
  { lower := 2379, upper := 2504, witness := RowWitness.topPrime 2377 },
  { lower := 2505, upper := 2630, witness := RowWitness.topPrime 2503 },
  { lower := 2631, upper := 2748, witness := RowWitness.topPrime 2621 },
  { lower := 2749, upper := 2876, witness := RowWitness.topPrime 2749 },
  { lower := 2877, upper := 2988, witness := RowWitness.topPrime 2861 },
  { lower := 2989, upper := 3098, witness := RowWitness.topPrime 2971 },
  { lower := 3099, upper := 3216, witness := RowWitness.topPrime 3089 },
  { lower := 3217, upper := 3344, witness := RowWitness.topPrime 3217 },
  { lower := 3345, upper := 3470, witness := RowWitness.topPrime 3343 },
  { lower := 3471, upper := 3596, witness := RowWitness.topPrime 3469 },
  { lower := 3597, upper := 3720, witness := RowWitness.topPrime 3593 },
  { lower := 3721, upper := 3846, witness := RowWitness.topPrime 3719 },
  { lower := 3847, upper := 3974, witness := RowWitness.topPrime 3847 },
  { lower := 3975, upper := 4094, witness := RowWitness.topPrime 3967 },
  { lower := 4095, upper := 4220, witness := RowWitness.topPrime 4093 },
  { lower := 4221, upper := 4346, witness := RowWitness.topPrime 4219 },
  { lower := 4347, upper := 4466, witness := RowWitness.topPrime 4339 },
  { lower := 4467, upper := 4590, witness := RowWitness.topPrime 4463 },
  { lower := 4591, upper := 4718, witness := RowWitness.topPrime 4591 },
  { lower := 4719, upper := 4830, witness := RowWitness.topPrime 4703 },
  { lower := 4831, upper := 4958, witness := RowWitness.topPrime 4831 },
  { lower := 4959, upper := 5084, witness := RowWitness.topPrime 4957 },
  { lower := 5085, upper := 5208, witness := RowWitness.topPrime 5081 },
  { lower := 5209, upper := 5336, witness := RowWitness.topPrime 5209 },
  { lower := 5337, upper := 5460, witness := RowWitness.topPrime 5333 },
  { lower := 5461, upper := 5576, witness := RowWitness.topPrime 5449 },
  { lower := 5577, upper := 5700, witness := RowWitness.topPrime 5573 },
  { lower := 5701, upper := 5828, witness := RowWitness.topPrime 5701 },
  { lower := 5829, upper := 5954, witness := RowWitness.topPrime 5827 },
  { lower := 5955, upper := 6080, witness := RowWitness.topPrime 5953 },
  { lower := 6081, upper := 6206, witness := RowWitness.topPrime 6079 },
  { lower := 6207, upper := 6330, witness := RowWitness.topPrime 6203 },
  { lower := 6331, upper := 6456, witness := RowWitness.topPrime 6329 },
  { lower := 6457, upper := 6578, witness := RowWitness.topPrime 6451 },
  { lower := 6579, upper := 6704, witness := RowWitness.topPrime 6577 },
  { lower := 6705, upper := 6830, witness := RowWitness.topPrime 6703 },
  { lower := 6831, upper := 6956, witness := RowWitness.topPrime 6829 },
  { lower := 6957, upper := 7076, witness := RowWitness.topPrime 6949 },
  { lower := 7077, upper := 7196, witness := RowWitness.topPrime 7069 },
  { lower := 7197, upper := 7320, witness := RowWitness.topPrime 7193 },
  { lower := 7321, upper := 7448, witness := RowWitness.topPrime 7321 },
  { lower := 7449, upper := 7560, witness := RowWitness.topPrime 7433 },
  { lower := 7561, upper := 7688, witness := RowWitness.topPrime 7561 },
  { lower := 7689, upper := 7814, witness := RowWitness.topPrime 7687 },
  { lower := 7815, upper := 7920, witness := RowWitness.topPrime 7793 },
  { lower := 7921, upper := 8046, witness := RowWitness.topPrime 7919 },
  { lower := 8047, upper := 8166, witness := RowWitness.topPrime 8039 },
  { lower := 8167, upper := 8294, witness := RowWitness.topPrime 8167 },
  { lower := 8295, upper := 8420, witness := RowWitness.topPrime 8293 },
  { lower := 8421, upper := 8546, witness := RowWitness.topPrime 8419 },
  { lower := 8547, upper := 8670, witness := RowWitness.topPrime 8543 },
  { lower := 8671, upper := 8796, witness := RowWitness.topPrime 8669 },
  { lower := 8797, upper := 8910, witness := RowWitness.topPrime 8783 },
  { lower := 8911, upper := 9020, witness := RowWitness.topPrime 8893 },
  { lower := 9021, upper := 9140, witness := RowWitness.topPrime 9013 },
  { lower := 9141, upper := 9264, witness := RowWitness.topPrime 9137 },
  { lower := 9265, upper := 9384, witness := RowWitness.topPrime 9257 },
  { lower := 9385, upper := 9504, witness := RowWitness.topPrime 9377 },
  { lower := 9505, upper := 9624, witness := RowWitness.topPrime 9497 },
  { lower := 9625, upper := 9750, witness := RowWitness.topPrime 9623 },
  { lower := 9751, upper := 9876, witness := RowWitness.topPrime 9749 },
  { lower := 9877, upper := 9998, witness := RowWitness.topPrime 9871 },
  { lower := 9999, upper := 10100, witness := RowWitness.topPrime 9973 },
  { lower := 10101, upper := 10226, witness := RowWitness.topPrime 10099 },
  { lower := 10227, upper := 10350, witness := RowWitness.topPrime 10223 },
  { lower := 10351, upper := 10470, witness := RowWitness.topPrime 10343 },
  { lower := 10471, upper := 10590, witness := RowWitness.topPrime 10463 },
  { lower := 10591, upper := 10716, witness := RowWitness.topPrime 10589 },
  { lower := 10717, upper := 10838, witness := RowWitness.topPrime 10711 },
  { lower := 10839, upper := 10964, witness := RowWitness.topPrime 10837 },
  { lower := 10965, upper := 11084, witness := RowWitness.topPrime 10957 },
  { lower := 11085, upper := 11210, witness := RowWitness.topPrime 11083 },
  { lower := 11211, upper := 11324, witness := RowWitness.topPrime 11197 },
  { lower := 11325, upper := 11448, witness := RowWitness.topPrime 11321 },
  { lower := 11449, upper := 11574, witness := RowWitness.topPrime 11447 },
  { lower := 11575, upper := 11678, witness := RowWitness.topPrime 11551 },
  { lower := 11679, upper := 11804, witness := RowWitness.topPrime 11677 },
  { lower := 11805, upper := 11928, witness := RowWitness.topPrime 11801 },
  { lower := 11929, upper := 12054, witness := RowWitness.topPrime 11927 },
  { lower := 12055, upper := 12176, witness := RowWitness.topPrime 12049 },
  { lower := 12177, upper := 12290, witness := RowWitness.topPrime 12163 },
  { lower := 12291, upper := 12416, witness := RowWitness.topPrime 12289 },
  { lower := 12417, upper := 12540, witness := RowWitness.topPrime 12413 },
  { lower := 12541, upper := 12668, witness := RowWitness.topPrime 12541 },
  { lower := 12669, upper := 12786, witness := RowWitness.topPrime 12659 },
  { lower := 12787, upper := 12908, witness := RowWitness.topPrime 12781 },
  { lower := 12909, upper := 13034, witness := RowWitness.topPrime 12907 },
  { lower := 13035, upper := 13160, witness := RowWitness.topPrime 13033 },
  { lower := 13161, upper := 13286, witness := RowWitness.topPrime 13159 },
  { lower := 13287, upper := 13394, witness := RowWitness.topPrime 13267 },
  { lower := 13395, upper := 13508, witness := RowWitness.topPrime 13381 },
  { lower := 13509, upper := 13626, witness := RowWitness.topPrime 13499 },
  { lower := 13627, upper := 13754, witness := RowWitness.topPrime 13627 },
  { lower := 13755, upper := 13878, witness := RowWitness.topPrime 13751 },
  { lower := 13879, upper := 14006, witness := RowWitness.topPrime 13879 },
  { lower := 14007, upper := 14126, witness := RowWitness.topPrime 13999 },
  { lower := 14127, upper := 14234, witness := RowWitness.topPrime 14107 },
  { lower := 14235, upper := 14348, witness := RowWitness.topPrime 14221 },
  { lower := 14349, upper := 14474, witness := RowWitness.topPrime 14347 },
  { lower := 14475, upper := 14588, witness := RowWitness.topPrime 14461 },
  { lower := 14589, upper := 14690, witness := RowWitness.topPrime 14563 },
  { lower := 14691, upper := 14810, witness := RowWitness.topPrime 14683 },
  { lower := 14811, upper := 14924, witness := RowWitness.topPrime 14797 },
  { lower := 14925, upper := 15050, witness := RowWitness.topPrime 14923 },
  { lower := 15051, upper := 15158, witness := RowWitness.topPrime 15031 },
  { lower := 15159, upper := 15276, witness := RowWitness.topPrime 15149 },
  { lower := 15277, upper := 15404, witness := RowWitness.topPrime 15277 },
  { lower := 15405, upper := 15528, witness := RowWitness.topPrime 15401 },
  { lower := 15529, upper := 15654, witness := RowWitness.topPrime 15527 },
  { lower := 15655, upper := 15776, witness := RowWitness.topPrime 15649 },
  { lower := 15777, upper := 15900, witness := RowWitness.topPrime 15773 },
  { lower := 15901, upper := 16028, witness := RowWitness.topPrime 15901 },
  { lower := 16029, upper := 16134, witness := RowWitness.topPrime 16007 },
  { lower := 16135, upper := 16254, witness := RowWitness.topPrime 16127 },
  { lower := 16255, upper := 16255, witness := RowWitness.topPrime 16253 },
  { lower := 16428, upper := 16464, witness := RowWitness.topPrime 16427 },
  { lower := 16810, upper := 16914, witness := RowWitness.topPrime 16787 },
  { lower := 16915, upper := 16937, witness := RowWitness.topPrime 16903 },
  { lower := 17303, upper := 17426, witness := RowWitness.topPrime 17299 },
  { lower := 17427, upper := 17430, witness := RowWitness.topPrime 17419 },
  { lower := 17496, upper := 17532, witness := RowWitness.topPrime 17491 },
  { lower := 17576, upper := 17623, witness := RowWitness.topPrime 17573 },
  { lower := 17672, upper := 17703, witness := RowWitness.topPrime 17669 },
  { lower := 17797, upper := 17799, witness := RowWitness.topPrime 17791 },
  { lower := 18491, upper := 18608, witness := RowWitness.topPrime 18481 },
  { lower := 18609, upper := 18618, witness := RowWitness.topPrime 18593 },
  { lower := 18634, upper := 18744, witness := RowWitness.topPrime 18617 },
  { lower := 18745, upper := 18870, witness := RowWitness.topPrime 18743 },
  { lower := 18871, upper := 18877, witness := RowWitness.topPrime 18869 },
  { lower := 19208, upper := 19293, witness := RowWitness.topPrime 19207 },
  { lower := 19663, upper := 19788, witness := RowWitness.topPrime 19661 },
  { lower := 19789, upper := 19810, witness := RowWitness.topPrime 19777 },
  { lower := 19881, upper := 19900, witness := RowWitness.topPrime 19867 },
  { lower := 19965, upper := 20008, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20288, witness := RowWitness.topPrime 20161 },
  { lower := 20289, upper := 20291, witness := RowWitness.topPrime 20287 },
  { lower := 20402, upper := 20466, witness := RowWitness.topPrime 20399 },
  { lower := 20577, upper := 20662, witness := RowWitness.topPrime 20563 },
  { lower := 20667, upper := 20704, witness := RowWitness.topPrime 20663 },
  { lower := 21296, upper := 21410, witness := RowWitness.topPrime 21283 },
  { lower := 21411, upper := 21423, witness := RowWitness.topPrime 21407 },
  { lower := 21870, upper := 21990, witness := RowWitness.topPrime 21863 },
  { lower := 21991, upper := 22031, witness := RowWitness.topPrime 21991 },
  { lower := 22090, upper := 22097, witness := RowWitness.topPrime 22079 },
  { lower := 22188, upper := 22217, witness := RowWitness.topPrime 22171 },
  { lower := 22445, upper := 22453, witness := RowWitness.topPrime 22441 },
  { lower := 22472, upper := 22572, witness := RowWitness.topPrime 22469 },
  { lower := 23763, upper := 23888, witness := RowWitness.topPrime 23761 },
  { lower := 23889, upper := 23889, witness := RowWitness.topPrime 23887 },
  { lower := 24010, upper := 24134, witness := RowWitness.topPrime 24007 },
  { lower := 24135, upper := 24164, witness := RowWitness.topPrime 24133 },
  { lower := 24167, upper := 24184, witness := RowWitness.topPrime 24151 },
  { lower := 24334, upper := 24456, witness := RowWitness.topPrime 24329 },
  { lower := 24457, upper := 24494, witness := RowWitness.topPrime 24443 },
  { lower := 24642, upper := 24692, witness := RowWitness.topPrime 24631 },
  { lower := 25000, upper := 25091, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25316, witness := RowWitness.topPrime 25189 },
  { lower := 25317, upper := 25342, witness := RowWitness.topPrime 25309 },
  { lower := 26364, upper := 26371, witness := RowWitness.topPrime 26357 },
  { lower := 26411, upper := 26491, witness := RowWitness.topPrime 26407 },
  { lower := 26508, upper := 26538, witness := RowWitness.topPrime 26501 },
  { lower := 26934, upper := 27023, witness := RowWitness.topPrime 26927 },
  { lower := 27556, upper := 27563, witness := RowWitness.topPrime 27551 },
  { lower := 27848, upper := 27862, witness := RowWitness.topPrime 27847 },
  { lower := 28125, upper := 28217, witness := RowWitness.topPrime 28123 },
  { lower := 28227, upper := 28252, witness := RowWitness.topPrime 28219 },
  { lower := 28577, upper := 28688, witness := RowWitness.topPrime 28573 },
  { lower := 28812, upper := 28844, witness := RowWitness.topPrime 28807 },
  { lower := 29584, upper := 29605, witness := RowWitness.topPrime 29581 },
  { lower := 29791, upper := 29895, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30373, witness := RowWitness.topPrime 30253 },
  { lower := 30618, upper := 30720, witness := RowWitness.topPrime 30593 },
  { lower := 30721, upper := 30730, witness := RowWitness.topPrime 30713 },
  { lower := 30926, upper := 31026, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31320, witness := RowWitness.topPrime 31193 },
  { lower := 31321, upper := 31377, witness := RowWitness.topPrime 31321 },
  { lower := 31423, upper := 31524, witness := RowWitness.topPrime 31397 },
  { lower := 31525, upper := 31550, witness := RowWitness.topPrime 31517 },
  { lower := 33614, upper := 33616, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33741, witness := RowWitness.topPrime 33703 },
  { lower := 34347, upper := 34464, witness := RowWitness.topPrime 34337 },
  { lower := 34465, upper := 34518, witness := RowWitness.topPrime 34457 },
  { lower := 36517, upper := 36624, witness := RowWitness.topPrime 36497 },
  { lower := 36625, upper := 36628, witness := RowWitness.topPrime 36607 },
  { lower := 37303, upper := 37337, witness := RowWitness.topPrime 37277 },
  { lower := 37500, upper := 37573, witness := RowWitness.topPrime 37493 },
  { lower := 38307, upper := 38418, witness := RowWitness.topPrime 38303 },
  { lower := 39326, upper := 39450, witness := RowWitness.topPrime 39323 },
  { lower := 39451, upper := 39453, witness := RowWitness.topPrime 39451 },
  { lower := 40401, upper := 40455, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 40931, witness := RowWitness.topPrime 40927 },
  { lower := 43750, upper := 43814, witness := RowWitness.topPrime 43721 },
  { lower := 45369, upper := 45380, witness := RowWitness.topPrime 45361 },
  { lower := 47526, upper := 47648, witness := RowWitness.topPrime 47521 },
  { lower := 47649, upper := 47651, witness := RowWitness.topPrime 47639 },
  { lower := 48013, upper := 48088, witness := RowWitness.topPrime 47981 },
  { lower := 48387, upper := 48500, witness := RowWitness.topPrime 48383 },
  { lower := 48734, upper := 48860, witness := RowWitness.topPrime 48733 },
  { lower := 48861, upper := 48861, witness := RowWitness.topPrime 48859 },
  { lower := 50421, upper := 50537, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51132, witness := RowWitness.topPrime 51071 },
  { lower := 55451, upper := 55568, witness := RowWitness.topPrime 55441 },
  { lower := 55569, upper := 55574, witness := RowWitness.topPrime 55547 },
  { lower := 57245, upper := 57249, witness := RowWitness.topPrime 57241 },
  { lower := 58619, upper := 58691, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59083, witness := RowWitness.topPrime 59029 },
  { lower := 62500, upper := 62537, witness := RowWitness.topPrime 62497 },
  { lower := 63869, upper := 63990, witness := RowWitness.topPrime 63863 },
  { lower := 63991, upper := 63996, witness := RowWitness.topPrime 63977 },
  { lower := 68651, upper := 68766, witness := RowWitness.topPrime 68639 },
  { lower := 68767, upper := 68778, witness := RowWitness.topPrime 68767 },
  { lower := 68921, upper := 69017, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71414, witness := RowWitness.topPrime 71287 },
  { lower := 71415, upper := 71416, witness := RowWitness.topPrime 71413 },
  { lower := 73205, upper := 73294, witness := RowWitness.topPrime 73189 },
  { lower := 89383, upper := 89500, witness := RowWitness.topPrime 89381 },
  { lower := 137842, upper := 137908, witness := RowWitness.topPrime 137831 },
  { lower := 148955, upper := 149004, witness := RowWitness.topPrime 148949 }
]

def row128_layers : List CoverLayer := [
  { lower := 16256, upper := 32512, M := 18 },
  { lower := 32512, upper := 65024, M := 14 },
  { lower := 65024, upper := 130048, M := 11 },
  { lower := 130048, upper := 260096, M := 9 },
  { lower := 260096, upper := 520192, M := 7 },
  { lower := 520192, upper := 1040384, M := 5 },
  { lower := 1040384, upper := 2080768, M := 4 },
  { lower := 2080768, upper := 4161536, M := 3 },
  { lower := 4161536, upper := 8323072, M := 3 },
  { lower := 8323072, upper := 16646144, M := 2 },
  { lower := 16646144, upper := 33292288, M := 2 },
  { lower := 33292288, upper := 66584576, M := 2 },
  { lower := 66584576, upper := 100000000, M := 1 }
]

def row128 : FiniteCoverRow := {
  height := row128_height,
  goods := row128_goods,
  layers := row128_layers
}

theorem row128_registered :
    decide (row128.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row128_goods_checked :
    row128.goods.all (goodSegmentCheck row128.height.i row128.height.r row128.height.s) = true := by
  decide +kernel

theorem row128_small_checked :
    coverCheck (2 * row128.height.i + 2) (row128.height.i * (row128.height.i - 1) - 1)
      (row128.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row128_layerCover_checked :
    coverCheck (row128.height.i * (row128.height.i - 1)) (row128.height.n0 - 1)
      (row128.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row128_layer000_checked :
    coverLayerCheck row128.height row128.goods { lower := 16256, upper := 32512, M := 18 } = true := by
  decide +kernel

theorem row128_layer001_checked :
    coverLayerCheck row128.height row128.goods { lower := 32512, upper := 65024, M := 14 } = true := by
  decide +kernel

theorem row128_layer002_checked :
    coverLayerCheck row128.height row128.goods { lower := 65024, upper := 130048, M := 11 } = true := by
  decide +kernel

theorem row128_layer003_checked :
    coverLayerCheck row128.height row128.goods { lower := 130048, upper := 260096, M := 9 } = true := by
  decide +kernel

theorem row128_layer004_checked :
    coverLayerCheck row128.height row128.goods { lower := 260096, upper := 520192, M := 7 } = true := by
  decide +kernel

theorem row128_layer005_checked :
    coverLayerCheck row128.height row128.goods { lower := 520192, upper := 1040384, M := 5 } = true := by
  decide +kernel

theorem row128_layer006_checked :
    coverLayerCheck row128.height row128.goods { lower := 1040384, upper := 2080768, M := 4 } = true := by
  decide +kernel

theorem row128_layer007_checked :
    coverLayerCheck row128.height row128.goods { lower := 2080768, upper := 4161536, M := 3 } = true := by
  decide +kernel

theorem row128_layer008_checked :
    coverLayerCheck row128.height row128.goods { lower := 4161536, upper := 8323072, M := 3 } = true := by
  decide +kernel

theorem row128_layer009_checked :
    coverLayerCheck row128.height row128.goods { lower := 8323072, upper := 16646144, M := 2 } = true := by
  decide +kernel

theorem row128_layer010_checked :
    coverLayerCheck row128.height row128.goods { lower := 16646144, upper := 33292288, M := 2 } = true := by
  decide +kernel

theorem row128_layer011_checked :
    coverLayerCheck row128.height row128.goods { lower := 33292288, upper := 66584576, M := 2 } = true := by
  decide +kernel

theorem row128_layer012_checked :
    coverLayerCheck row128.height row128.goods { lower := 66584576, upper := 100000000, M := 1 } = true := by
  decide +kernel

theorem row128_layers_checked :
    row128.layers.all (coverLayerCheck row128.height row128.goods) = true := by
  change List.all [
    { lower := 16256, upper := 32512, M := 18 },
    { lower := 32512, upper := 65024, M := 14 },
    { lower := 65024, upper := 130048, M := 11 },
    { lower := 130048, upper := 260096, M := 9 },
    { lower := 260096, upper := 520192, M := 7 },
    { lower := 520192, upper := 1040384, M := 5 },
    { lower := 1040384, upper := 2080768, M := 4 },
    { lower := 2080768, upper := 4161536, M := 3 },
    { lower := 4161536, upper := 8323072, M := 3 },
    { lower := 8323072, upper := 16646144, M := 2 },
    { lower := 16646144, upper := 33292288, M := 2 },
    { lower := 33292288, upper := 66584576, M := 2 },
    { lower := 66584576, upper := 100000000, M := 1 }
  ] (coverLayerCheck row128.height row128.goods) = true
  simp only [List.all_cons, List.all_nil,
    row128_layer000_checked,
    row128_layer001_checked,
    row128_layer002_checked,
    row128_layer003_checked,
    row128_layer004_checked,
    row128_layer005_checked,
    row128_layer006_checked,
    row128_layer007_checked,
    row128_layer008_checked,
    row128_layer009_checked,
    row128_layer010_checked,
    row128_layer011_checked,
    row128_layer012_checked,
    Bool.true_and]

theorem row128_checked : finiteCoverRowCheck row128 = true := by
  simp only [finiteCoverRowCheck, row128_registered, row128_goods_checked,
    row128_small_checked, row128_layerCover_checked, row128_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row128_checked

end B699LowIndex
