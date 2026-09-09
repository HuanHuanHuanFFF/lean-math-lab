import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def row120_height : HeightCertificateDatum := { i := 120, r := 39, s := 84, n0Power10 := 9 }

def row120_goods : List GoodSegment := [
  { lower := 242, upper := 360, witness := RowWitness.topPrime 241 },
  { lower := 361, upper := 478, witness := RowWitness.topPrime 359 },
  { lower := 479, upper := 598, witness := RowWitness.topPrime 479 },
  { lower := 599, upper := 718, witness := RowWitness.topPrime 599 },
  { lower := 719, upper := 838, witness := RowWitness.topPrime 719 },
  { lower := 839, upper := 958, witness := RowWitness.topPrime 839 },
  { lower := 959, upper := 1072, witness := RowWitness.topPrime 953 },
  { lower := 1073, upper := 1188, witness := RowWitness.topPrime 1069 },
  { lower := 1189, upper := 1306, witness := RowWitness.topPrime 1187 },
  { lower := 1307, upper := 1426, witness := RowWitness.topPrime 1307 },
  { lower := 1427, upper := 1546, witness := RowWitness.topPrime 1427 },
  { lower := 1547, upper := 1662, witness := RowWitness.topPrime 1543 },
  { lower := 1663, upper := 1782, witness := RowWitness.topPrime 1663 },
  { lower := 1783, upper := 1902, witness := RowWitness.topPrime 1783 },
  { lower := 1903, upper := 2020, witness := RowWitness.topPrime 1901 },
  { lower := 2021, upper := 2136, witness := RowWitness.topPrime 2017 },
  { lower := 2137, upper := 2256, witness := RowWitness.topPrime 2137 },
  { lower := 2257, upper := 2370, witness := RowWitness.topPrime 2251 },
  { lower := 2371, upper := 2490, witness := RowWitness.topPrime 2371 },
  { lower := 2491, upper := 2596, witness := RowWitness.topPrime 2477 },
  { lower := 2597, upper := 2712, witness := RowWitness.topPrime 2593 },
  { lower := 2713, upper := 2832, witness := RowWitness.topPrime 2713 },
  { lower := 2833, upper := 2952, witness := RowWitness.topPrime 2833 },
  { lower := 2953, upper := 3072, witness := RowWitness.topPrime 2953 },
  { lower := 3073, upper := 3186, witness := RowWitness.topPrime 3067 },
  { lower := 3187, upper := 3306, witness := RowWitness.topPrime 3187 },
  { lower := 3307, upper := 3426, witness := RowWitness.topPrime 3307 },
  { lower := 3427, upper := 3532, witness := RowWitness.topPrime 3413 },
  { lower := 3533, upper := 3652, witness := RowWitness.topPrime 3533 },
  { lower := 3653, upper := 3762, witness := RowWitness.topPrime 3643 },
  { lower := 3763, upper := 3880, witness := RowWitness.topPrime 3761 },
  { lower := 3881, upper := 4000, witness := RowWitness.topPrime 3881 },
  { lower := 4001, upper := 4120, witness := RowWitness.topPrime 4001 },
  { lower := 4121, upper := 4230, witness := RowWitness.topPrime 4111 },
  { lower := 4231, upper := 4350, witness := RowWitness.topPrime 4231 },
  { lower := 4351, upper := 4468, witness := RowWitness.topPrime 4349 },
  { lower := 4469, upper := 4582, witness := RowWitness.topPrime 4463 },
  { lower := 4583, upper := 4702, witness := RowWitness.topPrime 4583 },
  { lower := 4703, upper := 4822, witness := RowWitness.topPrime 4703 },
  { lower := 4823, upper := 4936, witness := RowWitness.topPrime 4817 },
  { lower := 4937, upper := 5056, witness := RowWitness.topPrime 4937 },
  { lower := 5057, upper := 5170, witness := RowWitness.topPrime 5051 },
  { lower := 5171, upper := 5290, witness := RowWitness.topPrime 5171 },
  { lower := 5291, upper := 5400, witness := RowWitness.topPrime 5281 },
  { lower := 5401, upper := 5518, witness := RowWitness.topPrime 5399 },
  { lower := 5519, upper := 5638, witness := RowWitness.topPrime 5519 },
  { lower := 5639, upper := 5758, witness := RowWitness.topPrime 5639 },
  { lower := 5759, upper := 5868, witness := RowWitness.topPrime 5749 },
  { lower := 5869, upper := 5988, witness := RowWitness.topPrime 5869 },
  { lower := 5989, upper := 6106, witness := RowWitness.topPrime 5987 },
  { lower := 6107, upper := 6220, witness := RowWitness.topPrime 6101 },
  { lower := 6221, upper := 6340, witness := RowWitness.topPrime 6221 },
  { lower := 6341, upper := 6456, witness := RowWitness.topPrime 6337 },
  { lower := 6457, upper := 6570, witness := RowWitness.topPrime 6451 },
  { lower := 6571, upper := 6690, witness := RowWitness.topPrime 6571 },
  { lower := 6691, upper := 6810, witness := RowWitness.topPrime 6691 },
  { lower := 6811, upper := 6922, witness := RowWitness.topPrime 6803 },
  { lower := 6923, upper := 7036, witness := RowWitness.topPrime 6917 },
  { lower := 7037, upper := 7146, witness := RowWitness.topPrime 7027 },
  { lower := 7147, upper := 7248, witness := RowWitness.topPrime 7129 },
  { lower := 7249, upper := 7366, witness := RowWitness.topPrime 7247 },
  { lower := 7367, upper := 7470, witness := RowWitness.topPrime 7351 },
  { lower := 7471, upper := 7578, witness := RowWitness.topPrime 7459 },
  { lower := 7579, upper := 7696, witness := RowWitness.topPrime 7577 },
  { lower := 7697, upper := 7810, witness := RowWitness.topPrime 7691 },
  { lower := 7811, upper := 7912, witness := RowWitness.topPrime 7793 },
  { lower := 7913, upper := 8026, witness := RowWitness.topPrime 7907 },
  { lower := 8027, upper := 8136, witness := RowWitness.topPrime 8017 },
  { lower := 8137, upper := 8242, witness := RowWitness.topPrime 8123 },
  { lower := 8243, upper := 8362, witness := RowWitness.topPrime 8243 },
  { lower := 8363, upper := 8482, witness := RowWitness.topPrime 8363 },
  { lower := 8483, upper := 8586, witness := RowWitness.topPrime 8467 },
  { lower := 8587, upper := 8700, witness := RowWitness.topPrime 8581 },
  { lower := 8701, upper := 8818, witness := RowWitness.topPrime 8699 },
  { lower := 8819, upper := 8938, witness := RowWitness.topPrime 8819 },
  { lower := 8939, upper := 9052, witness := RowWitness.topPrime 8933 },
  { lower := 9053, upper := 9168, witness := RowWitness.topPrime 9049 },
  { lower := 9169, upper := 9280, witness := RowWitness.topPrime 9161 },
  { lower := 9281, upper := 9400, witness := RowWitness.topPrime 9281 },
  { lower := 9401, upper := 9516, witness := RowWitness.topPrime 9397 },
  { lower := 9517, upper := 9630, witness := RowWitness.topPrime 9511 },
  { lower := 9631, upper := 9750, witness := RowWitness.topPrime 9631 },
  { lower := 9751, upper := 9868, witness := RowWitness.topPrime 9749 },
  { lower := 9869, upper := 9978, witness := RowWitness.topPrime 9859 },
  { lower := 9979, upper := 10092, witness := RowWitness.topPrime 9973 },
  { lower := 10093, upper := 10212, witness := RowWitness.topPrime 10093 },
  { lower := 10213, upper := 10330, witness := RowWitness.topPrime 10211 },
  { lower := 10331, upper := 10450, witness := RowWitness.topPrime 10331 },
  { lower := 10451, upper := 10552, witness := RowWitness.topPrime 10433 },
  { lower := 10553, upper := 10650, witness := RowWitness.topPrime 10531 },
  { lower := 10651, upper := 10770, witness := RowWitness.topPrime 10651 },
  { lower := 10771, upper := 10890, witness := RowWitness.topPrime 10771 },
  { lower := 10891, upper := 11010, witness := RowWitness.topPrime 10891 },
  { lower := 11011, upper := 11122, witness := RowWitness.topPrime 11003 },
  { lower := 11123, upper := 11238, witness := RowWitness.topPrime 11119 },
  { lower := 11239, upper := 11358, witness := RowWitness.topPrime 11239 },
  { lower := 11359, upper := 11472, witness := RowWitness.topPrime 11353 },
  { lower := 11473, upper := 11590, witness := RowWitness.topPrime 11471 },
  { lower := 11591, upper := 11706, witness := RowWitness.topPrime 11587 },
  { lower := 11707, upper := 11820, witness := RowWitness.topPrime 11701 },
  { lower := 11821, upper := 11940, witness := RowWitness.topPrime 11821 },
  { lower := 11941, upper := 12060, witness := RowWitness.topPrime 11941 },
  { lower := 12061, upper := 12168, witness := RowWitness.topPrime 12049 },
  { lower := 12169, upper := 12282, witness := RowWitness.topPrime 12163 },
  { lower := 12283, upper := 12400, witness := RowWitness.topPrime 12281 },
  { lower := 12401, upper := 12520, witness := RowWitness.topPrime 12401 },
  { lower := 12521, upper := 12636, witness := RowWitness.topPrime 12517 },
  { lower := 12637, upper := 12756, witness := RowWitness.topPrime 12637 },
  { lower := 12757, upper := 12876, witness := RowWitness.topPrime 12757 },
  { lower := 12877, upper := 12972, witness := RowWitness.topPrime 12853 },
  { lower := 12973, upper := 13092, witness := RowWitness.topPrime 12973 },
  { lower := 13093, upper := 13212, witness := RowWitness.topPrime 13093 },
  { lower := 13213, upper := 13306, witness := RowWitness.topPrime 13187 },
  { lower := 13307, upper := 13416, witness := RowWitness.topPrime 13297 },
  { lower := 13417, upper := 13536, witness := RowWitness.topPrime 13417 },
  { lower := 13537, upper := 13656, witness := RowWitness.topPrime 13537 },
  { lower := 13657, upper := 13768, witness := RowWitness.topPrime 13649 },
  { lower := 13769, upper := 13882, witness := RowWitness.topPrime 13763 },
  { lower := 13883, upper := 14002, witness := RowWitness.topPrime 13883 },
  { lower := 14003, upper := 14118, witness := RowWitness.topPrime 13999 },
  { lower := 14119, upper := 14226, witness := RowWitness.topPrime 14107 },
  { lower := 14227, upper := 14279, witness := RowWitness.topPrime 14221 },
  { lower := 14406, upper := 14520, witness := RowWitness.topPrime 14401 },
  { lower := 14521, upper := 14525, witness := RowWitness.topPrime 14519 },
  { lower := 14739, upper := 14760, witness := RowWitness.topPrime 14737 },
  { lower := 14792, upper := 14858, witness := RowWitness.topPrime 14783 },
  { lower := 14884, upper := 14911, witness := RowWitness.topPrime 14879 },
  { lower := 15123, upper := 15240, witness := RowWitness.topPrime 15121 },
  { lower := 15241, upper := 15248, witness := RowWitness.topPrime 15241 },
  { lower := 15376, upper := 15492, witness := RowWitness.topPrime 15373 },
  { lower := 15493, upper := 15498, witness := RowWitness.topPrime 15493 },
  { lower := 15979, upper := 16092, witness := RowWitness.topPrime 15973 },
  { lower := 16093, upper := 16098, witness := RowWitness.topPrime 16091 },
  { lower := 16384, upper := 16500, witness := RowWitness.topPrime 16381 },
  { lower := 16501, upper := 16503, witness := RowWitness.topPrime 16493 },
  { lower := 16810, upper := 16906, witness := RowWitness.topPrime 16787 },
  { lower := 16907, upper := 16939, witness := RowWitness.topPrime 16903 },
  { lower := 17303, upper := 17418, witness := RowWitness.topPrime 17299 },
  { lower := 17419, upper := 17422, witness := RowWitness.topPrime 17419 },
  { lower := 17661, upper := 17778, witness := RowWitness.topPrime 17659 },
  { lower := 17779, upper := 17780, witness := RowWitness.topPrime 17761 },
  { lower := 18491, upper := 18600, witness := RowWitness.topPrime 18481 },
  { lower := 18601, upper := 18621, witness := RowWitness.topPrime 18593 },
  { lower := 18634, upper := 18736, witness := RowWitness.topPrime 18617 },
  { lower := 18737, upper := 18753, witness := RowWitness.topPrime 18731 },
  { lower := 18818, upper := 18842, witness := RowWitness.topPrime 18803 },
  { lower := 19208, upper := 19326, witness := RowWitness.topPrime 19207 },
  { lower := 19327, upper := 19327, witness := RowWitness.topPrime 19319 },
  { lower := 19663, upper := 19780, witness := RowWitness.topPrime 19661 },
  { lower := 19781, upper := 19802, witness := RowWitness.topPrime 19777 },
  { lower := 19881, upper := 19892, witness := RowWitness.topPrime 19867 },
  { lower := 19965, upper := 20000, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20280, witness := RowWitness.topPrime 20161 },
  { lower := 20281, upper := 20291, witness := RowWitness.topPrime 20269 },
  { lower := 20402, upper := 20458, witness := RowWitness.topPrime 20399 },
  { lower := 20577, upper := 20654, witness := RowWitness.topPrime 20563 },
  { lower := 20667, upper := 20696, witness := RowWitness.topPrime 20663 },
  { lower := 21218, upper := 21261, witness := RowWitness.topPrime 21211 },
  { lower := 21296, upper := 21402, witness := RowWitness.topPrime 21283 },
  { lower := 21403, upper := 21415, witness := RowWitness.topPrime 21401 },
  { lower := 21904, upper := 22012, witness := RowWitness.topPrime 21893 },
  { lower := 22013, upper := 22023, witness := RowWitness.topPrime 22013 },
  { lower := 22188, upper := 22209, witness := RowWitness.topPrime 22171 },
  { lower := 22445, upper := 22445, witness := RowWitness.topPrime 22441 },
  { lower := 22472, upper := 22564, witness := RowWitness.topPrime 22469 },
  { lower := 23763, upper := 23880, witness := RowWitness.topPrime 23761 },
  { lower := 23881, upper := 23881, witness := RowWitness.topPrime 23879 },
  { lower := 24010, upper := 24126, witness := RowWitness.topPrime 24007 },
  { lower := 24127, upper := 24129, witness := RowWitness.topPrime 24121 },
  { lower := 24334, upper := 24448, witness := RowWitness.topPrime 24329 },
  { lower := 24449, upper := 24486, witness := RowWitness.topPrime 24443 },
  { lower := 24642, upper := 24684, witness := RowWitness.topPrime 24631 },
  { lower := 25215, upper := 25308, witness := RowWitness.topPrime 25189 },
  { lower := 25309, upper := 25400, witness := RowWitness.topPrime 25309 },
  { lower := 26047, upper := 26130, witness := RowWitness.topPrime 26041 },
  { lower := 26411, upper := 26483, witness := RowWitness.topPrime 26407 },
  { lower := 26508, upper := 26530, witness := RowWitness.topPrime 26501 },
  { lower := 26620, upper := 26627, witness := RowWitness.topPrime 26597 },
  { lower := 26645, upper := 26739, witness := RowWitness.topPrime 26641 },
  { lower := 26934, upper := 27015, witness := RowWitness.topPrime 26927 },
  { lower := 27436, upper := 27499, witness := RowWitness.topPrime 27431 },
  { lower := 27848, upper := 27854, witness := RowWitness.topPrime 27847 },
  { lower := 27951, upper := 27967, witness := RowWitness.topPrime 27947 },
  { lower := 28577, upper := 28680, witness := RowWitness.topPrime 28573 },
  { lower := 28812, upper := 28836, witness := RowWitness.topPrime 28807 },
  { lower := 29584, upper := 29597, witness := RowWitness.topPrime 29581 },
  { lower := 29791, upper := 29887, witness := RowWitness.topPrime 29789 },
  { lower := 30926, upper := 31018, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31312, witness := RowWitness.topPrime 31193 },
  { lower := 31313, upper := 31369, witness := RowWitness.topPrime 31307 },
  { lower := 31423, upper := 31516, witness := RowWitness.topPrime 31397 },
  { lower := 31517, upper := 31542, witness := RowWitness.topPrime 31517 },
  { lower := 32805, upper := 32887, witness := RowWitness.topPrime 32803 },
  { lower := 33708, upper := 33733, witness := RowWitness.topPrime 33703 },
  { lower := 34347, upper := 34456, witness := RowWitness.topPrime 34337 },
  { lower := 34457, upper := 34510, witness := RowWitness.topPrime 34457 },
  { lower := 35344, upper := 35406, witness := RowWitness.topPrime 35339 },
  { lower := 36015, upper := 36031, witness := RowWitness.topPrime 36013 },
  { lower := 36517, upper := 36616, witness := RowWitness.topPrime 36497 },
  { lower := 36617, upper := 36620, witness := RowWitness.topPrime 36607 },
  { lower := 37303, upper := 37329, witness := RowWitness.topPrime 37277 },
  { lower := 37349, upper := 37422, witness := RowWitness.topPrime 37339 },
  { lower := 37446, upper := 37468, witness := RowWitness.topPrime 37441 },
  { lower := 37553, upper := 37565, witness := RowWitness.topPrime 37549 },
  { lower := 37636, upper := 37672, witness := RowWitness.topPrime 37633 },
  { lower := 38307, upper := 38410, witness := RowWitness.topPrime 38303 },
  { lower := 38416, upper := 38426, witness := RowWitness.topPrime 38393 },
  { lower := 39326, upper := 39442, witness := RowWitness.topPrime 39323 },
  { lower := 39443, upper := 39445, witness := RowWitness.topPrime 39443 },
  { lower := 40401, upper := 40447, witness := RowWitness.topPrime 40387 },
  { lower := 40817, upper := 40923, witness := RowWitness.topPrime 40813 },
  { lower := 40931, upper := 40936, witness := RowWitness.topPrime 40927 },
  { lower := 44944, upper := 45009, witness := RowWitness.topPrime 44939 },
  { lower := 45369, upper := 45372, witness := RowWitness.topPrime 45361 },
  { lower := 47526, upper := 47640, witness := RowWitness.topPrime 47521 },
  { lower := 47641, upper := 47643, witness := RowWitness.topPrime 47639 },
  { lower := 48013, upper := 48080, witness := RowWitness.topPrime 47981 },
  { lower := 48734, upper := 48852, witness := RowWitness.topPrime 48733 },
  { lower := 48853, upper := 48853, witness := RowWitness.topPrime 48847 },
  { lower := 50421, upper := 50529, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51124, witness := RowWitness.topPrime 51071 },
  { lower := 55451, upper := 55560, witness := RowWitness.topPrime 55441 },
  { lower := 55561, upper := 55566, witness := RowWitness.topPrime 55547 },
  { lower := 55815, upper := 55815, witness := RowWitness.topPrime 55813 },
  { lower := 58619, upper := 58683, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59075, witness := RowWitness.topPrime 59029 },
  { lower := 63869, upper := 63982, witness := RowWitness.topPrime 63863 },
  { lower := 63983, upper := 63988, witness := RowWitness.topPrime 63977 },
  { lower := 65536, upper := 65640, witness := RowWitness.topPrime 65521 },
  { lower := 65641, upper := 65652, witness := RowWitness.topPrime 65633 },
  { lower := 68651, upper := 68758, witness := RowWitness.topPrime 68639 },
  { lower := 68759, upper := 68770, witness := RowWitness.topPrime 68749 },
  { lower := 68782, upper := 68813, witness := RowWitness.topPrime 68777 },
  { lower := 68890, upper := 68901, witness := RowWitness.topPrime 68881 },
  { lower := 68921, upper := 69009, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71405, witness := RowWitness.topPrime 71287 },
  { lower := 71407, upper := 71408, witness := RowWitness.topPrime 71399 },
  { lower := 73205, upper := 73286, witness := RowWitness.topPrime 73189 },
  { lower := 89383, upper := 89492, witness := RowWitness.topPrime 89381 },
  { lower := 95052, upper := 95146, witness := RowWitness.topPrime 95027 },
  { lower := 95147, upper := 95167, witness := RowWitness.topPrime 95143 },
  { lower := 103041, upper := 103092, witness := RowWitness.topPrime 103007 },
  { lower := 146410, upper := 146453, witness := RowWitness.topPrime 146407 },
  { lower := 148955, upper := 148996, witness := RowWitness.topPrime 148949 }
]

