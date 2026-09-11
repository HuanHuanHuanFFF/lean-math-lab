import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row083_height : HeightCertificateDatum := { i := 83, r := 27, s := 57, n0Power10 := 10 }

def row083_goods : List GoodSegment := [
  { lower := 168, upper := 249, witness := RowWitness.topPrime 167 },
  { lower := 250, upper := 323, witness := RowWitness.topPrime 241 },
  { lower := 324, upper := 399, witness := RowWitness.topPrime 317 },
  { lower := 400, upper := 479, witness := RowWitness.topPrime 397 },
  { lower := 480, upper := 561, witness := RowWitness.topPrime 479 },
  { lower := 562, upper := 639, witness := RowWitness.topPrime 557 },
  { lower := 640, upper := 713, witness := RowWitness.topPrime 631 },
  { lower := 714, upper := 791, witness := RowWitness.topPrime 709 },
  { lower := 792, upper := 869, witness := RowWitness.topPrime 787 },
  { lower := 870, upper := 945, witness := RowWitness.topPrime 863 },
  { lower := 946, upper := 1023, witness := RowWitness.topPrime 941 },
  { lower := 1024, upper := 1103, witness := RowWitness.topPrime 1021 },
  { lower := 1104, upper := 1185, witness := RowWitness.topPrime 1103 },
  { lower := 1186, upper := 1263, witness := RowWitness.topPrime 1181 },
  { lower := 1264, upper := 1341, witness := RowWitness.topPrime 1259 },
  { lower := 1342, upper := 1409, witness := RowWitness.topPrime 1327 },
  { lower := 1410, upper := 1491, witness := RowWitness.topPrime 1409 },
  { lower := 1492, upper := 1571, witness := RowWitness.topPrime 1489 },
  { lower := 1572, upper := 1653, witness := RowWitness.topPrime 1571 },
  { lower := 1654, upper := 1719, witness := RowWitness.topPrime 1637 },
  { lower := 1720, upper := 1791, witness := RowWitness.topPrime 1709 },
  { lower := 1792, upper := 1871, witness := RowWitness.topPrime 1789 },
  { lower := 1872, upper := 1953, witness := RowWitness.topPrime 1871 },
  { lower := 1954, upper := 2033, witness := RowWitness.topPrime 1951 },
  { lower := 2034, upper := 2111, witness := RowWitness.topPrime 2029 },
  { lower := 2112, upper := 2193, witness := RowWitness.topPrime 2111 },
  { lower := 2194, upper := 2261, witness := RowWitness.topPrime 2179 },
  { lower := 2262, upper := 2333, witness := RowWitness.topPrime 2251 },
  { lower := 2334, upper := 2415, witness := RowWitness.topPrime 2333 },
  { lower := 2416, upper := 2493, witness := RowWitness.topPrime 2411 },
  { lower := 2494, upper := 2559, witness := RowWitness.topPrime 2477 },
  { lower := 2560, upper := 2639, witness := RowWitness.topPrime 2557 },
  { lower := 2640, upper := 2715, witness := RowWitness.topPrime 2633 },
  { lower := 2716, upper := 2795, witness := RowWitness.topPrime 2713 },
  { lower := 2796, upper := 2873, witness := RowWitness.topPrime 2791 },
  { lower := 2874, upper := 2943, witness := RowWitness.topPrime 2861 },
  { lower := 2944, upper := 3021, witness := RowWitness.topPrime 2939 },
  { lower := 3022, upper := 3101, witness := RowWitness.topPrime 3019 },
  { lower := 3102, upper := 3171, witness := RowWitness.topPrime 3089 },
  { lower := 3172, upper := 3251, witness := RowWitness.topPrime 3169 },
  { lower := 3252, upper := 3333, witness := RowWitness.topPrime 3251 },
  { lower := 3334, upper := 3413, witness := RowWitness.topPrime 3331 },
  { lower := 3414, upper := 3495, witness := RowWitness.topPrime 3413 },
  { lower := 3496, upper := 3573, witness := RowWitness.topPrime 3491 },
  { lower := 3574, upper := 3653, witness := RowWitness.topPrime 3571 },
  { lower := 3654, upper := 3725, witness := RowWitness.topPrime 3643 },
  { lower := 3726, upper := 3801, witness := RowWitness.topPrime 3719 },
  { lower := 3802, upper := 3879, witness := RowWitness.topPrime 3797 },
  { lower := 3880, upper := 3959, witness := RowWitness.topPrime 3877 },
  { lower := 3960, upper := 4029, witness := RowWitness.topPrime 3947 },
  { lower := 4030, upper := 4109, witness := RowWitness.topPrime 4027 },
  { lower := 4110, upper := 4181, witness := RowWitness.topPrime 4099 },
  { lower := 4182, upper := 4259, witness := RowWitness.topPrime 4177 },
  { lower := 4260, upper := 4341, witness := RowWitness.topPrime 4259 },
  { lower := 4342, upper := 4421, witness := RowWitness.topPrime 4339 },
  { lower := 4422, upper := 4503, witness := RowWitness.topPrime 4421 },
  { lower := 4504, upper := 4575, witness := RowWitness.topPrime 4493 },
  { lower := 4576, upper := 4649, witness := RowWitness.topPrime 4567 },
  { lower := 4650, upper := 4731, witness := RowWitness.topPrime 4649 },
  { lower := 4732, upper := 4811, witness := RowWitness.topPrime 4729 },
  { lower := 4812, upper := 4883, witness := RowWitness.topPrime 4801 },
  { lower := 4884, upper := 4959, witness := RowWitness.topPrime 4877 },
  { lower := 4960, upper := 5039, witness := RowWitness.topPrime 4957 },
  { lower := 5040, upper := 5121, witness := RowWitness.topPrime 5039 },
  { lower := 5122, upper := 5201, witness := RowWitness.topPrime 5119 },
  { lower := 5202, upper := 5279, witness := RowWitness.topPrime 5197 },
  { lower := 5280, upper := 5361, witness := RowWitness.topPrime 5279 },
  { lower := 5362, upper := 5433, witness := RowWitness.topPrime 5351 },
  { lower := 5434, upper := 5513, witness := RowWitness.topPrime 5431 },
  { lower := 5514, upper := 5589, witness := RowWitness.topPrime 5507 },
  { lower := 5590, upper := 5663, witness := RowWitness.topPrime 5581 },
  { lower := 5664, upper := 5741, witness := RowWitness.topPrime 5659 },
  { lower := 5742, upper := 5823, witness := RowWitness.topPrime 5741 },
  { lower := 5824, upper := 5903, witness := RowWitness.topPrime 5821 },
  { lower := 5904, upper := 5985, witness := RowWitness.topPrime 5903 },
  { lower := 5986, upper := 6063, witness := RowWitness.topPrime 5981 },
  { lower := 6064, upper := 6135, witness := RowWitness.topPrime 6053 },
  { lower := 6136, upper := 6215, witness := RowWitness.topPrime 6133 },
  { lower := 6216, upper := 6293, witness := RowWitness.topPrime 6211 },
  { lower := 6294, upper := 6369, witness := RowWitness.topPrime 6287 },
  { lower := 6370, upper := 6449, witness := RowWitness.topPrime 6367 },
  { lower := 6450, upper := 6531, witness := RowWitness.topPrime 6449 },
  { lower := 6532, upper := 6611, witness := RowWitness.topPrime 6529 },
  { lower := 6612, upper := 6689, witness := RowWitness.topPrime 6607 },
  { lower := 6690, upper := 6771, witness := RowWitness.topPrime 6689 },
  { lower := 6772, upper := 6809, witness := RowWitness.topPrime 6763 },
  { lower := 6859, upper := 6939, witness := RowWitness.topPrime 6857 },
  { lower := 6940, upper := 6959, witness := RowWitness.topPrime 6917 },
  { lower := 6962, upper := 7018, witness := RowWitness.topPrime 6961 },
  { lower := 7203, upper := 7275, witness := RowWitness.topPrime 7193 },
  { lower := 7276, upper := 7307, witness := RowWitness.topPrime 7253 },
  { lower := 7406, upper := 7475, witness := RowWitness.topPrime 7393 },
  { lower := 7476, upper := 7488, witness := RowWitness.topPrime 7459 },
  { lower := 7500, upper := 7581, witness := RowWitness.topPrime 7499 },
  { lower := 7582, upper := 7651, witness := RowWitness.topPrime 7577 },
  { lower := 7688, upper := 7762, witness := RowWitness.topPrime 7687 },
  { lower := 7935, upper := 8015, witness := RowWitness.topPrime 7933 },
  { lower := 8016, upper := 8068, witness := RowWitness.topPrime 8011 },
  { lower := 8192, upper := 8207, witness := RowWitness.topPrime 8191 },
  { lower := 8214, upper := 8291, witness := RowWitness.topPrime 8209 },
  { lower := 8292, upper := 8296, witness := RowWitness.topPrime 8291 },
  { lower := 8303, upper := 8314, witness := RowWitness.topPrime 8297 },
  { lower := 8410, upper := 8471, witness := RowWitness.topPrime 8389 },
  { lower := 8472, upper := 8509, witness := RowWitness.topPrime 8467 },
  { lower := 8649, upper := 8657, witness := RowWitness.topPrime 8647 },
  { lower := 8664, upper := 8745, witness := RowWitness.topPrime 8663 },
  { lower := 8746, upper := 8746, witness := RowWitness.topPrime 8741 },
  { lower := 8748, upper := 8829, witness := RowWitness.topPrime 8747 },
  { lower := 8830, upper := 8832, witness := RowWitness.topPrime 8821 },
  { lower := 8836, upper := 8870, witness := RowWitness.topPrime 8831 },
  { lower := 8918, upper := 8918, witness := RowWitness.topPrime 8893 },
  { lower := 8978, upper := 9053, witness := RowWitness.topPrime 8971 },
  { lower := 9054, upper := 9075, witness := RowWitness.topPrime 9049 },
  { lower := 9245, upper := 9323, witness := RowWitness.topPrime 9241 },
  { lower := 9324, upper := 9333, witness := RowWitness.topPrime 9323 },
  { lower := 9375, upper := 9453, witness := RowWitness.topPrime 9371 },
  { lower := 9454, upper := 9457, witness := RowWitness.topPrime 9439 },
  { lower := 9522, upper := 9559, witness := RowWitness.topPrime 9521 },
  { lower := 9583, upper := 9633, witness := RowWitness.topPrime 9551 },
  { lower := 9634, upper := 9686, witness := RowWitness.topPrime 9631 },
  { lower := 10051, upper := 10121, witness := RowWitness.topPrime 10039 },
  { lower := 10122, upper := 10168, witness := RowWitness.topPrime 10111 },
  { lower := 10240, upper := 10288, witness := RowWitness.topPrime 10223 },
  { lower := 10580, upper := 10649, witness := RowWitness.topPrime 10567 },
  { lower := 10650, upper := 10721, witness := RowWitness.topPrime 10639 },
  { lower := 10722, upper := 10730, witness := RowWitness.topPrime 10711 },
  { lower := 10935, upper := 10991, witness := RowWitness.topPrime 10909 },
  { lower := 10992, upper := 11034, witness := RowWitness.topPrime 10987 },
  { lower := 11045, upper := 11067, witness := RowWitness.topPrime 11027 },
  { lower := 11094, upper := 11175, witness := RowWitness.topPrime 11093 },
  { lower := 11176, upper := 11191, witness := RowWitness.topPrime 11173 },
  { lower := 11236, upper := 11245, witness := RowWitness.topPrime 11213 },
  { lower := 11250, upper := 11325, witness := RowWitness.topPrime 11243 },
  { lower := 11326, upper := 11332, witness := RowWitness.topPrime 11321 },
  { lower := 11664, upper := 11720, witness := RowWitness.topPrime 11657 },
  { lower := 11774, upper := 11825, witness := RowWitness.topPrime 11743 },
  { lower := 11826, upper := 11856, witness := RowWitness.topPrime 11821 },
  { lower := 12005, upper := 12061, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12370, witness := RowWitness.topPrime 12301 },
  { lower := 12393, upper := 12403, witness := RowWitness.topPrime 12391 },
  { lower := 12493, upper := 12573, witness := RowWitness.topPrime 12491 },
  { lower := 12574, upper := 12575, witness := RowWitness.topPrime 12569 },
  { lower := 12696, upper := 12697, witness := RowWitness.topPrime 12689 },
  { lower := 13125, upper := 13203, witness := RowWitness.topPrime 13121 },
  { lower := 13204, upper := 13207, witness := RowWitness.topPrime 13187 },
  { lower := 13225, upper := 13301, witness := RowWitness.topPrime 13219 },
  { lower := 13302, upper := 13307, witness := RowWitness.topPrime 13297 },
  { lower := 13310, upper := 13391, witness := RowWitness.topPrime 13309 },
  { lower := 13392, upper := 13392, witness := RowWitness.topPrime 13381 },
  { lower := 13454, upper := 13533, witness := RowWitness.topPrime 13451 },
  { lower := 13534, upper := 13538, witness := RowWitness.topPrime 13523 },
  { lower := 13718, upper := 13793, witness := RowWitness.topPrime 13711 },
  { lower := 13794, upper := 13800, witness := RowWitness.topPrime 13789 },
  { lower := 13924, upper := 13933, witness := RowWitness.topPrime 13921 },
  { lower := 14336, upper := 14379, witness := RowWitness.topPrime 14327 },
  { lower := 14406, upper := 14483, witness := RowWitness.topPrime 14401 },
  { lower := 14484, upper := 14488, witness := RowWitness.topPrime 14479 },
  { lower := 14641, upper := 14662, witness := RowWitness.topPrime 14639 },
  { lower := 14792, upper := 14821, witness := RowWitness.topPrime 14783 },
  { lower := 15123, upper := 15203, witness := RowWitness.topPrime 15121 },
  { lower := 15204, upper := 15211, witness := RowWitness.topPrime 15199 },
  { lower := 15360, upper := 15441, witness := RowWitness.topPrime 15359 },
  { lower := 15442, upper := 15458, witness := RowWitness.topPrime 15439 },
  { lower := 15979, upper := 16055, witness := RowWitness.topPrime 15973 },
  { lower := 16056, upper := 16069, witness := RowWitness.topPrime 16033 },
  { lower := 16384, upper := 16419, witness := RowWitness.topPrime 16381 },
  { lower := 16428, upper := 16466, witness := RowWitness.topPrime 16427 },
  { lower := 16810, upper := 16869, witness := RowWitness.topPrime 16787 },
  { lower := 16870, upper := 16902, witness := RowWitness.topPrime 16843 },
  { lower := 17303, upper := 17380, witness := RowWitness.topPrime 17299 },
  { lower := 17408, upper := 17483, witness := RowWitness.topPrime 17401 },
  { lower := 17484, upper := 17487, witness := RowWitness.topPrime 17483 },
  { lower := 17576, upper := 17578, witness := RowWitness.topPrime 17573 },
  { lower := 17672, upper := 17743, witness := RowWitness.topPrime 17669 },
  { lower := 18490, upper := 18563, witness := RowWitness.topPrime 18481 },
  { lower := 18564, upper := 18573, witness := RowWitness.topPrime 18553 },
  { lower := 18634, upper := 18687, witness := RowWitness.topPrime 18617 },
  { lower := 18750, upper := 18805, witness := RowWitness.topPrime 18749 },
  { lower := 19208, upper := 19289, witness := RowWitness.topPrime 19207 },
  { lower := 19290, upper := 19290, witness := RowWitness.topPrime 19289 },
  { lower := 19663, upper := 19743, witness := RowWitness.topPrime 19661 },
  { lower := 19744, upper := 19745, witness := RowWitness.topPrime 19739 },
  { lower := 20172, upper := 20243, witness := RowWitness.topPrime 20161 },
  { lower := 20244, upper := 20254, witness := RowWitness.topPrime 20233 },
  { lower := 20535, upper := 20562, witness := RowWitness.topPrime 20533 },
  { lower := 20577, upper := 20617, witness := RowWitness.topPrime 20563 },
  { lower := 21316, upper := 21378, witness := RowWitness.topPrime 21313 },
  { lower := 21870, upper := 21945, witness := RowWitness.topPrime 21863 },
  { lower := 21946, upper := 21957, witness := RowWitness.topPrime 21943 },
  { lower := 21970, upper := 21986, witness := RowWitness.topPrime 21961 },
  { lower := 22472, upper := 22551, witness := RowWitness.topPrime 22469 },
  { lower := 22552, upper := 22554, witness := RowWitness.topPrime 22549 },
  { lower := 24010, upper := 24089, witness := RowWitness.topPrime 24007 },
  { lower := 24090, upper := 24119, witness := RowWitness.topPrime 24083 },
  { lower := 24334, upper := 24411, witness := RowWitness.topPrime 24329 },
  { lower := 24412, upper := 24449, witness := RowWitness.topPrime 24407 },
  { lower := 24576, upper := 24653, witness := RowWitness.topPrime 24571 },
  { lower := 24654, upper := 24658, witness := RowWitness.topPrime 24631 },
  { lower := 25000, upper := 25046, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25271, witness := RowWitness.topPrime 25189 },
  { lower := 25272, upper := 25343, witness := RowWitness.topPrime 25261 },
  { lower := 25344, upper := 25363, witness := RowWitness.topPrime 25343 },
  { lower := 26047, upper := 26093, witness := RowWitness.topPrime 26041 },
  { lower := 26411, upper := 26446, witness := RowWitness.topPrime 26407 },
  { lower := 26624, upper := 26679, witness := RowWitness.topPrime 26597 },
  { lower := 26680, upper := 26706, witness := RowWitness.topPrime 26669 },
  { lower := 26934, upper := 26978, witness := RowWitness.topPrime 26927 },
  { lower := 28125, upper := 28172, witness := RowWitness.topPrime 28123 },
  { lower := 28577, upper := 28643, witness := RowWitness.topPrime 28573 },
  { lower := 28717, upper := 28754, witness := RowWitness.topPrime 28711 },
  { lower := 29791, upper := 29850, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30328, witness := RowWitness.topPrime 30253 },
  { lower := 30758, upper := 30802, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 30981, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31275, witness := RowWitness.topPrime 31193 },
  { lower := 31276, upper := 31295, witness := RowWitness.topPrime 31271 },
  { lower := 31329, upper := 31332, witness := RowWitness.topPrime 31327 },
  { lower := 31433, upper := 31479, witness := RowWitness.topPrime 31397 },
  { lower := 31480, upper := 31505, witness := RowWitness.topPrime 31477 },
  { lower := 31974, upper := 32021, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32850, witness := RowWitness.topPrime 32803 },
  { lower := 34375, upper := 34377, witness := RowWitness.topPrime 34369 },
  { lower := 34391, upper := 34457, witness := RowWitness.topPrime 34381 },
  { lower := 34816, upper := 34889, witness := RowWitness.topPrime 34807 },
  { lower := 34890, upper := 34892, witness := RowWitness.topPrime 34883 },
  { lower := 35152, upper := 35213, witness := RowWitness.topPrime 35149 },
  { lower := 35344, upper := 35369, witness := RowWitness.topPrime 35339 },
  { lower := 36517, upper := 36579, witness := RowWitness.topPrime 36497 },
  { lower := 36580, upper := 36583, witness := RowWitness.topPrime 36571 },
  { lower := 37210, upper := 37261, witness := RowWitness.topPrime 37201 },
  { lower := 37349, upper := 37385, witness := RowWitness.topPrime 37339 },
  { lower := 37500, upper := 37528, witness := RowWitness.topPrime 37493 },
  { lower := 37553, upper := 37582, witness := RowWitness.topPrime 37549 },
  { lower := 39326, upper := 39405, witness := RowWitness.topPrime 39323 },
  { lower := 39406, upper := 39408, witness := RowWitness.topPrime 39397 },
  { lower := 40401, upper := 40410, witness := RowWitness.topPrime 40387 },
  { lower := 40960, upper := 41013, witness := RowWitness.topPrime 40949 },
  { lower := 41772, upper := 41825, witness := RowWitness.topPrime 41771 },
  { lower := 43750, upper := 43769, witness := RowWitness.topPrime 43721 },
  { lower := 44944, upper := 44972, witness := RowWitness.topPrime 44939 },
  { lower := 48013, upper := 48043, witness := RowWitness.topPrime 47981 },
  { lower := 48734, upper := 48750, witness := RowWitness.topPrime 48733 },
  { lower := 48778, upper := 48816, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49212, witness := RowWitness.topPrime 49139 },
  { lower := 50000, upper := 50010, witness := RowWitness.topPrime 49999 },
  { lower := 50421, upper := 50492, witness := RowWitness.topPrime 50417 },
  { lower := 53290, upper := 53330, witness := RowWitness.topPrime 53281 },
  { lower := 53371, upper := 53372, witness := RowWitness.topPrime 53359 },
  { lower := 58619, upper := 58646, witness := RowWitness.topPrime 58613 },
  { lower := 59582, upper := 59618, witness := RowWitness.topPrime 59581 },
  { lower := 63948, upper := 63951, witness := RowWitness.topPrime 63929 },
  { lower := 65536, upper := 65603, witness := RowWitness.topPrime 65521 },
  { lower := 65604, upper := 65618, witness := RowWitness.topPrime 65599 },
  { lower := 68651, upper := 68672, witness := RowWitness.topPrime 68639 },
  { lower := 73205, upper := 73249, witness := RowWitness.topPrime 73189 },
  { lower := 73728, upper := 73777, witness := RowWitness.topPrime 73727 },
  { lower := 85293, upper := 85341, witness := RowWitness.topPrime 85259 },
  { lower := 85342, upper := 85346, witness := RowWitness.topPrime 85333 },
  { lower := 137842, upper := 137863, witness := RowWitness.topPrime 137831 },
  { lower := 146410, upper := 146416, witness := RowWitness.topPrime 146407 },
  { lower := 148955, upper := 148959, witness := RowWitness.topPrime 148949 },
  { lower := 327701, upper := 327762, witness := RowWitness.topPrime 327689 }
]

