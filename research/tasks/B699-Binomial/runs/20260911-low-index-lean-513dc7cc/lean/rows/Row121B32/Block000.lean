import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row121_height : HeightCertificateDatum := { i := 121, r := 40, s := 85, n0Power10 := 8 }

def row121_goods : List GoodSegment := [
  { lower := 244, upper := 361, witness := RowWitness.topPrime 241 },
  { lower := 362, upper := 479, witness := RowWitness.topPrime 359 },
  { lower := 480, upper := 599, witness := RowWitness.topPrime 479 },
  { lower := 600, upper := 719, witness := RowWitness.topPrime 599 },
  { lower := 720, upper := 839, witness := RowWitness.topPrime 719 },
  { lower := 840, upper := 959, witness := RowWitness.topPrime 839 },
  { lower := 960, upper := 1073, witness := RowWitness.topPrime 953 },
  { lower := 1074, upper := 1189, witness := RowWitness.topPrime 1069 },
  { lower := 1190, upper := 1307, witness := RowWitness.topPrime 1187 },
  { lower := 1308, upper := 1427, witness := RowWitness.topPrime 1307 },
  { lower := 1428, upper := 1547, witness := RowWitness.topPrime 1427 },
  { lower := 1548, upper := 1663, witness := RowWitness.topPrime 1543 },
  { lower := 1664, upper := 1783, witness := RowWitness.topPrime 1663 },
  { lower := 1784, upper := 1903, witness := RowWitness.topPrime 1783 },
  { lower := 1904, upper := 2021, witness := RowWitness.topPrime 1901 },
  { lower := 2022, upper := 2137, witness := RowWitness.topPrime 2017 },
  { lower := 2138, upper := 2257, witness := RowWitness.topPrime 2137 },
  { lower := 2258, upper := 2371, witness := RowWitness.topPrime 2251 },
  { lower := 2372, upper := 2491, witness := RowWitness.topPrime 2371 },
  { lower := 2492, upper := 2597, witness := RowWitness.topPrime 2477 },
  { lower := 2598, upper := 2713, witness := RowWitness.topPrime 2593 },
  { lower := 2714, upper := 2833, witness := RowWitness.topPrime 2713 },
  { lower := 2834, upper := 2953, witness := RowWitness.topPrime 2833 },
  { lower := 2954, upper := 3073, witness := RowWitness.topPrime 2953 },
  { lower := 3074, upper := 3187, witness := RowWitness.topPrime 3067 },
  { lower := 3188, upper := 3307, witness := RowWitness.topPrime 3187 },
  { lower := 3308, upper := 3427, witness := RowWitness.topPrime 3307 },
  { lower := 3428, upper := 3533, witness := RowWitness.topPrime 3413 },
  { lower := 3534, upper := 3653, witness := RowWitness.topPrime 3533 },
  { lower := 3654, upper := 3763, witness := RowWitness.topPrime 3643 },
  { lower := 3764, upper := 3881, witness := RowWitness.topPrime 3761 },
  { lower := 3882, upper := 4001, witness := RowWitness.topPrime 3881 },
  { lower := 4002, upper := 4121, witness := RowWitness.topPrime 4001 },
  { lower := 4122, upper := 4231, witness := RowWitness.topPrime 4111 },
  { lower := 4232, upper := 4351, witness := RowWitness.topPrime 4231 },
  { lower := 4352, upper := 4469, witness := RowWitness.topPrime 4349 },
  { lower := 4470, upper := 4583, witness := RowWitness.topPrime 4463 },
  { lower := 4584, upper := 4703, witness := RowWitness.topPrime 4583 },
  { lower := 4704, upper := 4823, witness := RowWitness.topPrime 4703 },
  { lower := 4824, upper := 4937, witness := RowWitness.topPrime 4817 },
  { lower := 4938, upper := 5057, witness := RowWitness.topPrime 4937 },
  { lower := 5058, upper := 5171, witness := RowWitness.topPrime 5051 },
  { lower := 5172, upper := 5291, witness := RowWitness.topPrime 5171 },
  { lower := 5292, upper := 5401, witness := RowWitness.topPrime 5281 },
  { lower := 5402, upper := 5519, witness := RowWitness.topPrime 5399 },
  { lower := 5520, upper := 5639, witness := RowWitness.topPrime 5519 },
  { lower := 5640, upper := 5759, witness := RowWitness.topPrime 5639 },
  { lower := 5760, upper := 5869, witness := RowWitness.topPrime 5749 },
  { lower := 5870, upper := 5989, witness := RowWitness.topPrime 5869 },
  { lower := 5990, upper := 6107, witness := RowWitness.topPrime 5987 },
  { lower := 6108, upper := 6221, witness := RowWitness.topPrime 6101 },
  { lower := 6222, upper := 6341, witness := RowWitness.topPrime 6221 },
  { lower := 6342, upper := 6457, witness := RowWitness.topPrime 6337 },
  { lower := 6458, upper := 6571, witness := RowWitness.topPrime 6451 },
  { lower := 6572, upper := 6691, witness := RowWitness.topPrime 6571 },
  { lower := 6692, upper := 6811, witness := RowWitness.topPrime 6691 },
  { lower := 6812, upper := 6923, witness := RowWitness.topPrime 6803 },
  { lower := 6924, upper := 7037, witness := RowWitness.topPrime 6917 },
  { lower := 7038, upper := 7147, witness := RowWitness.topPrime 7027 },
  { lower := 7148, upper := 7249, witness := RowWitness.topPrime 7129 },
  { lower := 7250, upper := 7367, witness := RowWitness.topPrime 7247 },
  { lower := 7368, upper := 7471, witness := RowWitness.topPrime 7351 },
  { lower := 7472, upper := 7579, witness := RowWitness.topPrime 7459 },
  { lower := 7580, upper := 7697, witness := RowWitness.topPrime 7577 },
  { lower := 7698, upper := 7811, witness := RowWitness.topPrime 7691 },
  { lower := 7812, upper := 7913, witness := RowWitness.topPrime 7793 },
  { lower := 7914, upper := 8027, witness := RowWitness.topPrime 7907 },
  { lower := 8028, upper := 8137, witness := RowWitness.topPrime 8017 },
  { lower := 8138, upper := 8243, witness := RowWitness.topPrime 8123 },
  { lower := 8244, upper := 8363, witness := RowWitness.topPrime 8243 },
  { lower := 8364, upper := 8483, witness := RowWitness.topPrime 8363 },
  { lower := 8484, upper := 8587, witness := RowWitness.topPrime 8467 },
  { lower := 8588, upper := 8701, witness := RowWitness.topPrime 8581 },
  { lower := 8702, upper := 8819, witness := RowWitness.topPrime 8699 },
  { lower := 8820, upper := 8939, witness := RowWitness.topPrime 8819 },
  { lower := 8940, upper := 9053, witness := RowWitness.topPrime 8933 },
  { lower := 9054, upper := 9169, witness := RowWitness.topPrime 9049 },
  { lower := 9170, upper := 9281, witness := RowWitness.topPrime 9161 },
  { lower := 9282, upper := 9401, witness := RowWitness.topPrime 9281 },
  { lower := 9402, upper := 9517, witness := RowWitness.topPrime 9397 },
  { lower := 9518, upper := 9631, witness := RowWitness.topPrime 9511 },
  { lower := 9632, upper := 9751, witness := RowWitness.topPrime 9631 },
  { lower := 9752, upper := 9869, witness := RowWitness.topPrime 9749 },
  { lower := 9870, upper := 9979, witness := RowWitness.topPrime 9859 },
  { lower := 9980, upper := 10093, witness := RowWitness.topPrime 9973 },
  { lower := 10094, upper := 10213, witness := RowWitness.topPrime 10093 },
  { lower := 10214, upper := 10331, witness := RowWitness.topPrime 10211 },
  { lower := 10332, upper := 10451, witness := RowWitness.topPrime 10331 },
  { lower := 10452, upper := 10553, witness := RowWitness.topPrime 10433 },
  { lower := 10554, upper := 10651, witness := RowWitness.topPrime 10531 },
  { lower := 10652, upper := 10771, witness := RowWitness.topPrime 10651 },
  { lower := 10772, upper := 10891, witness := RowWitness.topPrime 10771 },
  { lower := 10892, upper := 11011, witness := RowWitness.topPrime 10891 },
  { lower := 11012, upper := 11123, witness := RowWitness.topPrime 11003 },
  { lower := 11124, upper := 11239, witness := RowWitness.topPrime 11119 },
  { lower := 11240, upper := 11359, witness := RowWitness.topPrime 11239 },
  { lower := 11360, upper := 11473, witness := RowWitness.topPrime 11353 },
  { lower := 11474, upper := 11591, witness := RowWitness.topPrime 11471 },
  { lower := 11592, upper := 11707, witness := RowWitness.topPrime 11587 },
  { lower := 11708, upper := 11821, witness := RowWitness.topPrime 11701 },
  { lower := 11822, upper := 11941, witness := RowWitness.topPrime 11821 },
  { lower := 11942, upper := 12061, witness := RowWitness.topPrime 11941 },
  { lower := 12062, upper := 12169, witness := RowWitness.topPrime 12049 },
  { lower := 12170, upper := 12283, witness := RowWitness.topPrime 12163 },
  { lower := 12284, upper := 12401, witness := RowWitness.topPrime 12281 },
  { lower := 12402, upper := 12521, witness := RowWitness.topPrime 12401 },
  { lower := 12522, upper := 12637, witness := RowWitness.topPrime 12517 },
  { lower := 12638, upper := 12757, witness := RowWitness.topPrime 12637 },
  { lower := 12758, upper := 12877, witness := RowWitness.topPrime 12757 },
  { lower := 12878, upper := 12973, witness := RowWitness.topPrime 12853 },
  { lower := 12974, upper := 13093, witness := RowWitness.topPrime 12973 },
  { lower := 13094, upper := 13213, witness := RowWitness.topPrime 13093 },
  { lower := 13214, upper := 13307, witness := RowWitness.topPrime 13187 },
  { lower := 13308, upper := 13417, witness := RowWitness.topPrime 13297 },
  { lower := 13418, upper := 13537, witness := RowWitness.topPrime 13417 },
  { lower := 13538, upper := 13657, witness := RowWitness.topPrime 13537 },
  { lower := 13658, upper := 13769, witness := RowWitness.topPrime 13649 },
  { lower := 13770, upper := 13883, witness := RowWitness.topPrime 13763 },
  { lower := 13884, upper := 14003, witness := RowWitness.topPrime 13883 },
  { lower := 14004, upper := 14119, witness := RowWitness.topPrime 13999 },
  { lower := 14120, upper := 14227, witness := RowWitness.topPrime 14107 },
  { lower := 14228, upper := 14341, witness := RowWitness.topPrime 14221 },
  { lower := 14342, upper := 14461, witness := RowWitness.topPrime 14341 },
  { lower := 14462, upper := 14526, witness := RowWitness.topPrime 14461 },
  { lower := 14792, upper := 14859, witness := RowWitness.topPrime 14783 },
  { lower := 14884, upper := 14912, witness := RowWitness.topPrime 14879 },
  { lower := 15123, upper := 15241, witness := RowWitness.topPrime 15121 },
  { lower := 15242, upper := 15249, witness := RowWitness.topPrime 15241 },
  { lower := 15360, upper := 15479, witness := RowWitness.topPrime 15359 },
  { lower := 15480, upper := 15499, witness := RowWitness.topPrime 15473 },
  { lower := 15987, upper := 16093, witness := RowWitness.topPrime 15973 },
  { lower := 16094, upper := 16099, witness := RowWitness.topPrime 16091 },
  { lower := 16384, upper := 16501, witness := RowWitness.topPrime 16381 },
  { lower := 16502, upper := 16504, witness := RowWitness.topPrime 16493 },
  { lower := 16810, upper := 16907, witness := RowWitness.topPrime 16787 },
  { lower := 16908, upper := 16940, witness := RowWitness.topPrime 16903 },
  { lower := 17405, upper := 17521, witness := RowWitness.topPrime 17401 },
  { lower := 17522, upper := 17528, witness := RowWitness.topPrime 17519 },
  { lower := 17576, upper := 17616, witness := RowWitness.topPrime 17573 },
  { lower := 17661, upper := 17779, witness := RowWitness.topPrime 17659 },
  { lower := 17780, upper := 17781, witness := RowWitness.topPrime 17761 },
  { lower := 18490, upper := 18601, witness := RowWitness.topPrime 18481 },
  { lower := 18602, upper := 18611, witness := RowWitness.topPrime 18593 },
  { lower := 18723, upper := 18725, witness := RowWitness.topPrime 18719 },
  { lower := 18750, upper := 18869, witness := RowWitness.topPrime 18749 },
  { lower := 18870, upper := 18870, witness := RowWitness.topPrime 18869 },
  { lower := 19208, upper := 19327, witness := RowWitness.topPrime 19207 },
  { lower := 19328, upper := 19328, witness := RowWitness.topPrime 19319 },
  { lower := 19663, upper := 19781, witness := RowWitness.topPrime 19661 },
  { lower := 19782, upper := 19803, witness := RowWitness.topPrime 19777 },
  { lower := 19881, upper := 19893, witness := RowWitness.topPrime 19867 },
  { lower := 20172, upper := 20281, witness := RowWitness.topPrime 20161 },
  { lower := 20282, upper := 20292, witness := RowWitness.topPrime 20269 },
  { lower := 20402, upper := 20459, witness := RowWitness.topPrime 20399 },
  { lower := 20480, upper := 20522, witness := RowWitness.topPrime 20479 },
  { lower := 20535, upper := 20653, witness := RowWitness.topPrime 20533 },
  { lower := 20654, upper := 20655, witness := RowWitness.topPrime 20641 },
  { lower := 20667, upper := 20697, witness := RowWitness.topPrime 20663 },
  { lower := 21316, upper := 21338, witness := RowWitness.topPrime 21313 },
  { lower := 21609, upper := 21624, witness := RowWitness.topPrime 21601 },
  { lower := 21870, upper := 21983, witness := RowWitness.topPrime 21863 },
  { lower := 21984, upper := 22024, witness := RowWitness.topPrime 21977 },
  { lower := 22090, upper := 22090, witness := RowWitness.topPrime 22079 },
  { lower := 22188, upper := 22210, witness := RowWitness.topPrime 22171 },
  { lower := 22445, upper := 22446, witness := RowWitness.topPrime 22441 },
  { lower := 22472, upper := 22589, witness := RowWitness.topPrime 22469 },
  { lower := 22590, upper := 22592, witness := RowWitness.topPrime 22573 },
  { lower := 23763, upper := 23881, witness := RowWitness.topPrime 23761 },
  { lower := 23882, upper := 23882, witness := RowWitness.topPrime 23879 },
  { lower := 24037, upper := 24149, witness := RowWitness.topPrime 24029 },
  { lower := 24150, upper := 24157, witness := RowWitness.topPrime 24137 },
  { lower := 24167, upper := 24177, witness := RowWitness.topPrime 24151 },
  { lower := 24334, upper := 24449, witness := RowWitness.topPrime 24329 },
  { lower := 24450, upper := 24487, witness := RowWitness.topPrime 24443 },
  { lower := 24576, upper := 24691, witness := RowWitness.topPrime 24571 },
  { lower := 24692, upper := 24696, witness := RowWitness.topPrime 24691 },
  { lower := 25000, upper := 25084, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25309, witness := RowWitness.topPrime 25189 },
  { lower := 25310, upper := 25335, witness := RowWitness.topPrime 25309 },
  { lower := 26047, upper := 26131, witness := RowWitness.topPrime 26041 },
  { lower := 26364, upper := 26364, witness := RowWitness.topPrime 26357 },
  { lower := 26411, upper := 26484, witness := RowWitness.topPrime 26407 },
  { lower := 26508, upper := 26531, witness := RowWitness.topPrime 26501 },
  { lower := 26624, upper := 26628, witness := RowWitness.topPrime 26597 },
  { lower := 26645, upper := 26744, witness := RowWitness.topPrime 26641 },
  { lower := 26934, upper := 27016, witness := RowWitness.topPrime 26927 },
  { lower := 27436, upper := 27500, witness := RowWitness.topPrime 27431 },
  { lower := 27556, upper := 27556, witness := RowWitness.topPrime 27551 },
  { lower := 27848, upper := 27855, witness := RowWitness.topPrime 27847 },
  { lower := 28125, upper := 28210, witness := RowWitness.topPrime 28123 },
  { lower := 28227, upper := 28245, witness := RowWitness.topPrime 28219 },
  { lower := 28577, upper := 28693, witness := RowWitness.topPrime 28573 },
  { lower := 28694, upper := 28697, witness := RowWitness.topPrime 28687 },
  { lower := 28717, upper := 28831, witness := RowWitness.topPrime 28711 },
  { lower := 28832, upper := 28869, witness := RowWitness.topPrime 28817 },
  { lower := 29584, upper := 29598, witness := RowWitness.topPrime 29581 },
  { lower := 29791, upper := 29888, witness := RowWitness.topPrime 29789 },
  { lower := 30618, upper := 30713, witness := RowWitness.topPrime 30593 },
  { lower := 30714, upper := 30738, witness := RowWitness.topPrime 30713 },
  { lower := 30758, upper := 30840, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 31019, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31313, witness := RowWitness.topPrime 31193 },
  { lower := 31314, upper := 31370, witness := RowWitness.topPrime 31307 },
  { lower := 31423, upper := 31449, witness := RowWitness.topPrime 31397 },
  { lower := 32805, upper := 32888, witness := RowWitness.topPrime 32803 },
  { lower := 33708, upper := 33734, witness := RowWitness.topPrime 33703 },
  { lower := 34347, upper := 34457, witness := RowWitness.topPrime 34337 },
  { lower := 34458, upper := 34511, witness := RowWitness.topPrime 34457 },
  { lower := 35344, upper := 35407, witness := RowWitness.topPrime 35339 },
  { lower := 36015, upper := 36032, witness := RowWitness.topPrime 36013 },
  { lower := 36517, upper := 36617, witness := RowWitness.topPrime 36497 },
  { lower := 36618, upper := 36621, witness := RowWitness.topPrime 36607 },
  { lower := 37303, upper := 37330, witness := RowWitness.topPrime 37277 },
  { lower := 37500, upper := 37566, witness := RowWitness.topPrime 37493 },
  { lower := 38307, upper := 38411, witness := RowWitness.topPrime 38303 },
  { lower := 38416, upper := 38427, witness := RowWitness.topPrime 38393 },
  { lower := 39326, upper := 39443, witness := RowWitness.topPrime 39323 },
  { lower := 39444, upper := 39446, witness := RowWitness.topPrime 39443 },
  { lower := 40401, upper := 40448, witness := RowWitness.topPrime 40387 },
  { lower := 40960, upper := 41051, witness := RowWitness.topPrime 40949 },
  { lower := 43750, upper := 43807, witness := RowWitness.topPrime 43721 },
  { lower := 44944, upper := 45010, witness := RowWitness.topPrime 44939 },
  { lower := 45056, upper := 45064, witness := RowWitness.topPrime 45053 },
  { lower := 45369, upper := 45373, witness := RowWitness.topPrime 45361 },
  { lower := 47526, upper := 47641, witness := RowWitness.topPrime 47521 },
  { lower := 47642, upper := 47644, witness := RowWitness.topPrime 47639 },
  { lower := 48013, upper := 48081, witness := RowWitness.topPrime 47981 },
  { lower := 48734, upper := 48853, witness := RowWitness.topPrime 48733 },
  { lower := 48854, upper := 48854, witness := RowWitness.topPrime 48847 },
  { lower := 49152, upper := 49250, witness := RowWitness.topPrime 49139 },
  { lower := 50000, upper := 50048, witness := RowWitness.topPrime 49999 },
  { lower := 50421, upper := 50530, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51125, witness := RowWitness.topPrime 51071 },
  { lower := 53290, upper := 53368, witness := RowWitness.topPrime 53281 },
  { lower := 55451, upper := 55561, witness := RowWitness.topPrime 55441 },
  { lower := 55562, upper := 55567, witness := RowWitness.topPrime 55547 },
  { lower := 55815, upper := 55816, witness := RowWitness.topPrime 55813 },
  { lower := 57344, upper := 57365, witness := RowWitness.topPrime 57331 },
  { lower := 59049, upper := 59076, witness := RowWitness.topPrime 59029 },
  { lower := 62500, upper := 62530, witness := RowWitness.topPrime 62497 },
  { lower := 63869, upper := 63983, witness := RowWitness.topPrime 63863 },
  { lower := 63984, upper := 63989, witness := RowWitness.topPrime 63977 },
  { lower := 65536, upper := 65641, witness := RowWitness.topPrime 65521 },
  { lower := 65642, upper := 65656, witness := RowWitness.topPrime 65633 },
  { lower := 68651, upper := 68759, witness := RowWitness.topPrime 68639 },
  { lower := 68760, upper := 68771, witness := RowWitness.topPrime 68749 },
  { lower := 68921, upper := 69010, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71407, witness := RowWitness.topPrime 71287 },
  { lower := 71408, upper := 71409, witness := RowWitness.topPrime 71399 },
  { lower := 89383, upper := 89493, witness := RowWitness.topPrime 89381 },
  { lower := 95052, upper := 95147, witness := RowWitness.topPrime 95027 },
  { lower := 95148, upper := 95168, witness := RowWitness.topPrime 95143 },
  { lower := 98415, upper := 98424, witness := RowWitness.topPrime 98411 },
  { lower := 103041, upper := 103093, witness := RowWitness.topPrime 103007 },
  { lower := 137842, upper := 137901, witness := RowWitness.topPrime 137831 },
  { lower := 148955, upper := 148997, witness := RowWitness.topPrime 148949 }
]

