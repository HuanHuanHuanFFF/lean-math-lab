import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

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


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_good000_checked :
    goodSegmentCheck 120 39 84
      { lower := 242, upper := 360, witness := RowWitness.topPrime 241 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good001_checked :
    goodSegmentCheck 120 39 84
      { lower := 361, upper := 478, witness := RowWitness.topPrime 359 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good002_checked :
    goodSegmentCheck 120 39 84
      { lower := 479, upper := 598, witness := RowWitness.topPrime 479 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good003_checked :
    goodSegmentCheck 120 39 84
      { lower := 599, upper := 718, witness := RowWitness.topPrime 599 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good004_checked :
    goodSegmentCheck 120 39 84
      { lower := 719, upper := 838, witness := RowWitness.topPrime 719 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good005_checked :
    goodSegmentCheck 120 39 84
      { lower := 839, upper := 958, witness := RowWitness.topPrime 839 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good006_checked :
    goodSegmentCheck 120 39 84
      { lower := 959, upper := 1072, witness := RowWitness.topPrime 953 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good007_checked :
    goodSegmentCheck 120 39 84
      { lower := 1073, upper := 1188, witness := RowWitness.topPrime 1069 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good008_checked :
    goodSegmentCheck 120 39 84
      { lower := 1189, upper := 1306, witness := RowWitness.topPrime 1187 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good009_checked :
    goodSegmentCheck 120 39 84
      { lower := 1307, upper := 1426, witness := RowWitness.topPrime 1307 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good010_checked :
    goodSegmentCheck 120 39 84
      { lower := 1427, upper := 1546, witness := RowWitness.topPrime 1427 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good011_checked :
    goodSegmentCheck 120 39 84
      { lower := 1547, upper := 1662, witness := RowWitness.topPrime 1543 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good012_checked :
    goodSegmentCheck 120 39 84
      { lower := 1663, upper := 1782, witness := RowWitness.topPrime 1663 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good013_checked :
    goodSegmentCheck 120 39 84
      { lower := 1783, upper := 1902, witness := RowWitness.topPrime 1783 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good014_checked :
    goodSegmentCheck 120 39 84
      { lower := 1903, upper := 2020, witness := RowWitness.topPrime 1901 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good015_checked :
    goodSegmentCheck 120 39 84
      { lower := 2021, upper := 2136, witness := RowWitness.topPrime 2017 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_good016_checked :
    goodSegmentCheck 120 39 84
      { lower := 2137, upper := 2256, witness := RowWitness.topPrime 2137 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good017_checked :
    goodSegmentCheck 120 39 84
      { lower := 2257, upper := 2370, witness := RowWitness.topPrime 2251 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good018_checked :
    goodSegmentCheck 120 39 84
      { lower := 2371, upper := 2490, witness := RowWitness.topPrime 2371 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good019_checked :
    goodSegmentCheck 120 39 84
      { lower := 2491, upper := 2596, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good020_checked :
    goodSegmentCheck 120 39 84
      { lower := 2597, upper := 2712, witness := RowWitness.topPrime 2593 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good021_checked :
    goodSegmentCheck 120 39 84
      { lower := 2713, upper := 2832, witness := RowWitness.topPrime 2713 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good022_checked :
    goodSegmentCheck 120 39 84
      { lower := 2833, upper := 2952, witness := RowWitness.topPrime 2833 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good023_checked :
    goodSegmentCheck 120 39 84
      { lower := 2953, upper := 3072, witness := RowWitness.topPrime 2953 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good024_checked :
    goodSegmentCheck 120 39 84
      { lower := 3073, upper := 3186, witness := RowWitness.topPrime 3067 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good025_checked :
    goodSegmentCheck 120 39 84
      { lower := 3187, upper := 3306, witness := RowWitness.topPrime 3187 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good026_checked :
    goodSegmentCheck 120 39 84
      { lower := 3307, upper := 3426, witness := RowWitness.topPrime 3307 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good027_checked :
    goodSegmentCheck 120 39 84
      { lower := 3427, upper := 3532, witness := RowWitness.topPrime 3413 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good028_checked :
    goodSegmentCheck 120 39 84
      { lower := 3533, upper := 3652, witness := RowWitness.topPrime 3533 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good029_checked :
    goodSegmentCheck 120 39 84
      { lower := 3653, upper := 3762, witness := RowWitness.topPrime 3643 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good030_checked :
    goodSegmentCheck 120 39 84
      { lower := 3763, upper := 3880, witness := RowWitness.topPrime 3761 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good031_checked :
    goodSegmentCheck 120 39 84
      { lower := 3881, upper := 4000, witness := RowWitness.topPrime 3881 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_good032_checked :
    goodSegmentCheck 120 39 84
      { lower := 4001, upper := 4120, witness := RowWitness.topPrime 4001 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good033_checked :
    goodSegmentCheck 120 39 84
      { lower := 4121, upper := 4230, witness := RowWitness.topPrime 4111 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good034_checked :
    goodSegmentCheck 120 39 84
      { lower := 4231, upper := 4350, witness := RowWitness.topPrime 4231 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good035_checked :
    goodSegmentCheck 120 39 84
      { lower := 4351, upper := 4468, witness := RowWitness.topPrime 4349 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good036_checked :
    goodSegmentCheck 120 39 84
      { lower := 4469, upper := 4582, witness := RowWitness.topPrime 4463 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good037_checked :
    goodSegmentCheck 120 39 84
      { lower := 4583, upper := 4702, witness := RowWitness.topPrime 4583 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good038_checked :
    goodSegmentCheck 120 39 84
      { lower := 4703, upper := 4822, witness := RowWitness.topPrime 4703 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good039_checked :
    goodSegmentCheck 120 39 84
      { lower := 4823, upper := 4936, witness := RowWitness.topPrime 4817 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good040_checked :
    goodSegmentCheck 120 39 84
      { lower := 4937, upper := 5056, witness := RowWitness.topPrime 4937 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good041_checked :
    goodSegmentCheck 120 39 84
      { lower := 5057, upper := 5170, witness := RowWitness.topPrime 5051 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good042_checked :
    goodSegmentCheck 120 39 84
      { lower := 5171, upper := 5290, witness := RowWitness.topPrime 5171 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good043_checked :
    goodSegmentCheck 120 39 84
      { lower := 5291, upper := 5400, witness := RowWitness.topPrime 5281 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good044_checked :
    goodSegmentCheck 120 39 84
      { lower := 5401, upper := 5518, witness := RowWitness.topPrime 5399 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good045_checked :
    goodSegmentCheck 120 39 84
      { lower := 5519, upper := 5638, witness := RowWitness.topPrime 5519 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good046_checked :
    goodSegmentCheck 120 39 84
      { lower := 5639, upper := 5758, witness := RowWitness.topPrime 5639 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good047_checked :
    goodSegmentCheck 120 39 84
      { lower := 5759, upper := 5868, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_good048_checked :
    goodSegmentCheck 120 39 84
      { lower := 5869, upper := 5988, witness := RowWitness.topPrime 5869 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good049_checked :
    goodSegmentCheck 120 39 84
      { lower := 5989, upper := 6106, witness := RowWitness.topPrime 5987 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good050_checked :
    goodSegmentCheck 120 39 84
      { lower := 6107, upper := 6220, witness := RowWitness.topPrime 6101 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good051_checked :
    goodSegmentCheck 120 39 84
      { lower := 6221, upper := 6340, witness := RowWitness.topPrime 6221 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good052_checked :
    goodSegmentCheck 120 39 84
      { lower := 6341, upper := 6456, witness := RowWitness.topPrime 6337 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good053_checked :
    goodSegmentCheck 120 39 84
      { lower := 6457, upper := 6570, witness := RowWitness.topPrime 6451 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good054_checked :
    goodSegmentCheck 120 39 84
      { lower := 6571, upper := 6690, witness := RowWitness.topPrime 6571 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good055_checked :
    goodSegmentCheck 120 39 84
      { lower := 6691, upper := 6810, witness := RowWitness.topPrime 6691 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good056_checked :
    goodSegmentCheck 120 39 84
      { lower := 6811, upper := 6922, witness := RowWitness.topPrime 6803 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good057_checked :
    goodSegmentCheck 120 39 84
      { lower := 6923, upper := 7036, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good058_checked :
    goodSegmentCheck 120 39 84
      { lower := 7037, upper := 7146, witness := RowWitness.topPrime 7027 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good059_checked :
    goodSegmentCheck 120 39 84
      { lower := 7147, upper := 7248, witness := RowWitness.topPrime 7129 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good060_checked :
    goodSegmentCheck 120 39 84
      { lower := 7249, upper := 7366, witness := RowWitness.topPrime 7247 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good061_checked :
    goodSegmentCheck 120 39 84
      { lower := 7367, upper := 7470, witness := RowWitness.topPrime 7351 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good062_checked :
    goodSegmentCheck 120 39 84
      { lower := 7471, upper := 7578, witness := RowWitness.topPrime 7459 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good063_checked :
    goodSegmentCheck 120 39 84
      { lower := 7579, upper := 7696, witness := RowWitness.topPrime 7577 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_good064_checked :
    goodSegmentCheck 120 39 84
      { lower := 7697, upper := 7810, witness := RowWitness.topPrime 7691 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good065_checked :
    goodSegmentCheck 120 39 84
      { lower := 7811, upper := 7912, witness := RowWitness.topPrime 7793 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good066_checked :
    goodSegmentCheck 120 39 84
      { lower := 7913, upper := 8026, witness := RowWitness.topPrime 7907 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good067_checked :
    goodSegmentCheck 120 39 84
      { lower := 8027, upper := 8136, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good068_checked :
    goodSegmentCheck 120 39 84
      { lower := 8137, upper := 8242, witness := RowWitness.topPrime 8123 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good069_checked :
    goodSegmentCheck 120 39 84
      { lower := 8243, upper := 8362, witness := RowWitness.topPrime 8243 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good070_checked :
    goodSegmentCheck 120 39 84
      { lower := 8363, upper := 8482, witness := RowWitness.topPrime 8363 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good071_checked :
    goodSegmentCheck 120 39 84
      { lower := 8483, upper := 8586, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good072_checked :
    goodSegmentCheck 120 39 84
      { lower := 8587, upper := 8700, witness := RowWitness.topPrime 8581 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good073_checked :
    goodSegmentCheck 120 39 84
      { lower := 8701, upper := 8818, witness := RowWitness.topPrime 8699 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good074_checked :
    goodSegmentCheck 120 39 84
      { lower := 8819, upper := 8938, witness := RowWitness.topPrime 8819 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good075_checked :
    goodSegmentCheck 120 39 84
      { lower := 8939, upper := 9052, witness := RowWitness.topPrime 8933 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good076_checked :
    goodSegmentCheck 120 39 84
      { lower := 9053, upper := 9168, witness := RowWitness.topPrime 9049 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good077_checked :
    goodSegmentCheck 120 39 84
      { lower := 9169, upper := 9280, witness := RowWitness.topPrime 9161 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good078_checked :
    goodSegmentCheck 120 39 84
      { lower := 9281, upper := 9400, witness := RowWitness.topPrime 9281 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good079_checked :
    goodSegmentCheck 120 39 84
      { lower := 9401, upper := 9516, witness := RowWitness.topPrime 9397 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_good080_checked :
    goodSegmentCheck 120 39 84
      { lower := 9517, upper := 9630, witness := RowWitness.topPrime 9511 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good081_checked :
    goodSegmentCheck 120 39 84
      { lower := 9631, upper := 9750, witness := RowWitness.topPrime 9631 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good082_checked :
    goodSegmentCheck 120 39 84
      { lower := 9751, upper := 9868, witness := RowWitness.topPrime 9749 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good083_checked :
    goodSegmentCheck 120 39 84
      { lower := 9869, upper := 9978, witness := RowWitness.topPrime 9859 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good084_checked :
    goodSegmentCheck 120 39 84
      { lower := 9979, upper := 10092, witness := RowWitness.topPrime 9973 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good085_checked :
    goodSegmentCheck 120 39 84
      { lower := 10093, upper := 10212, witness := RowWitness.topPrime 10093 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good086_checked :
    goodSegmentCheck 120 39 84
      { lower := 10213, upper := 10330, witness := RowWitness.topPrime 10211 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good087_checked :
    goodSegmentCheck 120 39 84
      { lower := 10331, upper := 10450, witness := RowWitness.topPrime 10331 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good088_checked :
    goodSegmentCheck 120 39 84
      { lower := 10451, upper := 10552, witness := RowWitness.topPrime 10433 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good089_checked :
    goodSegmentCheck 120 39 84
      { lower := 10553, upper := 10650, witness := RowWitness.topPrime 10531 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good090_checked :
    goodSegmentCheck 120 39 84
      { lower := 10651, upper := 10770, witness := RowWitness.topPrime 10651 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good091_checked :
    goodSegmentCheck 120 39 84
      { lower := 10771, upper := 10890, witness := RowWitness.topPrime 10771 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good092_checked :
    goodSegmentCheck 120 39 84
      { lower := 10891, upper := 11010, witness := RowWitness.topPrime 10891 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good093_checked :
    goodSegmentCheck 120 39 84
      { lower := 11011, upper := 11122, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good094_checked :
    goodSegmentCheck 120 39 84
      { lower := 11123, upper := 11238, witness := RowWitness.topPrime 11119 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good095_checked :
    goodSegmentCheck 120 39 84
      { lower := 11239, upper := 11358, witness := RowWitness.topPrime 11239 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_good096_checked :
    goodSegmentCheck 120 39 84
      { lower := 11359, upper := 11472, witness := RowWitness.topPrime 11353 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good097_checked :
    goodSegmentCheck 120 39 84
      { lower := 11473, upper := 11590, witness := RowWitness.topPrime 11471 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good098_checked :
    goodSegmentCheck 120 39 84
      { lower := 11591, upper := 11706, witness := RowWitness.topPrime 11587 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good099_checked :
    goodSegmentCheck 120 39 84
      { lower := 11707, upper := 11820, witness := RowWitness.topPrime 11701 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good100_checked :
    goodSegmentCheck 120 39 84
      { lower := 11821, upper := 11940, witness := RowWitness.topPrime 11821 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good101_checked :
    goodSegmentCheck 120 39 84
      { lower := 11941, upper := 12060, witness := RowWitness.topPrime 11941 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good102_checked :
    goodSegmentCheck 120 39 84
      { lower := 12061, upper := 12168, witness := RowWitness.topPrime 12049 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good103_checked :
    goodSegmentCheck 120 39 84
      { lower := 12169, upper := 12282, witness := RowWitness.topPrime 12163 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good104_checked :
    goodSegmentCheck 120 39 84
      { lower := 12283, upper := 12400, witness := RowWitness.topPrime 12281 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good105_checked :
    goodSegmentCheck 120 39 84
      { lower := 12401, upper := 12520, witness := RowWitness.topPrime 12401 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good106_checked :
    goodSegmentCheck 120 39 84
      { lower := 12521, upper := 12636, witness := RowWitness.topPrime 12517 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good107_checked :
    goodSegmentCheck 120 39 84
      { lower := 12637, upper := 12756, witness := RowWitness.topPrime 12637 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good108_checked :
    goodSegmentCheck 120 39 84
      { lower := 12757, upper := 12876, witness := RowWitness.topPrime 12757 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good109_checked :
    goodSegmentCheck 120 39 84
      { lower := 12877, upper := 12972, witness := RowWitness.topPrime 12853 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good110_checked :
    goodSegmentCheck 120 39 84
      { lower := 12973, upper := 13092, witness := RowWitness.topPrime 12973 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good111_checked :
    goodSegmentCheck 120 39 84
      { lower := 13093, upper := 13212, witness := RowWitness.topPrime 13093 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_good112_checked :
    goodSegmentCheck 120 39 84
      { lower := 13213, upper := 13306, witness := RowWitness.topPrime 13187 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good113_checked :
    goodSegmentCheck 120 39 84
      { lower := 13307, upper := 13416, witness := RowWitness.topPrime 13297 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good114_checked :
    goodSegmentCheck 120 39 84
      { lower := 13417, upper := 13536, witness := RowWitness.topPrime 13417 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good115_checked :
    goodSegmentCheck 120 39 84
      { lower := 13537, upper := 13656, witness := RowWitness.topPrime 13537 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good116_checked :
    goodSegmentCheck 120 39 84
      { lower := 13657, upper := 13768, witness := RowWitness.topPrime 13649 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good117_checked :
    goodSegmentCheck 120 39 84
      { lower := 13769, upper := 13882, witness := RowWitness.topPrime 13763 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good118_checked :
    goodSegmentCheck 120 39 84
      { lower := 13883, upper := 14002, witness := RowWitness.topPrime 13883 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good119_checked :
    goodSegmentCheck 120 39 84
      { lower := 14003, upper := 14118, witness := RowWitness.topPrime 13999 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good120_checked :
    goodSegmentCheck 120 39 84
      { lower := 14119, upper := 14226, witness := RowWitness.topPrime 14107 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good121_checked :
    goodSegmentCheck 120 39 84
      { lower := 14227, upper := 14279, witness := RowWitness.topPrime 14221 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good122_checked :
    goodSegmentCheck 120 39 84
      { lower := 14406, upper := 14520, witness := RowWitness.topPrime 14401 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good123_checked :
    goodSegmentCheck 120 39 84
      { lower := 14521, upper := 14525, witness := RowWitness.topPrime 14519 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good124_checked :
    goodSegmentCheck 120 39 84
      { lower := 14739, upper := 14760, witness := RowWitness.topPrime 14737 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good125_checked :
    goodSegmentCheck 120 39 84
      { lower := 14792, upper := 14858, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good126_checked :
    goodSegmentCheck 120 39 84
      { lower := 14884, upper := 14911, witness := RowWitness.topPrime 14879 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good127_checked :
    goodSegmentCheck 120 39 84
      { lower := 15123, upper := 15240, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_good128_checked :
    goodSegmentCheck 120 39 84
      { lower := 15241, upper := 15248, witness := RowWitness.topPrime 15241 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good129_checked :
    goodSegmentCheck 120 39 84
      { lower := 15376, upper := 15492, witness := RowWitness.topPrime 15373 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good130_checked :
    goodSegmentCheck 120 39 84
      { lower := 15493, upper := 15498, witness := RowWitness.topPrime 15493 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good131_checked :
    goodSegmentCheck 120 39 84
      { lower := 15979, upper := 16092, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good132_checked :
    goodSegmentCheck 120 39 84
      { lower := 16093, upper := 16098, witness := RowWitness.topPrime 16091 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good133_checked :
    goodSegmentCheck 120 39 84
      { lower := 16384, upper := 16500, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good134_checked :
    goodSegmentCheck 120 39 84
      { lower := 16501, upper := 16503, witness := RowWitness.topPrime 16493 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good135_checked :
    goodSegmentCheck 120 39 84
      { lower := 16810, upper := 16906, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good136_checked :
    goodSegmentCheck 120 39 84
      { lower := 16907, upper := 16939, witness := RowWitness.topPrime 16903 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good137_checked :
    goodSegmentCheck 120 39 84
      { lower := 17303, upper := 17418, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good138_checked :
    goodSegmentCheck 120 39 84
      { lower := 17419, upper := 17422, witness := RowWitness.topPrime 17419 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good139_checked :
    goodSegmentCheck 120 39 84
      { lower := 17661, upper := 17778, witness := RowWitness.topPrime 17659 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good140_checked :
    goodSegmentCheck 120 39 84
      { lower := 17779, upper := 17780, witness := RowWitness.topPrime 17761 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good141_checked :
    goodSegmentCheck 120 39 84
      { lower := 18491, upper := 18600, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good142_checked :
    goodSegmentCheck 120 39 84
      { lower := 18601, upper := 18621, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good143_checked :
    goodSegmentCheck 120 39 84
      { lower := 18634, upper := 18736, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_good144_checked :
    goodSegmentCheck 120 39 84
      { lower := 18737, upper := 18753, witness := RowWitness.topPrime 18731 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good145_checked :
    goodSegmentCheck 120 39 84
      { lower := 18818, upper := 18842, witness := RowWitness.topPrime 18803 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good146_checked :
    goodSegmentCheck 120 39 84
      { lower := 19208, upper := 19326, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good147_checked :
    goodSegmentCheck 120 39 84
      { lower := 19327, upper := 19327, witness := RowWitness.topPrime 19319 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good148_checked :
    goodSegmentCheck 120 39 84
      { lower := 19663, upper := 19780, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good149_checked :
    goodSegmentCheck 120 39 84
      { lower := 19781, upper := 19802, witness := RowWitness.topPrime 19777 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good150_checked :
    goodSegmentCheck 120 39 84
      { lower := 19881, upper := 19892, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good151_checked :
    goodSegmentCheck 120 39 84
      { lower := 19965, upper := 20000, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good152_checked :
    goodSegmentCheck 120 39 84
      { lower := 20172, upper := 20280, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good153_checked :
    goodSegmentCheck 120 39 84
      { lower := 20281, upper := 20291, witness := RowWitness.topPrime 20269 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good154_checked :
    goodSegmentCheck 120 39 84
      { lower := 20402, upper := 20458, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good155_checked :
    goodSegmentCheck 120 39 84
      { lower := 20577, upper := 20654, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good156_checked :
    goodSegmentCheck 120 39 84
      { lower := 20667, upper := 20696, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good157_checked :
    goodSegmentCheck 120 39 84
      { lower := 21218, upper := 21261, witness := RowWitness.topPrime 21211 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good158_checked :
    goodSegmentCheck 120 39 84
      { lower := 21296, upper := 21402, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good159_checked :
    goodSegmentCheck 120 39 84
      { lower := 21403, upper := 21415, witness := RowWitness.topPrime 21401 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_good160_checked :
    goodSegmentCheck 120 39 84
      { lower := 21904, upper := 22012, witness := RowWitness.topPrime 21893 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good161_checked :
    goodSegmentCheck 120 39 84
      { lower := 22013, upper := 22023, witness := RowWitness.topPrime 22013 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good162_checked :
    goodSegmentCheck 120 39 84
      { lower := 22188, upper := 22209, witness := RowWitness.topPrime 22171 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good163_checked :
    goodSegmentCheck 120 39 84
      { lower := 22445, upper := 22445, witness := RowWitness.topPrime 22441 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good164_checked :
    goodSegmentCheck 120 39 84
      { lower := 22472, upper := 22564, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good165_checked :
    goodSegmentCheck 120 39 84
      { lower := 23763, upper := 23880, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good166_checked :
    goodSegmentCheck 120 39 84
      { lower := 23881, upper := 23881, witness := RowWitness.topPrime 23879 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good167_checked :
    goodSegmentCheck 120 39 84
      { lower := 24010, upper := 24126, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good168_checked :
    goodSegmentCheck 120 39 84
      { lower := 24127, upper := 24129, witness := RowWitness.topPrime 24121 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good169_checked :
    goodSegmentCheck 120 39 84
      { lower := 24334, upper := 24448, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good170_checked :
    goodSegmentCheck 120 39 84
      { lower := 24449, upper := 24486, witness := RowWitness.topPrime 24443 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good171_checked :
    goodSegmentCheck 120 39 84
      { lower := 24642, upper := 24684, witness := RowWitness.topPrime 24631 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good172_checked :
    goodSegmentCheck 120 39 84
      { lower := 25215, upper := 25308, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good173_checked :
    goodSegmentCheck 120 39 84
      { lower := 25309, upper := 25400, witness := RowWitness.topPrime 25309 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good174_checked :
    goodSegmentCheck 120 39 84
      { lower := 26047, upper := 26130, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good175_checked :
    goodSegmentCheck 120 39 84
      { lower := 26411, upper := 26483, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_good176_checked :
    goodSegmentCheck 120 39 84
      { lower := 26508, upper := 26530, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good177_checked :
    goodSegmentCheck 120 39 84
      { lower := 26620, upper := 26627, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good178_checked :
    goodSegmentCheck 120 39 84
      { lower := 26645, upper := 26739, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good179_checked :
    goodSegmentCheck 120 39 84
      { lower := 26934, upper := 27015, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good180_checked :
    goodSegmentCheck 120 39 84
      { lower := 27436, upper := 27499, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good181_checked :
    goodSegmentCheck 120 39 84
      { lower := 27848, upper := 27854, witness := RowWitness.topPrime 27847 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good182_checked :
    goodSegmentCheck 120 39 84
      { lower := 27951, upper := 27967, witness := RowWitness.topPrime 27947 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good183_checked :
    goodSegmentCheck 120 39 84
      { lower := 28577, upper := 28680, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good184_checked :
    goodSegmentCheck 120 39 84
      { lower := 28812, upper := 28836, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good185_checked :
    goodSegmentCheck 120 39 84
      { lower := 29584, upper := 29597, witness := RowWitness.topPrime 29581 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good186_checked :
    goodSegmentCheck 120 39 84
      { lower := 29791, upper := 29887, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good187_checked :
    goodSegmentCheck 120 39 84
      { lower := 30926, upper := 31018, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good188_checked :
    goodSegmentCheck 120 39 84
      { lower := 31213, upper := 31312, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good189_checked :
    goodSegmentCheck 120 39 84
      { lower := 31313, upper := 31369, witness := RowWitness.topPrime 31307 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good190_checked :
    goodSegmentCheck 120 39 84
      { lower := 31423, upper := 31516, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good191_checked :
    goodSegmentCheck 120 39 84
      { lower := 31517, upper := 31542, witness := RowWitness.topPrime 31517 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_good192_checked :
    goodSegmentCheck 120 39 84
      { lower := 32805, upper := 32887, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good193_checked :
    goodSegmentCheck 120 39 84
      { lower := 33708, upper := 33733, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good194_checked :
    goodSegmentCheck 120 39 84
      { lower := 34347, upper := 34456, witness := RowWitness.topPrime 34337 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good195_checked :
    goodSegmentCheck 120 39 84
      { lower := 34457, upper := 34510, witness := RowWitness.topPrime 34457 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good196_checked :
    goodSegmentCheck 120 39 84
      { lower := 35344, upper := 35406, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good197_checked :
    goodSegmentCheck 120 39 84
      { lower := 36015, upper := 36031, witness := RowWitness.topPrime 36013 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good198_checked :
    goodSegmentCheck 120 39 84
      { lower := 36517, upper := 36616, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good199_checked :
    goodSegmentCheck 120 39 84
      { lower := 36617, upper := 36620, witness := RowWitness.topPrime 36607 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good200_checked :
    goodSegmentCheck 120 39 84
      { lower := 37303, upper := 37329, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good201_checked :
    goodSegmentCheck 120 39 84
      { lower := 37349, upper := 37422, witness := RowWitness.topPrime 37339 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good202_checked :
    goodSegmentCheck 120 39 84
      { lower := 37446, upper := 37468, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good203_checked :
    goodSegmentCheck 120 39 84
      { lower := 37553, upper := 37565, witness := RowWitness.topPrime 37549 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good204_checked :
    goodSegmentCheck 120 39 84
      { lower := 37636, upper := 37672, witness := RowWitness.topPrime 37633 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good205_checked :
    goodSegmentCheck 120 39 84
      { lower := 38307, upper := 38410, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good206_checked :
    goodSegmentCheck 120 39 84
      { lower := 38416, upper := 38426, witness := RowWitness.topPrime 38393 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good207_checked :
    goodSegmentCheck 120 39 84
      { lower := 39326, upper := 39442, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_good208_checked :
    goodSegmentCheck 120 39 84
      { lower := 39443, upper := 39445, witness := RowWitness.topPrime 39443 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good209_checked :
    goodSegmentCheck 120 39 84
      { lower := 40401, upper := 40447, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good210_checked :
    goodSegmentCheck 120 39 84
      { lower := 40817, upper := 40923, witness := RowWitness.topPrime 40813 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good211_checked :
    goodSegmentCheck 120 39 84
      { lower := 40931, upper := 40936, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good212_checked :
    goodSegmentCheck 120 39 84
      { lower := 44944, upper := 45009, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good213_checked :
    goodSegmentCheck 120 39 84
      { lower := 45369, upper := 45372, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good214_checked :
    goodSegmentCheck 120 39 84
      { lower := 47526, upper := 47640, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good215_checked :
    goodSegmentCheck 120 39 84
      { lower := 47641, upper := 47643, witness := RowWitness.topPrime 47639 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good216_checked :
    goodSegmentCheck 120 39 84
      { lower := 48013, upper := 48080, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good217_checked :
    goodSegmentCheck 120 39 84
      { lower := 48734, upper := 48852, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good218_checked :
    goodSegmentCheck 120 39 84
      { lower := 48853, upper := 48853, witness := RowWitness.topPrime 48847 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good219_checked :
    goodSegmentCheck 120 39 84
      { lower := 50421, upper := 50529, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good220_checked :
    goodSegmentCheck 120 39 84
      { lower := 51076, upper := 51124, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good221_checked :
    goodSegmentCheck 120 39 84
      { lower := 55451, upper := 55560, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good222_checked :
    goodSegmentCheck 120 39 84
      { lower := 55561, upper := 55566, witness := RowWitness.topPrime 55547 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good223_checked :
    goodSegmentCheck 120 39 84
      { lower := 55815, upper := 55815, witness := RowWitness.topPrime 55813 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_good224_checked :
    goodSegmentCheck 120 39 84
      { lower := 58619, upper := 58683, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good225_checked :
    goodSegmentCheck 120 39 84
      { lower := 59049, upper := 59075, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good226_checked :
    goodSegmentCheck 120 39 84
      { lower := 63869, upper := 63982, witness := RowWitness.topPrime 63863 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good227_checked :
    goodSegmentCheck 120 39 84
      { lower := 63983, upper := 63988, witness := RowWitness.topPrime 63977 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good228_checked :
    goodSegmentCheck 120 39 84
      { lower := 65536, upper := 65640, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good229_checked :
    goodSegmentCheck 120 39 84
      { lower := 65641, upper := 65652, witness := RowWitness.topPrime 65633 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good230_checked :
    goodSegmentCheck 120 39 84
      { lower := 68651, upper := 68758, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good231_checked :
    goodSegmentCheck 120 39 84
      { lower := 68759, upper := 68770, witness := RowWitness.topPrime 68749 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good232_checked :
    goodSegmentCheck 120 39 84
      { lower := 68782, upper := 68813, witness := RowWitness.topPrime 68777 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good233_checked :
    goodSegmentCheck 120 39 84
      { lower := 68890, upper := 68901, witness := RowWitness.topPrime 68881 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good234_checked :
    goodSegmentCheck 120 39 84
      { lower := 68921, upper := 69009, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good235_checked :
    goodSegmentCheck 120 39 84
      { lower := 71289, upper := 71405, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good236_checked :
    goodSegmentCheck 120 39 84
      { lower := 71407, upper := 71408, witness := RowWitness.topPrime 71399 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good237_checked :
    goodSegmentCheck 120 39 84
      { lower := 73205, upper := 73286, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good238_checked :
    goodSegmentCheck 120 39 84
      { lower := 89383, upper := 89492, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good239_checked :
    goodSegmentCheck 120 39 84
      { lower := 95052, upper := 95146, witness := RowWitness.topPrime 95027 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_good240_checked :
    goodSegmentCheck 120 39 84
      { lower := 95147, upper := 95167, witness := RowWitness.topPrime 95143 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good241_checked :
    goodSegmentCheck 120 39 84
      { lower := 103041, upper := 103092, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good242_checked :
    goodSegmentCheck 120 39 84
      { lower := 146410, upper := 146453, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good243_checked :
    goodSegmentCheck 120 39 84
      { lower := 148955, upper := 148996, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good243_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_goods_checked :
    row120.goods.all (goodSegmentCheck row120.height.i row120.height.r row120.height.s) = true := by
  change row120_goods.all (goodSegmentCheck 120 39 84) = true
  simp only [row120_goods, List.all_cons, List.all_nil,
    row120_good000_checked,
    row120_good001_checked,
    row120_good002_checked,
    row120_good003_checked,
    row120_good004_checked,
    row120_good005_checked,
    row120_good006_checked,
    row120_good007_checked,
    row120_good008_checked,
    row120_good009_checked,
    row120_good010_checked,
    row120_good011_checked,
    row120_good012_checked,
    row120_good013_checked,
    row120_good014_checked,
    row120_good015_checked,
    row120_good016_checked,
    row120_good017_checked,
    row120_good018_checked,
    row120_good019_checked,
    row120_good020_checked,
    row120_good021_checked,
    row120_good022_checked,
    row120_good023_checked,
    row120_good024_checked,
    row120_good025_checked,
    row120_good026_checked,
    row120_good027_checked,
    row120_good028_checked,
    row120_good029_checked,
    row120_good030_checked,
    row120_good031_checked,
    row120_good032_checked,
    row120_good033_checked,
    row120_good034_checked,
    row120_good035_checked,
    row120_good036_checked,
    row120_good037_checked,
    row120_good038_checked,
    row120_good039_checked,
    row120_good040_checked,
    row120_good041_checked,
    row120_good042_checked,
    row120_good043_checked,
    row120_good044_checked,
    row120_good045_checked,
    row120_good046_checked,
    row120_good047_checked,
    row120_good048_checked,
    row120_good049_checked,
    row120_good050_checked,
    row120_good051_checked,
    row120_good052_checked,
    row120_good053_checked,
    row120_good054_checked,
    row120_good055_checked,
    row120_good056_checked,
    row120_good057_checked,
    row120_good058_checked,
    row120_good059_checked,
    row120_good060_checked,
    row120_good061_checked,
    row120_good062_checked,
    row120_good063_checked,
    row120_good064_checked,
    row120_good065_checked,
    row120_good066_checked,
    row120_good067_checked,
    row120_good068_checked,
    row120_good069_checked,
    row120_good070_checked,
    row120_good071_checked,
    row120_good072_checked,
    row120_good073_checked,
    row120_good074_checked,
    row120_good075_checked,
    row120_good076_checked,
    row120_good077_checked,
    row120_good078_checked,
    row120_good079_checked,
    row120_good080_checked,
    row120_good081_checked,
    row120_good082_checked,
    row120_good083_checked,
    row120_good084_checked,
    row120_good085_checked,
    row120_good086_checked,
    row120_good087_checked,
    row120_good088_checked,
    row120_good089_checked,
    row120_good090_checked,
    row120_good091_checked,
    row120_good092_checked,
    row120_good093_checked,
    row120_good094_checked,
    row120_good095_checked,
    row120_good096_checked,
    row120_good097_checked,
    row120_good098_checked,
    row120_good099_checked,
    row120_good100_checked,
    row120_good101_checked,
    row120_good102_checked,
    row120_good103_checked,
    row120_good104_checked,
    row120_good105_checked,
    row120_good106_checked,
    row120_good107_checked,
    row120_good108_checked,
    row120_good109_checked,
    row120_good110_checked,
    row120_good111_checked,
    row120_good112_checked,
    row120_good113_checked,
    row120_good114_checked,
    row120_good115_checked,
    row120_good116_checked,
    row120_good117_checked,
    row120_good118_checked,
    row120_good119_checked,
    row120_good120_checked,
    row120_good121_checked,
    row120_good122_checked,
    row120_good123_checked,
    row120_good124_checked,
    row120_good125_checked,
    row120_good126_checked,
    row120_good127_checked,
    row120_good128_checked,
    row120_good129_checked,
    row120_good130_checked,
    row120_good131_checked,
    row120_good132_checked,
    row120_good133_checked,
    row120_good134_checked,
    row120_good135_checked,
    row120_good136_checked,
    row120_good137_checked,
    row120_good138_checked,
    row120_good139_checked,
    row120_good140_checked,
    row120_good141_checked,
    row120_good142_checked,
    row120_good143_checked,
    row120_good144_checked,
    row120_good145_checked,
    row120_good146_checked,
    row120_good147_checked,
    row120_good148_checked,
    row120_good149_checked,
    row120_good150_checked,
    row120_good151_checked,
    row120_good152_checked,
    row120_good153_checked,
    row120_good154_checked,
    row120_good155_checked,
    row120_good156_checked,
    row120_good157_checked,
    row120_good158_checked,
    row120_good159_checked,
    row120_good160_checked,
    row120_good161_checked,
    row120_good162_checked,
    row120_good163_checked,
    row120_good164_checked,
    row120_good165_checked,
    row120_good166_checked,
    row120_good167_checked,
    row120_good168_checked,
    row120_good169_checked,
    row120_good170_checked,
    row120_good171_checked,
    row120_good172_checked,
    row120_good173_checked,
    row120_good174_checked,
    row120_good175_checked,
    row120_good176_checked,
    row120_good177_checked,
    row120_good178_checked,
    row120_good179_checked,
    row120_good180_checked,
    row120_good181_checked,
    row120_good182_checked,
    row120_good183_checked,
    row120_good184_checked,
    row120_good185_checked,
    row120_good186_checked,
    row120_good187_checked,
    row120_good188_checked,
    row120_good189_checked,
    row120_good190_checked,
    row120_good191_checked,
    row120_good192_checked,
    row120_good193_checked,
    row120_good194_checked,
    row120_good195_checked,
    row120_good196_checked,
    row120_good197_checked,
    row120_good198_checked,
    row120_good199_checked,
    row120_good200_checked,
    row120_good201_checked,
    row120_good202_checked,
    row120_good203_checked,
    row120_good204_checked,
    row120_good205_checked,
    row120_good206_checked,
    row120_good207_checked,
    row120_good208_checked,
    row120_good209_checked,
    row120_good210_checked,
    row120_good211_checked,
    row120_good212_checked,
    row120_good213_checked,
    row120_good214_checked,
    row120_good215_checked,
    row120_good216_checked,
    row120_good217_checked,
    row120_good218_checked,
    row120_good219_checked,
    row120_good220_checked,
    row120_good221_checked,
    row120_good222_checked,
    row120_good223_checked,
    row120_good224_checked,
    row120_good225_checked,
    row120_good226_checked,
    row120_good227_checked,
    row120_good228_checked,
    row120_good229_checked,
    row120_good230_checked,
    row120_good231_checked,
    row120_good232_checked,
    row120_good233_checked,
    row120_good234_checked,
    row120_good235_checked,
    row120_good236_checked,
    row120_good237_checked,
    row120_good238_checked,
    row120_good239_checked,
    row120_good240_checked,
    row120_good241_checked,
    row120_good242_checked,
    row120_good243_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_registered :
    decide (row120.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row120_small_checked :
    coverCheck (2 * row120.height.i + 2) (row120.height.i * (row120.height.i - 1) - 1)
      (row120.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row120_layerCover_checked :
    coverCheck (row120.height.i * (row120.height.i - 1)) (row120.height.n0 - 1)
      (row120.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row120_bounds : List NatInterval :=
  [(242, 360), (361, 478), (479, 598), (599, 718), (719, 838), (839, 958), (959, 1072), (1073, 1188), (1189, 1306), (1307, 1426), (1427, 1546), (1547, 1662), (1663, 1782), (1783, 1902), (1903, 2020), (2021, 2136), (2137, 2256), (2257, 2370), (2371, 2490), (2491, 2596), (2597, 2712), (2713, 2832), (2833, 2952), (2953, 3072), (3073, 3186), (3187, 3306), (3307, 3426), (3427, 3532), (3533, 3652), (3653, 3762), (3763, 3880), (3881, 4000), (4001, 4120), (4121, 4230), (4231, 4350), (4351, 4468), (4469, 4582), (4583, 4702), (4703, 4822), (4823, 4936), (4937, 5056), (5057, 5170), (5171, 5290), (5291, 5400), (5401, 5518), (5519, 5638), (5639, 5758), (5759, 5868), (5869, 5988), (5989, 6106), (6107, 6220), (6221, 6340), (6341, 6456), (6457, 6570), (6571, 6690), (6691, 6810), (6811, 6922), (6923, 7036), (7037, 7146), (7147, 7248), (7249, 7366), (7367, 7470), (7471, 7578), (7579, 7696), (7697, 7810), (7811, 7912), (7913, 8026), (8027, 8136), (8137, 8242), (8243, 8362), (8363, 8482), (8483, 8586), (8587, 8700), (8701, 8818), (8819, 8938), (8939, 9052), (9053, 9168), (9169, 9280), (9281, 9400), (9401, 9516), (9517, 9630), (9631, 9750), (9751, 9868), (9869, 9978), (9979, 10092), (10093, 10212), (10213, 10330), (10331, 10450), (10451, 10552), (10553, 10650), (10651, 10770), (10771, 10890), (10891, 11010), (11011, 11122), (11123, 11238), (11239, 11358), (11359, 11472), (11473, 11590), (11591, 11706), (11707, 11820), (11821, 11940), (11941, 12060), (12061, 12168), (12169, 12282), (12283, 12400), (12401, 12520), (12521, 12636), (12637, 12756), (12757, 12876), (12877, 12972), (12973, 13092), (13093, 13212), (13213, 13306), (13307, 13416), (13417, 13536), (13537, 13656), (13657, 13768), (13769, 13882), (13883, 14002), (14003, 14118), (14119, 14226), (14227, 14279), (14406, 14520), (14521, 14525), (14739, 14760), (14792, 14858), (14884, 14911), (15123, 15240), (15241, 15248), (15376, 15492), (15493, 15498), (15979, 16092), (16093, 16098), (16384, 16500), (16501, 16503), (16810, 16906), (16907, 16939), (17303, 17418), (17419, 17422), (17661, 17778), (17779, 17780), (18491, 18600), (18601, 18621), (18634, 18736), (18737, 18753), (18818, 18842), (19208, 19326), (19327, 19327), (19663, 19780), (19781, 19802), (19881, 19892), (19965, 20000), (20172, 20280), (20281, 20291), (20402, 20458), (20577, 20654), (20667, 20696), (21218, 21261), (21296, 21402), (21403, 21415), (21904, 22012), (22013, 22023), (22188, 22209), (22445, 22445), (22472, 22564), (23763, 23880), (23881, 23881), (24010, 24126), (24127, 24129), (24334, 24448), (24449, 24486), (24642, 24684), (25215, 25308), (25309, 25400), (26047, 26130), (26411, 26483), (26508, 26530), (26620, 26627), (26645, 26739), (26934, 27015), (27436, 27499), (27848, 27854), (27951, 27967), (28577, 28680), (28812, 28836), (29584, 29597), (29791, 29887), (30926, 31018), (31213, 31312), (31313, 31369), (31423, 31516), (31517, 31542), (32805, 32887), (33708, 33733), (34347, 34456), (34457, 34510), (35344, 35406), (36015, 36031), (36517, 36616), (36617, 36620), (37303, 37329), (37349, 37422), (37446, 37468), (37553, 37565), (37636, 37672), (38307, 38410), (38416, 38426), (39326, 39442), (39443, 39445), (40401, 40447), (40817, 40923), (40931, 40936), (44944, 45009), (45369, 45372), (47526, 47640), (47641, 47643), (48013, 48080), (48734, 48852), (48853, 48853), (50421, 50529), (51076, 51124), (55451, 55560), (55561, 55566), (55815, 55815), (58619, 58683), (59049, 59075), (63869, 63982), (63983, 63988), (65536, 65640), (65641, 65652), (68651, 68758), (68759, 68770), (68782, 68813), (68890, 68901), (68921, 69009), (71289, 71405), (71407, 71408), (73205, 73286), (89383, 89492), (95052, 95146), (95147, 95167), (103041, 103092), (146410, 146453), (148955, 148996)]

theorem row120_bounds_eq : row120.goods.map goodSegmentBounds = row120_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row120_layer000_intervals : List ColouredInterval :=
  [(2, 16384, 16503), (2, 16384, 16503), (3, 15309, 15428), (3, 19683, 19802), (3, 26244, 26363), (3, 19683, 19802), (5, 15625, 15744), (7, 14406, 14525), (7, 16807, 16926), (7, 19208, 19327), (7, 21609, 21728), (7, 24010, 24129), (7, 26411, 26530), (7, 16807, 16926), (11, 14641, 14760), (11, 15972, 16091), (11, 17303, 17422), (11, 18634, 18753), (11, 19965, 20084), (11, 21296, 21415), (11, 22627, 22746), (11, 23958, 24077), (11, 25289, 25408), (11, 26620, 26739), (11, 27951, 28070), (11, 14641, 14760), (13, 15379, 15498), (13, 17576, 17695), (13, 19773, 19892), (13, 21970, 22089), (13, 24167, 24286), (13, 26364, 26483), (17, 14739, 14858), (17, 19652, 19771), (17, 24565, 24684), (19, 20577, 20696), (19, 27436, 27555), (23, 24334, 24453), (29, 14297, 14416), (29, 15138, 15257), (29, 15979, 16098), (29, 16820, 16939), (29, 17661, 17780), (29, 18502, 18621), (29, 24389, 24508), (31, 14415, 14534), (31, 15376, 15495), (31, 16337, 16456), (31, 17298, 17417), (31, 18259, 18378), (31, 19220, 19339), (31, 20181, 20300), (31, 21142, 21261), (37, 15059, 15178), (37, 16428, 16547), (37, 17797, 17916), (37, 19166, 19285), (37, 20535, 20654), (37, 21904, 22023), (37, 23273, 23392), (37, 24642, 24761), (37, 26011, 26130), (37, 27380, 27499), (41, 15129, 15248), (41, 16810, 16929), (41, 18491, 18610), (41, 20172, 20291), (41, 21853, 21972), (41, 23534, 23653), (41, 25215, 25334), (41, 26896, 27015), (43, 14792, 14911), (43, 16641, 16760), (43, 18490, 18609), (43, 20339, 20458), (43, 22188, 22307), (43, 24037, 24156), (43, 25886, 26005), (43, 27735, 27854), (47, 15463, 15582), (47, 17672, 17791), (47, 19881, 20000), (47, 22090, 22209), (47, 24299, 24418), (47, 26508, 26627), (53, 16854, 16973), (53, 19663, 19782), (53, 22472, 22591), (53, 25281, 25400), (53, 28090, 28209), (59, 17405, 17524), (59, 20886, 21005), (59, 24367, 24486), (59, 27848, 27967), (61, 14884, 15003), (61, 18605, 18724), (61, 22326, 22445), (61, 26047, 26166), (67, 17956, 18075), (67, 22445, 22564), (67, 26934, 27053), (71, 15123, 15242), (71, 20164, 20283), (71, 25205, 25324), (73, 15987, 16106), (73, 21316, 21435), (73, 26645, 26764), (79, 18723, 18842), (79, 24964, 25083), (83, 20667, 20786), (83, 27556, 27675), (89, 15842, 15961), (89, 23763, 23882), (97, 18818, 18937), (97, 28227, 28346), (101, 20402, 20521), (103, 21218, 21337), (107, 22898, 23017), (109, 23762, 23881), (113, 25538, 25657)]

def row120_layer000_block000 : List ColouredInterval :=
  [(2, 16384, 16503), (2, 16384, 16503), (3, 15309, 15428), (3, 19683, 19802), (3, 26244, 26363), (3, 19683, 19802), (5, 15625, 15744), (7, 14406, 14525), (7, 16807, 16926), (7, 19208, 19327), (7, 21609, 21728), (7, 24010, 24129), (7, 26411, 26530), (7, 16807, 16926), (11, 14641, 14760), (11, 15972, 16091)]

def row120_layer000_block001 : List ColouredInterval :=
  [(11, 17303, 17422), (11, 18634, 18753), (11, 19965, 20084), (11, 21296, 21415), (11, 22627, 22746), (11, 23958, 24077), (11, 25289, 25408), (11, 26620, 26739), (11, 27951, 28070), (11, 14641, 14760), (13, 15379, 15498), (13, 17576, 17695), (13, 19773, 19892), (13, 21970, 22089), (13, 24167, 24286), (13, 26364, 26483)]

def row120_layer000_block002 : List ColouredInterval :=
  [(17, 14739, 14858), (17, 19652, 19771), (17, 24565, 24684), (19, 20577, 20696), (19, 27436, 27555), (23, 24334, 24453), (29, 14297, 14416), (29, 15138, 15257), (29, 15979, 16098), (29, 16820, 16939), (29, 17661, 17780), (29, 18502, 18621), (29, 24389, 24508), (31, 14415, 14534), (31, 15376, 15495), (31, 16337, 16456)]

def row120_layer000_block003 : List ColouredInterval :=
  [(31, 17298, 17417), (31, 18259, 18378), (31, 19220, 19339), (31, 20181, 20300), (31, 21142, 21261), (37, 15059, 15178), (37, 16428, 16547), (37, 17797, 17916), (37, 19166, 19285), (37, 20535, 20654), (37, 21904, 22023), (37, 23273, 23392), (37, 24642, 24761), (37, 26011, 26130), (37, 27380, 27499), (41, 15129, 15248)]

def row120_layer000_block004 : List ColouredInterval :=
  [(41, 16810, 16929), (41, 18491, 18610), (41, 20172, 20291), (41, 21853, 21972), (41, 23534, 23653), (41, 25215, 25334), (41, 26896, 27015), (43, 14792, 14911), (43, 16641, 16760), (43, 18490, 18609), (43, 20339, 20458), (43, 22188, 22307), (43, 24037, 24156), (43, 25886, 26005), (43, 27735, 27854), (47, 15463, 15582)]

def row120_layer000_block005 : List ColouredInterval :=
  [(47, 17672, 17791), (47, 19881, 20000), (47, 22090, 22209), (47, 24299, 24418), (47, 26508, 26627), (53, 16854, 16973), (53, 19663, 19782), (53, 22472, 22591), (53, 25281, 25400), (53, 28090, 28209), (59, 17405, 17524), (59, 20886, 21005), (59, 24367, 24486), (59, 27848, 27967), (61, 14884, 15003), (61, 18605, 18724)]

def row120_layer000_block006 : List ColouredInterval :=
  [(61, 22326, 22445), (61, 26047, 26166), (67, 17956, 18075), (67, 22445, 22564), (67, 26934, 27053), (71, 15123, 15242), (71, 20164, 20283), (71, 25205, 25324), (73, 15987, 16106), (73, 21316, 21435), (73, 26645, 26764), (79, 18723, 18842), (79, 24964, 25083), (83, 20667, 20786), (83, 27556, 27675), (89, 15842, 15961)]

def row120_layer000_block007 : List ColouredInterval :=
  [(89, 23763, 23882), (97, 18818, 18937), (97, 28227, 28346), (101, 20402, 20521), (103, 21218, 21337), (107, 22898, 23017), (109, 23762, 23881), (113, 25538, 25657)]

def row120_layer000_chunks : List (List ColouredInterval) :=
  [row120_layer000_block000, row120_layer000_block001, row120_layer000_block002, row120_layer000_block003, row120_layer000_block004, row120_layer000_block005, row120_layer000_block006, row120_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer000_arithmetic : LayerArithmeticValid row120.height { lower := 14280, upper := 28560, M := 22 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer000_enumeration :
    activePowerIntervalList 120 22 14280 28560 = row120_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer000_pairs000 :
    row120_layer000_block000.all (fun I => row120_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row120_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer000_pairs001 :
    row120_layer000_block001.all (fun I => row120_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row120_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer000_pairs002 :
    row120_layer000_block002.all (fun I => row120_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row120_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer000_pairs003 :
    row120_layer000_block003.all (fun I => row120_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row120_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer000_pairs004 :
    row120_layer000_block004.all (fun I => row120_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row120_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer000_pairs005 :
    row120_layer000_block005.all (fun I => row120_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row120_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer000_pairs006 :
    row120_layer000_block006.all (fun I => row120_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row120_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer000_pairs007 :
    row120_layer000_block007.all (fun I => row120_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row120_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer000_chunks_eq : row120_layer000_chunks.flatten = row120_layer000_intervals := by
  rfl

theorem row120_layer000_pairs : pairCoverCheck row120_layer000_intervals row120_bounds = true := by
  apply pairCoverCheck_of_chunks row120_layer000_chunks_eq
  intro block hblock
  simp only [row120_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row120_layer000_pairs000
  · exact row120_layer000_pairs001
  · exact row120_layer000_pairs002
  · exact row120_layer000_pairs003
  · exact row120_layer000_pairs004
  · exact row120_layer000_pairs005
  · exact row120_layer000_pairs006
  · exact row120_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer000_pairs