def row083_layers : List CoverLayer := [
  { lower := 6806, upper := 13612, M := 26 },
  { lower := 13612, upper := 27224, M := 22 },
  { lower := 27224, upper := 54448, M := 19 },
  { lower := 54448, upper := 108896, M := 16 },
  { lower := 108896, upper := 217792, M := 13 },
  { lower := 217792, upper := 435584, M := 11 },
  { lower := 435584, upper := 871168, M := 9 },
  { lower := 871168, upper := 1742336, M := 8 },
  { lower := 1742336, upper := 3484672, M := 7 },
  { lower := 3484672, upper := 6969344, M := 6 },
  { lower := 6969344, upper := 13938688, M := 5 },
  { lower := 13938688, upper := 27877376, M := 4 },
  { lower := 27877376, upper := 55754752, M := 4 },
  { lower := 55754752, upper := 111509504, M := 3 },
  { lower := 111509504, upper := 223019008, M := 3 },
  { lower := 223019008, upper := 446038016, M := 2 },
  { lower := 446038016, upper := 892076032, M := 2 },
  { lower := 892076032, upper := 1784152064, M := 2 },
  { lower := 1784152064, upper := 3568304128, M := 2 },
  { lower := 3568304128, upper := 7136608256, M := 1 },
  { lower := 7136608256, upper := 10000000000, M := 1 }
]

