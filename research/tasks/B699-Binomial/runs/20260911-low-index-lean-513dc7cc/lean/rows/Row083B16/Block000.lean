import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

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
