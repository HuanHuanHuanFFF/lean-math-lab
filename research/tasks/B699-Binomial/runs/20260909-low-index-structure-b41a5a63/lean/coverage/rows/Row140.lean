import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def row140_height : HeightCertificateDatum := { i := 140, r := 46, s := 98, n0Power10 := 8 }

def row140_goods : List GoodSegment := [
  { lower := 282, upper := 420, witness := RowWitness.topPrime 281 },
  { lower := 421, upper := 560, witness := RowWitness.topPrime 421 },
  { lower := 561, upper := 696, witness := RowWitness.topPrime 557 },
  { lower := 697, upper := 830, witness := RowWitness.topPrime 691 },
  { lower := 831, upper := 968, witness := RowWitness.topPrime 829 },
  { lower := 969, upper := 1106, witness := RowWitness.topPrime 967 },
  { lower := 1107, upper := 1242, witness := RowWitness.topPrime 1103 },
  { lower := 1243, upper := 1376, witness := RowWitness.topPrime 1237 },
  { lower := 1377, upper := 1512, witness := RowWitness.topPrime 1373 },
  { lower := 1513, upper := 1650, witness := RowWitness.topPrime 1511 },
  { lower := 1651, upper := 1776, witness := RowWitness.topPrime 1637 },
  { lower := 1777, upper := 1916, witness := RowWitness.topPrime 1777 },
  { lower := 1917, upper := 2052, witness := RowWitness.topPrime 1913 },
  { lower := 2053, upper := 2192, witness := RowWitness.topPrime 2053 },
  { lower := 2193, upper := 2318, witness := RowWitness.topPrime 2179 },
  { lower := 2319, upper := 2450, witness := RowWitness.topPrime 2311 },
  { lower := 2451, upper := 2586, witness := RowWitness.topPrime 2447 },
  { lower := 2587, upper := 2718, witness := RowWitness.topPrime 2579 },
  { lower := 2719, upper := 2858, witness := RowWitness.topPrime 2719 },
  { lower := 2859, upper := 2996, witness := RowWitness.topPrime 2857 },
  { lower := 2997, upper := 3110, witness := RowWitness.topPrime 2971 },
  { lower := 3111, upper := 3248, witness := RowWitness.topPrime 3109 },
  { lower := 3249, upper := 3368, witness := RowWitness.topPrime 3229 },
  { lower := 3369, upper := 3500, witness := RowWitness.topPrime 3361 },
  { lower := 3501, upper := 3638, witness := RowWitness.topPrime 3499 },
  { lower := 3639, upper := 3776, witness := RowWitness.topPrime 3637 },
  { lower := 3777, upper := 3908, witness := RowWitness.topPrime 3769 },
  { lower := 3909, upper := 4046, witness := RowWitness.topPrime 3907 },
  { lower := 4047, upper := 4166, witness := RowWitness.topPrime 4027 },
  { lower := 4167, upper := 4298, witness := RowWitness.topPrime 4159 },
  { lower := 4299, upper := 4436, witness := RowWitness.topPrime 4297 },
  { lower := 4437, upper := 4562, witness := RowWitness.topPrime 4423 },
  { lower := 4563, upper := 4700, witness := RowWitness.topPrime 4561 },
  { lower := 4701, upper := 4830, witness := RowWitness.topPrime 4691 },
  { lower := 4831, upper := 4970, witness := RowWitness.topPrime 4831 },
  { lower := 4971, upper := 5108, witness := RowWitness.topPrime 4969 },
  { lower := 5109, upper := 5246, witness := RowWitness.topPrime 5107 },
  { lower := 5247, upper := 5376, witness := RowWitness.topPrime 5237 },
  { lower := 5377, upper := 5490, witness := RowWitness.topPrime 5351 },
  { lower := 5491, upper := 5622, witness := RowWitness.topPrime 5483 },
  { lower := 5623, upper := 5762, witness := RowWitness.topPrime 5623 },
  { lower := 5763, upper := 5888, witness := RowWitness.topPrime 5749 },
  { lower := 5889, upper := 6020, witness := RowWitness.topPrime 5881 },
  { lower := 6021, upper := 6150, witness := RowWitness.topPrime 6011 },
  { lower := 6151, upper := 6290, witness := RowWitness.topPrime 6151 },
  { lower := 6291, upper := 6426, witness := RowWitness.topPrime 6287 },
  { lower := 6427, upper := 6566, witness := RowWitness.topPrime 6427 },
  { lower := 6567, upper := 6702, witness := RowWitness.topPrime 6563 },
  { lower := 6703, upper := 6842, witness := RowWitness.topPrime 6703 },
  { lower := 6843, upper := 6980, witness := RowWitness.topPrime 6841 },
  { lower := 6981, upper := 7116, witness := RowWitness.topPrime 6977 },
  { lower := 7117, upper := 7248, witness := RowWitness.topPrime 7109 },
  { lower := 7249, upper := 7386, witness := RowWitness.topPrime 7247 },
  { lower := 7387, upper := 7508, witness := RowWitness.topPrime 7369 },
  { lower := 7509, upper := 7646, witness := RowWitness.topPrime 7507 },
  { lower := 7647, upper := 7782, witness := RowWitness.topPrime 7643 },
  { lower := 7783, upper := 7898, witness := RowWitness.topPrime 7759 },
  { lower := 7899, upper := 8022, witness := RowWitness.topPrime 7883 },
  { lower := 8023, upper := 8156, witness := RowWitness.topPrime 8017 },
  { lower := 8157, upper := 8286, witness := RowWitness.topPrime 8147 },
  { lower := 8287, upper := 8426, witness := RowWitness.topPrime 8287 },
  { lower := 8427, upper := 8562, witness := RowWitness.topPrime 8423 },
  { lower := 8563, upper := 8702, witness := RowWitness.topPrime 8563 },
  { lower := 8703, upper := 8838, witness := RowWitness.topPrime 8699 },
  { lower := 8839, upper := 8978, witness := RowWitness.topPrime 8839 },
  { lower := 8979, upper := 9110, witness := RowWitness.topPrime 8971 },
  { lower := 9111, upper := 9248, witness := RowWitness.topPrime 9109 },
  { lower := 9249, upper := 9380, witness := RowWitness.topPrime 9241 },
  { lower := 9381, upper := 9516, witness := RowWitness.topPrime 9377 },
  { lower := 9517, upper := 9650, witness := RowWitness.topPrime 9511 },
  { lower := 9651, upper := 9788, witness := RowWitness.topPrime 9649 },
  { lower := 9789, upper := 9926, witness := RowWitness.topPrime 9787 },
  { lower := 9927, upper := 10062, witness := RowWitness.topPrime 9923 },
  { lower := 10063, upper := 10200, witness := RowWitness.topPrime 10061 },
  { lower := 10201, upper := 10332, witness := RowWitness.topPrime 10193 },
  { lower := 10333, upper := 10472, witness := RowWitness.topPrime 10333 },
  { lower := 10473, upper := 10602, witness := RowWitness.topPrime 10463 },
  { lower := 10603, upper := 10740, witness := RowWitness.topPrime 10601 },
  { lower := 10741, upper := 10878, witness := RowWitness.topPrime 10739 },
  { lower := 10879, upper := 11006, witness := RowWitness.topPrime 10867 },
  { lower := 11007, upper := 11142, witness := RowWitness.topPrime 11003 },
  { lower := 11143, upper := 11270, witness := RowWitness.topPrime 11131 },
  { lower := 11271, upper := 11400, witness := RowWitness.topPrime 11261 },
  { lower := 11401, upper := 11538, witness := RowWitness.topPrime 11399 },
  { lower := 11539, upper := 11666, witness := RowWitness.topPrime 11527 },
  { lower := 11667, upper := 11796, witness := RowWitness.topPrime 11657 },
  { lower := 11797, upper := 11928, witness := RowWitness.topPrime 11789 },
  { lower := 11929, upper := 12066, witness := RowWitness.topPrime 11927 },
  { lower := 12067, upper := 12188, witness := RowWitness.topPrime 12049 },
  { lower := 12189, upper := 12302, witness := RowWitness.topPrime 12163 },
  { lower := 12303, upper := 12440, witness := RowWitness.topPrime 12301 },
  { lower := 12441, upper := 12576, witness := RowWitness.topPrime 12437 },
  { lower := 12577, upper := 12716, witness := RowWitness.topPrime 12577 },
  { lower := 12717, upper := 12852, witness := RowWitness.topPrime 12713 },
  { lower := 12853, upper := 12992, witness := RowWitness.topPrime 12853 },
  { lower := 12993, upper := 13122, witness := RowWitness.topPrime 12983 },
  { lower := 13123, upper := 13260, witness := RowWitness.topPrime 13121 },
  { lower := 13261, upper := 13398, witness := RowWitness.topPrime 13259 },
  { lower := 13399, upper := 13538, witness := RowWitness.topPrime 13399 },
  { lower := 13539, upper := 13676, witness := RowWitness.topPrime 13537 },
  { lower := 13677, upper := 13808, witness := RowWitness.topPrime 13669 },
  { lower := 13809, upper := 13946, witness := RowWitness.topPrime 13807 },
  { lower := 13947, upper := 14072, witness := RowWitness.topPrime 13933 },
  { lower := 14073, upper := 14210, witness := RowWitness.topPrime 14071 },
  { lower := 14211, upper := 14346, witness := RowWitness.topPrime 14207 },
  { lower := 14347, upper := 14486, witness := RowWitness.topPrime 14347 },
  { lower := 14487, upper := 14618, witness := RowWitness.topPrime 14479 },
  { lower := 14619, upper := 14732, witness := RowWitness.topPrime 14593 },
  { lower := 14733, upper := 14870, witness := RowWitness.topPrime 14731 },
  { lower := 14871, upper := 15008, witness := RowWitness.topPrime 14869 },
  { lower := 15009, upper := 15122, witness := RowWitness.topPrime 14983 },
  { lower := 15123, upper := 15260, witness := RowWitness.topPrime 15121 },
  { lower := 15261, upper := 15398, witness := RowWitness.topPrime 15259 },
  { lower := 15399, upper := 15530, witness := RowWitness.topPrime 15391 },
  { lower := 15531, upper := 15666, witness := RowWitness.topPrime 15527 },
  { lower := 15667, upper := 15806, witness := RowWitness.topPrime 15667 },
  { lower := 15807, upper := 15942, witness := RowWitness.topPrime 15803 },
  { lower := 15943, upper := 16076, witness := RowWitness.topPrime 15937 },
  { lower := 16077, upper := 16212, witness := RowWitness.topPrime 16073 },
  { lower := 16213, upper := 16332, witness := RowWitness.topPrime 16193 },
  { lower := 16333, upper := 16472, witness := RowWitness.topPrime 16333 },
  { lower := 16473, upper := 16592, witness := RowWitness.topPrime 16453 },
  { lower := 16593, upper := 16712, witness := RowWitness.topPrime 16573 },
  { lower := 16713, upper := 16842, witness := RowWitness.topPrime 16703 },
  { lower := 16843, upper := 16982, witness := RowWitness.topPrime 16843 },
  { lower := 16983, upper := 17120, witness := RowWitness.topPrime 16981 },
  { lower := 17121, upper := 17256, witness := RowWitness.topPrime 17117 },
  { lower := 17257, upper := 17396, witness := RowWitness.topPrime 17257 },
  { lower := 17397, upper := 17532, witness := RowWitness.topPrime 17393 },
  { lower := 17533, upper := 17658, witness := RowWitness.topPrime 17519 },
  { lower := 17659, upper := 17798, witness := RowWitness.topPrime 17659 },
  { lower := 17799, upper := 17930, witness := RowWitness.topPrime 17791 },
  { lower := 17931, upper := 18068, witness := RowWitness.topPrime 17929 },
  { lower := 18069, upper := 18200, witness := RowWitness.topPrime 18061 },
  { lower := 18201, upper := 18338, witness := RowWitness.topPrime 18199 },
  { lower := 18339, upper := 18468, witness := RowWitness.topPrime 18329 },
  { lower := 18469, upper := 18600, witness := RowWitness.topPrime 18461 },
  { lower := 18601, upper := 18732, witness := RowWitness.topPrime 18593 },
  { lower := 18733, upper := 18870, witness := RowWitness.topPrime 18731 },
  { lower := 18871, upper := 19008, witness := RowWitness.topPrime 18869 },
  { lower := 19009, upper := 19148, witness := RowWitness.topPrime 19009 },
  { lower := 19149, upper := 19280, witness := RowWitness.topPrime 19141 },
  { lower := 19281, upper := 19412, witness := RowWitness.topPrime 19273 },
  { lower := 19413, upper := 19459, witness := RowWitness.topPrime 19403 },
  { lower := 19663, upper := 19800, witness := RowWitness.topPrime 19661 },
  { lower := 19801, upper := 19822, witness := RowWitness.topPrime 19801 },
  { lower := 19881, upper := 19912, witness := RowWitness.topPrime 19867 },
  { lower := 19965, upper := 20020, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20300, witness := RowWitness.topPrime 20161 },
  { lower := 20301, upper := 20303, witness := RowWitness.topPrime 20297 },
  { lower := 20402, upper := 20478, witness := RowWitness.topPrime 20399 },
  { lower := 20535, upper := 20541, witness := RowWitness.topPrime 20533 },
  { lower := 20577, upper := 20702, witness := RowWitness.topPrime 20563 },
  { lower := 20703, upper := 20716, witness := RowWitness.topPrime 20693 },
  { lower := 21296, upper := 21422, witness := RowWitness.topPrime 21283 },
  { lower := 21423, upper := 21435, witness := RowWitness.topPrime 21419 },
  { lower := 21870, upper := 22002, witness := RowWitness.topPrime 21863 },
  { lower := 22003, upper := 22043, witness := RowWitness.topPrime 22003 },
  { lower := 22090, upper := 22109, witness := RowWitness.topPrime 22079 },
  { lower := 22188, upper := 22229, witness := RowWitness.topPrime 22171 },
  { lower := 22326, upper := 22327, witness := RowWitness.topPrime 22307 },
  { lower := 22445, upper := 22465, witness := RowWitness.topPrime 22441 },
  { lower := 22472, upper := 22584, witness := RowWitness.topPrime 22469 },
  { lower := 23763, upper := 23900, witness := RowWitness.topPrime 23761 },
  { lower := 23901, upper := 23901, witness := RowWitness.topPrime 23899 },
  { lower := 24037, upper := 24168, witness := RowWitness.topPrime 24029 },
  { lower := 24169, upper := 24196, witness := RowWitness.topPrime 24169 },
  { lower := 24299, upper := 24306, witness := RowWitness.topPrime 24281 },
  { lower := 24334, upper := 24468, witness := RowWitness.topPrime 24329 },
  { lower := 24469, upper := 24506, witness := RowWitness.topPrime 24469 },
  { lower := 24576, upper := 24710, witness := RowWitness.topPrime 24571 },
  { lower := 24711, upper := 24715, witness := RowWitness.topPrime 24709 },
  { lower := 25215, upper := 25328, witness := RowWitness.topPrime 25189 },
  { lower := 25329, upper := 25420, witness := RowWitness.topPrime 25321 },
  { lower := 26011, upper := 26025, witness := RowWitness.topPrime 26003 },
  { lower := 26047, upper := 26150, witness := RowWitness.topPrime 26041 },
  { lower := 26364, upper := 26383, witness := RowWitness.topPrime 26357 },
  { lower := 26645, upper := 26647, witness := RowWitness.topPrime 26641 },
  { lower := 26934, upper := 27035, witness := RowWitness.topPrime 26927 },
  { lower := 27556, upper := 27575, witness := RowWitness.topPrime 27551 },
  { lower := 27848, upper := 27874, witness := RowWitness.topPrime 27847 },
  { lower := 28227, upper := 28229, witness := RowWitness.topPrime 28219 },
  { lower := 28561, upper := 28570, witness := RowWitness.topPrime 28559 },
  { lower := 28577, upper := 28700, witness := RowWitness.topPrime 28573 },
  { lower := 29584, upper := 29617, witness := RowWitness.topPrime 29581 },
  { lower := 29791, upper := 29907, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30385, witness := RowWitness.topPrime 30253 },
  { lower := 30618, upper := 30732, witness := RowWitness.topPrime 30593 },
  { lower := 30733, upper := 30742, witness := RowWitness.topPrime 30727 },
  { lower := 30926, upper := 31038, witness := RowWitness.topPrime 30911 },
  { lower := 31250, upper := 31388, witness := RowWitness.topPrime 31249 },
  { lower := 31389, upper := 31389, witness := RowWitness.topPrime 31387 },
  { lower := 31423, upper := 31536, witness := RowWitness.topPrime 31397 },
  { lower := 31537, upper := 31562, witness := RowWitness.topPrime 31531 },
  { lower := 31939, upper := 31966, witness := RowWitness.topPrime 31907 },
  { lower := 31974, upper := 32078, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32907, witness := RowWitness.topPrime 32803 },
  { lower := 33614, upper := 33628, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33753, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34458, witness := RowWitness.topPrime 34319 },
  { lower := 34459, upper := 34530, witness := RowWitness.topPrime 34457 },
  { lower := 35131, upper := 35131, witness := RowWitness.topPrime 35129 },
  { lower := 35152, upper := 35270, witness := RowWitness.topPrime 35149 },
  { lower := 35287, upper := 35291, witness := RowWitness.topPrime 35281 },
  { lower := 35344, upper := 35426, witness := RowWitness.topPrime 35339 },
  { lower := 36517, upper := 36636, witness := RowWitness.topPrime 36497 },
  { lower := 36637, upper := 36640, witness := RowWitness.topPrime 36637 },
  { lower := 37210, upper := 37340, witness := RowWitness.topPrime 37201 },
  { lower := 37341, upper := 37442, witness := RowWitness.topPrime 37339 },
  { lower := 37446, upper := 37488, witness := RowWitness.topPrime 37441 },
  { lower := 37538, upper := 37676, witness := RowWitness.topPrime 37537 },
  { lower := 37677, upper := 37692, witness := RowWitness.topPrime 37663 },
  { lower := 38307, upper := 38430, witness := RowWitness.topPrime 38303 },
  { lower := 39326, upper := 39462, witness := RowWitness.topPrime 39323 },
  { lower := 39463, upper := 39465, witness := RowWitness.topPrime 39461 },
  { lower := 40401, upper := 40467, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 40943, witness := RowWitness.topPrime 40927 },
  { lower := 45369, upper := 45392, witness := RowWitness.topPrime 45361 },
  { lower := 45927, upper := 45935, witness := RowWitness.topPrime 45893 },
  { lower := 47526, upper := 47660, witness := RowWitness.topPrime 47521 },
  { lower := 47661, upper := 47663, witness := RowWitness.topPrime 47659 },
  { lower := 48013, upper := 48100, witness := RowWitness.topPrime 47981 },
  { lower := 48387, upper := 48512, witness := RowWitness.topPrime 48383 },
  { lower := 48734, upper := 48872, witness := RowWitness.topPrime 48733 },
  { lower := 48873, upper := 48873, witness := RowWitness.topPrime 48871 },
  { lower := 49152, upper := 49269, witness := RowWitness.topPrime 49139 },
  { lower := 51076, upper := 51144, witness := RowWitness.topPrime 51071 },
  { lower := 52215, upper := 52233, witness := RowWitness.topPrime 52201 },
  { lower := 55451, upper := 55580, witness := RowWitness.topPrime 55441 },
  { lower := 55581, upper := 55586, witness := RowWitness.topPrime 55579 },
  { lower := 56307, upper := 56308, witness := RowWitness.topPrime 56299 },
  { lower := 57245, upper := 57261, witness := RowWitness.topPrime 57241 },
  { lower := 58619, upper := 58703, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59095, witness := RowWitness.topPrime 59029 },
  { lower := 63869, upper := 64002, witness := RowWitness.topPrime 63863 },
  { lower := 64003, upper := 64008, witness := RowWitness.topPrime 63997 },
  { lower := 65536, upper := 65660, witness := RowWitness.topPrime 65521 },
  { lower := 65661, upper := 65675, witness := RowWitness.topPrime 65657 },
  { lower := 68644, upper := 68778, witness := RowWitness.topPrime 68639 },
  { lower := 68779, upper := 68833, witness := RowWitness.topPrime 68777 },
  { lower := 68890, upper := 69020, witness := RowWitness.topPrime 68881 },
  { lower := 69021, upper := 69029, witness := RowWitness.topPrime 69019 },
  { lower := 71289, upper := 71426, witness := RowWitness.topPrime 71287 },
  { lower := 71427, upper := 71428, witness := RowWitness.topPrime 71419 },
  { lower := 73205, upper := 73306, witness := RowWitness.topPrime 73189 },
  { lower := 85805, upper := 85822, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89512, witness := RowWitness.topPrime 89381 },
  { lower := 95052, upper := 95166, witness := RowWitness.topPrime 95027 },
  { lower := 95167, upper := 95187, witness := RowWitness.topPrime 95153 },
  { lower := 98415, upper := 98443, witness := RowWitness.topPrime 98411 },
  { lower := 103041, upper := 103105, witness := RowWitness.topPrime 103007 },
  { lower := 112908, upper := 113040, witness := RowWitness.topPrime 112901 },
  { lower := 113041, upper := 113042, witness := RowWitness.topPrime 113041 },
  { lower := 137388, upper := 137427, witness := RowWitness.topPrime 137387 },
  { lower := 137842, upper := 137920, witness := RowWitness.topPrime 137831 },
  { lower := 146410, upper := 146473, witness := RowWitness.topPrime 146407 },
  { lower := 148955, upper := 149016, witness := RowWitness.topPrime 148949 },
  { lower := 154568, upper := 154588, witness := RowWitness.topPrime 154543 }
]