def row083 : FiniteCoverRow := {
  height := row083_height,
  goods := row083_goods,
  layers := row083_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_good000_checked :
    goodSegmentCheck 83 27 57
      { lower := 168, upper := 249, witness := RowWitness.topPrime 167 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good001_checked :
    goodSegmentCheck 83 27 57
      { lower := 250, upper := 323, witness := RowWitness.topPrime 241 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good002_checked :
    goodSegmentCheck 83 27 57
      { lower := 324, upper := 399, witness := RowWitness.topPrime 317 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good003_checked :
    goodSegmentCheck 83 27 57
      { lower := 400, upper := 479, witness := RowWitness.topPrime 397 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good004_checked :
    goodSegmentCheck 83 27 57
      { lower := 480, upper := 561, witness := RowWitness.topPrime 479 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good005_checked :
    goodSegmentCheck 83 27 57
      { lower := 562, upper := 639, witness := RowWitness.topPrime 557 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good006_checked :
    goodSegmentCheck 83 27 57
      { lower := 640, upper := 713, witness := RowWitness.topPrime 631 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good007_checked :
    goodSegmentCheck 83 27 57
      { lower := 714, upper := 791, witness := RowWitness.topPrime 709 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good008_checked :
    goodSegmentCheck 83 27 57
      { lower := 792, upper := 869, witness := RowWitness.topPrime 787 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good009_checked :
    goodSegmentCheck 83 27 57
      { lower := 870, upper := 945, witness := RowWitness.topPrime 863 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good010_checked :
    goodSegmentCheck 83 27 57
      { lower := 946, upper := 1023, witness := RowWitness.topPrime 941 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good011_checked :
    goodSegmentCheck 83 27 57
      { lower := 1024, upper := 1103, witness := RowWitness.topPrime 1021 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good012_checked :
    goodSegmentCheck 83 27 57
      { lower := 1104, upper := 1185, witness := RowWitness.topPrime 1103 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good013_checked :
    goodSegmentCheck 83 27 57
      { lower := 1186, upper := 1263, witness := RowWitness.topPrime 1181 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good014_checked :
    goodSegmentCheck 83 27 57
      { lower := 1264, upper := 1341, witness := RowWitness.topPrime 1259 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good015_checked :
    goodSegmentCheck 83 27 57
      { lower := 1342, upper := 1409, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_good016_checked :
    goodSegmentCheck 83 27 57
      { lower := 1410, upper := 1491, witness := RowWitness.topPrime 1409 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good017_checked :
    goodSegmentCheck 83 27 57
      { lower := 1492, upper := 1571, witness := RowWitness.topPrime 1489 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good018_checked :
    goodSegmentCheck 83 27 57
      { lower := 1572, upper := 1653, witness := RowWitness.topPrime 1571 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good019_checked :
    goodSegmentCheck 83 27 57
      { lower := 1654, upper := 1719, witness := RowWitness.topPrime 1637 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good020_checked :
    goodSegmentCheck 83 27 57
      { lower := 1720, upper := 1791, witness := RowWitness.topPrime 1709 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good021_checked :
    goodSegmentCheck 83 27 57
      { lower := 1792, upper := 1871, witness := RowWitness.topPrime 1789 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good022_checked :
    goodSegmentCheck 83 27 57
      { lower := 1872, upper := 1953, witness := RowWitness.topPrime 1871 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good023_checked :
    goodSegmentCheck 83 27 57
      { lower := 1954, upper := 2033, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good024_checked :
    goodSegmentCheck 83 27 57
      { lower := 2034, upper := 2111, witness := RowWitness.topPrime 2029 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good025_checked :
    goodSegmentCheck 83 27 57
      { lower := 2112, upper := 2193, witness := RowWitness.topPrime 2111 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good026_checked :
    goodSegmentCheck 83 27 57
      { lower := 2194, upper := 2261, witness := RowWitness.topPrime 2179 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good027_checked :
    goodSegmentCheck 83 27 57
      { lower := 2262, upper := 2333, witness := RowWitness.topPrime 2251 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good028_checked :
    goodSegmentCheck 83 27 57
      { lower := 2334, upper := 2415, witness := RowWitness.topPrime 2333 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good029_checked :
    goodSegmentCheck 83 27 57
      { lower := 2416, upper := 2493, witness := RowWitness.topPrime 2411 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good030_checked :
    goodSegmentCheck 83 27 57
      { lower := 2494, upper := 2559, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good031_checked :
    goodSegmentCheck 83 27 57
      { lower := 2560, upper := 2639, witness := RowWitness.topPrime 2557 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_good032_checked :
    goodSegmentCheck 83 27 57
      { lower := 2640, upper := 2715, witness := RowWitness.topPrime 2633 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good033_checked :
    goodSegmentCheck 83 27 57
      { lower := 2716, upper := 2795, witness := RowWitness.topPrime 2713 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good034_checked :
    goodSegmentCheck 83 27 57
      { lower := 2796, upper := 2873, witness := RowWitness.topPrime 2791 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good035_checked :
    goodSegmentCheck 83 27 57
      { lower := 2874, upper := 2943, witness := RowWitness.topPrime 2861 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good036_checked :
    goodSegmentCheck 83 27 57
      { lower := 2944, upper := 3021, witness := RowWitness.topPrime 2939 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good037_checked :
    goodSegmentCheck 83 27 57
      { lower := 3022, upper := 3101, witness := RowWitness.topPrime 3019 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good038_checked :
    goodSegmentCheck 83 27 57
      { lower := 3102, upper := 3171, witness := RowWitness.topPrime 3089 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good039_checked :
    goodSegmentCheck 83 27 57
      { lower := 3172, upper := 3251, witness := RowWitness.topPrime 3169 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good040_checked :
    goodSegmentCheck 83 27 57
      { lower := 3252, upper := 3333, witness := RowWitness.topPrime 3251 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good041_checked :
    goodSegmentCheck 83 27 57
      { lower := 3334, upper := 3413, witness := RowWitness.topPrime 3331 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good042_checked :
    goodSegmentCheck 83 27 57
      { lower := 3414, upper := 3495, witness := RowWitness.topPrime 3413 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good043_checked :
    goodSegmentCheck 83 27 57
      { lower := 3496, upper := 3573, witness := RowWitness.topPrime 3491 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good044_checked :
    goodSegmentCheck 83 27 57
      { lower := 3574, upper := 3653, witness := RowWitness.topPrime 3571 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good045_checked :
    goodSegmentCheck 83 27 57
      { lower := 3654, upper := 3725, witness := RowWitness.topPrime 3643 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good046_checked :
    goodSegmentCheck 83 27 57
      { lower := 3726, upper := 3801, witness := RowWitness.topPrime 3719 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good047_checked :
    goodSegmentCheck 83 27 57
      { lower := 3802, upper := 3879, witness := RowWitness.topPrime 3797 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_good048_checked :
    goodSegmentCheck 83 27 57
      { lower := 3880, upper := 3959, witness := RowWitness.topPrime 3877 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good049_checked :
    goodSegmentCheck 83 27 57
      { lower := 3960, upper := 4029, witness := RowWitness.topPrime 3947 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good050_checked :
    goodSegmentCheck 83 27 57
      { lower := 4030, upper := 4109, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good051_checked :
    goodSegmentCheck 83 27 57
      { lower := 4110, upper := 4181, witness := RowWitness.topPrime 4099 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good052_checked :
    goodSegmentCheck 83 27 57
      { lower := 4182, upper := 4259, witness := RowWitness.topPrime 4177 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good053_checked :
    goodSegmentCheck 83 27 57
      { lower := 4260, upper := 4341, witness := RowWitness.topPrime 4259 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good054_checked :
    goodSegmentCheck 83 27 57
      { lower := 4342, upper := 4421, witness := RowWitness.topPrime 4339 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good055_checked :
    goodSegmentCheck 83 27 57
      { lower := 4422, upper := 4503, witness := RowWitness.topPrime 4421 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good056_checked :
    goodSegmentCheck 83 27 57
      { lower := 4504, upper := 4575, witness := RowWitness.topPrime 4493 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good057_checked :
    goodSegmentCheck 83 27 57
      { lower := 4576, upper := 4649, witness := RowWitness.topPrime 4567 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good058_checked :
    goodSegmentCheck 83 27 57
      { lower := 4650, upper := 4731, witness := RowWitness.topPrime 4649 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good059_checked :
    goodSegmentCheck 83 27 57
      { lower := 4732, upper := 4811, witness := RowWitness.topPrime 4729 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good060_checked :
    goodSegmentCheck 83 27 57
      { lower := 4812, upper := 4883, witness := RowWitness.topPrime 4801 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good061_checked :
    goodSegmentCheck 83 27 57
      { lower := 4884, upper := 4959, witness := RowWitness.topPrime 4877 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good062_checked :
    goodSegmentCheck 83 27 57
      { lower := 4960, upper := 5039, witness := RowWitness.topPrime 4957 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good063_checked :
    goodSegmentCheck 83 27 57
      { lower := 5040, upper := 5121, witness := RowWitness.topPrime 5039 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_good064_checked :
    goodSegmentCheck 83 27 57
      { lower := 5122, upper := 5201, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good065_checked :
    goodSegmentCheck 83 27 57
      { lower := 5202, upper := 5279, witness := RowWitness.topPrime 5197 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good066_checked :
    goodSegmentCheck 83 27 57
      { lower := 5280, upper := 5361, witness := RowWitness.topPrime 5279 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good067_checked :
    goodSegmentCheck 83 27 57
      { lower := 5362, upper := 5433, witness := RowWitness.topPrime 5351 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good068_checked :
    goodSegmentCheck 83 27 57
      { lower := 5434, upper := 5513, witness := RowWitness.topPrime 5431 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good069_checked :
    goodSegmentCheck 83 27 57
      { lower := 5514, upper := 5589, witness := RowWitness.topPrime 5507 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good070_checked :
    goodSegmentCheck 83 27 57
      { lower := 5590, upper := 5663, witness := RowWitness.topPrime 5581 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good071_checked :
    goodSegmentCheck 83 27 57
      { lower := 5664, upper := 5741, witness := RowWitness.topPrime 5659 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good072_checked :
    goodSegmentCheck 83 27 57
      { lower := 5742, upper := 5823, witness := RowWitness.topPrime 5741 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good073_checked :
    goodSegmentCheck 83 27 57
      { lower := 5824, upper := 5903, witness := RowWitness.topPrime 5821 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good074_checked :
    goodSegmentCheck 83 27 57
      { lower := 5904, upper := 5985, witness := RowWitness.topPrime 5903 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good075_checked :
    goodSegmentCheck 83 27 57
      { lower := 5986, upper := 6063, witness := RowWitness.topPrime 5981 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good076_checked :
    goodSegmentCheck 83 27 57
      { lower := 6064, upper := 6135, witness := RowWitness.topPrime 6053 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good077_checked :
    goodSegmentCheck 83 27 57
      { lower := 6136, upper := 6215, witness := RowWitness.topPrime 6133 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good078_checked :
    goodSegmentCheck 83 27 57
      { lower := 6216, upper := 6293, witness := RowWitness.topPrime 6211 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good079_checked :
    goodSegmentCheck 83 27 57
      { lower := 6294, upper := 6369, witness := RowWitness.topPrime 6287 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_good080_checked :
    goodSegmentCheck 83 27 57
      { lower := 6370, upper := 6449, witness := RowWitness.topPrime 6367 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good081_checked :
    goodSegmentCheck 83 27 57
      { lower := 6450, upper := 6531, witness := RowWitness.topPrime 6449 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good082_checked :
    goodSegmentCheck 83 27 57
      { lower := 6532, upper := 6611, witness := RowWitness.topPrime 6529 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good083_checked :
    goodSegmentCheck 83 27 57
      { lower := 6612, upper := 6689, witness := RowWitness.topPrime 6607 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good084_checked :
    goodSegmentCheck 83 27 57
      { lower := 6690, upper := 6771, witness := RowWitness.topPrime 6689 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good085_checked :
    goodSegmentCheck 83 27 57
      { lower := 6772, upper := 6809, witness := RowWitness.topPrime 6763 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good086_checked :
    goodSegmentCheck 83 27 57
      { lower := 6859, upper := 6939, witness := RowWitness.topPrime 6857 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good087_checked :
    goodSegmentCheck 83 27 57
      { lower := 6940, upper := 6959, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good088_checked :
    goodSegmentCheck 83 27 57
      { lower := 6962, upper := 7018, witness := RowWitness.topPrime 6961 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good089_checked :
    goodSegmentCheck 83 27 57
      { lower := 7203, upper := 7275, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good090_checked :
    goodSegmentCheck 83 27 57
      { lower := 7276, upper := 7307, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good091_checked :
    goodSegmentCheck 83 27 57
      { lower := 7406, upper := 7475, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good092_checked :
    goodSegmentCheck 83 27 57
      { lower := 7476, upper := 7488, witness := RowWitness.topPrime 7459 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good093_checked :
    goodSegmentCheck 83 27 57
      { lower := 7500, upper := 7581, witness := RowWitness.topPrime 7499 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good094_checked :
    goodSegmentCheck 83 27 57
      { lower := 7582, upper := 7651, witness := RowWitness.topPrime 7577 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good095_checked :
    goodSegmentCheck 83 27 57
      { lower := 7688, upper := 7762, witness := RowWitness.topPrime 7687 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_good096_checked :
    goodSegmentCheck 83 27 57
      { lower := 7935, upper := 8015, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good097_checked :
    goodSegmentCheck 83 27 57
      { lower := 8016, upper := 8068, witness := RowWitness.topPrime 8011 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good098_checked :
    goodSegmentCheck 83 27 57
      { lower := 8192, upper := 8207, witness := RowWitness.topPrime 8191 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good099_checked :
    goodSegmentCheck 83 27 57
      { lower := 8214, upper := 8291, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good100_checked :
    goodSegmentCheck 83 27 57
      { lower := 8292, upper := 8296, witness := RowWitness.topPrime 8291 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good101_checked :
    goodSegmentCheck 83 27 57
      { lower := 8303, upper := 8314, witness := RowWitness.topPrime 8297 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good102_checked :
    goodSegmentCheck 83 27 57
      { lower := 8410, upper := 8471, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good103_checked :
    goodSegmentCheck 83 27 57
      { lower := 8472, upper := 8509, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good104_checked :
    goodSegmentCheck 83 27 57
      { lower := 8649, upper := 8657, witness := RowWitness.topPrime 8647 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good105_checked :
    goodSegmentCheck 83 27 57
      { lower := 8664, upper := 8745, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good106_checked :
    goodSegmentCheck 83 27 57
      { lower := 8746, upper := 8746, witness := RowWitness.topPrime 8741 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good107_checked :
    goodSegmentCheck 83 27 57
      { lower := 8748, upper := 8829, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good108_checked :
    goodSegmentCheck 83 27 57
      { lower := 8830, upper := 8832, witness := RowWitness.topPrime 8821 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good109_checked :
    goodSegmentCheck 83 27 57
      { lower := 8836, upper := 8870, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good110_checked :
    goodSegmentCheck 83 27 57
      { lower := 8918, upper := 8918, witness := RowWitness.topPrime 8893 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good111_checked :
    goodSegmentCheck 83 27 57
      { lower := 8978, upper := 9053, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_good112_checked :
    goodSegmentCheck 83 27 57
      { lower := 9054, upper := 9075, witness := RowWitness.topPrime 9049 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good113_checked :
    goodSegmentCheck 83 27 57
      { lower := 9245, upper := 9323, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good114_checked :
    goodSegmentCheck 83 27 57
      { lower := 9324, upper := 9333, witness := RowWitness.topPrime 9323 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good115_checked :
    goodSegmentCheck 83 27 57
      { lower := 9375, upper := 9453, witness := RowWitness.topPrime 9371 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good116_checked :
    goodSegmentCheck 83 27 57
      { lower := 9454, upper := 9457, witness := RowWitness.topPrime 9439 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good117_checked :
    goodSegmentCheck 83 27 57
      { lower := 9522, upper := 9559, witness := RowWitness.topPrime 9521 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good118_checked :
    goodSegmentCheck 83 27 57
      { lower := 9583, upper := 9633, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good119_checked :
    goodSegmentCheck 83 27 57
      { lower := 9634, upper := 9686, witness := RowWitness.topPrime 9631 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good120_checked :
    goodSegmentCheck 83 27 57
      { lower := 10051, upper := 10121, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good121_checked :
    goodSegmentCheck 83 27 57
      { lower := 10122, upper := 10168, witness := RowWitness.topPrime 10111 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good122_checked :
    goodSegmentCheck 83 27 57
      { lower := 10240, upper := 10288, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good123_checked :
    goodSegmentCheck 83 27 57
      { lower := 10580, upper := 10649, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good124_checked :
    goodSegmentCheck 83 27 57
      { lower := 10650, upper := 10721, witness := RowWitness.topPrime 10639 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good125_checked :
    goodSegmentCheck 83 27 57
      { lower := 10722, upper := 10730, witness := RowWitness.topPrime 10711 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good126_checked :
    goodSegmentCheck 83 27 57
      { lower := 10935, upper := 10991, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good127_checked :
    goodSegmentCheck 83 27 57
      { lower := 10992, upper := 11034, witness := RowWitness.topPrime 10987 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_good128_checked :
    goodSegmentCheck 83 27 57
      { lower := 11045, upper := 11067, witness := RowWitness.topPrime 11027 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good129_checked :
    goodSegmentCheck 83 27 57
      { lower := 11094, upper := 11175, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good130_checked :
    goodSegmentCheck 83 27 57
      { lower := 11176, upper := 11191, witness := RowWitness.topPrime 11173 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good131_checked :
    goodSegmentCheck 83 27 57
      { lower := 11236, upper := 11245, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good132_checked :
    goodSegmentCheck 83 27 57
      { lower := 11250, upper := 11325, witness := RowWitness.topPrime 11243 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good133_checked :
    goodSegmentCheck 83 27 57
      { lower := 11326, upper := 11332, witness := RowWitness.topPrime 11321 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good134_checked :
    goodSegmentCheck 83 27 57
      { lower := 11664, upper := 11720, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good135_checked :
    goodSegmentCheck 83 27 57
      { lower := 11774, upper := 11825, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good136_checked :
    goodSegmentCheck 83 27 57
      { lower := 11826, upper := 11856, witness := RowWitness.topPrime 11821 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good137_checked :
    goodSegmentCheck 83 27 57
      { lower := 12005, upper := 12061, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good138_checked :
    goodSegmentCheck 83 27 57
      { lower := 12321, upper := 12370, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good139_checked :
    goodSegmentCheck 83 27 57
      { lower := 12393, upper := 12403, witness := RowWitness.topPrime 12391 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good140_checked :
    goodSegmentCheck 83 27 57
      { lower := 12493, upper := 12573, witness := RowWitness.topPrime 12491 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good141_checked :
    goodSegmentCheck 83 27 57
      { lower := 12574, upper := 12575, witness := RowWitness.topPrime 12569 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good142_checked :
    goodSegmentCheck 83 27 57
      { lower := 12696, upper := 12697, witness := RowWitness.topPrime 12689 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good143_checked :
    goodSegmentCheck 83 27 57
      { lower := 13125, upper := 13203, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_good144_checked :
    goodSegmentCheck 83 27 57
      { lower := 13204, upper := 13207, witness := RowWitness.topPrime 13187 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good145_checked :
    goodSegmentCheck 83 27 57
      { lower := 13225, upper := 13301, witness := RowWitness.topPrime 13219 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good146_checked :
    goodSegmentCheck 83 27 57
      { lower := 13302, upper := 13307, witness := RowWitness.topPrime 13297 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good147_checked :
    goodSegmentCheck 83 27 57
      { lower := 13310, upper := 13391, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good148_checked :
    goodSegmentCheck 83 27 57
      { lower := 13392, upper := 13392, witness := RowWitness.topPrime 13381 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good149_checked :
    goodSegmentCheck 83 27 57
      { lower := 13454, upper := 13533, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good150_checked :
    goodSegmentCheck 83 27 57
      { lower := 13534, upper := 13538, witness := RowWitness.topPrime 13523 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good151_checked :
    goodSegmentCheck 83 27 57
      { lower := 13718, upper := 13793, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good152_checked :
    goodSegmentCheck 83 27 57
      { lower := 13794, upper := 13800, witness := RowWitness.topPrime 13789 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good153_checked :
    goodSegmentCheck 83 27 57
      { lower := 13924, upper := 13933, witness := RowWitness.topPrime 13921 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good154_checked :
    goodSegmentCheck 83 27 57
      { lower := 14336, upper := 14379, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good155_checked :
    goodSegmentCheck 83 27 57
      { lower := 14406, upper := 14483, witness := RowWitness.topPrime 14401 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good156_checked :
    goodSegmentCheck 83 27 57
      { lower := 14484, upper := 14488, witness := RowWitness.topPrime 14479 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good157_checked :
    goodSegmentCheck 83 27 57
      { lower := 14641, upper := 14662, witness := RowWitness.topPrime 14639 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good158_checked :
    goodSegmentCheck 83 27 57
      { lower := 14792, upper := 14821, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good159_checked :
    goodSegmentCheck 83 27 57
      { lower := 15123, upper := 15203, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_good160_checked :
    goodSegmentCheck 83 27 57
      { lower := 15204, upper := 15211, witness := RowWitness.topPrime 15199 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good161_checked :
    goodSegmentCheck 83 27 57
      { lower := 15360, upper := 15441, witness := RowWitness.topPrime 15359 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good162_checked :
    goodSegmentCheck 83 27 57
      { lower := 15442, upper := 15458, witness := RowWitness.topPrime 15439 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good163_checked :
    goodSegmentCheck 83 27 57
      { lower := 15979, upper := 16055, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good164_checked :
    goodSegmentCheck 83 27 57
      { lower := 16056, upper := 16069, witness := RowWitness.topPrime 16033 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good165_checked :
    goodSegmentCheck 83 27 57
      { lower := 16384, upper := 16419, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good166_checked :
    goodSegmentCheck 83 27 57
      { lower := 16428, upper := 16466, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good167_checked :
    goodSegmentCheck 83 27 57
      { lower := 16810, upper := 16869, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good168_checked :
    goodSegmentCheck 83 27 57
      { lower := 16870, upper := 16902, witness := RowWitness.topPrime 16843 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good169_checked :
    goodSegmentCheck 83 27 57
      { lower := 17303, upper := 17380, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good170_checked :
    goodSegmentCheck 83 27 57
      { lower := 17408, upper := 17483, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good171_checked :
    goodSegmentCheck 83 27 57
      { lower := 17484, upper := 17487, witness := RowWitness.topPrime 17483 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good172_checked :
    goodSegmentCheck 83 27 57
      { lower := 17576, upper := 17578, witness := RowWitness.topPrime 17573 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good173_checked :
    goodSegmentCheck 83 27 57
      { lower := 17672, upper := 17743, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good174_checked :
    goodSegmentCheck 83 27 57
      { lower := 18490, upper := 18563, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good175_checked :
    goodSegmentCheck 83 27 57
      { lower := 18564, upper := 18573, witness := RowWitness.topPrime 18553 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_good176_checked :
    goodSegmentCheck 83 27 57
      { lower := 18634, upper := 18687, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good177_checked :
    goodSegmentCheck 83 27 57
      { lower := 18750, upper := 18805, witness := RowWitness.topPrime 18749 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good178_checked :
    goodSegmentCheck 83 27 57
      { lower := 19208, upper := 19289, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good179_checked :
    goodSegmentCheck 83 27 57
      { lower := 19290, upper := 19290, witness := RowWitness.topPrime 19289 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good180_checked :
    goodSegmentCheck 83 27 57
      { lower := 19663, upper := 19743, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good181_checked :
    goodSegmentCheck 83 27 57
      { lower := 19744, upper := 19745, witness := RowWitness.topPrime 19739 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good182_checked :
    goodSegmentCheck 83 27 57
      { lower := 20172, upper := 20243, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good183_checked :
    goodSegmentCheck 83 27 57
      { lower := 20244, upper := 20254, witness := RowWitness.topPrime 20233 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good184_checked :
    goodSegmentCheck 83 27 57
      { lower := 20535, upper := 20562, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good185_checked :
    goodSegmentCheck 83 27 57
      { lower := 20577, upper := 20617, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good186_checked :
    goodSegmentCheck 83 27 57
      { lower := 21316, upper := 21378, witness := RowWitness.topPrime 21313 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good187_checked :
    goodSegmentCheck 83 27 57
      { lower := 21870, upper := 21945, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good188_checked :
    goodSegmentCheck 83 27 57
      { lower := 21946, upper := 21957, witness := RowWitness.topPrime 21943 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good189_checked :
    goodSegmentCheck 83 27 57
      { lower := 21970, upper := 21986, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good190_checked :
    goodSegmentCheck 83 27 57
      { lower := 22472, upper := 22551, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good191_checked :
    goodSegmentCheck 83 27 57
      { lower := 22552, upper := 22554, witness := RowWitness.topPrime 22549 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_good192_checked :
    goodSegmentCheck 83 27 57
      { lower := 24010, upper := 24089, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good193_checked :
    goodSegmentCheck 83 27 57
      { lower := 24090, upper := 24119, witness := RowWitness.topPrime 24083 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good194_checked :
    goodSegmentCheck 83 27 57
      { lower := 24334, upper := 24411, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good195_checked :
    goodSegmentCheck 83 27 57
      { lower := 24412, upper := 24449, witness := RowWitness.topPrime 24407 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good196_checked :
    goodSegmentCheck 83 27 57
      { lower := 24576, upper := 24653, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good197_checked :
    goodSegmentCheck 83 27 57
      { lower := 24654, upper := 24658, witness := RowWitness.topPrime 24631 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good198_checked :
    goodSegmentCheck 83 27 57
      { lower := 25000, upper := 25046, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good199_checked :
    goodSegmentCheck 83 27 57
      { lower := 25215, upper := 25271, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good200_checked :
    goodSegmentCheck 83 27 57
      { lower := 25272, upper := 25343, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good201_checked :
    goodSegmentCheck 83 27 57
      { lower := 25344, upper := 25363, witness := RowWitness.topPrime 25343 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good202_checked :
    goodSegmentCheck 83 27 57
      { lower := 26047, upper := 26093, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good203_checked :
    goodSegmentCheck 83 27 57
      { lower := 26411, upper := 26446, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good204_checked :
    goodSegmentCheck 83 27 57
      { lower := 26624, upper := 26679, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good205_checked :
    goodSegmentCheck 83 27 57
      { lower := 26680, upper := 26706, witness := RowWitness.topPrime 26669 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good206_checked :
    goodSegmentCheck 83 27 57
      { lower := 26934, upper := 26978, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good207_checked :
    goodSegmentCheck 83 27 57
      { lower := 28125, upper := 28172, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_good208_checked :
    goodSegmentCheck 83 27 57
      { lower := 28577, upper := 28643, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good209_checked :
    goodSegmentCheck 83 27 57
      { lower := 28717, upper := 28754, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good210_checked :
    goodSegmentCheck 83 27 57
      { lower := 29791, upper := 29850, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good211_checked :
    goodSegmentCheck 83 27 57
      { lower := 30258, upper := 30328, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good212_checked :
    goodSegmentCheck 83 27 57
      { lower := 30758, upper := 30802, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good213_checked :
    goodSegmentCheck 83 27 57
      { lower := 30926, upper := 30981, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good214_checked :
    goodSegmentCheck 83 27 57
      { lower := 31213, upper := 31275, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good215_checked :
    goodSegmentCheck 83 27 57
      { lower := 31276, upper := 31295, witness := RowWitness.topPrime 31271 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good216_checked :
    goodSegmentCheck 83 27 57
      { lower := 31329, upper := 31332, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good217_checked :
    goodSegmentCheck 83 27 57
      { lower := 31433, upper := 31479, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good218_checked :
    goodSegmentCheck 83 27 57
      { lower := 31480, upper := 31505, witness := RowWitness.topPrime 31477 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good219_checked :
    goodSegmentCheck 83 27 57
      { lower := 31974, upper := 32021, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good220_checked :
    goodSegmentCheck 83 27 57
      { lower := 32805, upper := 32850, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good221_checked :
    goodSegmentCheck 83 27 57
      { lower := 34375, upper := 34377, witness := RowWitness.topPrime 34369 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good222_checked :
    goodSegmentCheck 83 27 57
      { lower := 34391, upper := 34457, witness := RowWitness.topPrime 34381 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good223_checked :
    goodSegmentCheck 83 27 57
      { lower := 34816, upper := 34889, witness := RowWitness.topPrime 34807 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_good224_checked :
    goodSegmentCheck 83 27 57
      { lower := 34890, upper := 34892, witness := RowWitness.topPrime 34883 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good225_checked :
    goodSegmentCheck 83 27 57
      { lower := 35152, upper := 35213, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good226_checked :
    goodSegmentCheck 83 27 57
      { lower := 35344, upper := 35369, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good227_checked :
    goodSegmentCheck 83 27 57
      { lower := 36517, upper := 36579, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good228_checked :
    goodSegmentCheck 83 27 57
      { lower := 36580, upper := 36583, witness := RowWitness.topPrime 36571 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good229_checked :
    goodSegmentCheck 83 27 57
      { lower := 37210, upper := 37261, witness := RowWitness.topPrime 37201 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good230_checked :
    goodSegmentCheck 83 27 57
      { lower := 37349, upper := 37385, witness := RowWitness.topPrime 37339 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good231_checked :
    goodSegmentCheck 83 27 57
      { lower := 37500, upper := 37528, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good232_checked :
    goodSegmentCheck 83 27 57
      { lower := 37553, upper := 37582, witness := RowWitness.topPrime 37549 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good233_checked :
    goodSegmentCheck 83 27 57
      { lower := 39326, upper := 39405, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good234_checked :
    goodSegmentCheck 83 27 57
      { lower := 39406, upper := 39408, witness := RowWitness.topPrime 39397 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good235_checked :
    goodSegmentCheck 83 27 57
      { lower := 40401, upper := 40410, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good236_checked :
    goodSegmentCheck 83 27 57
      { lower := 40960, upper := 41013, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good237_checked :
    goodSegmentCheck 83 27 57
      { lower := 41772, upper := 41825, witness := RowWitness.topPrime 41771 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good238_checked :
    goodSegmentCheck 83 27 57
      { lower := 43750, upper := 43769, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good239_checked :
    goodSegmentCheck 83 27 57
      { lower := 44944, upper := 44972, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_good240_checked :
    goodSegmentCheck 83 27 57
      { lower := 48013, upper := 48043, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good241_checked :
    goodSegmentCheck 83 27 57
      { lower := 48734, upper := 48750, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good242_checked :
    goodSegmentCheck 83 27 57
      { lower := 48778, upper := 48816, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good243_checked :
    goodSegmentCheck 83 27 57
      { lower := 49152, upper := 49212, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good244_checked :
    goodSegmentCheck 83 27 57
      { lower := 50000, upper := 50010, witness := RowWitness.topPrime 49999 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good245_checked :
    goodSegmentCheck 83 27 57
      { lower := 50421, upper := 50492, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good246_checked :
    goodSegmentCheck 83 27 57
      { lower := 53290, upper := 53330, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good247_checked :
    goodSegmentCheck 83 27 57
      { lower := 53371, upper := 53372, witness := RowWitness.topPrime 53359 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good248_checked :
    goodSegmentCheck 83 27 57
      { lower := 58619, upper := 58646, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good249_checked :
    goodSegmentCheck 83 27 57
      { lower := 59582, upper := 59618, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good250_checked :
    goodSegmentCheck 83 27 57
      { lower := 63948, upper := 63951, witness := RowWitness.topPrime 63929 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good251_checked :
    goodSegmentCheck 83 27 57
      { lower := 65536, upper := 65603, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good252_checked :
    goodSegmentCheck 83 27 57
      { lower := 65604, upper := 65618, witness := RowWitness.topPrime 65599 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good253_checked :
    goodSegmentCheck 83 27 57
      { lower := 68651, upper := 68672, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good254_checked :
    goodSegmentCheck 83 27 57
      { lower := 73205, upper := 73249, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good255_checked :
    goodSegmentCheck 83 27 57
      { lower := 73728, upper := 73777, witness := RowWitness.topPrime 73727 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good251_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good252_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good253_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good254_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good255_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_good256_checked :
    goodSegmentCheck 83 27 57
      { lower := 85293, upper := 85341, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good257_checked :
    goodSegmentCheck 83 27 57
      { lower := 85342, upper := 85346, witness := RowWitness.topPrime 85333 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good258_checked :
    goodSegmentCheck 83 27 57
      { lower := 137842, upper := 137863, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good259_checked :
    goodSegmentCheck 83 27 57
      { lower := 146410, upper := 146416, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good260_checked :
    goodSegmentCheck 83 27 57
      { lower := 148955, upper := 148959, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good261_checked :
    goodSegmentCheck 83 27 57
      { lower := 327701, upper := 327762, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good258_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good259_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good260_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good261_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_goods_checked :
    row083.goods.all (goodSegmentCheck row083.height.i row083.height.r row083.height.s) = true := by
  change row083_goods.all (goodSegmentCheck 83 27 57) = true
  simp only [row083_goods, List.all_cons, List.all_nil,
    row083_good000_checked,
    row083_good001_checked,
    row083_good002_checked,
    row083_good003_checked,
    row083_good004_checked,
    row083_good005_checked,
    row083_good006_checked,
    row083_good007_checked,
    row083_good008_checked,
    row083_good009_checked,
    row083_good010_checked,
    row083_good011_checked,
    row083_good012_checked,
    row083_good013_checked,
    row083_good014_checked,
    row083_good015_checked,
    row083_good016_checked,
    row083_good017_checked,
    row083_good018_checked,
    row083_good019_checked,
    row083_good020_checked,
    row083_good021_checked,
    row083_good022_checked,
    row083_good023_checked,
    row083_good024_checked,
    row083_good025_checked,
    row083_good026_checked,
    row083_good027_checked,
    row083_good028_checked,
    row083_good029_checked,
    row083_good030_checked,
    row083_good031_checked,
    row083_good032_checked,
    row083_good033_checked,
    row083_good034_checked,
    row083_good035_checked,
    row083_good036_checked,
    row083_good037_checked,
    row083_good038_checked,
    row083_good039_checked,
    row083_good040_checked,
    row083_good041_checked,
    row083_good042_checked,
    row083_good043_checked,
    row083_good044_checked,
    row083_good045_checked,
    row083_good046_checked,
    row083_good047_checked,
    row083_good048_checked,
    row083_good049_checked,
    row083_good050_checked,
    row083_good051_checked,
    row083_good052_checked,
    row083_good053_checked,
    row083_good054_checked,
    row083_good055_checked,
    row083_good056_checked,
    row083_good057_checked,
    row083_good058_checked,
    row083_good059_checked,
    row083_good060_checked,
    row083_good061_checked,
    row083_good062_checked,
    row083_good063_checked,
    row083_good064_checked,
    row083_good065_checked,
    row083_good066_checked,
    row083_good067_checked,
    row083_good068_checked,
    row083_good069_checked,
    row083_good070_checked,
    row083_good071_checked,
    row083_good072_checked,
    row083_good073_checked,
    row083_good074_checked,
    row083_good075_checked,
    row083_good076_checked,
    row083_good077_checked,
    row083_good078_checked,
    row083_good079_checked,
    row083_good080_checked,
    row083_good081_checked,
    row083_good082_checked,
    row083_good083_checked,
    row083_good084_checked,
    row083_good085_checked,
    row083_good086_checked,
    row083_good087_checked,
    row083_good088_checked,
    row083_good089_checked,
    row083_good090_checked,
    row083_good091_checked,
    row083_good092_checked,
    row083_good093_checked,
    row083_good094_checked,
    row083_good095_checked,
    row083_good096_checked,
    row083_good097_checked,
    row083_good098_checked,
    row083_good099_checked,
    row083_good100_checked,
    row083_good101_checked,
    row083_good102_checked,
    row083_good103_checked,
    row083_good104_checked,
    row083_good105_checked,
    row083_good106_checked,
    row083_good107_checked,
    row083_good108_checked,
    row083_good109_checked,
    row083_good110_checked,
    row083_good111_checked,
    row083_good112_checked,
    row083_good113_checked,
    row083_good114_checked,
    row083_good115_checked,
    row083_good116_checked,
    row083_good117_checked,
    row083_good118_checked,
    row083_good119_checked,
    row083_good120_checked,
    row083_good121_checked,
    row083_good122_checked,
    row083_good123_checked,
    row083_good124_checked,
    row083_good125_checked,
    row083_good126_checked,
    row083_good127_checked,
    row083_good128_checked,
    row083_good129_checked,
    row083_good130_checked,
    row083_good131_checked,
    row083_good132_checked,
    row083_good133_checked,
    row083_good134_checked,
    row083_good135_checked,
    row083_good136_checked,
    row083_good137_checked,
    row083_good138_checked,
    row083_good139_checked,
    row083_good140_checked,
    row083_good141_checked,
    row083_good142_checked,
    row083_good143_checked,
    row083_good144_checked,
    row083_good145_checked,
    row083_good146_checked,
    row083_good147_checked,
    row083_good148_checked,
    row083_good149_checked,
    row083_good150_checked,
    row083_good151_checked,
    row083_good152_checked,
    row083_good153_checked,
    row083_good154_checked,
    row083_good155_checked,
    row083_good156_checked,
    row083_good157_checked,
    row083_good158_checked,
    row083_good159_checked,
    row083_good160_checked,
    row083_good161_checked,
    row083_good162_checked,
    row083_good163_checked,
    row083_good164_checked,
    row083_good165_checked,
    row083_good166_checked,
    row083_good167_checked,
    row083_good168_checked,
    row083_good169_checked,
    row083_good170_checked,
    row083_good171_checked,
    row083_good172_checked,
    row083_good173_checked,
    row083_good174_checked,
    row083_good175_checked,
    row083_good176_checked,
    row083_good177_checked,
    row083_good178_checked,
    row083_good179_checked,
    row083_good180_checked,
    row083_good181_checked,
    row083_good182_checked,
    row083_good183_checked,
    row083_good184_checked,
    row083_good185_checked,
    row083_good186_checked,
    row083_good187_checked,
    row083_good188_checked,
    row083_good189_checked,
    row083_good190_checked,
    row083_good191_checked,
    row083_good192_checked,
    row083_good193_checked,
    row083_good194_checked,
    row083_good195_checked,
    row083_good196_checked,
    row083_good197_checked,
    row083_good198_checked,
    row083_good199_checked,
    row083_good200_checked,
    row083_good201_checked,
    row083_good202_checked,
    row083_good203_checked,
    row083_good204_checked,
    row083_good205_checked,
    row083_good206_checked,
    row083_good207_checked,
    row083_good208_checked,
    row083_good209_checked,
    row083_good210_checked,
    row083_good211_checked,
    row083_good212_checked,
    row083_good213_checked,
    row083_good214_checked,
    row083_good215_checked,
    row083_good216_checked,
    row083_good217_checked,
    row083_good218_checked,
    row083_good219_checked,
    row083_good220_checked,
    row083_good221_checked,
    row083_good222_checked,
    row083_good223_checked,
    row083_good224_checked,
    row083_good225_checked,
    row083_good226_checked,
    row083_good227_checked,
    row083_good228_checked,
    row083_good229_checked,
    row083_good230_checked,
    row083_good231_checked,
    row083_good232_checked,
    row083_good233_checked,
    row083_good234_checked,
    row083_good235_checked,
    row083_good236_checked,
    row083_good237_checked,
    row083_good238_checked,
    row083_good239_checked,
    row083_good240_checked,
    row083_good241_checked,
    row083_good242_checked,
    row083_good243_checked,
    row083_good244_checked,
    row083_good245_checked,
    row083_good246_checked,
    row083_good247_checked,
    row083_good248_checked,
    row083_good249_checked,
    row083_good250_checked,
    row083_good251_checked,
    row083_good252_checked,
    row083_good253_checked,
    row083_good254_checked,
    row083_good255_checked,
    row083_good256_checked,
    row083_good257_checked,
    row083_good258_checked,
    row083_good259_checked,
    row083_good260_checked,
    row083_good261_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_registered :
    decide (row083.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row083_small_checked :
    coverCheck (2 * row083.height.i + 2) (row083.height.i * (row083.height.i - 1) - 1)
      (row083.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row083_layerCover_checked :
    coverCheck (row083.height.i * (row083.height.i - 1)) (row083.height.n0 - 1)
      (row083.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row083_bounds : List NatInterval :=
  [(168, 249), (250, 323), (324, 399), (400, 479), (480, 561), (562, 639), (640, 713), (714, 791), (792, 869), (870, 945), (946, 1023), (1024, 1103), (1104, 1185), (1186, 1263), (1264, 1341), (1342, 1409), (1410, 1491), (1492, 1571), (1572, 1653), (1654, 1719), (1720, 1791), (1792, 1871), (1872, 1953), (1954, 2033), (2034, 2111), (2112, 2193), (2194, 2261), (2262, 2333), (2334, 2415), (2416, 2493), (2494, 2559), (2560, 2639), (2640, 2715), (2716, 2795), (2796, 2873), (2874, 2943), (2944, 3021), (3022, 3101), (3102, 3171), (3172, 3251), (3252, 3333), (3334, 3413), (3414, 3495), (3496, 3573), (3574, 3653), (3654, 3725), (3726, 3801), (3802, 3879), (3880, 3959), (3960, 4029), (4030, 4109), (4110, 4181), (4182, 4259), (4260, 4341), (4342, 4421), (4422, 4503), (4504, 4575), (4576, 4649), (4650, 4731), (4732, 4811), (4812, 4883), (4884, 4959), (4960, 5039), (5040, 5121), (5122, 5201), (5202, 5279), (5280, 5361), (5362, 5433), (5434, 5513), (5514, 5589), (5590, 5663), (5664, 5741), (5742, 5823), (5824, 5903), (5904, 5985), (5986, 6063), (6064, 6135), (6136, 6215), (6216, 6293), (6294, 6369), (6370, 6449), (6450, 6531), (6532, 6611), (6612, 6689), (6690, 6771), (6772, 6809), (6859, 6939), (6940, 6959), (6962, 7018), (7203, 7275), (7276, 7307), (7406, 7475), (7476, 7488), (7500, 7581), (7582, 7651), (7688, 7762), (7935, 8015), (8016, 8068), (8192, 8207), (8214, 8291), (8292, 8296), (8303, 8314), (8410, 8471), (8472, 8509), (8649, 8657), (8664, 8745), (8746, 8746), (8748, 8829), (8830, 8832), (8836, 8870), (8918, 8918), (8978, 9053), (9054, 9075), (9245, 9323), (9324, 9333), (9375, 9453), (9454, 9457), (9522, 9559), (9583, 9633), (9634, 9686), (10051, 10121), (10122, 10168), (10240, 10288), (10580, 10649), (10650, 10721), (10722, 10730), (10935, 10991), (10992, 11034), (11045, 11067), (11094, 11175), (11176, 11191), (11236, 11245), (11250, 11325), (11326, 11332), (11664, 11720), (11774, 11825), (11826, 11856), (12005, 12061), (12321, 12370), (12393, 12403), (12493, 12573), (12574, 12575), (12696, 12697), (13125, 13203), (13204, 13207), (13225, 13301), (13302, 13307), (13310, 13391), (13392, 13392), (13454, 13533), (13534, 13538), (13718, 13793), (13794, 13800), (13924, 13933), (14336, 14379), (14406, 14483), (14484, 14488), (14641, 14662), (14792, 14821), (15123, 15203), (15204, 15211), (15360, 15441), (15442, 15458), (15979, 16055), (16056, 16069), (16384, 16419), (16428, 16466), (16810, 16869), (16870, 16902), (17303, 17380), (17408, 17483), (17484, 17487), (17576, 17578), (17672, 17743), (18490, 18563), (18564, 18573), (18634, 18687), (18750, 18805), (19208, 19289), (19290, 19290), (19663, 19743), (19744, 19745), (20172, 20243), (20244, 20254), (20535, 20562), (20577, 20617), (21316, 21378), (21870, 21945), (21946, 21957), (21970, 21986), (22472, 22551), (22552, 22554), (24010, 24089), (24090, 24119), (24334, 24411), (24412, 24449), (24576, 24653), (24654, 24658), (25000, 25046), (25215, 25271), (25272, 25343), (25344, 25363), (26047, 26093), (26411, 26446), (26624, 26679), (26680, 26706), (26934, 26978), (28125, 28172), (28577, 28643), (28717, 28754), (29791, 29850), (30258, 30328), (30758, 30802), (30926, 30981), (31213, 31275), (31276, 31295), (31329, 31332), (31433, 31479), (31480, 31505), (31974, 32021), (32805, 32850), (34375, 34377), (34391, 34457), (34816, 34889), (34890, 34892), (35152, 35213), (35344, 35369), (36517, 36579), (36580, 36583), (37210, 37261), (37349, 37385), (37500, 37528), (37553, 37582), (39326, 39405), (39406, 39408), (40401, 40410), (40960, 41013), (41772, 41825), (43750, 43769), (44944, 44972), (48013, 48043), (48734, 48750), (48778, 48816), (49152, 49212), (50000, 50010), (50421, 50492), (53290, 53330), (53371, 53372), (58619, 58646), (59582, 59618), (63948, 63951), (65536, 65603), (65604, 65618), (68651, 68672), (73205, 73249), (73728, 73777), (85293, 85341), (85342, 85346), (137842, 137863), (146410, 146416), (148955, 148959), (327701, 327762)]

theorem row083_bounds_eq : row083.goods.map goodSegmentBounds = row083_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row083_layer000_intervals : List ColouredInterval :=
  [(2, 7168, 7250), (2, 7680, 7762), (2, 8192, 8274), (2, 8704, 8786), (2, 9216, 9298), (2, 9728, 9810), (2, 10240, 10322), (2, 10752, 10834), (2, 11264, 11346), (2, 11776, 11858), (2, 12288, 12370), (2, 12800, 12882), (2, 13312, 13394), (2, 7168, 7250), (2, 8192, 8274), (2, 9216, 9298), (2, 10240, 10322), (2, 11264, 11346), (2, 12288, 12370), (2, 13312, 13394), (2, 8192, 8274), (2, 10240, 10322), (2, 12288, 12370), (2, 8192, 8274), (2, 12288, 12370), (2, 8192, 8274), (3, 7290, 7372), (3, 8019, 8101), (3, 8748, 8830), (3, 9477, 9559), (3, 10206, 10288), (3, 10935, 11017), (3, 11664, 11746), (3, 12393, 12475), (3, 13122, 13204), (3, 8748, 8830), (3, 10935, 11017), (3, 13122, 13204), (3, 13122, 13204), (5, 6875, 6957), (5, 7500, 7582), (5, 8125, 8207), (5, 8750, 8832), (5, 9375, 9457), (5, 10000, 10082), (5, 10625, 10707), (5, 11250, 11332), (5, 11875, 11957), (5, 12500, 12582), (5, 13125, 13207), (5, 9375, 9457), (5, 12500, 12582), (7, 6860, 6942), (7, 7203, 7285), (7, 7546, 7628), (7, 7889, 7971), (7, 8232, 8314), (7, 8575, 8657), (7, 8918, 9000), (7, 7203, 7285), (7, 9604, 9686), (7, 12005, 12087), (11, 7986, 8068), (11, 9317, 9399), (11, 10648, 10730), (11, 11979, 12061), (11, 13310, 13392), (13, 8788, 8870), (13, 10985, 11067), (13, 13182, 13264), (17, 6936, 7018), (17, 7225, 7307), (17, 7514, 7596), (17, 9826, 9908), (19, 6859, 6941), (19, 7220, 7302), (19, 7581, 7663), (19, 7942, 8024), (19, 8303, 8385), (19, 8664, 8746), (19, 9025, 9107), (19, 9386, 9468), (19, 6859, 6941), (23, 6877, 6959), (23, 7406, 7488), (23, 7935, 8017), (23, 8464, 8546), (23, 8993, 9075), (23, 9522, 9604), (23, 10051, 10133), (23, 10580, 10662), (23, 11109, 11191), (23, 11638, 11720), (23, 12167, 12249), (23, 12696, 12778), (23, 13225, 13307), (23, 12167, 12249), (29, 6806, 6810), (29, 7569, 7651), (29, 8410, 8492), (29, 9251, 9333), (29, 10092, 10174), (29, 10933, 11015), (29, 11774, 11856), (29, 12615, 12697), (29, 13456, 13538), (31, 6806, 6809), (31, 7688, 7770), (31, 8649, 8731), (31, 9610, 9692), (31, 10571, 10653), (31, 11532, 11614), (31, 12493, 12575), (31, 13454, 13536), (37, 6845, 6927), (37, 8214, 8296), (37, 9583, 9665), (37, 10952, 11034), (37, 12321, 12403), (41, 6806, 6806), (41, 8405, 8487), (41, 10086, 10168), (41, 11767, 11849), (41, 13448, 13530), (43, 7396, 7478), (43, 9245, 9327), (43, 11094, 11176), (43, 12943, 13025), (47, 8836, 8918), (47, 11045, 11127), (47, 13254, 13336), (53, 8427, 8509), (53, 11236, 11318), (59, 6962, 7044), (59, 10443, 10525), (61, 7442, 7524), (61, 11163, 11245), (67, 8978, 9060), (67, 13467, 13549), (71, 10082, 10164), (73, 10658, 10740), (79, 12482, 12564)]

def row083_layer000_block000 : List ColouredInterval :=
  [(2, 7168, 7250), (2, 7680, 7762), (2, 8192, 8274), (2, 8704, 8786), (2, 9216, 9298), (2, 9728, 9810), (2, 10240, 10322), (2, 10752, 10834), (2, 11264, 11346), (2, 11776, 11858), (2, 12288, 12370), (2, 12800, 12882), (2, 13312, 13394), (2, 7168, 7250)]

def row083_layer000_block001 : List ColouredInterval :=
  [(2, 8192, 8274), (2, 9216, 9298), (2, 10240, 10322), (2, 11264, 11346), (2, 12288, 12370), (2, 13312, 13394), (2, 8192, 8274), (2, 10240, 10322), (2, 12288, 12370), (2, 8192, 8274), (2, 12288, 12370), (2, 8192, 8274), (3, 7290, 7372), (3, 8019, 8101)]

def row083_layer000_block002 : List ColouredInterval :=
  [(3, 8748, 8830), (3, 9477, 9559), (3, 10206, 10288), (3, 10935, 11017), (3, 11664, 11746), (3, 12393, 12475), (3, 13122, 13204), (3, 8748, 8830), (3, 10935, 11017), (3, 13122, 13204), (3, 13122, 13204), (5, 6875, 6957), (5, 7500, 7582), (5, 8125, 8207)]

def row083_layer000_block003 : List ColouredInterval :=
  [(5, 8750, 8832), (5, 9375, 9457), (5, 10000, 10082), (5, 10625, 10707), (5, 11250, 11332), (5, 11875, 11957), (5, 12500, 12582), (5, 13125, 13207), (5, 9375, 9457), (5, 12500, 12582), (7, 6860, 6942), (7, 7203, 7285), (7, 7546, 7628), (7, 7889, 7971)]

def row083_layer000_block004 : List ColouredInterval :=
  [(7, 8232, 8314), (7, 8575, 8657), (7, 8918, 9000), (7, 7203, 7285), (7, 9604, 9686), (7, 12005, 12087), (11, 7986, 8068), (11, 9317, 9399), (11, 10648, 10730), (11, 11979, 12061), (11, 13310, 13392), (13, 8788, 8870), (13, 10985, 11067), (13, 13182, 13264)]

def row083_layer000_block005 : List ColouredInterval :=
  [(17, 6936, 7018), (17, 7225, 7307), (17, 7514, 7596), (17, 9826, 9908), (19, 6859, 6941), (19, 7220, 7302), (19, 7581, 7663), (19, 7942, 8024), (19, 8303, 8385), (19, 8664, 8746), (19, 9025, 9107), (19, 9386, 9468), (19, 6859, 6941), (23, 6877, 6959)]

def row083_layer000_block006 : List ColouredInterval :=
  [(23, 7406, 7488), (23, 7935, 8017), (23, 8464, 8546), (23, 8993, 9075), (23, 9522, 9604), (23, 10051, 10133), (23, 10580, 10662), (23, 11109, 11191), (23, 11638, 11720), (23, 12167, 12249), (23, 12696, 12778), (23, 13225, 13307), (23, 12167, 12249), (29, 6806, 6810)]

def row083_layer000_block007 : List ColouredInterval :=
  [(29, 7569, 7651), (29, 8410, 8492), (29, 9251, 9333), (29, 10092, 10174), (29, 10933, 11015), (29, 11774, 11856), (29, 12615, 12697), (29, 13456, 13538), (31, 6806, 6809), (31, 7688, 7770), (31, 8649, 8731), (31, 9610, 9692), (31, 10571, 10653), (31, 11532, 11614)]

def row083_layer000_block008 : List ColouredInterval :=
  [(31, 12493, 12575), (31, 13454, 13536), (37, 6845, 6927), (37, 8214, 8296), (37, 9583, 9665), (37, 10952, 11034), (37, 12321, 12403), (41, 6806, 6806), (41, 8405, 8487), (41, 10086, 10168), (41, 11767, 11849), (41, 13448, 13530), (43, 7396, 7478), (43, 9245, 9327)]

def row083_layer000_block009 : List ColouredInterval :=
  [(43, 11094, 11176), (43, 12943, 13025), (47, 8836, 8918), (47, 11045, 11127), (47, 13254, 13336), (53, 8427, 8509), (53, 11236, 11318), (59, 6962, 7044), (59, 10443, 10525), (61, 7442, 7524), (61, 11163, 11245), (67, 8978, 9060), (67, 13467, 13549), (71, 10082, 10164)]

def row083_layer000_block010 : List ColouredInterval :=
  [(73, 10658, 10740), (79, 12482, 12564)]

def row083_layer000_chunks : List (List ColouredInterval) :=
  [row083_layer000_block000, row083_layer000_block001, row083_layer000_block002, row083_layer000_block003, row083_layer000_block004, row083_layer000_block005, row083_layer000_block006, row083_layer000_block007, row083_layer000_block008, row083_layer000_block009, row083_layer000_block010]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer000_arithmetic : LayerArithmeticValid row083.height { lower := 6806, upper := 13612, M := 26 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer000_enumeration :
    activePowerIntervalList 83 26 6806 13612 = row083_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer000_pairs000 :
    row083_layer000_block000.all (fun I => row083_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer000_pairs001 :
    row083_layer000_block001.all (fun I => row083_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer000_pairs002 :
    row083_layer000_block002.all (fun I => row083_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer000_pairs003 :
    row083_layer000_block003.all (fun I => row083_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer000_pairs004 :
    row083_layer000_block004.all (fun I => row083_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer000_pairs005 :
    row083_layer000_block005.all (fun I => row083_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer000_pairs006 :
    row083_layer000_block006.all (fun I => row083_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer000_pairs007 :
    row083_layer000_block007.all (fun I => row083_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer000_pairs007