def row121_layers : List CoverLayer := [
  { lower := 14520, upper := 29040, M := 21 },
  { lower := 29040, upper := 58080, M := 16 },
  { lower := 58080, upper := 116160, M := 13 },
  { lower := 116160, upper := 232320, M := 10 },
  { lower := 232320, upper := 464640, M := 8 },
  { lower := 464640, upper := 929280, M := 7 },
  { lower := 929280, upper := 1858560, M := 5 },
  { lower := 1858560, upper := 3717120, M := 4 },
  { lower := 3717120, upper := 7434240, M := 4 },
  { lower := 7434240, upper := 14868480, M := 3 },
  { lower := 14868480, upper := 29736960, M := 2 },
  { lower := 29736960, upper := 59473920, M := 2 },
  { lower := 59473920, upper := 100000000, M := 2 }
]

def row121 : FiniteCoverRow := {
  height := row121_height,
  goods := row121_goods,
  layers := row121_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_good000_checked :
    goodSegmentCheck 121 40 85
      { lower := 244, upper := 361, witness := RowWitness.topPrime 241 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good001_checked :
    goodSegmentCheck 121 40 85
      { lower := 362, upper := 479, witness := RowWitness.topPrime 359 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good002_checked :
    goodSegmentCheck 121 40 85
      { lower := 480, upper := 599, witness := RowWitness.topPrime 479 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good003_checked :
    goodSegmentCheck 121 40 85
      { lower := 600, upper := 719, witness := RowWitness.topPrime 599 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good004_checked :
    goodSegmentCheck 121 40 85
      { lower := 720, upper := 839, witness := RowWitness.topPrime 719 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good005_checked :
    goodSegmentCheck 121 40 85
      { lower := 840, upper := 959, witness := RowWitness.topPrime 839 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good006_checked :
    goodSegmentCheck 121 40 85
      { lower := 960, upper := 1073, witness := RowWitness.topPrime 953 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good007_checked :
    goodSegmentCheck 121 40 85
      { lower := 1074, upper := 1189, witness := RowWitness.topPrime 1069 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good008_checked :
    goodSegmentCheck 121 40 85
      { lower := 1190, upper := 1307, witness := RowWitness.topPrime 1187 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good009_checked :
    goodSegmentCheck 121 40 85
      { lower := 1308, upper := 1427, witness := RowWitness.topPrime 1307 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good010_checked :
    goodSegmentCheck 121 40 85
      { lower := 1428, upper := 1547, witness := RowWitness.topPrime 1427 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good011_checked :
    goodSegmentCheck 121 40 85
      { lower := 1548, upper := 1663, witness := RowWitness.topPrime 1543 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good012_checked :
    goodSegmentCheck 121 40 85
      { lower := 1664, upper := 1783, witness := RowWitness.topPrime 1663 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good013_checked :
    goodSegmentCheck 121 40 85
      { lower := 1784, upper := 1903, witness := RowWitness.topPrime 1783 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good014_checked :
    goodSegmentCheck 121 40 85
      { lower := 1904, upper := 2021, witness := RowWitness.topPrime 1901 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good015_checked :
    goodSegmentCheck 121 40 85
      { lower := 2022, upper := 2137, witness := RowWitness.topPrime 2017 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_good016_checked :
    goodSegmentCheck 121 40 85
      { lower := 2138, upper := 2257, witness := RowWitness.topPrime 2137 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good017_checked :
    goodSegmentCheck 121 40 85
      { lower := 2258, upper := 2371, witness := RowWitness.topPrime 2251 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good018_checked :
    goodSegmentCheck 121 40 85
      { lower := 2372, upper := 2491, witness := RowWitness.topPrime 2371 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good019_checked :
    goodSegmentCheck 121 40 85
      { lower := 2492, upper := 2597, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good020_checked :
    goodSegmentCheck 121 40 85
      { lower := 2598, upper := 2713, witness := RowWitness.topPrime 2593 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good021_checked :
    goodSegmentCheck 121 40 85
      { lower := 2714, upper := 2833, witness := RowWitness.topPrime 2713 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good022_checked :
    goodSegmentCheck 121 40 85
      { lower := 2834, upper := 2953, witness := RowWitness.topPrime 2833 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good023_checked :
    goodSegmentCheck 121 40 85
      { lower := 2954, upper := 3073, witness := RowWitness.topPrime 2953 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good024_checked :
    goodSegmentCheck 121 40 85
      { lower := 3074, upper := 3187, witness := RowWitness.topPrime 3067 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good025_checked :
    goodSegmentCheck 121 40 85
      { lower := 3188, upper := 3307, witness := RowWitness.topPrime 3187 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good026_checked :
    goodSegmentCheck 121 40 85
      { lower := 3308, upper := 3427, witness := RowWitness.topPrime 3307 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good027_checked :
    goodSegmentCheck 121 40 85
      { lower := 3428, upper := 3533, witness := RowWitness.topPrime 3413 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good028_checked :
    goodSegmentCheck 121 40 85
      { lower := 3534, upper := 3653, witness := RowWitness.topPrime 3533 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good029_checked :
    goodSegmentCheck 121 40 85
      { lower := 3654, upper := 3763, witness := RowWitness.topPrime 3643 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good030_checked :
    goodSegmentCheck 121 40 85
      { lower := 3764, upper := 3881, witness := RowWitness.topPrime 3761 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good031_checked :
    goodSegmentCheck 121 40 85
      { lower := 3882, upper := 4001, witness := RowWitness.topPrime 3881 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_good032_checked :
    goodSegmentCheck 121 40 85
      { lower := 4002, upper := 4121, witness := RowWitness.topPrime 4001 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good033_checked :
    goodSegmentCheck 121 40 85
      { lower := 4122, upper := 4231, witness := RowWitness.topPrime 4111 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good034_checked :
    goodSegmentCheck 121 40 85
      { lower := 4232, upper := 4351, witness := RowWitness.topPrime 4231 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good035_checked :
    goodSegmentCheck 121 40 85
      { lower := 4352, upper := 4469, witness := RowWitness.topPrime 4349 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good036_checked :
    goodSegmentCheck 121 40 85
      { lower := 4470, upper := 4583, witness := RowWitness.topPrime 4463 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good037_checked :
    goodSegmentCheck 121 40 85
      { lower := 4584, upper := 4703, witness := RowWitness.topPrime 4583 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good038_checked :
    goodSegmentCheck 121 40 85
      { lower := 4704, upper := 4823, witness := RowWitness.topPrime 4703 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good039_checked :
    goodSegmentCheck 121 40 85
      { lower := 4824, upper := 4937, witness := RowWitness.topPrime 4817 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good040_checked :
    goodSegmentCheck 121 40 85
      { lower := 4938, upper := 5057, witness := RowWitness.topPrime 4937 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good041_checked :
    goodSegmentCheck 121 40 85
      { lower := 5058, upper := 5171, witness := RowWitness.topPrime 5051 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good042_checked :
    goodSegmentCheck 121 40 85
      { lower := 5172, upper := 5291, witness := RowWitness.topPrime 5171 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good043_checked :
    goodSegmentCheck 121 40 85
      { lower := 5292, upper := 5401, witness := RowWitness.topPrime 5281 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good044_checked :
    goodSegmentCheck 121 40 85
      { lower := 5402, upper := 5519, witness := RowWitness.topPrime 5399 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good045_checked :
    goodSegmentCheck 121 40 85
      { lower := 5520, upper := 5639, witness := RowWitness.topPrime 5519 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good046_checked :
    goodSegmentCheck 121 40 85
      { lower := 5640, upper := 5759, witness := RowWitness.topPrime 5639 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good047_checked :
    goodSegmentCheck 121 40 85
      { lower := 5760, upper := 5869, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_good048_checked :
    goodSegmentCheck 121 40 85
      { lower := 5870, upper := 5989, witness := RowWitness.topPrime 5869 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good049_checked :
    goodSegmentCheck 121 40 85
      { lower := 5990, upper := 6107, witness := RowWitness.topPrime 5987 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good050_checked :
    goodSegmentCheck 121 40 85
      { lower := 6108, upper := 6221, witness := RowWitness.topPrime 6101 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good051_checked :
    goodSegmentCheck 121 40 85
      { lower := 6222, upper := 6341, witness := RowWitness.topPrime 6221 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good052_checked :
    goodSegmentCheck 121 40 85
      { lower := 6342, upper := 6457, witness := RowWitness.topPrime 6337 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good053_checked :
    goodSegmentCheck 121 40 85
      { lower := 6458, upper := 6571, witness := RowWitness.topPrime 6451 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good054_checked :
    goodSegmentCheck 121 40 85
      { lower := 6572, upper := 6691, witness := RowWitness.topPrime 6571 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good055_checked :
    goodSegmentCheck 121 40 85
      { lower := 6692, upper := 6811, witness := RowWitness.topPrime 6691 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good056_checked :
    goodSegmentCheck 121 40 85
      { lower := 6812, upper := 6923, witness := RowWitness.topPrime 6803 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good057_checked :
    goodSegmentCheck 121 40 85
      { lower := 6924, upper := 7037, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good058_checked :
    goodSegmentCheck 121 40 85
      { lower := 7038, upper := 7147, witness := RowWitness.topPrime 7027 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good059_checked :
    goodSegmentCheck 121 40 85
      { lower := 7148, upper := 7249, witness := RowWitness.topPrime 7129 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good060_checked :
    goodSegmentCheck 121 40 85
      { lower := 7250, upper := 7367, witness := RowWitness.topPrime 7247 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good061_checked :
    goodSegmentCheck 121 40 85
      { lower := 7368, upper := 7471, witness := RowWitness.topPrime 7351 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good062_checked :
    goodSegmentCheck 121 40 85
      { lower := 7472, upper := 7579, witness := RowWitness.topPrime 7459 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good063_checked :
    goodSegmentCheck 121 40 85
      { lower := 7580, upper := 7697, witness := RowWitness.topPrime 7577 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_good064_checked :
    goodSegmentCheck 121 40 85
      { lower := 7698, upper := 7811, witness := RowWitness.topPrime 7691 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good065_checked :
    goodSegmentCheck 121 40 85
      { lower := 7812, upper := 7913, witness := RowWitness.topPrime 7793 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good066_checked :
    goodSegmentCheck 121 40 85
      { lower := 7914, upper := 8027, witness := RowWitness.topPrime 7907 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good067_checked :
    goodSegmentCheck 121 40 85
      { lower := 8028, upper := 8137, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good068_checked :
    goodSegmentCheck 121 40 85
      { lower := 8138, upper := 8243, witness := RowWitness.topPrime 8123 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good069_checked :
    goodSegmentCheck 121 40 85
      { lower := 8244, upper := 8363, witness := RowWitness.topPrime 8243 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good070_checked :
    goodSegmentCheck 121 40 85
      { lower := 8364, upper := 8483, witness := RowWitness.topPrime 8363 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good071_checked :
    goodSegmentCheck 121 40 85
      { lower := 8484, upper := 8587, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good072_checked :
    goodSegmentCheck 121 40 85
      { lower := 8588, upper := 8701, witness := RowWitness.topPrime 8581 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good073_checked :
    goodSegmentCheck 121 40 85
      { lower := 8702, upper := 8819, witness := RowWitness.topPrime 8699 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good074_checked :
    goodSegmentCheck 121 40 85
      { lower := 8820, upper := 8939, witness := RowWitness.topPrime 8819 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good075_checked :
    goodSegmentCheck 121 40 85
      { lower := 8940, upper := 9053, witness := RowWitness.topPrime 8933 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good076_checked :
    goodSegmentCheck 121 40 85
      { lower := 9054, upper := 9169, witness := RowWitness.topPrime 9049 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good077_checked :
    goodSegmentCheck 121 40 85
      { lower := 9170, upper := 9281, witness := RowWitness.topPrime 9161 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good078_checked :
    goodSegmentCheck 121 40 85
      { lower := 9282, upper := 9401, witness := RowWitness.topPrime 9281 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good079_checked :
    goodSegmentCheck 121 40 85
      { lower := 9402, upper := 9517, witness := RowWitness.topPrime 9397 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_good080_checked :
    goodSegmentCheck 121 40 85
      { lower := 9518, upper := 9631, witness := RowWitness.topPrime 9511 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good081_checked :
    goodSegmentCheck 121 40 85
      { lower := 9632, upper := 9751, witness := RowWitness.topPrime 9631 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good082_checked :
    goodSegmentCheck 121 40 85
      { lower := 9752, upper := 9869, witness := RowWitness.topPrime 9749 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good083_checked :
    goodSegmentCheck 121 40 85
      { lower := 9870, upper := 9979, witness := RowWitness.topPrime 9859 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good084_checked :
    goodSegmentCheck 121 40 85
      { lower := 9980, upper := 10093, witness := RowWitness.topPrime 9973 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good085_checked :
    goodSegmentCheck 121 40 85
      { lower := 10094, upper := 10213, witness := RowWitness.topPrime 10093 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good086_checked :
    goodSegmentCheck 121 40 85
      { lower := 10214, upper := 10331, witness := RowWitness.topPrime 10211 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good087_checked :
    goodSegmentCheck 121 40 85
      { lower := 10332, upper := 10451, witness := RowWitness.topPrime 10331 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good088_checked :
    goodSegmentCheck 121 40 85
      { lower := 10452, upper := 10553, witness := RowWitness.topPrime 10433 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good089_checked :
    goodSegmentCheck 121 40 85
      { lower := 10554, upper := 10651, witness := RowWitness.topPrime 10531 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good090_checked :
    goodSegmentCheck 121 40 85
      { lower := 10652, upper := 10771, witness := RowWitness.topPrime 10651 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good091_checked :
    goodSegmentCheck 121 40 85
      { lower := 10772, upper := 10891, witness := RowWitness.topPrime 10771 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good092_checked :
    goodSegmentCheck 121 40 85
      { lower := 10892, upper := 11011, witness := RowWitness.topPrime 10891 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good093_checked :
    goodSegmentCheck 121 40 85
      { lower := 11012, upper := 11123, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good094_checked :
    goodSegmentCheck 121 40 85
      { lower := 11124, upper := 11239, witness := RowWitness.topPrime 11119 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good095_checked :
    goodSegmentCheck 121 40 85
      { lower := 11240, upper := 11359, witness := RowWitness.topPrime 11239 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_good096_checked :
    goodSegmentCheck 121 40 85
      { lower := 11360, upper := 11473, witness := RowWitness.topPrime 11353 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good097_checked :
    goodSegmentCheck 121 40 85
      { lower := 11474, upper := 11591, witness := RowWitness.topPrime 11471 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good098_checked :
    goodSegmentCheck 121 40 85
      { lower := 11592, upper := 11707, witness := RowWitness.topPrime 11587 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good099_checked :
    goodSegmentCheck 121 40 85
      { lower := 11708, upper := 11821, witness := RowWitness.topPrime 11701 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good100_checked :
    goodSegmentCheck 121 40 85
      { lower := 11822, upper := 11941, witness := RowWitness.topPrime 11821 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good101_checked :
    goodSegmentCheck 121 40 85
      { lower := 11942, upper := 12061, witness := RowWitness.topPrime 11941 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good102_checked :
    goodSegmentCheck 121 40 85
      { lower := 12062, upper := 12169, witness := RowWitness.topPrime 12049 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good103_checked :
    goodSegmentCheck 121 40 85
      { lower := 12170, upper := 12283, witness := RowWitness.topPrime 12163 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good104_checked :
    goodSegmentCheck 121 40 85
      { lower := 12284, upper := 12401, witness := RowWitness.topPrime 12281 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good105_checked :
    goodSegmentCheck 121 40 85
      { lower := 12402, upper := 12521, witness := RowWitness.topPrime 12401 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good106_checked :
    goodSegmentCheck 121 40 85
      { lower := 12522, upper := 12637, witness := RowWitness.topPrime 12517 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good107_checked :
    goodSegmentCheck 121 40 85
      { lower := 12638, upper := 12757, witness := RowWitness.topPrime 12637 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good108_checked :
    goodSegmentCheck 121 40 85
      { lower := 12758, upper := 12877, witness := RowWitness.topPrime 12757 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good109_checked :
    goodSegmentCheck 121 40 85
      { lower := 12878, upper := 12973, witness := RowWitness.topPrime 12853 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good110_checked :
    goodSegmentCheck 121 40 85
      { lower := 12974, upper := 13093, witness := RowWitness.topPrime 12973 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good111_checked :
    goodSegmentCheck 121 40 85
      { lower := 13094, upper := 13213, witness := RowWitness.topPrime 13093 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_good112_checked :
    goodSegmentCheck 121 40 85
      { lower := 13214, upper := 13307, witness := RowWitness.topPrime 13187 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good113_checked :
    goodSegmentCheck 121 40 85
      { lower := 13308, upper := 13417, witness := RowWitness.topPrime 13297 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good114_checked :
    goodSegmentCheck 121 40 85
      { lower := 13418, upper := 13537, witness := RowWitness.topPrime 13417 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good115_checked :
    goodSegmentCheck 121 40 85
      { lower := 13538, upper := 13657, witness := RowWitness.topPrime 13537 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good116_checked :
    goodSegmentCheck 121 40 85
      { lower := 13658, upper := 13769, witness := RowWitness.topPrime 13649 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good117_checked :
    goodSegmentCheck 121 40 85
      { lower := 13770, upper := 13883, witness := RowWitness.topPrime 13763 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good118_checked :
    goodSegmentCheck 121 40 85
      { lower := 13884, upper := 14003, witness := RowWitness.topPrime 13883 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good119_checked :
    goodSegmentCheck 121 40 85
      { lower := 14004, upper := 14119, witness := RowWitness.topPrime 13999 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good120_checked :
    goodSegmentCheck 121 40 85
      { lower := 14120, upper := 14227, witness := RowWitness.topPrime 14107 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good121_checked :
    goodSegmentCheck 121 40 85
      { lower := 14228, upper := 14341, witness := RowWitness.topPrime 14221 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good122_checked :
    goodSegmentCheck 121 40 85
      { lower := 14342, upper := 14461, witness := RowWitness.topPrime 14341 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good123_checked :
    goodSegmentCheck 121 40 85
      { lower := 14462, upper := 14526, witness := RowWitness.topPrime 14461 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good124_checked :
    goodSegmentCheck 121 40 85
      { lower := 14792, upper := 14859, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good125_checked :
    goodSegmentCheck 121 40 85
      { lower := 14884, upper := 14912, witness := RowWitness.topPrime 14879 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good126_checked :
    goodSegmentCheck 121 40 85
      { lower := 15123, upper := 15241, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good127_checked :
    goodSegmentCheck 121 40 85
      { lower := 15242, upper := 15249, witness := RowWitness.topPrime 15241 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_good128_checked :
    goodSegmentCheck 121 40 85
      { lower := 15360, upper := 15479, witness := RowWitness.topPrime 15359 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good129_checked :
    goodSegmentCheck 121 40 85
      { lower := 15480, upper := 15499, witness := RowWitness.topPrime 15473 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good130_checked :
    goodSegmentCheck 121 40 85
      { lower := 15987, upper := 16093, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good131_checked :
    goodSegmentCheck 121 40 85
      { lower := 16094, upper := 16099, witness := RowWitness.topPrime 16091 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good132_checked :
    goodSegmentCheck 121 40 85
      { lower := 16384, upper := 16501, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good133_checked :
    goodSegmentCheck 121 40 85
      { lower := 16502, upper := 16504, witness := RowWitness.topPrime 16493 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good134_checked :
    goodSegmentCheck 121 40 85
      { lower := 16810, upper := 16907, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good135_checked :
    goodSegmentCheck 121 40 85
      { lower := 16908, upper := 16940, witness := RowWitness.topPrime 16903 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good136_checked :
    goodSegmentCheck 121 40 85
      { lower := 17405, upper := 17521, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good137_checked :
    goodSegmentCheck 121 40 85
      { lower := 17522, upper := 17528, witness := RowWitness.topPrime 17519 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good138_checked :
    goodSegmentCheck 121 40 85
      { lower := 17576, upper := 17616, witness := RowWitness.topPrime 17573 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good139_checked :
    goodSegmentCheck 121 40 85
      { lower := 17661, upper := 17779, witness := RowWitness.topPrime 17659 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good140_checked :
    goodSegmentCheck 121 40 85
      { lower := 17780, upper := 17781, witness := RowWitness.topPrime 17761 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good141_checked :
    goodSegmentCheck 121 40 85
      { lower := 18490, upper := 18601, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good142_checked :
    goodSegmentCheck 121 40 85
      { lower := 18602, upper := 18611, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good143_checked :
    goodSegmentCheck 121 40 85
      { lower := 18723, upper := 18725, witness := RowWitness.topPrime 18719 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_good144_checked :
    goodSegmentCheck 121 40 85
      { lower := 18750, upper := 18869, witness := RowWitness.topPrime 18749 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good145_checked :
    goodSegmentCheck 121 40 85
      { lower := 18870, upper := 18870, witness := RowWitness.topPrime 18869 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good146_checked :
    goodSegmentCheck 121 40 85
      { lower := 19208, upper := 19327, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good147_checked :
    goodSegmentCheck 121 40 85
      { lower := 19328, upper := 19328, witness := RowWitness.topPrime 19319 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good148_checked :
    goodSegmentCheck 121 40 85
      { lower := 19663, upper := 19781, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good149_checked :
    goodSegmentCheck 121 40 85
      { lower := 19782, upper := 19803, witness := RowWitness.topPrime 19777 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good150_checked :
    goodSegmentCheck 121 40 85
      { lower := 19881, upper := 19893, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good151_checked :
    goodSegmentCheck 121 40 85
      { lower := 20172, upper := 20281, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good152_checked :
    goodSegmentCheck 121 40 85
      { lower := 20282, upper := 20292, witness := RowWitness.topPrime 20269 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good153_checked :
    goodSegmentCheck 121 40 85
      { lower := 20402, upper := 20459, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good154_checked :
    goodSegmentCheck 121 40 85
      { lower := 20480, upper := 20522, witness := RowWitness.topPrime 20479 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good155_checked :
    goodSegmentCheck 121 40 85
      { lower := 20535, upper := 20653, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good156_checked :
    goodSegmentCheck 121 40 85
      { lower := 20654, upper := 20655, witness := RowWitness.topPrime 20641 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good157_checked :
    goodSegmentCheck 121 40 85
      { lower := 20667, upper := 20697, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good158_checked :
    goodSegmentCheck 121 40 85
      { lower := 21316, upper := 21338, witness := RowWitness.topPrime 21313 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good159_checked :
    goodSegmentCheck 121 40 85
      { lower := 21609, upper := 21624, witness := RowWitness.topPrime 21601 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_good160_checked :
    goodSegmentCheck 121 40 85
      { lower := 21870, upper := 21983, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good161_checked :
    goodSegmentCheck 121 40 85
      { lower := 21984, upper := 22024, witness := RowWitness.topPrime 21977 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good162_checked :
    goodSegmentCheck 121 40 85
      { lower := 22090, upper := 22090, witness := RowWitness.topPrime 22079 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good163_checked :
    goodSegmentCheck 121 40 85
      { lower := 22188, upper := 22210, witness := RowWitness.topPrime 22171 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good164_checked :
    goodSegmentCheck 121 40 85
      { lower := 22445, upper := 22446, witness := RowWitness.topPrime 22441 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good165_checked :
    goodSegmentCheck 121 40 85
      { lower := 22472, upper := 22589, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good166_checked :
    goodSegmentCheck 121 40 85
      { lower := 22590, upper := 22592, witness := RowWitness.topPrime 22573 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good167_checked :
    goodSegmentCheck 121 40 85
      { lower := 23763, upper := 23881, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good168_checked :
    goodSegmentCheck 121 40 85
      { lower := 23882, upper := 23882, witness := RowWitness.topPrime 23879 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good169_checked :
    goodSegmentCheck 121 40 85
      { lower := 24037, upper := 24149, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good170_checked :
    goodSegmentCheck 121 40 85
      { lower := 24150, upper := 24157, witness := RowWitness.topPrime 24137 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good171_checked :
    goodSegmentCheck 121 40 85
      { lower := 24167, upper := 24177, witness := RowWitness.topPrime 24151 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good172_checked :
    goodSegmentCheck 121 40 85
      { lower := 24334, upper := 24449, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good173_checked :
    goodSegmentCheck 121 40 85
      { lower := 24450, upper := 24487, witness := RowWitness.topPrime 24443 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good174_checked :
    goodSegmentCheck 121 40 85
      { lower := 24576, upper := 24691, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good175_checked :
    goodSegmentCheck 121 40 85
      { lower := 24692, upper := 24696, witness := RowWitness.topPrime 24691 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_good176_checked :
    goodSegmentCheck 121 40 85
      { lower := 25000, upper := 25084, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good177_checked :
    goodSegmentCheck 121 40 85
      { lower := 25215, upper := 25309, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good178_checked :
    goodSegmentCheck 121 40 85
      { lower := 25310, upper := 25335, witness := RowWitness.topPrime 25309 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good179_checked :
    goodSegmentCheck 121 40 85
      { lower := 26047, upper := 26131, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good180_checked :
    goodSegmentCheck 121 40 85
      { lower := 26364, upper := 26364, witness := RowWitness.topPrime 26357 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good181_checked :
    goodSegmentCheck 121 40 85
      { lower := 26411, upper := 26484, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good182_checked :
    goodSegmentCheck 121 40 85
      { lower := 26508, upper := 26531, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good183_checked :
    goodSegmentCheck 121 40 85
      { lower := 26624, upper := 26628, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good184_checked :
    goodSegmentCheck 121 40 85
      { lower := 26645, upper := 26744, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good185_checked :
    goodSegmentCheck 121 40 85
      { lower := 26934, upper := 27016, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good186_checked :
    goodSegmentCheck 121 40 85
      { lower := 27436, upper := 27500, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good187_checked :
    goodSegmentCheck 121 40 85
      { lower := 27556, upper := 27556, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good188_checked :
    goodSegmentCheck 121 40 85
      { lower := 27848, upper := 27855, witness := RowWitness.topPrime 27847 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good189_checked :
    goodSegmentCheck 121 40 85
      { lower := 28125, upper := 28210, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good190_checked :
    goodSegmentCheck 121 40 85
      { lower := 28227, upper := 28245, witness := RowWitness.topPrime 28219 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good191_checked :
    goodSegmentCheck 121 40 85
      { lower := 28577, upper := 28693, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_good192_checked :
    goodSegmentCheck 121 40 85
      { lower := 28694, upper := 28697, witness := RowWitness.topPrime 28687 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good193_checked :
    goodSegmentCheck 121 40 85
      { lower := 28717, upper := 28831, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good194_checked :
    goodSegmentCheck 121 40 85
      { lower := 28832, upper := 28869, witness := RowWitness.topPrime 28817 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good195_checked :
    goodSegmentCheck 121 40 85
      { lower := 29584, upper := 29598, witness := RowWitness.topPrime 29581 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good196_checked :
    goodSegmentCheck 121 40 85
      { lower := 29791, upper := 29888, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good197_checked :
    goodSegmentCheck 121 40 85
      { lower := 30618, upper := 30713, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good198_checked :
    goodSegmentCheck 121 40 85
      { lower := 30714, upper := 30738, witness := RowWitness.topPrime 30713 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good199_checked :
    goodSegmentCheck 121 40 85
      { lower := 30758, upper := 30840, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good200_checked :
    goodSegmentCheck 121 40 85
      { lower := 30926, upper := 31019, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good201_checked :
    goodSegmentCheck 121 40 85
      { lower := 31213, upper := 31313, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good202_checked :
    goodSegmentCheck 121 40 85
      { lower := 31314, upper := 31370, witness := RowWitness.topPrime 31307 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good203_checked :
    goodSegmentCheck 121 40 85
      { lower := 31423, upper := 31449, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good204_checked :
    goodSegmentCheck 121 40 85
      { lower := 32805, upper := 32888, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good205_checked :
    goodSegmentCheck 121 40 85
      { lower := 33708, upper := 33734, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good206_checked :
    goodSegmentCheck 121 40 85
      { lower := 34347, upper := 34457, witness := RowWitness.topPrime 34337 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good207_checked :
    goodSegmentCheck 121 40 85
      { lower := 34458, upper := 34511, witness := RowWitness.topPrime 34457 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_good208_checked :
    goodSegmentCheck 121 40 85
      { lower := 35344, upper := 35407, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good209_checked :
    goodSegmentCheck 121 40 85
      { lower := 36015, upper := 36032, witness := RowWitness.topPrime 36013 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good210_checked :
    goodSegmentCheck 121 40 85
      { lower := 36517, upper := 36617, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good211_checked :
    goodSegmentCheck 121 40 85
      { lower := 36618, upper := 36621, witness := RowWitness.topPrime 36607 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good212_checked :
    goodSegmentCheck 121 40 85
      { lower := 37303, upper := 37330, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good213_checked :
    goodSegmentCheck 121 40 85
      { lower := 37500, upper := 37566, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good214_checked :
    goodSegmentCheck 121 40 85
      { lower := 38307, upper := 38411, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good215_checked :
    goodSegmentCheck 121 40 85
      { lower := 38416, upper := 38427, witness := RowWitness.topPrime 38393 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good216_checked :
    goodSegmentCheck 121 40 85
      { lower := 39326, upper := 39443, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good217_checked :
    goodSegmentCheck 121 40 85
      { lower := 39444, upper := 39446, witness := RowWitness.topPrime 39443 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good218_checked :
    goodSegmentCheck 121 40 85
      { lower := 40401, upper := 40448, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good219_checked :
    goodSegmentCheck 121 40 85
      { lower := 40960, upper := 41051, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good220_checked :
    goodSegmentCheck 121 40 85
      { lower := 43750, upper := 43807, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good221_checked :
    goodSegmentCheck 121 40 85
      { lower := 44944, upper := 45010, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good222_checked :
    goodSegmentCheck 121 40 85
      { lower := 45056, upper := 45064, witness := RowWitness.topPrime 45053 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good223_checked :
    goodSegmentCheck 121 40 85
      { lower := 45369, upper := 45373, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_good224_checked :
    goodSegmentCheck 121 40 85
      { lower := 47526, upper := 47641, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good225_checked :
    goodSegmentCheck 121 40 85
      { lower := 47642, upper := 47644, witness := RowWitness.topPrime 47639 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good226_checked :
    goodSegmentCheck 121 40 85
      { lower := 48013, upper := 48081, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good227_checked :
    goodSegmentCheck 121 40 85
      { lower := 48734, upper := 48853, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good228_checked :
    goodSegmentCheck 121 40 85
      { lower := 48854, upper := 48854, witness := RowWitness.topPrime 48847 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good229_checked :
    goodSegmentCheck 121 40 85
      { lower := 49152, upper := 49250, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good230_checked :
    goodSegmentCheck 121 40 85
      { lower := 50000, upper := 50048, witness := RowWitness.topPrime 49999 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good231_checked :
    goodSegmentCheck 121 40 85
      { lower := 50421, upper := 50530, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good232_checked :
    goodSegmentCheck 121 40 85
      { lower := 51076, upper := 51125, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good233_checked :
    goodSegmentCheck 121 40 85
      { lower := 53290, upper := 53368, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good234_checked :
    goodSegmentCheck 121 40 85
      { lower := 55451, upper := 55561, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good235_checked :
    goodSegmentCheck 121 40 85
      { lower := 55562, upper := 55567, witness := RowWitness.topPrime 55547 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good236_checked :
    goodSegmentCheck 121 40 85
      { lower := 55815, upper := 55816, witness := RowWitness.topPrime 55813 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good237_checked :
    goodSegmentCheck 121 40 85
      { lower := 57344, upper := 57365, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good238_checked :
    goodSegmentCheck 121 40 85
      { lower := 59049, upper := 59076, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good239_checked :
    goodSegmentCheck 121 40 85
      { lower := 62500, upper := 62530, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_good240_checked :
    goodSegmentCheck 121 40 85
      { lower := 63869, upper := 63983, witness := RowWitness.topPrime 63863 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good241_checked :
    goodSegmentCheck 121 40 85
      { lower := 63984, upper := 63989, witness := RowWitness.topPrime 63977 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good242_checked :
    goodSegmentCheck 121 40 85
      { lower := 65536, upper := 65641, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good243_checked :
    goodSegmentCheck 121 40 85
      { lower := 65642, upper := 65656, witness := RowWitness.topPrime 65633 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good244_checked :
    goodSegmentCheck 121 40 85
      { lower := 68651, upper := 68759, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good245_checked :
    goodSegmentCheck 121 40 85
      { lower := 68760, upper := 68771, witness := RowWitness.topPrime 68749 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good246_checked :
    goodSegmentCheck 121 40 85
      { lower := 68921, upper := 69010, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good247_checked :
    goodSegmentCheck 121 40 85
      { lower := 71289, upper := 71407, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good248_checked :
    goodSegmentCheck 121 40 85
      { lower := 71408, upper := 71409, witness := RowWitness.topPrime 71399 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good249_checked :
    goodSegmentCheck 121 40 85
      { lower := 89383, upper := 89493, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good250_checked :
    goodSegmentCheck 121 40 85
      { lower := 95052, upper := 95147, witness := RowWitness.topPrime 95027 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good251_checked :
    goodSegmentCheck 121 40 85
      { lower := 95148, upper := 95168, witness := RowWitness.topPrime 95143 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good252_checked :
    goodSegmentCheck 121 40 85
      { lower := 98415, upper := 98424, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good253_checked :
    goodSegmentCheck 121 40 85
      { lower := 103041, upper := 103093, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good254_checked :
    goodSegmentCheck 121 40 85
      { lower := 137842, upper := 137901, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row121_good255_checked :
    goodSegmentCheck 121 40 85
      { lower := 148955, upper := 148997, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 121) (r := 40) (s := 85) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good251_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good252_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good253_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good254_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_good255_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_goods_checked :
    row121.goods.all (goodSegmentCheck row121.height.i row121.height.r row121.height.s) = true := by
  change row121_goods.all (goodSegmentCheck 121 40 85) = true
  simp only [row121_goods, List.all_cons, List.all_nil,
    row121_good000_checked,
    row121_good001_checked,
    row121_good002_checked,
    row121_good003_checked,
    row121_good004_checked,
    row121_good005_checked,
    row121_good006_checked,
    row121_good007_checked,
    row121_good008_checked,
    row121_good009_checked,
    row121_good010_checked,
    row121_good011_checked,
    row121_good012_checked,
    row121_good013_checked,
    row121_good014_checked,
    row121_good015_checked,
    row121_good016_checked,
    row121_good017_checked,
    row121_good018_checked,
    row121_good019_checked,
    row121_good020_checked,
    row121_good021_checked,
    row121_good022_checked,
    row121_good023_checked,
    row121_good024_checked,
    row121_good025_checked,
    row121_good026_checked,
    row121_good027_checked,
    row121_good028_checked,
    row121_good029_checked,
    row121_good030_checked,
    row121_good031_checked,
    row121_good032_checked,
    row121_good033_checked,
    row121_good034_checked,
    row121_good035_checked,
    row121_good036_checked,
    row121_good037_checked,
    row121_good038_checked,
    row121_good039_checked,
    row121_good040_checked,
    row121_good041_checked,
    row121_good042_checked,
    row121_good043_checked,
    row121_good044_checked,
    row121_good045_checked,
    row121_good046_checked,
    row121_good047_checked,
    row121_good048_checked,
    row121_good049_checked,
    row121_good050_checked,
    row121_good051_checked,
    row121_good052_checked,
    row121_good053_checked,
    row121_good054_checked,
    row121_good055_checked,
    row121_good056_checked,
    row121_good057_checked,
    row121_good058_checked,
    row121_good059_checked,
    row121_good060_checked,
    row121_good061_checked,
    row121_good062_checked,
    row121_good063_checked,
    row121_good064_checked,
    row121_good065_checked,
    row121_good066_checked,
    row121_good067_checked,
    row121_good068_checked,
    row121_good069_checked,
    row121_good070_checked,
    row121_good071_checked,
    row121_good072_checked,
    row121_good073_checked,
    row121_good074_checked,
    row121_good075_checked,
    row121_good076_checked,
    row121_good077_checked,
    row121_good078_checked,
    row121_good079_checked,
    row121_good080_checked,
    row121_good081_checked,
    row121_good082_checked,
    row121_good083_checked,
    row121_good084_checked,
    row121_good085_checked,
    row121_good086_checked,
    row121_good087_checked,
    row121_good088_checked,
    row121_good089_checked,
    row121_good090_checked,
    row121_good091_checked,
    row121_good092_checked,
    row121_good093_checked,
    row121_good094_checked,
    row121_good095_checked,
    row121_good096_checked,
    row121_good097_checked,
    row121_good098_checked,
    row121_good099_checked,
    row121_good100_checked,
    row121_good101_checked,
    row121_good102_checked,
    row121_good103_checked,
    row121_good104_checked,
    row121_good105_checked,
    row121_good106_checked,
    row121_good107_checked,
    row121_good108_checked,
    row121_good109_checked,
    row121_good110_checked,
    row121_good111_checked,
    row121_good112_checked,
    row121_good113_checked,
    row121_good114_checked,
    row121_good115_checked,
    row121_good116_checked,
    row121_good117_checked,
    row121_good118_checked,
    row121_good119_checked,
    row121_good120_checked,
    row121_good121_checked,
    row121_good122_checked,
    row121_good123_checked,
    row121_good124_checked,
    row121_good125_checked,
    row121_good126_checked,
    row121_good127_checked,
    row121_good128_checked,
    row121_good129_checked,
    row121_good130_checked,
    row121_good131_checked,
    row121_good132_checked,
    row121_good133_checked,
    row121_good134_checked,
    row121_good135_checked,
    row121_good136_checked,
    row121_good137_checked,
    row121_good138_checked,
    row121_good139_checked,
    row121_good140_checked,
    row121_good141_checked,
    row121_good142_checked,
    row121_good143_checked,
    row121_good144_checked,
    row121_good145_checked,
    row121_good146_checked,
    row121_good147_checked,
    row121_good148_checked,
    row121_good149_checked,
    row121_good150_checked,
    row121_good151_checked,
    row121_good152_checked,
    row121_good153_checked,
    row121_good154_checked,
    row121_good155_checked,
    row121_good156_checked,
    row121_good157_checked,
    row121_good158_checked,
    row121_good159_checked,
    row121_good160_checked,
    row121_good161_checked,
    row121_good162_checked,
    row121_good163_checked,
    row121_good164_checked,
    row121_good165_checked,
    row121_good166_checked,
    row121_good167_checked,
    row121_good168_checked,
    row121_good169_checked,
    row121_good170_checked,
    row121_good171_checked,
    row121_good172_checked,
    row121_good173_checked,
    row121_good174_checked,
    row121_good175_checked,
    row121_good176_checked,
    row121_good177_checked,
    row121_good178_checked,
    row121_good179_checked,
    row121_good180_checked,
    row121_good181_checked,
    row121_good182_checked,
    row121_good183_checked,
    row121_good184_checked,
    row121_good185_checked,
    row121_good186_checked,
    row121_good187_checked,
    row121_good188_checked,
    row121_good189_checked,
    row121_good190_checked,
    row121_good191_checked,
    row121_good192_checked,
    row121_good193_checked,
    row121_good194_checked,
    row121_good195_checked,
    row121_good196_checked,
    row121_good197_checked,
    row121_good198_checked,
    row121_good199_checked,
    row121_good200_checked,
    row121_good201_checked,
    row121_good202_checked,
    row121_good203_checked,
    row121_good204_checked,
    row121_good205_checked,
    row121_good206_checked,
    row121_good207_checked,
    row121_good208_checked,
    row121_good209_checked,
    row121_good210_checked,
    row121_good211_checked,
    row121_good212_checked,
    row121_good213_checked,
    row121_good214_checked,
    row121_good215_checked,
    row121_good216_checked,
    row121_good217_checked,
    row121_good218_checked,
    row121_good219_checked,
    row121_good220_checked,
    row121_good221_checked,
    row121_good222_checked,
    row121_good223_checked,
    row121_good224_checked,
    row121_good225_checked,
    row121_good226_checked,
    row121_good227_checked,
    row121_good228_checked,
    row121_good229_checked,
    row121_good230_checked,
    row121_good231_checked,
    row121_good232_checked,
    row121_good233_checked,
    row121_good234_checked,
    row121_good235_checked,
    row121_good236_checked,
    row121_good237_checked,
    row121_good238_checked,
    row121_good239_checked,
    row121_good240_checked,
    row121_good241_checked,
    row121_good242_checked,
    row121_good243_checked,
    row121_good244_checked,
    row121_good245_checked,
    row121_good246_checked,
    row121_good247_checked,
    row121_good248_checked,
    row121_good249_checked,
    row121_good250_checked,
    row121_good251_checked,
    row121_good252_checked,
    row121_good253_checked,
    row121_good254_checked,
    row121_good255_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_registered :
    decide (row121.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row121_small_checked :
    coverCheck (2 * row121.height.i + 2) (row121.height.i * (row121.height.i - 1) - 1)
      (row121.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row121_layerCover_checked :
    coverCheck (row121.height.i * (row121.height.i - 1)) (row121.height.n0 - 1)
      (row121.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row121_bounds : List NatInterval :=
  [(244, 361), (362, 479), (480, 599), (600, 719), (720, 839), (840, 959), (960, 1073), (1074, 1189), (1190, 1307), (1308, 1427), (1428, 1547), (1548, 1663), (1664, 1783), (1784, 1903), (1904, 2021), (2022, 2137), (2138, 2257), (2258, 2371), (2372, 2491), (2492, 2597), (2598, 2713), (2714, 2833), (2834, 2953), (2954, 3073), (3074, 3187), (3188, 3307), (3308, 3427), (3428, 3533), (3534, 3653), (3654, 3763), (3764, 3881), (3882, 4001), (4002, 4121), (4122, 4231), (4232, 4351), (4352, 4469), (4470, 4583), (4584, 4703), (4704, 4823), (4824, 4937), (4938, 5057), (5058, 5171), (5172, 5291), (5292, 5401), (5402, 5519), (5520, 5639), (5640, 5759), (5760, 5869), (5870, 5989), (5990, 6107), (6108, 6221), (6222, 6341), (6342, 6457), (6458, 6571), (6572, 6691), (6692, 6811), (6812, 6923), (6924, 7037), (7038, 7147), (7148, 7249), (7250, 7367), (7368, 7471), (7472, 7579), (7580, 7697), (7698, 7811), (7812, 7913), (7914, 8027), (8028, 8137), (8138, 8243), (8244, 8363), (8364, 8483), (8484, 8587), (8588, 8701), (8702, 8819), (8820, 8939), (8940, 9053), (9054, 9169), (9170, 9281), (9282, 9401), (9402, 9517), (9518, 9631), (9632, 9751), (9752, 9869), (9870, 9979), (9980, 10093), (10094, 10213), (10214, 10331), (10332, 10451), (10452, 10553), (10554, 10651), (10652, 10771), (10772, 10891), (10892, 11011), (11012, 11123), (11124, 11239), (11240, 11359), (11360, 11473), (11474, 11591), (11592, 11707), (11708, 11821), (11822, 11941), (11942, 12061), (12062, 12169), (12170, 12283), (12284, 12401), (12402, 12521), (12522, 12637), (12638, 12757), (12758, 12877), (12878, 12973), (12974, 13093), (13094, 13213), (13214, 13307), (13308, 13417), (13418, 13537), (13538, 13657), (13658, 13769), (13770, 13883), (13884, 14003), (14004, 14119), (14120, 14227), (14228, 14341), (14342, 14461), (14462, 14526), (14792, 14859), (14884, 14912), (15123, 15241), (15242, 15249), (15360, 15479), (15480, 15499), (15987, 16093), (16094, 16099), (16384, 16501), (16502, 16504), (16810, 16907), (16908, 16940), (17405, 17521), (17522, 17528), (17576, 17616), (17661, 17779), (17780, 17781), (18490, 18601), (18602, 18611), (18723, 18725), (18750, 18869), (18870, 18870), (19208, 19327), (19328, 19328), (19663, 19781), (19782, 19803), (19881, 19893), (20172, 20281), (20282, 20292), (20402, 20459), (20480, 20522), (20535, 20653), (20654, 20655), (20667, 20697), (21316, 21338), (21609, 21624), (21870, 21983), (21984, 22024), (22090, 22090), (22188, 22210), (22445, 22446), (22472, 22589), (22590, 22592), (23763, 23881), (23882, 23882), (24037, 24149), (24150, 24157), (24167, 24177), (24334, 24449), (24450, 24487), (24576, 24691), (24692, 24696), (25000, 25084), (25215, 25309), (25310, 25335), (26047, 26131), (26364, 26364), (26411, 26484), (26508, 26531), (26624, 26628), (26645, 26744), (26934, 27016), (27436, 27500), (27556, 27556), (27848, 27855), (28125, 28210), (28227, 28245), (28577, 28693), (28694, 28697), (28717, 28831), (28832, 28869), (29584, 29598), (29791, 29888), (30618, 30713), (30714, 30738), (30758, 30840), (30926, 31019), (31213, 31313), (31314, 31370), (31423, 31449), (32805, 32888), (33708, 33734), (34347, 34457), (34458, 34511), (35344, 35407), (36015, 36032), (36517, 36617), (36618, 36621), (37303, 37330), (37500, 37566), (38307, 38411), (38416, 38427), (39326, 39443), (39444, 39446), (40401, 40448), (40960, 41051), (43750, 43807), (44944, 45010), (45056, 45064), (45369, 45373), (47526, 47641), (47642, 47644), (48013, 48081), (48734, 48853), (48854, 48854), (49152, 49250), (50000, 50048), (50421, 50530), (51076, 51125), (53290, 53368), (55451, 55561), (55562, 55567), (55815, 55816), (57344, 57365), (59049, 59076), (62500, 62530), (63869, 63983), (63984, 63989), (65536, 65641), (65642, 65656), (68651, 68759), (68760, 68771), (68921, 69010), (71289, 71407), (71408, 71409), (89383, 89493), (95052, 95147), (95148, 95168), (98415, 98424), (103041, 103093), (137842, 137901), (148955, 148997)]

theorem row121_bounds_eq : row121.goods.map goodSegmentBounds = row121_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row121_layer000_intervals : List ColouredInterval :=
  [(2, 15360, 15480), (2, 16384, 16504), (2, 17408, 17528), (2, 18432, 18552), (2, 19456, 19576), (2, 20480, 20600), (2, 21504, 21624), (2, 16384, 16504), (2, 18432, 18552), (2, 20480, 20600), (2, 22528, 22648), (2, 24576, 24696), (2, 26624, 26744), (2, 28672, 28792), (2, 16384, 16504), (2, 20480, 20600), (2, 24576, 24696), (2, 28672, 28792), (2, 16384, 16504), (2, 24576, 24696), (2, 16384, 16504), (3, 14580, 14700), (3, 15309, 15429), (3, 15309, 15429), (3, 17496, 17616), (3, 19683, 19803), (3, 21870, 21990), (3, 24057, 24177), (3, 26244, 26364), (3, 28431, 28551), (3, 19683, 19803), (3, 26244, 26364), (3, 19683, 19803), (5, 15625, 15745), (5, 18750, 18870), (5, 21875, 21995), (5, 25000, 25120), (5, 28125, 28245), (5, 15625, 15745), (7, 14520, 14526), (7, 16807, 16927), (7, 19208, 19328), (7, 21609, 21729), (7, 24010, 24130), (7, 26411, 26531), (7, 28812, 28932), (7, 16807, 16927), (13, 15379, 15499), (13, 17576, 17696), (13, 19773, 19893), (13, 21970, 22090), (13, 24167, 24287), (13, 26364, 26484), (13, 28561, 28681), (13, 28561, 28681), (17, 14739, 14859), (17, 19652, 19772), (17, 24565, 24685), (19, 20577, 20697), (19, 27436, 27556), (23, 24334, 24454), (29, 15138, 15258), (29, 15979, 16099), (29, 16820, 16940), (29, 17661, 17781), (29, 24389, 24509), (31, 14520, 14535), (31, 15376, 15496), (31, 16337, 16457), (31, 17298, 17418), (31, 18259, 18379), (31, 19220, 19340), (31, 20181, 20301), (37, 15059, 15179), (37, 16428, 16548), (37, 17797, 17917), (37, 19166, 19286), (37, 20535, 20655), (37, 21904, 22024), (37, 23273, 23393), (37, 24642, 24762), (37, 26011, 26131), (37, 27380, 27500), (37, 28749, 28869), (41, 15129, 15249), (41, 16810, 16930), (41, 18491, 18611), (41, 20172, 20292), (41, 21853, 21973), (41, 23534, 23654), (41, 25215, 25335), (41, 26896, 27016), (41, 28577, 28697), (43, 14792, 14912), (43, 16641, 16761), (43, 18490, 18610), (43, 20339, 20459), (43, 22188, 22308), (43, 24037, 24157), (43, 25886, 26006), (43, 27735, 27855), (47, 15463, 15583), (47, 17672, 17792), (47, 19881, 20001), (47, 22090, 22210), (47, 24299, 24419), (47, 26508, 26628), (47, 28717, 28837), (53, 16854, 16974), (53, 19663, 19783), (53, 22472, 22592), (53, 25281, 25401), (53, 28090, 28210), (59, 17405, 17525), (59, 20886, 21006), (59, 24367, 24487), (59, 27848, 27968), (61, 14884, 15004), (61, 18605, 18725), (61, 22326, 22446), (61, 26047, 26167), (67, 17956, 18076), (67, 22445, 22565), (67, 26934, 27054), (71, 15123, 15243), (71, 20164, 20284), (71, 25205, 25325), (73, 15987, 16107), (73, 21316, 21436), (73, 26645, 26765), (79, 18723, 18843), (79, 24964, 25084), (83, 20667, 20787), (83, 27556, 27676), (89, 15842, 15962), (89, 23763, 23883), (97, 18818, 18938), (97, 28227, 28347), (101, 20402, 20522), (103, 21218, 21338), (107, 22898, 23018), (109, 23762, 23882), (113, 25538, 25658)]

def row121_layer000_block000 : List ColouredInterval :=
  [(2, 15360, 15480), (2, 16384, 16504), (2, 17408, 17528), (2, 18432, 18552), (2, 19456, 19576), (2, 20480, 20600), (2, 21504, 21624), (2, 16384, 16504), (2, 18432, 18552), (2, 20480, 20600), (2, 22528, 22648), (2, 24576, 24696), (2, 26624, 26744), (2, 28672, 28792)]

def row121_layer000_block001 : List ColouredInterval :=
  [(2, 16384, 16504), (2, 20480, 20600), (2, 24576, 24696), (2, 28672, 28792), (2, 16384, 16504), (2, 24576, 24696), (2, 16384, 16504), (3, 14580, 14700), (3, 15309, 15429), (3, 15309, 15429), (3, 17496, 17616), (3, 19683, 19803), (3, 21870, 21990), (3, 24057, 24177)]

def row121_layer000_block002 : List ColouredInterval :=
  [(3, 26244, 26364), (3, 28431, 28551), (3, 19683, 19803), (3, 26244, 26364), (3, 19683, 19803), (5, 15625, 15745), (5, 18750, 18870), (5, 21875, 21995), (5, 25000, 25120), (5, 28125, 28245), (5, 15625, 15745), (7, 14520, 14526), (7, 16807, 16927), (7, 19208, 19328)]

def row121_layer000_block003 : List ColouredInterval :=
  [(7, 21609, 21729), (7, 24010, 24130), (7, 26411, 26531), (7, 28812, 28932), (7, 16807, 16927), (13, 15379, 15499), (13, 17576, 17696), (13, 19773, 19893), (13, 21970, 22090), (13, 24167, 24287), (13, 26364, 26484), (13, 28561, 28681), (13, 28561, 28681), (17, 14739, 14859)]

def row121_layer000_block004 : List ColouredInterval :=
  [(17, 19652, 19772), (17, 24565, 24685), (19, 20577, 20697), (19, 27436, 27556), (23, 24334, 24454), (29, 15138, 15258), (29, 15979, 16099), (29, 16820, 16940), (29, 17661, 17781), (29, 24389, 24509), (31, 14520, 14535), (31, 15376, 15496), (31, 16337, 16457), (31, 17298, 17418)]

def row121_layer000_block005 : List ColouredInterval :=
  [(31, 18259, 18379), (31, 19220, 19340), (31, 20181, 20301), (37, 15059, 15179), (37, 16428, 16548), (37, 17797, 17917), (37, 19166, 19286), (37, 20535, 20655), (37, 21904, 22024), (37, 23273, 23393), (37, 24642, 24762), (37, 26011, 26131), (37, 27380, 27500), (37, 28749, 28869)]

def row121_layer000_block006 : List ColouredInterval :=
  [(41, 15129, 15249), (41, 16810, 16930), (41, 18491, 18611), (41, 20172, 20292), (41, 21853, 21973), (41, 23534, 23654), (41, 25215, 25335), (41, 26896, 27016), (41, 28577, 28697), (43, 14792, 14912), (43, 16641, 16761), (43, 18490, 18610), (43, 20339, 20459), (43, 22188, 22308)]

def row121_layer000_block007 : List ColouredInterval :=
  [(43, 24037, 24157), (43, 25886, 26006), (43, 27735, 27855), (47, 15463, 15583), (47, 17672, 17792), (47, 19881, 20001), (47, 22090, 22210), (47, 24299, 24419), (47, 26508, 26628), (47, 28717, 28837), (53, 16854, 16974), (53, 19663, 19783), (53, 22472, 22592), (53, 25281, 25401)]

def row121_layer000_block008 : List ColouredInterval :=
  [(53, 28090, 28210), (59, 17405, 17525), (59, 20886, 21006), (59, 24367, 24487), (59, 27848, 27968), (61, 14884, 15004), (61, 18605, 18725), (61, 22326, 22446), (61, 26047, 26167), (67, 17956, 18076), (67, 22445, 22565), (67, 26934, 27054), (71, 15123, 15243), (71, 20164, 20284)]

def row121_layer000_block009 : List ColouredInterval :=
  [(71, 25205, 25325), (73, 15987, 16107), (73, 21316, 21436), (73, 26645, 26765), (79, 18723, 18843), (79, 24964, 25084), (83, 20667, 20787), (83, 27556, 27676), (89, 15842, 15962), (89, 23763, 23883), (97, 18818, 18938), (97, 28227, 28347), (101, 20402, 20522), (103, 21218, 21338)]

def row121_layer000_block010 : List ColouredInterval :=
  [(107, 22898, 23018), (109, 23762, 23882), (113, 25538, 25658)]

def row121_layer000_chunks : List (List ColouredInterval) :=
  [row121_layer000_block000, row121_layer000_block001, row121_layer000_block002, row121_layer000_block003, row121_layer000_block004, row121_layer000_block005, row121_layer000_block006, row121_layer000_block007, row121_layer000_block008, row121_layer000_block009, row121_layer000_block010]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer000_arithmetic : LayerArithmeticValid row121.height { lower := 14520, upper := 29040, M := 21 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer000_enumeration :
    activePowerIntervalList 121 21 14520 29040 = row121_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer000_pairs000 :
    row121_layer000_block000.all (fun I => row121_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row121_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer000_pairs001 :
    row121_layer000_block001.all (fun I => row121_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row121_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer000_pairs002 :
    row121_layer000_block002.all (fun I => row121_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row121_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer000_pairs003 :
    row121_layer000_block003.all (fun I => row121_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row121_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer000_pairs004 :
    row121_layer000_block004.all (fun I => row121_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row121_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer000_pairs005 :
    row121_layer000_block005.all (fun I => row121_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row121_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer000_pairs006 :
    row121_layer000_block006.all (fun I => row121_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row121_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer000_pairs007 :
    row121_layer000_block007.all (fun I => row121_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row121_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer000_pairs008 :
    row121_layer000_block008.all (fun I => row121_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row121_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer000_pairs008
