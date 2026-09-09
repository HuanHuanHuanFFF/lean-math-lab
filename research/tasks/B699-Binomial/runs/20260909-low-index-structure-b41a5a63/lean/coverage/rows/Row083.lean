import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

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

theorem row083_registered :
    decide (row083.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row083_goods_checked :
    row083.goods.all (goodSegmentCheck row083.height.i row083.height.r row083.height.s) = true := by
  decide +kernel

theorem row083_small_checked :
    coverCheck (2 * row083.height.i + 2) (row083.height.i * (row083.height.i - 1) - 1)
      (row083.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row083_layerCover_checked :
    coverCheck (row083.height.i * (row083.height.i - 1)) (row083.height.n0 - 1)
      (row083.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row083_layer000_checked :
    coverLayerCheck row083.height row083.goods { lower := 6806, upper := 13612, M := 26 } = true := by
  decide +kernel

theorem row083_layer001_checked :
    coverLayerCheck row083.height row083.goods { lower := 13612, upper := 27224, M := 22 } = true := by
  decide +kernel

theorem row083_layer002_checked :
    coverLayerCheck row083.height row083.goods { lower := 27224, upper := 54448, M := 19 } = true := by
  decide +kernel

theorem row083_layer003_checked :
    coverLayerCheck row083.height row083.goods { lower := 54448, upper := 108896, M := 16 } = true := by
  decide +kernel

theorem row083_layer004_checked :
    coverLayerCheck row083.height row083.goods { lower := 108896, upper := 217792, M := 13 } = true := by
  decide +kernel

theorem row083_layer005_checked :
    coverLayerCheck row083.height row083.goods { lower := 217792, upper := 435584, M := 11 } = true := by
  decide +kernel

theorem row083_layer006_checked :
    coverLayerCheck row083.height row083.goods { lower := 435584, upper := 871168, M := 9 } = true := by
  decide +kernel

theorem row083_layer007_checked :
    coverLayerCheck row083.height row083.goods { lower := 871168, upper := 1742336, M := 8 } = true := by
  decide +kernel

theorem row083_layer008_checked :
    coverLayerCheck row083.height row083.goods { lower := 1742336, upper := 3484672, M := 7 } = true := by
  decide +kernel

theorem row083_layer009_checked :
    coverLayerCheck row083.height row083.goods { lower := 3484672, upper := 6969344, M := 6 } = true := by
  decide +kernel

theorem row083_layer010_checked :
    coverLayerCheck row083.height row083.goods { lower := 6969344, upper := 13938688, M := 5 } = true := by
  decide +kernel

theorem row083_layer011_checked :
    coverLayerCheck row083.height row083.goods { lower := 13938688, upper := 27877376, M := 4 } = true := by
  decide +kernel

theorem row083_layer012_checked :
    coverLayerCheck row083.height row083.goods { lower := 27877376, upper := 55754752, M := 4 } = true := by
  decide +kernel

theorem row083_layer013_checked :
    coverLayerCheck row083.height row083.goods { lower := 55754752, upper := 111509504, M := 3 } = true := by
  decide +kernel

theorem row083_layer014_checked :
    coverLayerCheck row083.height row083.goods { lower := 111509504, upper := 223019008, M := 3 } = true := by
  decide +kernel

theorem row083_layer015_checked :
    coverLayerCheck row083.height row083.goods { lower := 223019008, upper := 446038016, M := 2 } = true := by
  decide +kernel

theorem row083_layer016_checked :
    coverLayerCheck row083.height row083.goods { lower := 446038016, upper := 892076032, M := 2 } = true := by
  decide +kernel

theorem row083_layer017_checked :
    coverLayerCheck row083.height row083.goods { lower := 892076032, upper := 1784152064, M := 2 } = true := by
  decide +kernel

theorem row083_layer018_checked :
    coverLayerCheck row083.height row083.goods { lower := 1784152064, upper := 3568304128, M := 2 } = true := by
  decide +kernel

theorem row083_layer019_checked :
    coverLayerCheck row083.height row083.goods { lower := 3568304128, upper := 7136608256, M := 1 } = true := by
  decide +kernel

theorem row083_layer020_checked :
    coverLayerCheck row083.height row083.goods { lower := 7136608256, upper := 10000000000, M := 1 } = true := by
  decide +kernel

theorem row083_layers_checked :
    row083.layers.all (coverLayerCheck row083.height row083.goods) = true := by
  change List.all [
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
  ] (coverLayerCheck row083.height row083.goods) = true
  simp only [List.all_cons, List.all_nil,
    row083_layer000_checked,
    row083_layer001_checked,
    row083_layer002_checked,
    row083_layer003_checked,
    row083_layer004_checked,
    row083_layer005_checked,
    row083_layer006_checked,
    row083_layer007_checked,
    row083_layer008_checked,
    row083_layer009_checked,
    row083_layer010_checked,
    row083_layer011_checked,
    row083_layer012_checked,
    row083_layer013_checked,
    row083_layer014_checked,
    row083_layer015_checked,
    row083_layer016_checked,
    row083_layer017_checked,
    row083_layer018_checked,
    row083_layer019_checked,
    row083_layer020_checked,
    Bool.true_and]

theorem row083_checked : finiteCoverRowCheck row083 = true := by
  simp only [finiteCoverRowCheck, row083_registered, row083_goods_checked,
    row083_small_checked, row083_layerCover_checked, row083_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row083_checked

end B699LowIndex
