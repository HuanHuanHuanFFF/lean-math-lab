import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

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


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row128

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row128_good000_checked :
    goodSegmentCheck 128 42 90
      { lower := 258, upper := 384, witness := RowWitness.topPrime 257 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good001_checked :
    goodSegmentCheck 128 42 90
      { lower := 385, upper := 510, witness := RowWitness.topPrime 383 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good002_checked :
    goodSegmentCheck 128 42 90
      { lower := 511, upper := 636, witness := RowWitness.topPrime 509 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good003_checked :
    goodSegmentCheck 128 42 90
      { lower := 637, upper := 758, witness := RowWitness.topPrime 631 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good004_checked :
    goodSegmentCheck 128 42 90
      { lower := 759, upper := 884, witness := RowWitness.topPrime 757 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good005_checked :
    goodSegmentCheck 128 42 90
      { lower := 885, upper := 1010, witness := RowWitness.topPrime 883 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good006_checked :
    goodSegmentCheck 128 42 90
      { lower := 1011, upper := 1136, witness := RowWitness.topPrime 1009 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good007_checked :
    goodSegmentCheck 128 42 90
      { lower := 1137, upper := 1256, witness := RowWitness.topPrime 1129 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good008_checked :
    goodSegmentCheck 128 42 90
      { lower := 1257, upper := 1376, witness := RowWitness.topPrime 1249 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good009_checked :
    goodSegmentCheck 128 42 90
      { lower := 1377, upper := 1500, witness := RowWitness.topPrime 1373 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good010_checked :
    goodSegmentCheck 128 42 90
      { lower := 1501, upper := 1626, witness := RowWitness.topPrime 1499 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good011_checked :
    goodSegmentCheck 128 42 90
      { lower := 1627, upper := 1754, witness := RowWitness.topPrime 1627 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good012_checked :
    goodSegmentCheck 128 42 90
      { lower := 1755, upper := 1880, witness := RowWitness.topPrime 1753 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good013_checked :
    goodSegmentCheck 128 42 90
      { lower := 1881, upper := 2006, witness := RowWitness.topPrime 1879 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good014_checked :
    goodSegmentCheck 128 42 90
      { lower := 2007, upper := 2130, witness := RowWitness.topPrime 2003 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good015_checked :
    goodSegmentCheck 128 42 90
      { lower := 2131, upper := 2258, witness := RowWitness.topPrime 2131 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row128_good016_checked :
    goodSegmentCheck 128 42 90
      { lower := 2259, upper := 2378, witness := RowWitness.topPrime 2251 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good017_checked :
    goodSegmentCheck 128 42 90
      { lower := 2379, upper := 2504, witness := RowWitness.topPrime 2377 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good018_checked :
    goodSegmentCheck 128 42 90
      { lower := 2505, upper := 2630, witness := RowWitness.topPrime 2503 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good019_checked :
    goodSegmentCheck 128 42 90
      { lower := 2631, upper := 2748, witness := RowWitness.topPrime 2621 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good020_checked :
    goodSegmentCheck 128 42 90
      { lower := 2749, upper := 2876, witness := RowWitness.topPrime 2749 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good021_checked :
    goodSegmentCheck 128 42 90
      { lower := 2877, upper := 2988, witness := RowWitness.topPrime 2861 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good022_checked :
    goodSegmentCheck 128 42 90
      { lower := 2989, upper := 3098, witness := RowWitness.topPrime 2971 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good023_checked :
    goodSegmentCheck 128 42 90
      { lower := 3099, upper := 3216, witness := RowWitness.topPrime 3089 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good024_checked :
    goodSegmentCheck 128 42 90
      { lower := 3217, upper := 3344, witness := RowWitness.topPrime 3217 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good025_checked :
    goodSegmentCheck 128 42 90
      { lower := 3345, upper := 3470, witness := RowWitness.topPrime 3343 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good026_checked :
    goodSegmentCheck 128 42 90
      { lower := 3471, upper := 3596, witness := RowWitness.topPrime 3469 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good027_checked :
    goodSegmentCheck 128 42 90
      { lower := 3597, upper := 3720, witness := RowWitness.topPrime 3593 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good028_checked :
    goodSegmentCheck 128 42 90
      { lower := 3721, upper := 3846, witness := RowWitness.topPrime 3719 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good029_checked :
    goodSegmentCheck 128 42 90
      { lower := 3847, upper := 3974, witness := RowWitness.topPrime 3847 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good030_checked :
    goodSegmentCheck 128 42 90
      { lower := 3975, upper := 4094, witness := RowWitness.topPrime 3967 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good031_checked :
    goodSegmentCheck 128 42 90
      { lower := 4095, upper := 4220, witness := RowWitness.topPrime 4093 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row128_good032_checked :
    goodSegmentCheck 128 42 90
      { lower := 4221, upper := 4346, witness := RowWitness.topPrime 4219 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good033_checked :
    goodSegmentCheck 128 42 90
      { lower := 4347, upper := 4466, witness := RowWitness.topPrime 4339 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good034_checked :
    goodSegmentCheck 128 42 90
      { lower := 4467, upper := 4590, witness := RowWitness.topPrime 4463 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good035_checked :
    goodSegmentCheck 128 42 90
      { lower := 4591, upper := 4718, witness := RowWitness.topPrime 4591 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good036_checked :
    goodSegmentCheck 128 42 90
      { lower := 4719, upper := 4830, witness := RowWitness.topPrime 4703 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good037_checked :
    goodSegmentCheck 128 42 90
      { lower := 4831, upper := 4958, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good038_checked :
    goodSegmentCheck 128 42 90
      { lower := 4959, upper := 5084, witness := RowWitness.topPrime 4957 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good039_checked :
    goodSegmentCheck 128 42 90
      { lower := 5085, upper := 5208, witness := RowWitness.topPrime 5081 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good040_checked :
    goodSegmentCheck 128 42 90
      { lower := 5209, upper := 5336, witness := RowWitness.topPrime 5209 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good041_checked :
    goodSegmentCheck 128 42 90
      { lower := 5337, upper := 5460, witness := RowWitness.topPrime 5333 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good042_checked :
    goodSegmentCheck 128 42 90
      { lower := 5461, upper := 5576, witness := RowWitness.topPrime 5449 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good043_checked :
    goodSegmentCheck 128 42 90
      { lower := 5577, upper := 5700, witness := RowWitness.topPrime 5573 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good044_checked :
    goodSegmentCheck 128 42 90
      { lower := 5701, upper := 5828, witness := RowWitness.topPrime 5701 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good045_checked :
    goodSegmentCheck 128 42 90
      { lower := 5829, upper := 5954, witness := RowWitness.topPrime 5827 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good046_checked :
    goodSegmentCheck 128 42 90
      { lower := 5955, upper := 6080, witness := RowWitness.topPrime 5953 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good047_checked :
    goodSegmentCheck 128 42 90
      { lower := 6081, upper := 6206, witness := RowWitness.topPrime 6079 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row128_good048_checked :
    goodSegmentCheck 128 42 90
      { lower := 6207, upper := 6330, witness := RowWitness.topPrime 6203 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good049_checked :
    goodSegmentCheck 128 42 90
      { lower := 6331, upper := 6456, witness := RowWitness.topPrime 6329 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good050_checked :
    goodSegmentCheck 128 42 90
      { lower := 6457, upper := 6578, witness := RowWitness.topPrime 6451 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good051_checked :
    goodSegmentCheck 128 42 90
      { lower := 6579, upper := 6704, witness := RowWitness.topPrime 6577 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good052_checked :
    goodSegmentCheck 128 42 90
      { lower := 6705, upper := 6830, witness := RowWitness.topPrime 6703 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good053_checked :
    goodSegmentCheck 128 42 90
      { lower := 6831, upper := 6956, witness := RowWitness.topPrime 6829 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good054_checked :
    goodSegmentCheck 128 42 90
      { lower := 6957, upper := 7076, witness := RowWitness.topPrime 6949 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good055_checked :
    goodSegmentCheck 128 42 90
      { lower := 7077, upper := 7196, witness := RowWitness.topPrime 7069 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good056_checked :
    goodSegmentCheck 128 42 90
      { lower := 7197, upper := 7320, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good057_checked :
    goodSegmentCheck 128 42 90
      { lower := 7321, upper := 7448, witness := RowWitness.topPrime 7321 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good058_checked :
    goodSegmentCheck 128 42 90
      { lower := 7449, upper := 7560, witness := RowWitness.topPrime 7433 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good059_checked :
    goodSegmentCheck 128 42 90
      { lower := 7561, upper := 7688, witness := RowWitness.topPrime 7561 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good060_checked :
    goodSegmentCheck 128 42 90
      { lower := 7689, upper := 7814, witness := RowWitness.topPrime 7687 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good061_checked :
    goodSegmentCheck 128 42 90
      { lower := 7815, upper := 7920, witness := RowWitness.topPrime 7793 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good062_checked :
    goodSegmentCheck 128 42 90
      { lower := 7921, upper := 8046, witness := RowWitness.topPrime 7919 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good063_checked :
    goodSegmentCheck 128 42 90
      { lower := 8047, upper := 8166, witness := RowWitness.topPrime 8039 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row128_good064_checked :
    goodSegmentCheck 128 42 90
      { lower := 8167, upper := 8294, witness := RowWitness.topPrime 8167 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good065_checked :
    goodSegmentCheck 128 42 90
      { lower := 8295, upper := 8420, witness := RowWitness.topPrime 8293 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good066_checked :
    goodSegmentCheck 128 42 90
      { lower := 8421, upper := 8546, witness := RowWitness.topPrime 8419 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good067_checked :
    goodSegmentCheck 128 42 90
      { lower := 8547, upper := 8670, witness := RowWitness.topPrime 8543 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good068_checked :
    goodSegmentCheck 128 42 90
      { lower := 8671, upper := 8796, witness := RowWitness.topPrime 8669 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good069_checked :
    goodSegmentCheck 128 42 90
      { lower := 8797, upper := 8910, witness := RowWitness.topPrime 8783 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good070_checked :
    goodSegmentCheck 128 42 90
      { lower := 8911, upper := 9020, witness := RowWitness.topPrime 8893 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good071_checked :
    goodSegmentCheck 128 42 90
      { lower := 9021, upper := 9140, witness := RowWitness.topPrime 9013 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good072_checked :
    goodSegmentCheck 128 42 90
      { lower := 9141, upper := 9264, witness := RowWitness.topPrime 9137 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good073_checked :
    goodSegmentCheck 128 42 90
      { lower := 9265, upper := 9384, witness := RowWitness.topPrime 9257 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good074_checked :
    goodSegmentCheck 128 42 90
      { lower := 9385, upper := 9504, witness := RowWitness.topPrime 9377 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good075_checked :
    goodSegmentCheck 128 42 90
      { lower := 9505, upper := 9624, witness := RowWitness.topPrime 9497 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good076_checked :
    goodSegmentCheck 128 42 90
      { lower := 9625, upper := 9750, witness := RowWitness.topPrime 9623 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good077_checked :
    goodSegmentCheck 128 42 90
      { lower := 9751, upper := 9876, witness := RowWitness.topPrime 9749 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good078_checked :
    goodSegmentCheck 128 42 90
      { lower := 9877, upper := 9998, witness := RowWitness.topPrime 9871 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good079_checked :
    goodSegmentCheck 128 42 90
      { lower := 9999, upper := 10100, witness := RowWitness.topPrime 9973 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row128_good080_checked :
    goodSegmentCheck 128 42 90
      { lower := 10101, upper := 10226, witness := RowWitness.topPrime 10099 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good081_checked :
    goodSegmentCheck 128 42 90
      { lower := 10227, upper := 10350, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good082_checked :
    goodSegmentCheck 128 42 90
      { lower := 10351, upper := 10470, witness := RowWitness.topPrime 10343 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good083_checked :
    goodSegmentCheck 128 42 90
      { lower := 10471, upper := 10590, witness := RowWitness.topPrime 10463 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good084_checked :
    goodSegmentCheck 128 42 90
      { lower := 10591, upper := 10716, witness := RowWitness.topPrime 10589 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good085_checked :
    goodSegmentCheck 128 42 90
      { lower := 10717, upper := 10838, witness := RowWitness.topPrime 10711 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good086_checked :
    goodSegmentCheck 128 42 90
      { lower := 10839, upper := 10964, witness := RowWitness.topPrime 10837 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good087_checked :
    goodSegmentCheck 128 42 90
      { lower := 10965, upper := 11084, witness := RowWitness.topPrime 10957 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good088_checked :
    goodSegmentCheck 128 42 90
      { lower := 11085, upper := 11210, witness := RowWitness.topPrime 11083 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good089_checked :
    goodSegmentCheck 128 42 90
      { lower := 11211, upper := 11324, witness := RowWitness.topPrime 11197 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good090_checked :
    goodSegmentCheck 128 42 90
      { lower := 11325, upper := 11448, witness := RowWitness.topPrime 11321 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good091_checked :
    goodSegmentCheck 128 42 90
      { lower := 11449, upper := 11574, witness := RowWitness.topPrime 11447 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good092_checked :
    goodSegmentCheck 128 42 90
      { lower := 11575, upper := 11678, witness := RowWitness.topPrime 11551 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good093_checked :
    goodSegmentCheck 128 42 90
      { lower := 11679, upper := 11804, witness := RowWitness.topPrime 11677 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good094_checked :
    goodSegmentCheck 128 42 90
      { lower := 11805, upper := 11928, witness := RowWitness.topPrime 11801 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good095_checked :
    goodSegmentCheck 128 42 90
      { lower := 11929, upper := 12054, witness := RowWitness.topPrime 11927 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row128_good096_checked :
    goodSegmentCheck 128 42 90
      { lower := 12055, upper := 12176, witness := RowWitness.topPrime 12049 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good097_checked :
    goodSegmentCheck 128 42 90
      { lower := 12177, upper := 12290, witness := RowWitness.topPrime 12163 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good098_checked :
    goodSegmentCheck 128 42 90
      { lower := 12291, upper := 12416, witness := RowWitness.topPrime 12289 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good099_checked :
    goodSegmentCheck 128 42 90
      { lower := 12417, upper := 12540, witness := RowWitness.topPrime 12413 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good100_checked :
    goodSegmentCheck 128 42 90
      { lower := 12541, upper := 12668, witness := RowWitness.topPrime 12541 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good101_checked :
    goodSegmentCheck 128 42 90
      { lower := 12669, upper := 12786, witness := RowWitness.topPrime 12659 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good102_checked :
    goodSegmentCheck 128 42 90
      { lower := 12787, upper := 12908, witness := RowWitness.topPrime 12781 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good103_checked :
    goodSegmentCheck 128 42 90
      { lower := 12909, upper := 13034, witness := RowWitness.topPrime 12907 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good104_checked :
    goodSegmentCheck 128 42 90
      { lower := 13035, upper := 13160, witness := RowWitness.topPrime 13033 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good105_checked :
    goodSegmentCheck 128 42 90
      { lower := 13161, upper := 13286, witness := RowWitness.topPrime 13159 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good106_checked :
    goodSegmentCheck 128 42 90
      { lower := 13287, upper := 13394, witness := RowWitness.topPrime 13267 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good107_checked :
    goodSegmentCheck 128 42 90
      { lower := 13395, upper := 13508, witness := RowWitness.topPrime 13381 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good108_checked :
    goodSegmentCheck 128 42 90
      { lower := 13509, upper := 13626, witness := RowWitness.topPrime 13499 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good109_checked :
    goodSegmentCheck 128 42 90
      { lower := 13627, upper := 13754, witness := RowWitness.topPrime 13627 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good110_checked :
    goodSegmentCheck 128 42 90
      { lower := 13755, upper := 13878, witness := RowWitness.topPrime 13751 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good111_checked :
    goodSegmentCheck 128 42 90
      { lower := 13879, upper := 14006, witness := RowWitness.topPrime 13879 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row128_good112_checked :
    goodSegmentCheck 128 42 90
      { lower := 14007, upper := 14126, witness := RowWitness.topPrime 13999 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good113_checked :
    goodSegmentCheck 128 42 90
      { lower := 14127, upper := 14234, witness := RowWitness.topPrime 14107 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good114_checked :
    goodSegmentCheck 128 42 90
      { lower := 14235, upper := 14348, witness := RowWitness.topPrime 14221 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good115_checked :
    goodSegmentCheck 128 42 90
      { lower := 14349, upper := 14474, witness := RowWitness.topPrime 14347 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good116_checked :
    goodSegmentCheck 128 42 90
      { lower := 14475, upper := 14588, witness := RowWitness.topPrime 14461 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good117_checked :
    goodSegmentCheck 128 42 90
      { lower := 14589, upper := 14690, witness := RowWitness.topPrime 14563 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good118_checked :
    goodSegmentCheck 128 42 90
      { lower := 14691, upper := 14810, witness := RowWitness.topPrime 14683 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good119_checked :
    goodSegmentCheck 128 42 90
      { lower := 14811, upper := 14924, witness := RowWitness.topPrime 14797 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good120_checked :
    goodSegmentCheck 128 42 90
      { lower := 14925, upper := 15050, witness := RowWitness.topPrime 14923 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good121_checked :
    goodSegmentCheck 128 42 90
      { lower := 15051, upper := 15158, witness := RowWitness.topPrime 15031 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good122_checked :
    goodSegmentCheck 128 42 90
      { lower := 15159, upper := 15276, witness := RowWitness.topPrime 15149 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good123_checked :
    goodSegmentCheck 128 42 90
      { lower := 15277, upper := 15404, witness := RowWitness.topPrime 15277 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good124_checked :
    goodSegmentCheck 128 42 90
      { lower := 15405, upper := 15528, witness := RowWitness.topPrime 15401 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good125_checked :
    goodSegmentCheck 128 42 90
      { lower := 15529, upper := 15654, witness := RowWitness.topPrime 15527 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good126_checked :
    goodSegmentCheck 128 42 90
      { lower := 15655, upper := 15776, witness := RowWitness.topPrime 15649 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good127_checked :
    goodSegmentCheck 128 42 90
      { lower := 15777, upper := 15900, witness := RowWitness.topPrime 15773 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row128_good128_checked :
    goodSegmentCheck 128 42 90
      { lower := 15901, upper := 16028, witness := RowWitness.topPrime 15901 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good129_checked :
    goodSegmentCheck 128 42 90
      { lower := 16029, upper := 16134, witness := RowWitness.topPrime 16007 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good130_checked :
    goodSegmentCheck 128 42 90
      { lower := 16135, upper := 16254, witness := RowWitness.topPrime 16127 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good131_checked :
    goodSegmentCheck 128 42 90
      { lower := 16255, upper := 16255, witness := RowWitness.topPrime 16253 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good132_checked :
    goodSegmentCheck 128 42 90
      { lower := 16428, upper := 16464, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good133_checked :
    goodSegmentCheck 128 42 90
      { lower := 16810, upper := 16914, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good134_checked :
    goodSegmentCheck 128 42 90
      { lower := 16915, upper := 16937, witness := RowWitness.topPrime 16903 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good135_checked :
    goodSegmentCheck 128 42 90
      { lower := 17303, upper := 17426, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good136_checked :
    goodSegmentCheck 128 42 90
      { lower := 17427, upper := 17430, witness := RowWitness.topPrime 17419 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good137_checked :
    goodSegmentCheck 128 42 90
      { lower := 17496, upper := 17532, witness := RowWitness.topPrime 17491 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good138_checked :
    goodSegmentCheck 128 42 90
      { lower := 17576, upper := 17623, witness := RowWitness.topPrime 17573 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good139_checked :
    goodSegmentCheck 128 42 90
      { lower := 17672, upper := 17703, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good140_checked :
    goodSegmentCheck 128 42 90
      { lower := 17797, upper := 17799, witness := RowWitness.topPrime 17791 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good141_checked :
    goodSegmentCheck 128 42 90
      { lower := 18491, upper := 18608, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good142_checked :
    goodSegmentCheck 128 42 90
      { lower := 18609, upper := 18618, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good143_checked :
    goodSegmentCheck 128 42 90
      { lower := 18634, upper := 18744, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row128_good144_checked :
    goodSegmentCheck 128 42 90
      { lower := 18745, upper := 18870, witness := RowWitness.topPrime 18743 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good145_checked :
    goodSegmentCheck 128 42 90
      { lower := 18871, upper := 18877, witness := RowWitness.topPrime 18869 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good146_checked :
    goodSegmentCheck 128 42 90
      { lower := 19208, upper := 19293, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good147_checked :
    goodSegmentCheck 128 42 90
      { lower := 19663, upper := 19788, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good148_checked :
    goodSegmentCheck 128 42 90
      { lower := 19789, upper := 19810, witness := RowWitness.topPrime 19777 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good149_checked :
    goodSegmentCheck 128 42 90
      { lower := 19881, upper := 19900, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good150_checked :
    goodSegmentCheck 128 42 90
      { lower := 19965, upper := 20008, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good151_checked :
    goodSegmentCheck 128 42 90
      { lower := 20172, upper := 20288, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good152_checked :
    goodSegmentCheck 128 42 90
      { lower := 20289, upper := 20291, witness := RowWitness.topPrime 20287 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good153_checked :
    goodSegmentCheck 128 42 90
      { lower := 20402, upper := 20466, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good154_checked :
    goodSegmentCheck 128 42 90
      { lower := 20577, upper := 20662, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good155_checked :
    goodSegmentCheck 128 42 90
      { lower := 20667, upper := 20704, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good156_checked :
    goodSegmentCheck 128 42 90
      { lower := 21296, upper := 21410, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good157_checked :
    goodSegmentCheck 128 42 90
      { lower := 21411, upper := 21423, witness := RowWitness.topPrime 21407 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good158_checked :
    goodSegmentCheck 128 42 90
      { lower := 21870, upper := 21990, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good159_checked :
    goodSegmentCheck 128 42 90
      { lower := 21991, upper := 22031, witness := RowWitness.topPrime 21991 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row128_good160_checked :
    goodSegmentCheck 128 42 90
      { lower := 22090, upper := 22097, witness := RowWitness.topPrime 22079 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good161_checked :
    goodSegmentCheck 128 42 90
      { lower := 22188, upper := 22217, witness := RowWitness.topPrime 22171 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good162_checked :
    goodSegmentCheck 128 42 90
      { lower := 22445, upper := 22453, witness := RowWitness.topPrime 22441 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good163_checked :
    goodSegmentCheck 128 42 90
      { lower := 22472, upper := 22572, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good164_checked :
    goodSegmentCheck 128 42 90
      { lower := 23763, upper := 23888, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good165_checked :
    goodSegmentCheck 128 42 90
      { lower := 23889, upper := 23889, witness := RowWitness.topPrime 23887 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good166_checked :
    goodSegmentCheck 128 42 90
      { lower := 24010, upper := 24134, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good167_checked :
    goodSegmentCheck 128 42 90
      { lower := 24135, upper := 24164, witness := RowWitness.topPrime 24133 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good168_checked :
    goodSegmentCheck 128 42 90
      { lower := 24167, upper := 24184, witness := RowWitness.topPrime 24151 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good169_checked :
    goodSegmentCheck 128 42 90
      { lower := 24334, upper := 24456, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good170_checked :
    goodSegmentCheck 128 42 90
      { lower := 24457, upper := 24494, witness := RowWitness.topPrime 24443 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good171_checked :
    goodSegmentCheck 128 42 90
      { lower := 24642, upper := 24692, witness := RowWitness.topPrime 24631 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good172_checked :
    goodSegmentCheck 128 42 90
      { lower := 25000, upper := 25091, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good173_checked :
    goodSegmentCheck 128 42 90
      { lower := 25215, upper := 25316, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good174_checked :
    goodSegmentCheck 128 42 90
      { lower := 25317, upper := 25342, witness := RowWitness.topPrime 25309 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good175_checked :
    goodSegmentCheck 128 42 90
      { lower := 26364, upper := 26371, witness := RowWitness.topPrime 26357 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row128_good176_checked :
    goodSegmentCheck 128 42 90
      { lower := 26411, upper := 26491, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good177_checked :
    goodSegmentCheck 128 42 90
      { lower := 26508, upper := 26538, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good178_checked :
    goodSegmentCheck 128 42 90
      { lower := 26934, upper := 27023, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good179_checked :
    goodSegmentCheck 128 42 90
      { lower := 27556, upper := 27563, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good180_checked :
    goodSegmentCheck 128 42 90
      { lower := 27848, upper := 27862, witness := RowWitness.topPrime 27847 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good181_checked :
    goodSegmentCheck 128 42 90
      { lower := 28125, upper := 28217, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good182_checked :
    goodSegmentCheck 128 42 90
      { lower := 28227, upper := 28252, witness := RowWitness.topPrime 28219 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good183_checked :
    goodSegmentCheck 128 42 90
      { lower := 28577, upper := 28688, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good184_checked :
    goodSegmentCheck 128 42 90
      { lower := 28812, upper := 28844, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good185_checked :
    goodSegmentCheck 128 42 90
      { lower := 29584, upper := 29605, witness := RowWitness.topPrime 29581 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good186_checked :
    goodSegmentCheck 128 42 90
      { lower := 29791, upper := 29895, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good187_checked :
    goodSegmentCheck 128 42 90
      { lower := 30258, upper := 30373, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good188_checked :
    goodSegmentCheck 128 42 90
      { lower := 30618, upper := 30720, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good189_checked :
    goodSegmentCheck 128 42 90
      { lower := 30721, upper := 30730, witness := RowWitness.topPrime 30713 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good190_checked :
    goodSegmentCheck 128 42 90
      { lower := 30926, upper := 31026, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good191_checked :
    goodSegmentCheck 128 42 90
      { lower := 31213, upper := 31320, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row128_good192_checked :
    goodSegmentCheck 128 42 90
      { lower := 31321, upper := 31377, witness := RowWitness.topPrime 31321 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good193_checked :
    goodSegmentCheck 128 42 90
      { lower := 31423, upper := 31524, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good194_checked :
    goodSegmentCheck 128 42 90
      { lower := 31525, upper := 31550, witness := RowWitness.topPrime 31517 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good195_checked :
    goodSegmentCheck 128 42 90
      { lower := 33614, upper := 33616, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good196_checked :
    goodSegmentCheck 128 42 90
      { lower := 33708, upper := 33741, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good197_checked :
    goodSegmentCheck 128 42 90
      { lower := 34347, upper := 34464, witness := RowWitness.topPrime 34337 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good198_checked :
    goodSegmentCheck 128 42 90
      { lower := 34465, upper := 34518, witness := RowWitness.topPrime 34457 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good199_checked :
    goodSegmentCheck 128 42 90
      { lower := 36517, upper := 36624, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good200_checked :
    goodSegmentCheck 128 42 90
      { lower := 36625, upper := 36628, witness := RowWitness.topPrime 36607 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good201_checked :
    goodSegmentCheck 128 42 90
      { lower := 37303, upper := 37337, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good202_checked :
    goodSegmentCheck 128 42 90
      { lower := 37500, upper := 37573, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good203_checked :
    goodSegmentCheck 128 42 90
      { lower := 38307, upper := 38418, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good204_checked :
    goodSegmentCheck 128 42 90
      { lower := 39326, upper := 39450, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good205_checked :
    goodSegmentCheck 128 42 90
      { lower := 39451, upper := 39453, witness := RowWitness.topPrime 39451 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good206_checked :
    goodSegmentCheck 128 42 90
      { lower := 40401, upper := 40455, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good207_checked :
    goodSegmentCheck 128 42 90
      { lower := 40931, upper := 40931, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row128_good208_checked :
    goodSegmentCheck 128 42 90
      { lower := 43750, upper := 43814, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good209_checked :
    goodSegmentCheck 128 42 90
      { lower := 45369, upper := 45380, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good210_checked :
    goodSegmentCheck 128 42 90
      { lower := 47526, upper := 47648, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good211_checked :
    goodSegmentCheck 128 42 90
      { lower := 47649, upper := 47651, witness := RowWitness.topPrime 47639 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good212_checked :
    goodSegmentCheck 128 42 90
      { lower := 48013, upper := 48088, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good213_checked :
    goodSegmentCheck 128 42 90
      { lower := 48387, upper := 48500, witness := RowWitness.topPrime 48383 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good214_checked :
    goodSegmentCheck 128 42 90
      { lower := 48734, upper := 48860, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good215_checked :
    goodSegmentCheck 128 42 90
      { lower := 48861, upper := 48861, witness := RowWitness.topPrime 48859 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good216_checked :
    goodSegmentCheck 128 42 90
      { lower := 50421, upper := 50537, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good217_checked :
    goodSegmentCheck 128 42 90
      { lower := 51076, upper := 51132, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good218_checked :
    goodSegmentCheck 128 42 90
      { lower := 55451, upper := 55568, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good219_checked :
    goodSegmentCheck 128 42 90
      { lower := 55569, upper := 55574, witness := RowWitness.topPrime 55547 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good220_checked :
    goodSegmentCheck 128 42 90
      { lower := 57245, upper := 57249, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good221_checked :
    goodSegmentCheck 128 42 90
      { lower := 58619, upper := 58691, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good222_checked :
    goodSegmentCheck 128 42 90
      { lower := 59049, upper := 59083, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good223_checked :
    goodSegmentCheck 128 42 90
      { lower := 62500, upper := 62537, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row128_good224_checked :
    goodSegmentCheck 128 42 90
      { lower := 63869, upper := 63990, witness := RowWitness.topPrime 63863 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good225_checked :
    goodSegmentCheck 128 42 90
      { lower := 63991, upper := 63996, witness := RowWitness.topPrime 63977 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good226_checked :
    goodSegmentCheck 128 42 90
      { lower := 68651, upper := 68766, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good227_checked :
    goodSegmentCheck 128 42 90
      { lower := 68767, upper := 68778, witness := RowWitness.topPrime 68767 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good228_checked :
    goodSegmentCheck 128 42 90
      { lower := 68921, upper := 69017, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good229_checked :
    goodSegmentCheck 128 42 90
      { lower := 71289, upper := 71414, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good230_checked :
    goodSegmentCheck 128 42 90
      { lower := 71415, upper := 71416, witness := RowWitness.topPrime 71413 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good231_checked :
    goodSegmentCheck 128 42 90
      { lower := 73205, upper := 73294, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good232_checked :
    goodSegmentCheck 128 42 90
      { lower := 89383, upper := 89500, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good233_checked :
    goodSegmentCheck 128 42 90
      { lower := 137842, upper := 137908, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good234_checked :
    goodSegmentCheck 128 42 90
      { lower := 148955, upper := 149004, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good234_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row128_goods_checked :
    row128.goods.all (goodSegmentCheck row128.height.i row128.height.r row128.height.s) = true := by
  change row128_goods.all (goodSegmentCheck 128 42 90) = true
  simp only [row128_goods, List.all_cons, List.all_nil,
    row128_good000_checked,
    row128_good001_checked,
    row128_good002_checked,
    row128_good003_checked,
    row128_good004_checked,
    row128_good005_checked,
    row128_good006_checked,
    row128_good007_checked,
    row128_good008_checked,
    row128_good009_checked,
    row128_good010_checked,
    row128_good011_checked,
    row128_good012_checked,
    row128_good013_checked,
    row128_good014_checked,
    row128_good015_checked,
    row128_good016_checked,
    row128_good017_checked,
    row128_good018_checked,
    row128_good019_checked,
    row128_good020_checked,
    row128_good021_checked,
    row128_good022_checked,
    row128_good023_checked,
    row128_good024_checked,
    row128_good025_checked,
    row128_good026_checked,
    row128_good027_checked,
    row128_good028_checked,
    row128_good029_checked,
    row128_good030_checked,
    row128_good031_checked,
    row128_good032_checked,
    row128_good033_checked,
    row128_good034_checked,
    row128_good035_checked,
    row128_good036_checked,
    row128_good037_checked,
    row128_good038_checked,
    row128_good039_checked,
    row128_good040_checked,
    row128_good041_checked,
    row128_good042_checked,
    row128_good043_checked,
    row128_good044_checked,
    row128_good045_checked,
    row128_good046_checked,
    row128_good047_checked,
    row128_good048_checked,
    row128_good049_checked,
    row128_good050_checked,
    row128_good051_checked,
    row128_good052_checked,
    row128_good053_checked,
    row128_good054_checked,
    row128_good055_checked,
    row128_good056_checked,
    row128_good057_checked,
    row128_good058_checked,
    row128_good059_checked,
    row128_good060_checked,
    row128_good061_checked,
    row128_good062_checked,
    row128_good063_checked,
    row128_good064_checked,
    row128_good065_checked,
    row128_good066_checked,
    row128_good067_checked,
    row128_good068_checked,
    row128_good069_checked,
    row128_good070_checked,
    row128_good071_checked,
    row128_good072_checked,
    row128_good073_checked,
    row128_good074_checked,
    row128_good075_checked,
    row128_good076_checked,
    row128_good077_checked,
    row128_good078_checked,
    row128_good079_checked,
    row128_good080_checked,
    row128_good081_checked,
    row128_good082_checked,
    row128_good083_checked,
    row128_good084_checked,
    row128_good085_checked,
    row128_good086_checked,
    row128_good087_checked,
    row128_good088_checked,
    row128_good089_checked,
    row128_good090_checked,
    row128_good091_checked,
    row128_good092_checked,
    row128_good093_checked,
    row128_good094_checked,
    row128_good095_checked,
    row128_good096_checked,
    row128_good097_checked,
    row128_good098_checked,
    row128_good099_checked,
    row128_good100_checked,
    row128_good101_checked,
    row128_good102_checked,
    row128_good103_checked,
    row128_good104_checked,
    row128_good105_checked,
    row128_good106_checked,
    row128_good107_checked,
    row128_good108_checked,
    row128_good109_checked,
    row128_good110_checked,
    row128_good111_checked,
    row128_good112_checked,
    row128_good113_checked,
    row128_good114_checked,
    row128_good115_checked,
    row128_good116_checked,
    row128_good117_checked,
    row128_good118_checked,
    row128_good119_checked,
    row128_good120_checked,
    row128_good121_checked,
    row128_good122_checked,
    row128_good123_checked,
    row128_good124_checked,
    row128_good125_checked,
    row128_good126_checked,
    row128_good127_checked,
    row128_good128_checked,
    row128_good129_checked,
    row128_good130_checked,
    row128_good131_checked,
    row128_good132_checked,
    row128_good133_checked,
    row128_good134_checked,
    row128_good135_checked,
    row128_good136_checked,
    row128_good137_checked,
    row128_good138_checked,
    row128_good139_checked,
    row128_good140_checked,
    row128_good141_checked,
    row128_good142_checked,
    row128_good143_checked,
    row128_good144_checked,
    row128_good145_checked,
    row128_good146_checked,
    row128_good147_checked,
    row128_good148_checked,
    row128_good149_checked,
    row128_good150_checked,
    row128_good151_checked,
    row128_good152_checked,
    row128_good153_checked,
    row128_good154_checked,
    row128_good155_checked,
    row128_good156_checked,
    row128_good157_checked,
    row128_good158_checked,
    row128_good159_checked,
    row128_good160_checked,
    row128_good161_checked,
    row128_good162_checked,
    row128_good163_checked,
    row128_good164_checked,
    row128_good165_checked,
    row128_good166_checked,
    row128_good167_checked,
    row128_good168_checked,
    row128_good169_checked,
    row128_good170_checked,
    row128_good171_checked,
    row128_good172_checked,
    row128_good173_checked,
    row128_good174_checked,
    row128_good175_checked,
    row128_good176_checked,
    row128_good177_checked,
    row128_good178_checked,
    row128_good179_checked,
    row128_good180_checked,
    row128_good181_checked,
    row128_good182_checked,
    row128_good183_checked,
    row128_good184_checked,
    row128_good185_checked,
    row128_good186_checked,
    row128_good187_checked,
    row128_good188_checked,
    row128_good189_checked,
    row128_good190_checked,
    row128_good191_checked,
    row128_good192_checked,
    row128_good193_checked,
    row128_good194_checked,
    row128_good195_checked,
    row128_good196_checked,
    row128_good197_checked,
    row128_good198_checked,
    row128_good199_checked,
    row128_good200_checked,
    row128_good201_checked,
    row128_good202_checked,
    row128_good203_checked,
    row128_good204_checked,
    row128_good205_checked,
    row128_good206_checked,
    row128_good207_checked,
    row128_good208_checked,
    row128_good209_checked,
    row128_good210_checked,
    row128_good211_checked,
    row128_good212_checked,
    row128_good213_checked,
    row128_good214_checked,
    row128_good215_checked,
    row128_good216_checked,
    row128_good217_checked,
    row128_good218_checked,
    row128_good219_checked,
    row128_good220_checked,
    row128_good221_checked,
    row128_good222_checked,
    row128_good223_checked,
    row128_good224_checked,
    row128_good225_checked,
    row128_good226_checked,
    row128_good227_checked,
    row128_good228_checked,
    row128_good229_checked,
    row128_good230_checked,
    row128_good231_checked,
    row128_good232_checked,
    row128_good233_checked,
    row128_good234_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row128_registered :
    decide (row128.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row128_small_checked :
    coverCheck (2 * row128.height.i + 2) (row128.height.i * (row128.height.i - 1) - 1)
      (row128.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row128_layerCover_checked :
    coverCheck (row128.height.i * (row128.height.i - 1)) (row128.height.n0 - 1)
      (row128.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row128_bounds : List NatInterval :=
  [(258, 384), (385, 510), (511, 636), (637, 758), (759, 884), (885, 1010), (1011, 1136), (1137, 1256), (1257, 1376), (1377, 1500), (1501, 1626), (1627, 1754), (1755, 1880), (1881, 2006), (2007, 2130), (2131, 2258), (2259, 2378), (2379, 2504), (2505, 2630), (2631, 2748), (2749, 2876), (2877, 2988), (2989, 3098), (3099, 3216), (3217, 3344), (3345, 3470), (3471, 3596), (3597, 3720), (3721, 3846), (3847, 3974), (3975, 4094), (4095, 4220), (4221, 4346), (4347, 4466), (4467, 4590), (4591, 4718), (4719, 4830), (4831, 4958), (4959, 5084), (5085, 5208), (5209, 5336), (5337, 5460), (5461, 5576), (5577, 5700), (5701, 5828), (5829, 5954), (5955, 6080), (6081, 6206), (6207, 6330), (6331, 6456), (6457, 6578), (6579, 6704), (6705, 6830), (6831, 6956), (6957, 7076), (7077, 7196), (7197, 7320), (7321, 7448), (7449, 7560), (7561, 7688), (7689, 7814), (7815, 7920), (7921, 8046), (8047, 8166), (8167, 8294), (8295, 8420), (8421, 8546), (8547, 8670), (8671, 8796), (8797, 8910), (8911, 9020), (9021, 9140), (9141, 9264), (9265, 9384), (9385, 9504), (9505, 9624), (9625, 9750), (9751, 9876), (9877, 9998), (9999, 10100), (10101, 10226), (10227, 10350), (10351, 10470), (10471, 10590), (10591, 10716), (10717, 10838), (10839, 10964), (10965, 11084), (11085, 11210), (11211, 11324), (11325, 11448), (11449, 11574), (11575, 11678), (11679, 11804), (11805, 11928), (11929, 12054), (12055, 12176), (12177, 12290), (12291, 12416), (12417, 12540), (12541, 12668), (12669, 12786), (12787, 12908), (12909, 13034), (13035, 13160), (13161, 13286), (13287, 13394), (13395, 13508), (13509, 13626), (13627, 13754), (13755, 13878), (13879, 14006), (14007, 14126), (14127, 14234), (14235, 14348), (14349, 14474), (14475, 14588), (14589, 14690), (14691, 14810), (14811, 14924), (14925, 15050), (15051, 15158), (15159, 15276), (15277, 15404), (15405, 15528), (15529, 15654), (15655, 15776), (15777, 15900), (15901, 16028), (16029, 16134), (16135, 16254), (16255, 16255), (16428, 16464), (16810, 16914), (16915, 16937), (17303, 17426), (17427, 17430), (17496, 17532), (17576, 17623), (17672, 17703), (17797, 17799), (18491, 18608), (18609, 18618), (18634, 18744), (18745, 18870), (18871, 18877), (19208, 19293), (19663, 19788), (19789, 19810), (19881, 19900), (19965, 20008), (20172, 20288), (20289, 20291), (20402, 20466), (20577, 20662), (20667, 20704), (21296, 21410), (21411, 21423), (21870, 21990), (21991, 22031), (22090, 22097), (22188, 22217), (22445, 22453), (22472, 22572), (23763, 23888), (23889, 23889), (24010, 24134), (24135, 24164), (24167, 24184), (24334, 24456), (24457, 24494), (24642, 24692), (25000, 25091), (25215, 25316), (25317, 25342), (26364, 26371), (26411, 26491), (26508, 26538), (26934, 27023), (27556, 27563), (27848, 27862), (28125, 28217), (28227, 28252), (28577, 28688), (28812, 28844), (29584, 29605), (29791, 29895), (30258, 30373), (30618, 30720), (30721, 30730), (30926, 31026), (31213, 31320), (31321, 31377), (31423, 31524), (31525, 31550), (33614, 33616), (33708, 33741), (34347, 34464), (34465, 34518), (36517, 36624), (36625, 36628), (37303, 37337), (37500, 37573), (38307, 38418), (39326, 39450), (39451, 39453), (40401, 40455), (40931, 40931), (43750, 43814), (45369, 45380), (47526, 47648), (47649, 47651), (48013, 48088), (48387, 48500), (48734, 48860), (48861, 48861), (50421, 50537), (51076, 51132), (55451, 55568), (55569, 55574), (57245, 57249), (58619, 58691), (59049, 59083), (62500, 62537), (63869, 63990), (63991, 63996), (68651, 68766), (68767, 68778), (68921, 69017), (71289, 71414), (71415, 71416), (73205, 73294), (89383, 89500), (137842, 137908), (148955, 149004)]

theorem row128_bounds_eq : row128.goods.map goodSegmentBounds = row128_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row128_layer000_intervals : List ColouredInterval :=
  [(3, 17496, 17623), (3, 19683, 19810), (3, 21870, 21997), (3, 24057, 24184), (3, 26244, 26371), (3, 28431, 28558), (3, 30618, 30745), (3, 19683, 19810), (3, 26244, 26371), (3, 19683, 19810), (5, 18750, 18877), (5, 21875, 22002), (5, 25000, 25127), (5, 28125, 28252), (5, 31250, 31377), (5, 31250, 31377), (7, 16807, 16934), (7, 19208, 19335), (7, 21609, 21736), (7, 24010, 24137), (7, 26411, 26538), (7, 28812, 28939), (7, 31213, 31340), (7, 16807, 16934), (11, 17303, 17430), (11, 18634, 18761), (11, 19965, 20092), (11, 21296, 21423), (11, 22627, 22754), (11, 23958, 24085), (11, 29282, 29409), (13, 17576, 17703), (13, 19773, 19900), (13, 21970, 22097), (13, 24167, 24294), (13, 26364, 26491), (13, 28561, 28688), (13, 30758, 30885), (13, 28561, 28688), (17, 19652, 19779), (17, 24565, 24692), (17, 29478, 29605), (19, 20577, 20704), (19, 27436, 27563), (23, 24334, 24461), (29, 24389, 24516), (31, 16337, 16464), (31, 17298, 17425), (31, 29791, 29918), (37, 16428, 16555), (37, 17797, 17924), (37, 19166, 19293), (37, 20535, 20662), (37, 21904, 22031), (37, 23273, 23400), (37, 24642, 24769), (41, 16810, 16937), (41, 18491, 18618), (41, 20172, 20299), (41, 21853, 21980), (41, 23534, 23661), (41, 25215, 25342), (41, 26896, 27023), (41, 28577, 28704), (41, 30258, 30385), (43, 16641, 16768), (43, 18490, 18617), (43, 20339, 20466), (43, 22188, 22315), (43, 24037, 24164), (43, 25886, 26013), (43, 27735, 27862), (43, 29584, 29711), (43, 31433, 31560), (47, 17672, 17799), (47, 19881, 20008), (47, 22090, 22217), (47, 24299, 24426), (47, 26508, 26635), (47, 28717, 28844), (47, 30926, 31053), (53, 16854, 16981), (53, 19663, 19790), (53, 22472, 22599), (53, 25281, 25408), (53, 28090, 28217), (53, 30899, 31026), (59, 17405, 17532), (59, 20886, 21013), (59, 24367, 24494), (59, 27848, 27975), (59, 31329, 31456), (61, 18605, 18732), (61, 22326, 22453), (61, 26047, 26174), (61, 29768, 29895), (67, 17956, 18083), (67, 22445, 22572), (67, 26934, 27061), (67, 31423, 31550), (71, 20164, 20291), (71, 25205, 25332), (71, 30246, 30373), (73, 21316, 21443), (73, 26645, 26772), (73, 31974, 32101), (79, 18723, 18850), (79, 24964, 25091), (79, 31205, 31332), (83, 20667, 20794), (83, 27556, 27683), (89, 23763, 23890), (89, 31684, 31811), (97, 18818, 18945), (97, 28227, 28354), (101, 20402, 20529), (101, 30603, 30730), (103, 21218, 21345), (103, 31827, 31954), (107, 22898, 23025), (109, 23762, 23889), (113, 25538, 25665), (127, 16256, 16256), (127, 32258, 32385)]

def row128_layer000_block000 : List ColouredInterval :=
  [(3, 17496, 17623), (3, 19683, 19810), (3, 21870, 21997), (3, 24057, 24184), (3, 26244, 26371), (3, 28431, 28558), (3, 30618, 30745), (3, 19683, 19810), (3, 26244, 26371), (3, 19683, 19810), (5, 18750, 18877), (5, 21875, 22002), (5, 25000, 25127), (5, 28125, 28252), (5, 31250, 31377), (5, 31250, 31377)]

def row128_layer000_block001 : List ColouredInterval :=
  [(7, 16807, 16934), (7, 19208, 19335), (7, 21609, 21736), (7, 24010, 24137), (7, 26411, 26538), (7, 28812, 28939), (7, 31213, 31340), (7, 16807, 16934), (11, 17303, 17430), (11, 18634, 18761), (11, 19965, 20092), (11, 21296, 21423), (11, 22627, 22754), (11, 23958, 24085), (11, 29282, 29409), (13, 17576, 17703)]

def row128_layer000_block002 : List ColouredInterval :=
  [(13, 19773, 19900), (13, 21970, 22097), (13, 24167, 24294), (13, 26364, 26491), (13, 28561, 28688), (13, 30758, 30885), (13, 28561, 28688), (17, 19652, 19779), (17, 24565, 24692), (17, 29478, 29605), (19, 20577, 20704), (19, 27436, 27563), (23, 24334, 24461), (29, 24389, 24516), (31, 16337, 16464), (31, 17298, 17425)]

def row128_layer000_block003 : List ColouredInterval :=
  [(31, 29791, 29918), (37, 16428, 16555), (37, 17797, 17924), (37, 19166, 19293), (37, 20535, 20662), (37, 21904, 22031), (37, 23273, 23400), (37, 24642, 24769), (41, 16810, 16937), (41, 18491, 18618), (41, 20172, 20299), (41, 21853, 21980), (41, 23534, 23661), (41, 25215, 25342), (41, 26896, 27023), (41, 28577, 28704)]

def row128_layer000_block004 : List ColouredInterval :=
  [(41, 30258, 30385), (43, 16641, 16768), (43, 18490, 18617), (43, 20339, 20466), (43, 22188, 22315), (43, 24037, 24164), (43, 25886, 26013), (43, 27735, 27862), (43, 29584, 29711), (43, 31433, 31560), (47, 17672, 17799), (47, 19881, 20008), (47, 22090, 22217), (47, 24299, 24426), (47, 26508, 26635), (47, 28717, 28844)]

def row128_layer000_block005 : List ColouredInterval :=
  [(47, 30926, 31053), (53, 16854, 16981), (53, 19663, 19790), (53, 22472, 22599), (53, 25281, 25408), (53, 28090, 28217), (53, 30899, 31026), (59, 17405, 17532), (59, 20886, 21013), (59, 24367, 24494), (59, 27848, 27975), (59, 31329, 31456), (61, 18605, 18732), (61, 22326, 22453), (61, 26047, 26174), (61, 29768, 29895)]

def row128_layer000_block006 : List ColouredInterval :=
  [(67, 17956, 18083), (67, 22445, 22572), (67, 26934, 27061), (67, 31423, 31550), (71, 20164, 20291), (71, 25205, 25332), (71, 30246, 30373), (73, 21316, 21443), (73, 26645, 26772), (73, 31974, 32101), (79, 18723, 18850), (79, 24964, 25091), (79, 31205, 31332), (83, 20667, 20794), (83, 27556, 27683), (89, 23763, 23890)]

def row128_layer000_block007 : List ColouredInterval :=
  [(89, 31684, 31811), (97, 18818, 18945), (97, 28227, 28354), (101, 20402, 20529), (101, 30603, 30730), (103, 21218, 21345), (103, 31827, 31954), (107, 22898, 23025), (109, 23762, 23889), (113, 25538, 25665), (127, 16256, 16256), (127, 32258, 32385)]

def row128_layer000_chunks : List (List ColouredInterval) :=
  [row128_layer000_block000, row128_layer000_block001, row128_layer000_block002, row128_layer000_block003, row128_layer000_block004, row128_layer000_block005, row128_layer000_block006, row128_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row128_layer000_arithmetic : LayerArithmeticValid row128.height { lower := 16256, upper := 32512, M := 18 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row128_layer000_enumeration :
    activePowerIntervalList 128 18 16256 32512 = row128_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row128_layer000_pairs000 :
    row128_layer000_block000.all (fun I => row128_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row128_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row128_layer000_pairs001 :
    row128_layer000_block001.all (fun I => row128_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row128_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row128_layer000_pairs002 :
    row128_layer000_block002.all (fun I => row128_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row128_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row128_layer000_pairs003 :
    row128_layer000_block003.all (fun I => row128_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row128_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row128_layer000_pairs004 :
    row128_layer000_block004.all (fun I => row128_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row128_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row128_layer000_pairs005 :
    row128_layer000_block005.all (fun I => row128_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row128_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row128_layer000_pairs006 :
    row128_layer000_block006.all (fun I => row128_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row128_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row128_layer000_pairs007 :
    row128_layer000_block007.all (fun I => row128_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row128_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row128_layer000_chunks_eq : row128_layer000_chunks.flatten = row128_layer000_intervals := by
  rfl

theorem row128_layer000_pairs : pairCoverCheck row128_layer000_intervals row128_bounds = true := by
  apply pairCoverCheck_of_chunks row128_layer000_chunks_eq
  intro block hblock
  simp only [row128_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row128_layer000_pairs000
  · exact row128_layer000_pairs001
  · exact row128_layer000_pairs002
  · exact row128_layer000_pairs003
  · exact row128_layer000_pairs004
  · exact row128_layer000_pairs005
  · exact row128_layer000_pairs006
  · exact row128_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row128_layer000_checked :
    coverLayerCheck row128.height row128.goods { lower := 16256, upper := 32512, M := 18 } = true := by
  exact coverLayerCheck_of_parts row128_layer000_arithmetic row128_layer000_enumeration row128_bounds_eq row128_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_layer000_checked