def row120_layers : List CoverLayer := [
  { lower := 14280, upper := 28560, M := 22 },
  { lower := 28560, upper := 57120, M := 17 },
  { lower := 57120, upper := 114240, M := 14 },
  { lower := 114240, upper := 228480, M := 11 },
  { lower := 228480, upper := 456960, M := 9 },
  { lower := 456960, upper := 913920, M := 7 },
  { lower := 913920, upper := 1827840, M := 6 },
  { lower := 1827840, upper := 3655680, M := 5 },
  { lower := 3655680, upper := 7311360, M := 4 },
  { lower := 7311360, upper := 14622720, M := 3 },
  { lower := 14622720, upper := 29245440, M := 3 },
  { lower := 29245440, upper := 58490880, M := 2 },
  { lower := 58490880, upper := 116981760, M := 2 },
  { lower := 116981760, upper := 233963520, M := 2 },
  { lower := 233963520, upper := 467927040, M := 1 },
  { lower := 467927040, upper := 935854080, M := 1 },
  { lower := 935854080, upper := 1000000000, M := 1 }
]

def row120 : FiniteCoverRow := {
  height := row120_height,
  goods := row120_goods,
  layers := row120_layers
}

theorem row120_registered :
    decide (row120.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row120_goods_checked :
    row120.goods.all (goodSegmentCheck row120.height.i row120.height.r row120.height.s) = true := by
  decide +kernel

theorem row120_small_checked :
    coverCheck (2 * row120.height.i + 2) (row120.height.i * (row120.height.i - 1) - 1)
      (row120.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row120_layerCover_checked :
    coverCheck (row120.height.i * (row120.height.i - 1)) (row120.height.n0 - 1)
      (row120.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row120_layer000_checked :
    coverLayerCheck row120.height row120.goods { lower := 14280, upper := 28560, M := 22 } = true := by
  decide +kernel

theorem row120_layer001_checked :
    coverLayerCheck row120.height row120.goods { lower := 28560, upper := 57120, M := 17 } = true := by
  decide +kernel

theorem row120_layer002_checked :
    coverLayerCheck row120.height row120.goods { lower := 57120, upper := 114240, M := 14 } = true := by
  decide +kernel

theorem row120_layer003_checked :
    coverLayerCheck row120.height row120.goods { lower := 114240, upper := 228480, M := 11 } = true := by
  decide +kernel

theorem row120_layer004_checked :
    coverLayerCheck row120.height row120.goods { lower := 228480, upper := 456960, M := 9 } = true := by
  decide +kernel

theorem row120_layer005_checked :
    coverLayerCheck row120.height row120.goods { lower := 456960, upper := 913920, M := 7 } = true := by
  decide +kernel

theorem row120_layer006_checked :
    coverLayerCheck row120.height row120.goods { lower := 913920, upper := 1827840, M := 6 } = true := by
  decide +kernel

theorem row120_layer007_checked :
    coverLayerCheck row120.height row120.goods { lower := 1827840, upper := 3655680, M := 5 } = true := by
  decide +kernel

theorem row120_layer008_checked :
    coverLayerCheck row120.height row120.goods { lower := 3655680, upper := 7311360, M := 4 } = true := by
  decide +kernel

theorem row120_layer009_checked :
    coverLayerCheck row120.height row120.goods { lower := 7311360, upper := 14622720, M := 3 } = true := by
  decide +kernel

theorem row120_layer010_checked :
    coverLayerCheck row120.height row120.goods { lower := 14622720, upper := 29245440, M := 3 } = true := by
  decide +kernel

theorem row120_layer011_checked :
    coverLayerCheck row120.height row120.goods { lower := 29245440, upper := 58490880, M := 2 } = true := by
  decide +kernel

theorem row120_layer012_checked :
    coverLayerCheck row120.height row120.goods { lower := 58490880, upper := 116981760, M := 2 } = true := by
  decide +kernel

theorem row120_layer013_checked :
    coverLayerCheck row120.height row120.goods { lower := 116981760, upper := 233963520, M := 2 } = true := by
  decide +kernel

theorem row120_layer014_checked :
    coverLayerCheck row120.height row120.goods { lower := 233963520, upper := 467927040, M := 1 } = true := by
  decide +kernel

theorem row120_layer015_checked :
    coverLayerCheck row120.height row120.goods { lower := 467927040, upper := 935854080, M := 1 } = true := by
  decide +kernel

theorem row120_layer016_checked :
    coverLayerCheck row120.height row120.goods { lower := 935854080, upper := 1000000000, M := 1 } = true := by
  decide +kernel

theorem row120_layers_checked :
    row120.layers.all (coverLayerCheck row120.height row120.goods) = true := by
  change List.all [
    { lower := 14280, upper := 28560, M := 22 },
    { lower := 28560, upper := 57120, M := 17 },
    { lower := 57120, upper := 114240, M := 14 },
    { lower := 114240, upper := 228480, M := 11 },
    { lower := 228480, upper := 456960, M := 9 },
    { lower := 456960, upper := 913920, M := 7 },
    { lower := 913920, upper := 1827840, M := 6 },
    { lower := 1827840, upper := 3655680, M := 5 },
    { lower := 3655680, upper := 7311360, M := 4 },
    { lower := 7311360, upper := 14622720, M := 3 },
    { lower := 14622720, upper := 29245440, M := 3 },
    { lower := 29245440, upper := 58490880, M := 2 },
    { lower := 58490880, upper := 116981760, M := 2 },
    { lower := 116981760, upper := 233963520, M := 2 },
    { lower := 233963520, upper := 467927040, M := 1 },
    { lower := 467927040, upper := 935854080, M := 1 },
    { lower := 935854080, upper := 1000000000, M := 1 }
  ] (coverLayerCheck row120.height row120.goods) = true
  simp only [List.all_cons, List.all_nil,
    row120_layer000_checked,
    row120_layer001_checked,
    row120_layer002_checked,
    row120_layer003_checked,
    row120_layer004_checked,
    row120_layer005_checked,
    row120_layer006_checked,
    row120_layer007_checked,
    row120_layer008_checked,
    row120_layer009_checked,
    row120_layer010_checked,
    row120_layer011_checked,
    row120_layer012_checked,
    row120_layer013_checked,
    row120_layer014_checked,
    row120_layer015_checked,
    row120_layer016_checked,
    Bool.true_and]

theorem row120_checked : finiteCoverRowCheck row120 = true := by
  simp only [finiteCoverRowCheck, row120_registered, row120_goods_checked,
    row120_small_checked, row120_layerCover_checked, row120_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row120_checked

end B699LowIndex