def row140_layers : List CoverLayer := [
  { lower := 19460, upper := 38920, M := 19 },
  { lower := 38920, upper := 77840, M := 15 },
  { lower := 77840, upper := 155680, M := 12 },
  { lower := 155680, upper := 311360, M := 9 },
  { lower := 311360, upper := 622720, M := 7 },
  { lower := 622720, upper := 1245440, M := 6 },
  { lower := 1245440, upper := 2490880, M := 5 },
  { lower := 2490880, upper := 4981760, M := 4 },
  { lower := 4981760, upper := 9963520, M := 3 },
  { lower := 9963520, upper := 19927040, M := 2 },
  { lower := 19927040, upper := 39854080, M := 2 },
  { lower := 39854080, upper := 79708160, M := 2 },
  { lower := 79708160, upper := 100000000, M := 1 }
]

def row140 : FiniteCoverRow := {
  height := row140_height,
  goods := row140_goods,
  layers := row140_layers
}

theorem row140_registered :
    decide (row140.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row140_goods_checked :
    row140.goods.all (goodSegmentCheck row140.height.i row140.height.r row140.height.s) = true := by
  decide +kernel

theorem row140_small_checked :
    coverCheck (2 * row140.height.i + 2) (row140.height.i * (row140.height.i - 1) - 1)
      (row140.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row140_layerCover_checked :
    coverCheck (row140.height.i * (row140.height.i - 1)) (row140.height.n0 - 1)
      (row140.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row140_layer000_checked :
    coverLayerCheck row140.height row140.goods { lower := 19460, upper := 38920, M := 19 } = true := by
  decide +kernel

theorem row140_layer001_checked :
    coverLayerCheck row140.height row140.goods { lower := 38920, upper := 77840, M := 15 } = true := by
  decide +kernel

theorem row140_layer002_checked :
    coverLayerCheck row140.height row140.goods { lower := 77840, upper := 155680, M := 12 } = true := by
  decide +kernel

theorem row140_layer003_checked :
    coverLayerCheck row140.height row140.goods { lower := 155680, upper := 311360, M := 9 } = true := by
  decide +kernel

theorem row140_layer004_checked :
    coverLayerCheck row140.height row140.goods { lower := 311360, upper := 622720, M := 7 } = true := by
  decide +kernel

theorem row140_layer005_checked :
    coverLayerCheck row140.height row140.goods { lower := 622720, upper := 1245440, M := 6 } = true := by
  decide +kernel

theorem row140_layer006_checked :
    coverLayerCheck row140.height row140.goods { lower := 1245440, upper := 2490880, M := 5 } = true := by
  decide +kernel

theorem row140_layer007_checked :
    coverLayerCheck row140.height row140.goods { lower := 2490880, upper := 4981760, M := 4 } = true := by
  decide +kernel

theorem row140_layer008_checked :
    coverLayerCheck row140.height row140.goods { lower := 4981760, upper := 9963520, M := 3 } = true := by
  decide +kernel

theorem row140_layer009_checked :
    coverLayerCheck row140.height row140.goods { lower := 9963520, upper := 19927040, M := 2 } = true := by
  decide +kernel

theorem row140_layer010_checked :
    coverLayerCheck row140.height row140.goods { lower := 19927040, upper := 39854080, M := 2 } = true := by
  decide +kernel

theorem row140_layer011_checked :
    coverLayerCheck row140.height row140.goods { lower := 39854080, upper := 79708160, M := 2 } = true := by
  decide +kernel

theorem row140_layer012_checked :
    coverLayerCheck row140.height row140.goods { lower := 79708160, upper := 100000000, M := 1 } = true := by
  decide +kernel

theorem row140_layers_checked :
    row140.layers.all (coverLayerCheck row140.height row140.goods) = true := by
  change List.all [
    { lower := 19460, upper := 38920, M := 19 },
    { lower := 38920, upper := 77840, M := 15 },
    { lower := 77840, upper := 155680, M := 12 },
    { lower := 155680, upper := 311360, M := 9 },
    { lower := 311360, upper := 622720, M := 7 },
    { lower := 622720, upper := 1245440, M := 6 },
    { lower := 1245440, upper := 2490880, M := 5 },
    { lower := 2490880, upper := 4981760, M := 4 },
    { lower := 4981760, upper := 9963520, M := 3 },
    { lower := 9963520, upper := 19927040, M := 2 },
    { lower := 19927040, upper := 39854080, M := 2 },
    { lower := 39854080, upper := 79708160, M := 2 },
    { lower := 79708160, upper := 100000000, M := 1 }
  ] (coverLayerCheck row140.height row140.goods) = true
  simp only [List.all_cons, List.all_nil,
    row140_layer000_checked,
    row140_layer001_checked,
    row140_layer002_checked,
    row140_layer003_checked,
    row140_layer004_checked,
    row140_layer005_checked,
    row140_layer006_checked,
    row140_layer007_checked,
    row140_layer008_checked,
    row140_layer009_checked,
    row140_layer010_checked,
    row140_layer011_checked,
    row140_layer012_checked,
    Bool.true_and]

theorem row140_checked : finiteCoverRowCheck row140 = true := by
  simp only [finiteCoverRowCheck, row140_registered, row140_goods_checked,
    row140_small_checked, row140_layerCover_checked, row140_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row140_checked

end B699LowIndex
