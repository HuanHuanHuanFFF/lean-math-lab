import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

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


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_good000_checked :
    goodSegmentCheck 140 46 98
      { lower := 282, upper := 420, witness := RowWitness.topPrime 281 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good001_checked :
    goodSegmentCheck 140 46 98
      { lower := 421, upper := 560, witness := RowWitness.topPrime 421 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good002_checked :
    goodSegmentCheck 140 46 98
      { lower := 561, upper := 696, witness := RowWitness.topPrime 557 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good003_checked :
    goodSegmentCheck 140 46 98
      { lower := 697, upper := 830, witness := RowWitness.topPrime 691 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good004_checked :
    goodSegmentCheck 140 46 98
      { lower := 831, upper := 968, witness := RowWitness.topPrime 829 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good005_checked :
    goodSegmentCheck 140 46 98
      { lower := 969, upper := 1106, witness := RowWitness.topPrime 967 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good006_checked :
    goodSegmentCheck 140 46 98
      { lower := 1107, upper := 1242, witness := RowWitness.topPrime 1103 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good007_checked :
    goodSegmentCheck 140 46 98
      { lower := 1243, upper := 1376, witness := RowWitness.topPrime 1237 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good008_checked :
    goodSegmentCheck 140 46 98
      { lower := 1377, upper := 1512, witness := RowWitness.topPrime 1373 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good009_checked :
    goodSegmentCheck 140 46 98
      { lower := 1513, upper := 1650, witness := RowWitness.topPrime 1511 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good010_checked :
    goodSegmentCheck 140 46 98
      { lower := 1651, upper := 1776, witness := RowWitness.topPrime 1637 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good011_checked :
    goodSegmentCheck 140 46 98
      { lower := 1777, upper := 1916, witness := RowWitness.topPrime 1777 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good012_checked :
    goodSegmentCheck 140 46 98
      { lower := 1917, upper := 2052, witness := RowWitness.topPrime 1913 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good013_checked :
    goodSegmentCheck 140 46 98
      { lower := 2053, upper := 2192, witness := RowWitness.topPrime 2053 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good014_checked :
    goodSegmentCheck 140 46 98
      { lower := 2193, upper := 2318, witness := RowWitness.topPrime 2179 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good015_checked :
    goodSegmentCheck 140 46 98
      { lower := 2319, upper := 2450, witness := RowWitness.topPrime 2311 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_good016_checked :
    goodSegmentCheck 140 46 98
      { lower := 2451, upper := 2586, witness := RowWitness.topPrime 2447 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good017_checked :
    goodSegmentCheck 140 46 98
      { lower := 2587, upper := 2718, witness := RowWitness.topPrime 2579 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good018_checked :
    goodSegmentCheck 140 46 98
      { lower := 2719, upper := 2858, witness := RowWitness.topPrime 2719 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good019_checked :
    goodSegmentCheck 140 46 98
      { lower := 2859, upper := 2996, witness := RowWitness.topPrime 2857 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good020_checked :
    goodSegmentCheck 140 46 98
      { lower := 2997, upper := 3110, witness := RowWitness.topPrime 2971 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good021_checked :
    goodSegmentCheck 140 46 98
      { lower := 3111, upper := 3248, witness := RowWitness.topPrime 3109 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good022_checked :
    goodSegmentCheck 140 46 98
      { lower := 3249, upper := 3368, witness := RowWitness.topPrime 3229 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good023_checked :
    goodSegmentCheck 140 46 98
      { lower := 3369, upper := 3500, witness := RowWitness.topPrime 3361 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good024_checked :
    goodSegmentCheck 140 46 98
      { lower := 3501, upper := 3638, witness := RowWitness.topPrime 3499 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good025_checked :
    goodSegmentCheck 140 46 98
      { lower := 3639, upper := 3776, witness := RowWitness.topPrime 3637 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good026_checked :
    goodSegmentCheck 140 46 98
      { lower := 3777, upper := 3908, witness := RowWitness.topPrime 3769 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good027_checked :
    goodSegmentCheck 140 46 98
      { lower := 3909, upper := 4046, witness := RowWitness.topPrime 3907 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good028_checked :
    goodSegmentCheck 140 46 98
      { lower := 4047, upper := 4166, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good029_checked :
    goodSegmentCheck 140 46 98
      { lower := 4167, upper := 4298, witness := RowWitness.topPrime 4159 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good030_checked :
    goodSegmentCheck 140 46 98
      { lower := 4299, upper := 4436, witness := RowWitness.topPrime 4297 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good031_checked :
    goodSegmentCheck 140 46 98
      { lower := 4437, upper := 4562, witness := RowWitness.topPrime 4423 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_good032_checked :
    goodSegmentCheck 140 46 98
      { lower := 4563, upper := 4700, witness := RowWitness.topPrime 4561 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good033_checked :
    goodSegmentCheck 140 46 98
      { lower := 4701, upper := 4830, witness := RowWitness.topPrime 4691 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good034_checked :
    goodSegmentCheck 140 46 98
      { lower := 4831, upper := 4970, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good035_checked :
    goodSegmentCheck 140 46 98
      { lower := 4971, upper := 5108, witness := RowWitness.topPrime 4969 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good036_checked :
    goodSegmentCheck 140 46 98
      { lower := 5109, upper := 5246, witness := RowWitness.topPrime 5107 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good037_checked :
    goodSegmentCheck 140 46 98
      { lower := 5247, upper := 5376, witness := RowWitness.topPrime 5237 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good038_checked :
    goodSegmentCheck 140 46 98
      { lower := 5377, upper := 5490, witness := RowWitness.topPrime 5351 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good039_checked :
    goodSegmentCheck 140 46 98
      { lower := 5491, upper := 5622, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good040_checked :
    goodSegmentCheck 140 46 98
      { lower := 5623, upper := 5762, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good041_checked :
    goodSegmentCheck 140 46 98
      { lower := 5763, upper := 5888, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good042_checked :
    goodSegmentCheck 140 46 98
      { lower := 5889, upper := 6020, witness := RowWitness.topPrime 5881 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good043_checked :
    goodSegmentCheck 140 46 98
      { lower := 6021, upper := 6150, witness := RowWitness.topPrime 6011 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good044_checked :
    goodSegmentCheck 140 46 98
      { lower := 6151, upper := 6290, witness := RowWitness.topPrime 6151 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good045_checked :
    goodSegmentCheck 140 46 98
      { lower := 6291, upper := 6426, witness := RowWitness.topPrime 6287 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good046_checked :
    goodSegmentCheck 140 46 98
      { lower := 6427, upper := 6566, witness := RowWitness.topPrime 6427 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good047_checked :
    goodSegmentCheck 140 46 98
      { lower := 6567, upper := 6702, witness := RowWitness.topPrime 6563 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_good048_checked :
    goodSegmentCheck 140 46 98
      { lower := 6703, upper := 6842, witness := RowWitness.topPrime 6703 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good049_checked :
    goodSegmentCheck 140 46 98
      { lower := 6843, upper := 6980, witness := RowWitness.topPrime 6841 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good050_checked :
    goodSegmentCheck 140 46 98
      { lower := 6981, upper := 7116, witness := RowWitness.topPrime 6977 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good051_checked :
    goodSegmentCheck 140 46 98
      { lower := 7117, upper := 7248, witness := RowWitness.topPrime 7109 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good052_checked :
    goodSegmentCheck 140 46 98
      { lower := 7249, upper := 7386, witness := RowWitness.topPrime 7247 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good053_checked :
    goodSegmentCheck 140 46 98
      { lower := 7387, upper := 7508, witness := RowWitness.topPrime 7369 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good054_checked :
    goodSegmentCheck 140 46 98
      { lower := 7509, upper := 7646, witness := RowWitness.topPrime 7507 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good055_checked :
    goodSegmentCheck 140 46 98
      { lower := 7647, upper := 7782, witness := RowWitness.topPrime 7643 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good056_checked :
    goodSegmentCheck 140 46 98
      { lower := 7783, upper := 7898, witness := RowWitness.topPrime 7759 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good057_checked :
    goodSegmentCheck 140 46 98
      { lower := 7899, upper := 8022, witness := RowWitness.topPrime 7883 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good058_checked :
    goodSegmentCheck 140 46 98
      { lower := 8023, upper := 8156, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good059_checked :
    goodSegmentCheck 140 46 98
      { lower := 8157, upper := 8286, witness := RowWitness.topPrime 8147 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good060_checked :
    goodSegmentCheck 140 46 98
      { lower := 8287, upper := 8426, witness := RowWitness.topPrime 8287 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good061_checked :
    goodSegmentCheck 140 46 98
      { lower := 8427, upper := 8562, witness := RowWitness.topPrime 8423 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good062_checked :
    goodSegmentCheck 140 46 98
      { lower := 8563, upper := 8702, witness := RowWitness.topPrime 8563 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good063_checked :
    goodSegmentCheck 140 46 98
      { lower := 8703, upper := 8838, witness := RowWitness.topPrime 8699 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_good064_checked :
    goodSegmentCheck 140 46 98
      { lower := 8839, upper := 8978, witness := RowWitness.topPrime 8839 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good065_checked :
    goodSegmentCheck 140 46 98
      { lower := 8979, upper := 9110, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good066_checked :
    goodSegmentCheck 140 46 98
      { lower := 9111, upper := 9248, witness := RowWitness.topPrime 9109 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good067_checked :
    goodSegmentCheck 140 46 98
      { lower := 9249, upper := 9380, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good068_checked :
    goodSegmentCheck 140 46 98
      { lower := 9381, upper := 9516, witness := RowWitness.topPrime 9377 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good069_checked :
    goodSegmentCheck 140 46 98
      { lower := 9517, upper := 9650, witness := RowWitness.topPrime 9511 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good070_checked :
    goodSegmentCheck 140 46 98
      { lower := 9651, upper := 9788, witness := RowWitness.topPrime 9649 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good071_checked :
    goodSegmentCheck 140 46 98
      { lower := 9789, upper := 9926, witness := RowWitness.topPrime 9787 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good072_checked :
    goodSegmentCheck 140 46 98
      { lower := 9927, upper := 10062, witness := RowWitness.topPrime 9923 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good073_checked :
    goodSegmentCheck 140 46 98
      { lower := 10063, upper := 10200, witness := RowWitness.topPrime 10061 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good074_checked :
    goodSegmentCheck 140 46 98
      { lower := 10201, upper := 10332, witness := RowWitness.topPrime 10193 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good075_checked :
    goodSegmentCheck 140 46 98
      { lower := 10333, upper := 10472, witness := RowWitness.topPrime 10333 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good076_checked :
    goodSegmentCheck 140 46 98
      { lower := 10473, upper := 10602, witness := RowWitness.topPrime 10463 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good077_checked :
    goodSegmentCheck 140 46 98
      { lower := 10603, upper := 10740, witness := RowWitness.topPrime 10601 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good078_checked :
    goodSegmentCheck 140 46 98
      { lower := 10741, upper := 10878, witness := RowWitness.topPrime 10739 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good079_checked :
    goodSegmentCheck 140 46 98
      { lower := 10879, upper := 11006, witness := RowWitness.topPrime 10867 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_good080_checked :
    goodSegmentCheck 140 46 98
      { lower := 11007, upper := 11142, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good081_checked :
    goodSegmentCheck 140 46 98
      { lower := 11143, upper := 11270, witness := RowWitness.topPrime 11131 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good082_checked :
    goodSegmentCheck 140 46 98
      { lower := 11271, upper := 11400, witness := RowWitness.topPrime 11261 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good083_checked :
    goodSegmentCheck 140 46 98
      { lower := 11401, upper := 11538, witness := RowWitness.topPrime 11399 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good084_checked :
    goodSegmentCheck 140 46 98
      { lower := 11539, upper := 11666, witness := RowWitness.topPrime 11527 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good085_checked :
    goodSegmentCheck 140 46 98
      { lower := 11667, upper := 11796, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good086_checked :
    goodSegmentCheck 140 46 98
      { lower := 11797, upper := 11928, witness := RowWitness.topPrime 11789 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good087_checked :
    goodSegmentCheck 140 46 98
      { lower := 11929, upper := 12066, witness := RowWitness.topPrime 11927 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good088_checked :
    goodSegmentCheck 140 46 98
      { lower := 12067, upper := 12188, witness := RowWitness.topPrime 12049 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good089_checked :
    goodSegmentCheck 140 46 98
      { lower := 12189, upper := 12302, witness := RowWitness.topPrime 12163 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good090_checked :
    goodSegmentCheck 140 46 98
      { lower := 12303, upper := 12440, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good091_checked :
    goodSegmentCheck 140 46 98
      { lower := 12441, upper := 12576, witness := RowWitness.topPrime 12437 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good092_checked :
    goodSegmentCheck 140 46 98
      { lower := 12577, upper := 12716, witness := RowWitness.topPrime 12577 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good093_checked :
    goodSegmentCheck 140 46 98
      { lower := 12717, upper := 12852, witness := RowWitness.topPrime 12713 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good094_checked :
    goodSegmentCheck 140 46 98
      { lower := 12853, upper := 12992, witness := RowWitness.topPrime 12853 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good095_checked :
    goodSegmentCheck 140 46 98
      { lower := 12993, upper := 13122, witness := RowWitness.topPrime 12983 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_good096_checked :
    goodSegmentCheck 140 46 98
      { lower := 13123, upper := 13260, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good097_checked :
    goodSegmentCheck 140 46 98
      { lower := 13261, upper := 13398, witness := RowWitness.topPrime 13259 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good098_checked :
    goodSegmentCheck 140 46 98
      { lower := 13399, upper := 13538, witness := RowWitness.topPrime 13399 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good099_checked :
    goodSegmentCheck 140 46 98
      { lower := 13539, upper := 13676, witness := RowWitness.topPrime 13537 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good100_checked :
    goodSegmentCheck 140 46 98
      { lower := 13677, upper := 13808, witness := RowWitness.topPrime 13669 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good101_checked :
    goodSegmentCheck 140 46 98
      { lower := 13809, upper := 13946, witness := RowWitness.topPrime 13807 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good102_checked :
    goodSegmentCheck 140 46 98
      { lower := 13947, upper := 14072, witness := RowWitness.topPrime 13933 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good103_checked :
    goodSegmentCheck 140 46 98
      { lower := 14073, upper := 14210, witness := RowWitness.topPrime 14071 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good104_checked :
    goodSegmentCheck 140 46 98
      { lower := 14211, upper := 14346, witness := RowWitness.topPrime 14207 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good105_checked :
    goodSegmentCheck 140 46 98
      { lower := 14347, upper := 14486, witness := RowWitness.topPrime 14347 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good106_checked :
    goodSegmentCheck 140 46 98
      { lower := 14487, upper := 14618, witness := RowWitness.topPrime 14479 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good107_checked :
    goodSegmentCheck 140 46 98
      { lower := 14619, upper := 14732, witness := RowWitness.topPrime 14593 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good108_checked :
    goodSegmentCheck 140 46 98
      { lower := 14733, upper := 14870, witness := RowWitness.topPrime 14731 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good109_checked :
    goodSegmentCheck 140 46 98
      { lower := 14871, upper := 15008, witness := RowWitness.topPrime 14869 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good110_checked :
    goodSegmentCheck 140 46 98
      { lower := 15009, upper := 15122, witness := RowWitness.topPrime 14983 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good111_checked :
    goodSegmentCheck 140 46 98
      { lower := 15123, upper := 15260, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_good112_checked :
    goodSegmentCheck 140 46 98
      { lower := 15261, upper := 15398, witness := RowWitness.topPrime 15259 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good113_checked :
    goodSegmentCheck 140 46 98
      { lower := 15399, upper := 15530, witness := RowWitness.topPrime 15391 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good114_checked :
    goodSegmentCheck 140 46 98
      { lower := 15531, upper := 15666, witness := RowWitness.topPrime 15527 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good115_checked :
    goodSegmentCheck 140 46 98
      { lower := 15667, upper := 15806, witness := RowWitness.topPrime 15667 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good116_checked :
    goodSegmentCheck 140 46 98
      { lower := 15807, upper := 15942, witness := RowWitness.topPrime 15803 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good117_checked :
    goodSegmentCheck 140 46 98
      { lower := 15943, upper := 16076, witness := RowWitness.topPrime 15937 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good118_checked :
    goodSegmentCheck 140 46 98
      { lower := 16077, upper := 16212, witness := RowWitness.topPrime 16073 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good119_checked :
    goodSegmentCheck 140 46 98
      { lower := 16213, upper := 16332, witness := RowWitness.topPrime 16193 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good120_checked :
    goodSegmentCheck 140 46 98
      { lower := 16333, upper := 16472, witness := RowWitness.topPrime 16333 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good121_checked :
    goodSegmentCheck 140 46 98
      { lower := 16473, upper := 16592, witness := RowWitness.topPrime 16453 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good122_checked :
    goodSegmentCheck 140 46 98
      { lower := 16593, upper := 16712, witness := RowWitness.topPrime 16573 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good123_checked :
    goodSegmentCheck 140 46 98
      { lower := 16713, upper := 16842, witness := RowWitness.topPrime 16703 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good124_checked :
    goodSegmentCheck 140 46 98
      { lower := 16843, upper := 16982, witness := RowWitness.topPrime 16843 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good125_checked :
    goodSegmentCheck 140 46 98
      { lower := 16983, upper := 17120, witness := RowWitness.topPrime 16981 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good126_checked :
    goodSegmentCheck 140 46 98
      { lower := 17121, upper := 17256, witness := RowWitness.topPrime 17117 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good127_checked :
    goodSegmentCheck 140 46 98
      { lower := 17257, upper := 17396, witness := RowWitness.topPrime 17257 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_good128_checked :
    goodSegmentCheck 140 46 98
      { lower := 17397, upper := 17532, witness := RowWitness.topPrime 17393 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good129_checked :
    goodSegmentCheck 140 46 98
      { lower := 17533, upper := 17658, witness := RowWitness.topPrime 17519 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good130_checked :
    goodSegmentCheck 140 46 98
      { lower := 17659, upper := 17798, witness := RowWitness.topPrime 17659 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good131_checked :
    goodSegmentCheck 140 46 98
      { lower := 17799, upper := 17930, witness := RowWitness.topPrime 17791 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good132_checked :
    goodSegmentCheck 140 46 98
      { lower := 17931, upper := 18068, witness := RowWitness.topPrime 17929 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good133_checked :
    goodSegmentCheck 140 46 98
      { lower := 18069, upper := 18200, witness := RowWitness.topPrime 18061 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good134_checked :
    goodSegmentCheck 140 46 98
      { lower := 18201, upper := 18338, witness := RowWitness.topPrime 18199 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good135_checked :
    goodSegmentCheck 140 46 98
      { lower := 18339, upper := 18468, witness := RowWitness.topPrime 18329 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good136_checked :
    goodSegmentCheck 140 46 98
      { lower := 18469, upper := 18600, witness := RowWitness.topPrime 18461 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good137_checked :
    goodSegmentCheck 140 46 98
      { lower := 18601, upper := 18732, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good138_checked :
    goodSegmentCheck 140 46 98
      { lower := 18733, upper := 18870, witness := RowWitness.topPrime 18731 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good139_checked :
    goodSegmentCheck 140 46 98
      { lower := 18871, upper := 19008, witness := RowWitness.topPrime 18869 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good140_checked :
    goodSegmentCheck 140 46 98
      { lower := 19009, upper := 19148, witness := RowWitness.topPrime 19009 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good141_checked :
    goodSegmentCheck 140 46 98
      { lower := 19149, upper := 19280, witness := RowWitness.topPrime 19141 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good142_checked :
    goodSegmentCheck 140 46 98
      { lower := 19281, upper := 19412, witness := RowWitness.topPrime 19273 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good143_checked :
    goodSegmentCheck 140 46 98
      { lower := 19413, upper := 19459, witness := RowWitness.topPrime 19403 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_good144_checked :
    goodSegmentCheck 140 46 98
      { lower := 19663, upper := 19800, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good145_checked :
    goodSegmentCheck 140 46 98
      { lower := 19801, upper := 19822, witness := RowWitness.topPrime 19801 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good146_checked :
    goodSegmentCheck 140 46 98
      { lower := 19881, upper := 19912, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good147_checked :
    goodSegmentCheck 140 46 98
      { lower := 19965, upper := 20020, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good148_checked :
    goodSegmentCheck 140 46 98
      { lower := 20172, upper := 20300, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good149_checked :
    goodSegmentCheck 140 46 98
      { lower := 20301, upper := 20303, witness := RowWitness.topPrime 20297 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good150_checked :
    goodSegmentCheck 140 46 98
      { lower := 20402, upper := 20478, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good151_checked :
    goodSegmentCheck 140 46 98
      { lower := 20535, upper := 20541, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good152_checked :
    goodSegmentCheck 140 46 98
      { lower := 20577, upper := 20702, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good153_checked :
    goodSegmentCheck 140 46 98
      { lower := 20703, upper := 20716, witness := RowWitness.topPrime 20693 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good154_checked :
    goodSegmentCheck 140 46 98
      { lower := 21296, upper := 21422, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good155_checked :
    goodSegmentCheck 140 46 98
      { lower := 21423, upper := 21435, witness := RowWitness.topPrime 21419 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good156_checked :
    goodSegmentCheck 140 46 98
      { lower := 21870, upper := 22002, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good157_checked :
    goodSegmentCheck 140 46 98
      { lower := 22003, upper := 22043, witness := RowWitness.topPrime 22003 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good158_checked :
    goodSegmentCheck 140 46 98
      { lower := 22090, upper := 22109, witness := RowWitness.topPrime 22079 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good159_checked :
    goodSegmentCheck 140 46 98
      { lower := 22188, upper := 22229, witness := RowWitness.topPrime 22171 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_good160_checked :
    goodSegmentCheck 140 46 98
      { lower := 22326, upper := 22327, witness := RowWitness.topPrime 22307 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good161_checked :
    goodSegmentCheck 140 46 98
      { lower := 22445, upper := 22465, witness := RowWitness.topPrime 22441 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good162_checked :
    goodSegmentCheck 140 46 98
      { lower := 22472, upper := 22584, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good163_checked :
    goodSegmentCheck 140 46 98
      { lower := 23763, upper := 23900, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good164_checked :
    goodSegmentCheck 140 46 98
      { lower := 23901, upper := 23901, witness := RowWitness.topPrime 23899 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good165_checked :
    goodSegmentCheck 140 46 98
      { lower := 24037, upper := 24168, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good166_checked :
    goodSegmentCheck 140 46 98
      { lower := 24169, upper := 24196, witness := RowWitness.topPrime 24169 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good167_checked :
    goodSegmentCheck 140 46 98
      { lower := 24299, upper := 24306, witness := RowWitness.topPrime 24281 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good168_checked :
    goodSegmentCheck 140 46 98
      { lower := 24334, upper := 24468, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good169_checked :
    goodSegmentCheck 140 46 98
      { lower := 24469, upper := 24506, witness := RowWitness.topPrime 24469 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good170_checked :
    goodSegmentCheck 140 46 98
      { lower := 24576, upper := 24710, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good171_checked :
    goodSegmentCheck 140 46 98
      { lower := 24711, upper := 24715, witness := RowWitness.topPrime 24709 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good172_checked :
    goodSegmentCheck 140 46 98
      { lower := 25215, upper := 25328, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good173_checked :
    goodSegmentCheck 140 46 98
      { lower := 25329, upper := 25420, witness := RowWitness.topPrime 25321 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good174_checked :
    goodSegmentCheck 140 46 98
      { lower := 26011, upper := 26025, witness := RowWitness.topPrime 26003 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good175_checked :
    goodSegmentCheck 140 46 98
      { lower := 26047, upper := 26150, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_good176_checked :
    goodSegmentCheck 140 46 98
      { lower := 26364, upper := 26383, witness := RowWitness.topPrime 26357 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good177_checked :
    goodSegmentCheck 140 46 98
      { lower := 26645, upper := 26647, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good178_checked :
    goodSegmentCheck 140 46 98
      { lower := 26934, upper := 27035, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good179_checked :
    goodSegmentCheck 140 46 98
      { lower := 27556, upper := 27575, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good180_checked :
    goodSegmentCheck 140 46 98
      { lower := 27848, upper := 27874, witness := RowWitness.topPrime 27847 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good181_checked :
    goodSegmentCheck 140 46 98
      { lower := 28227, upper := 28229, witness := RowWitness.topPrime 28219 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good182_checked :
    goodSegmentCheck 140 46 98
      { lower := 28561, upper := 28570, witness := RowWitness.topPrime 28559 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good183_checked :
    goodSegmentCheck 140 46 98
      { lower := 28577, upper := 28700, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good184_checked :
    goodSegmentCheck 140 46 98
      { lower := 29584, upper := 29617, witness := RowWitness.topPrime 29581 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good185_checked :
    goodSegmentCheck 140 46 98
      { lower := 29791, upper := 29907, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good186_checked :
    goodSegmentCheck 140 46 98
      { lower := 30258, upper := 30385, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good187_checked :
    goodSegmentCheck 140 46 98
      { lower := 30618, upper := 30732, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good188_checked :
    goodSegmentCheck 140 46 98
      { lower := 30733, upper := 30742, witness := RowWitness.topPrime 30727 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good189_checked :
    goodSegmentCheck 140 46 98
      { lower := 30926, upper := 31038, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good190_checked :
    goodSegmentCheck 140 46 98
      { lower := 31250, upper := 31388, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good191_checked :
    goodSegmentCheck 140 46 98
      { lower := 31389, upper := 31389, witness := RowWitness.topPrime 31387 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_good192_checked :
    goodSegmentCheck 140 46 98
      { lower := 31423, upper := 31536, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good193_checked :
    goodSegmentCheck 140 46 98
      { lower := 31537, upper := 31562, witness := RowWitness.topPrime 31531 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good194_checked :
    goodSegmentCheck 140 46 98
      { lower := 31939, upper := 31966, witness := RowWitness.topPrime 31907 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good195_checked :
    goodSegmentCheck 140 46 98
      { lower := 31974, upper := 32078, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good196_checked :
    goodSegmentCheck 140 46 98
      { lower := 32805, upper := 32907, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good197_checked :
    goodSegmentCheck 140 46 98
      { lower := 33614, upper := 33628, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good198_checked :
    goodSegmentCheck 140 46 98
      { lower := 33708, upper := 33753, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good199_checked :
    goodSegmentCheck 140 46 98
      { lower := 34322, upper := 34458, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good200_checked :
    goodSegmentCheck 140 46 98
      { lower := 34459, upper := 34530, witness := RowWitness.topPrime 34457 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good201_checked :
    goodSegmentCheck 140 46 98
      { lower := 35131, upper := 35131, witness := RowWitness.topPrime 35129 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good202_checked :
    goodSegmentCheck 140 46 98
      { lower := 35152, upper := 35270, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good203_checked :
    goodSegmentCheck 140 46 98
      { lower := 35287, upper := 35291, witness := RowWitness.topPrime 35281 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good204_checked :
    goodSegmentCheck 140 46 98
      { lower := 35344, upper := 35426, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good205_checked :
    goodSegmentCheck 140 46 98
      { lower := 36517, upper := 36636, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good206_checked :
    goodSegmentCheck 140 46 98
      { lower := 36637, upper := 36640, witness := RowWitness.topPrime 36637 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good207_checked :
    goodSegmentCheck 140 46 98
      { lower := 37210, upper := 37340, witness := RowWitness.topPrime 37201 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_good208_checked :
    goodSegmentCheck 140 46 98
      { lower := 37341, upper := 37442, witness := RowWitness.topPrime 37339 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good209_checked :
    goodSegmentCheck 140 46 98
      { lower := 37446, upper := 37488, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good210_checked :
    goodSegmentCheck 140 46 98
      { lower := 37538, upper := 37676, witness := RowWitness.topPrime 37537 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good211_checked :
    goodSegmentCheck 140 46 98
      { lower := 37677, upper := 37692, witness := RowWitness.topPrime 37663 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good212_checked :
    goodSegmentCheck 140 46 98
      { lower := 38307, upper := 38430, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good213_checked :
    goodSegmentCheck 140 46 98
      { lower := 39326, upper := 39462, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good214_checked :
    goodSegmentCheck 140 46 98
      { lower := 39463, upper := 39465, witness := RowWitness.topPrime 39461 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good215_checked :
    goodSegmentCheck 140 46 98
      { lower := 40401, upper := 40467, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good216_checked :
    goodSegmentCheck 140 46 98
      { lower := 40931, upper := 40943, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good217_checked :
    goodSegmentCheck 140 46 98
      { lower := 45369, upper := 45392, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good218_checked :
    goodSegmentCheck 140 46 98
      { lower := 45927, upper := 45935, witness := RowWitness.topPrime 45893 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good219_checked :
    goodSegmentCheck 140 46 98
      { lower := 47526, upper := 47660, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good220_checked :
    goodSegmentCheck 140 46 98
      { lower := 47661, upper := 47663, witness := RowWitness.topPrime 47659 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good221_checked :
    goodSegmentCheck 140 46 98
      { lower := 48013, upper := 48100, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good222_checked :
    goodSegmentCheck 140 46 98
      { lower := 48387, upper := 48512, witness := RowWitness.topPrime 48383 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good223_checked :
    goodSegmentCheck 140 46 98
      { lower := 48734, upper := 48872, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_good224_checked :
    goodSegmentCheck 140 46 98
      { lower := 48873, upper := 48873, witness := RowWitness.topPrime 48871 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good225_checked :
    goodSegmentCheck 140 46 98
      { lower := 49152, upper := 49269, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good226_checked :
    goodSegmentCheck 140 46 98
      { lower := 51076, upper := 51144, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good227_checked :
    goodSegmentCheck 140 46 98
      { lower := 52215, upper := 52233, witness := RowWitness.topPrime 52201 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good228_checked :
    goodSegmentCheck 140 46 98
      { lower := 55451, upper := 55580, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good229_checked :
    goodSegmentCheck 140 46 98
      { lower := 55581, upper := 55586, witness := RowWitness.topPrime 55579 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good230_checked :
    goodSegmentCheck 140 46 98
      { lower := 56307, upper := 56308, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good231_checked :
    goodSegmentCheck 140 46 98
      { lower := 57245, upper := 57261, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good232_checked :
    goodSegmentCheck 140 46 98
      { lower := 58619, upper := 58703, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good233_checked :
    goodSegmentCheck 140 46 98
      { lower := 59049, upper := 59095, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good234_checked :
    goodSegmentCheck 140 46 98
      { lower := 63869, upper := 64002, witness := RowWitness.topPrime 63863 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good235_checked :
    goodSegmentCheck 140 46 98
      { lower := 64003, upper := 64008, witness := RowWitness.topPrime 63997 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good236_checked :
    goodSegmentCheck 140 46 98
      { lower := 65536, upper := 65660, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good237_checked :
    goodSegmentCheck 140 46 98
      { lower := 65661, upper := 65675, witness := RowWitness.topPrime 65657 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good238_checked :
    goodSegmentCheck 140 46 98
      { lower := 68644, upper := 68778, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good239_checked :
    goodSegmentCheck 140 46 98
      { lower := 68779, upper := 68833, witness := RowWitness.topPrime 68777 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_good240_checked :
    goodSegmentCheck 140 46 98
      { lower := 68890, upper := 69020, witness := RowWitness.topPrime 68881 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good241_checked :
    goodSegmentCheck 140 46 98
      { lower := 69021, upper := 69029, witness := RowWitness.topPrime 69019 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good242_checked :
    goodSegmentCheck 140 46 98
      { lower := 71289, upper := 71426, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good243_checked :
    goodSegmentCheck 140 46 98
      { lower := 71427, upper := 71428, witness := RowWitness.topPrime 71419 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good244_checked :
    goodSegmentCheck 140 46 98
      { lower := 73205, upper := 73306, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good245_checked :
    goodSegmentCheck 140 46 98
      { lower := 85805, upper := 85822, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good246_checked :
    goodSegmentCheck 140 46 98
      { lower := 89383, upper := 89512, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good247_checked :
    goodSegmentCheck 140 46 98
      { lower := 95052, upper := 95166, witness := RowWitness.topPrime 95027 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good248_checked :
    goodSegmentCheck 140 46 98
      { lower := 95167, upper := 95187, witness := RowWitness.topPrime 95153 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good249_checked :
    goodSegmentCheck 140 46 98
      { lower := 98415, upper := 98443, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good250_checked :
    goodSegmentCheck 140 46 98
      { lower := 103041, upper := 103105, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good251_checked :
    goodSegmentCheck 140 46 98
      { lower := 112908, upper := 113040, witness := RowWitness.topPrime 112901 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good252_checked :
    goodSegmentCheck 140 46 98
      { lower := 113041, upper := 113042, witness := RowWitness.topPrime 113041 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good253_checked :
    goodSegmentCheck 140 46 98
      { lower := 137388, upper := 137427, witness := RowWitness.topPrime 137387 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good254_checked :
    goodSegmentCheck 140 46 98
      { lower := 137842, upper := 137920, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good255_checked :
    goodSegmentCheck 140 46 98
      { lower := 146410, upper := 146473, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good251_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good252_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good253_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good254_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good255_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_good256_checked :
    goodSegmentCheck 140 46 98
      { lower := 148955, upper := 149016, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row140_good257_checked :
    goodSegmentCheck 140 46 98
      { lower := 154568, upper := 154588, witness := RowWitness.topPrime 154543 } = true := by
  exact good_top_prime_checked (i := 140) (r := 46) (s := 98) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_good257_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_goods_checked :
    row140.goods.all (goodSegmentCheck row140.height.i row140.height.r row140.height.s) = true := by
  change row140_goods.all (goodSegmentCheck 140 46 98) = true
  simp only [row140_goods, List.all_cons, List.all_nil,
    row140_good000_checked,
    row140_good001_checked,
    row140_good002_checked,
    row140_good003_checked,
    row140_good004_checked,
    row140_good005_checked,
    row140_good006_checked,
    row140_good007_checked,
    row140_good008_checked,
    row140_good009_checked,
    row140_good010_checked,
    row140_good011_checked,
    row140_good012_checked,
    row140_good013_checked,
    row140_good014_checked,
    row140_good015_checked,
    row140_good016_checked,
    row140_good017_checked,
    row140_good018_checked,
    row140_good019_checked,
    row140_good020_checked,
    row140_good021_checked,
    row140_good022_checked,
    row140_good023_checked,
    row140_good024_checked,
    row140_good025_checked,
    row140_good026_checked,
    row140_good027_checked,
    row140_good028_checked,
    row140_good029_checked,
    row140_good030_checked,
    row140_good031_checked,
    row140_good032_checked,
    row140_good033_checked,
    row140_good034_checked,
    row140_good035_checked,
    row140_good036_checked,
    row140_good037_checked,
    row140_good038_checked,
    row140_good039_checked,
    row140_good040_checked,
    row140_good041_checked,
    row140_good042_checked,
    row140_good043_checked,
    row140_good044_checked,
    row140_good045_checked,
    row140_good046_checked,
    row140_good047_checked,
    row140_good048_checked,
    row140_good049_checked,
    row140_good050_checked,
    row140_good051_checked,
    row140_good052_checked,
    row140_good053_checked,
    row140_good054_checked,
    row140_good055_checked,
    row140_good056_checked,
    row140_good057_checked,
    row140_good058_checked,
    row140_good059_checked,
    row140_good060_checked,
    row140_good061_checked,
    row140_good062_checked,
    row140_good063_checked,
    row140_good064_checked,
    row140_good065_checked,
    row140_good066_checked,
    row140_good067_checked,
    row140_good068_checked,
    row140_good069_checked,
    row140_good070_checked,
    row140_good071_checked,
    row140_good072_checked,
    row140_good073_checked,
    row140_good074_checked,
    row140_good075_checked,
    row140_good076_checked,
    row140_good077_checked,
    row140_good078_checked,
    row140_good079_checked,
    row140_good080_checked,
    row140_good081_checked,
    row140_good082_checked,
    row140_good083_checked,
    row140_good084_checked,
    row140_good085_checked,
    row140_good086_checked,
    row140_good087_checked,
    row140_good088_checked,
    row140_good089_checked,
    row140_good090_checked,
    row140_good091_checked,
    row140_good092_checked,
    row140_good093_checked,
    row140_good094_checked,
    row140_good095_checked,
    row140_good096_checked,
    row140_good097_checked,
    row140_good098_checked,
    row140_good099_checked,
    row140_good100_checked,
    row140_good101_checked,
    row140_good102_checked,
    row140_good103_checked,
    row140_good104_checked,
    row140_good105_checked,
    row140_good106_checked,
    row140_good107_checked,
    row140_good108_checked,
    row140_good109_checked,
    row140_good110_checked,
    row140_good111_checked,
    row140_good112_checked,
    row140_good113_checked,
    row140_good114_checked,
    row140_good115_checked,
    row140_good116_checked,
    row140_good117_checked,
    row140_good118_checked,
    row140_good119_checked,
    row140_good120_checked,
    row140_good121_checked,
    row140_good122_checked,
    row140_good123_checked,
    row140_good124_checked,
    row140_good125_checked,
    row140_good126_checked,
    row140_good127_checked,
    row140_good128_checked,
    row140_good129_checked,
    row140_good130_checked,
    row140_good131_checked,
    row140_good132_checked,
    row140_good133_checked,
    row140_good134_checked,
    row140_good135_checked,
    row140_good136_checked,
    row140_good137_checked,
    row140_good138_checked,
    row140_good139_checked,
    row140_good140_checked,
    row140_good141_checked,
    row140_good142_checked,
    row140_good143_checked,
    row140_good144_checked,
    row140_good145_checked,
    row140_good146_checked,
    row140_good147_checked,
    row140_good148_checked,
    row140_good149_checked,
    row140_good150_checked,
    row140_good151_checked,
    row140_good152_checked,
    row140_good153_checked,
    row140_good154_checked,
    row140_good155_checked,
    row140_good156_checked,
    row140_good157_checked,
    row140_good158_checked,
    row140_good159_checked,
    row140_good160_checked,
    row140_good161_checked,
    row140_good162_checked,
    row140_good163_checked,
    row140_good164_checked,
    row140_good165_checked,
    row140_good166_checked,
    row140_good167_checked,
    row140_good168_checked,
    row140_good169_checked,
    row140_good170_checked,
    row140_good171_checked,
    row140_good172_checked,
    row140_good173_checked,
    row140_good174_checked,
    row140_good175_checked,
    row140_good176_checked,
    row140_good177_checked,
    row140_good178_checked,
    row140_good179_checked,
    row140_good180_checked,
    row140_good181_checked,
    row140_good182_checked,
    row140_good183_checked,
    row140_good184_checked,
    row140_good185_checked,
    row140_good186_checked,
    row140_good187_checked,
    row140_good188_checked,
    row140_good189_checked,
    row140_good190_checked,
    row140_good191_checked,
    row140_good192_checked,
    row140_good193_checked,
    row140_good194_checked,
    row140_good195_checked,
    row140_good196_checked,
    row140_good197_checked,
    row140_good198_checked,
    row140_good199_checked,
    row140_good200_checked,
    row140_good201_checked,
    row140_good202_checked,
    row140_good203_checked,
    row140_good204_checked,
    row140_good205_checked,
    row140_good206_checked,
    row140_good207_checked,
    row140_good208_checked,
    row140_good209_checked,
    row140_good210_checked,
    row140_good211_checked,
    row140_good212_checked,
    row140_good213_checked,
    row140_good214_checked,
    row140_good215_checked,
    row140_good216_checked,
    row140_good217_checked,
    row140_good218_checked,
    row140_good219_checked,
    row140_good220_checked,
    row140_good221_checked,
    row140_good222_checked,
    row140_good223_checked,
    row140_good224_checked,
    row140_good225_checked,
    row140_good226_checked,
    row140_good227_checked,
    row140_good228_checked,
    row140_good229_checked,
    row140_good230_checked,
    row140_good231_checked,
    row140_good232_checked,
    row140_good233_checked,
    row140_good234_checked,
    row140_good235_checked,
    row140_good236_checked,
    row140_good237_checked,
    row140_good238_checked,
    row140_good239_checked,
    row140_good240_checked,
    row140_good241_checked,
    row140_good242_checked,
    row140_good243_checked,
    row140_good244_checked,
    row140_good245_checked,
    row140_good246_checked,
    row140_good247_checked,
    row140_good248_checked,
    row140_good249_checked,
    row140_good250_checked,
    row140_good251_checked,
    row140_good252_checked,
    row140_good253_checked,
    row140_good254_checked,
    row140_good255_checked,
    row140_good256_checked,
    row140_good257_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_registered :
    decide (row140.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row140_small_checked :
    coverCheck (2 * row140.height.i + 2) (row140.height.i * (row140.height.i - 1) - 1)
      (row140.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row140_layerCover_checked :
    coverCheck (row140.height.i * (row140.height.i - 1)) (row140.height.n0 - 1)
      (row140.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row140_bounds : List NatInterval :=
  [(282, 420), (421, 560), (561, 696), (697, 830), (831, 968), (969, 1106), (1107, 1242), (1243, 1376), (1377, 1512), (1513, 1650), (1651, 1776), (1777, 1916), (1917, 2052), (2053, 2192), (2193, 2318), (2319, 2450), (2451, 2586), (2587, 2718), (2719, 2858), (2859, 2996), (2997, 3110), (3111, 3248), (3249, 3368), (3369, 3500), (3501, 3638), (3639, 3776), (3777, 3908), (3909, 4046), (4047, 4166), (4167, 4298), (4299, 4436), (4437, 4562), (4563, 4700), (4701, 4830), (4831, 4970), (4971, 5108), (5109, 5246), (5247, 5376), (5377, 5490), (5491, 5622), (5623, 5762), (5763, 5888), (5889, 6020), (6021, 6150), (6151, 6290), (6291, 6426), (6427, 6566), (6567, 6702), (6703, 6842), (6843, 6980), (6981, 7116), (7117, 7248), (7249, 7386), (7387, 7508), (7509, 7646), (7647, 7782), (7783, 7898), (7899, 8022), (8023, 8156), (8157, 8286), (8287, 8426), (8427, 8562), (8563, 8702), (8703, 8838), (8839, 8978), (8979, 9110), (9111, 9248), (9249, 9380), (9381, 9516), (9517, 9650), (9651, 9788), (9789, 9926), (9927, 10062), (10063, 10200), (10201, 10332), (10333, 10472), (10473, 10602), (10603, 10740), (10741, 10878), (10879, 11006), (11007, 11142), (11143, 11270), (11271, 11400), (11401, 11538), (11539, 11666), (11667, 11796), (11797, 11928), (11929, 12066), (12067, 12188), (12189, 12302), (12303, 12440), (12441, 12576), (12577, 12716), (12717, 12852), (12853, 12992), (12993, 13122), (13123, 13260), (13261, 13398), (13399, 13538), (13539, 13676), (13677, 13808), (13809, 13946), (13947, 14072), (14073, 14210), (14211, 14346), (14347, 14486), (14487, 14618), (14619, 14732), (14733, 14870), (14871, 15008), (15009, 15122), (15123, 15260), (15261, 15398), (15399, 15530), (15531, 15666), (15667, 15806), (15807, 15942), (15943, 16076), (16077, 16212), (16213, 16332), (16333, 16472), (16473, 16592), (16593, 16712), (16713, 16842), (16843, 16982), (16983, 17120), (17121, 17256), (17257, 17396), (17397, 17532), (17533, 17658), (17659, 17798), (17799, 17930), (17931, 18068), (18069, 18200), (18201, 18338), (18339, 18468), (18469, 18600), (18601, 18732), (18733, 18870), (18871, 19008), (19009, 19148), (19149, 19280), (19281, 19412), (19413, 19459), (19663, 19800), (19801, 19822), (19881, 19912), (19965, 20020), (20172, 20300), (20301, 20303), (20402, 20478), (20535, 20541), (20577, 20702), (20703, 20716), (21296, 21422), (21423, 21435), (21870, 22002), (22003, 22043), (22090, 22109), (22188, 22229), (22326, 22327), (22445, 22465), (22472, 22584), (23763, 23900), (23901, 23901), (24037, 24168), (24169, 24196), (24299, 24306), (24334, 24468), (24469, 24506), (24576, 24710), (24711, 24715), (25215, 25328), (25329, 25420), (26011, 26025), (26047, 26150), (26364, 26383), (26645, 26647), (26934, 27035), (27556, 27575), (27848, 27874), (28227, 28229), (28561, 28570), (28577, 28700), (29584, 29617), (29791, 29907), (30258, 30385), (30618, 30732), (30733, 30742), (30926, 31038), (31250, 31388), (31389, 31389), (31423, 31536), (31537, 31562), (31939, 31966), (31974, 32078), (32805, 32907), (33614, 33628), (33708, 33753), (34322, 34458), (34459, 34530), (35131, 35131), (35152, 35270), (35287, 35291), (35344, 35426), (36517, 36636), (36637, 36640), (37210, 37340), (37341, 37442), (37446, 37488), (37538, 37676), (37677, 37692), (38307, 38430), (39326, 39462), (39463, 39465), (40401, 40467), (40931, 40943), (45369, 45392), (45927, 45935), (47526, 47660), (47661, 47663), (48013, 48100), (48387, 48512), (48734, 48872), (48873, 48873), (49152, 49269), (51076, 51144), (52215, 52233), (55451, 55580), (55581, 55586), (56307, 56308), (57245, 57261), (58619, 58703), (59049, 59095), (63869, 64002), (64003, 64008), (65536, 65660), (65661, 65675), (68644, 68778), (68779, 68833), (68890, 69020), (69021, 69029), (71289, 71426), (71427, 71428), (73205, 73306), (85805, 85822), (89383, 89512), (95052, 95166), (95167, 95187), (98415, 98443), (103041, 103105), (112908, 113040), (113041, 113042), (137388, 137427), (137842, 137920), (146410, 146473), (148955, 149016), (154568, 154588)]

theorem row140_bounds_eq : row140.goods.map goodSegmentBounds = row140_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row140_layer000_intervals : List ColouredInterval :=
  [(2, 24576, 24715), (2, 32768, 32907), (2, 32768, 32907), (2, 32768, 32907), (3, 19683, 19822), (3, 21870, 22009), (3, 24057, 24196), (3, 26244, 26383), (3, 28431, 28570), (3, 30618, 30757), (3, 32805, 32944), (3, 34992, 35131), (3, 37179, 37318), (3, 19683, 19822), (3, 26244, 26383), (3, 32805, 32944), (3, 19683, 19822), (5, 31250, 31389), (7, 33614, 33753), (11, 19965, 20104), (11, 21296, 21435), (11, 22627, 22766), (11, 23958, 24097), (11, 25289, 25428), (11, 29282, 29421), (13, 19773, 19912), (13, 21970, 22109), (13, 24167, 24306), (13, 26364, 26503), (13, 28561, 28700), (13, 30758, 30897), (13, 32955, 33094), (13, 35152, 35291), (13, 37349, 37488), (13, 28561, 28700), (17, 19652, 19791), (17, 24565, 24704), (17, 29478, 29617), (17, 34391, 34530), (19, 20577, 20716), (19, 27436, 27575), (19, 34295, 34434), (23, 24334, 24473), (23, 36501, 36640), (29, 24389, 24528), (31, 29791, 29930), (37, 20535, 20674), (37, 21904, 22043), (37, 23273, 23412), (37, 24642, 24781), (37, 26011, 26150), (41, 20172, 20311), (41, 21853, 21992), (41, 23534, 23673), (41, 25215, 25354), (41, 26896, 27035), (41, 28577, 28716), (41, 30258, 30397), (41, 31939, 32078), (43, 20339, 20478), (43, 22188, 22327), (43, 24037, 24176), (43, 25886, 26025), (43, 27735, 27874), (43, 29584, 29723), (43, 31433, 31572), (43, 33282, 33421), (43, 35131, 35270), (47, 19881, 20020), (47, 22090, 22229), (47, 24299, 24438), (47, 26508, 26647), (47, 28717, 28856), (47, 30926, 31065), (47, 33135, 33274), (47, 35344, 35483), (47, 37553, 37692), (53, 19663, 19802), (53, 22472, 22611), (53, 25281, 25420), (53, 28090, 28229), (53, 30899, 31038), (53, 33708, 33847), (53, 36517, 36656), (59, 20886, 21025), (59, 24367, 24506), (59, 27848, 27987), (59, 31329, 31468), (59, 34810, 34949), (59, 38291, 38430), (61, 22326, 22465), (61, 26047, 26186), (61, 29768, 29907), (61, 33489, 33628), (61, 37210, 37349), (67, 22445, 22584), (67, 26934, 27073), (67, 31423, 31562), (67, 35912, 36051), (71, 20164, 20303), (71, 25205, 25344), (71, 30246, 30385), (71, 35287, 35426), (73, 21316, 21455), (73, 26645, 26784), (73, 31974, 32113), (73, 37303, 37442), (79, 24964, 25103), (79, 31205, 31344), (79, 37446, 37585), (83, 20667, 20806), (83, 27556, 27695), (83, 34445, 34584), (89, 23763, 23902), (89, 31684, 31823), (97, 28227, 28366), (97, 37636, 37775), (101, 20402, 20541), (101, 30603, 30742), (103, 21218, 21357), (103, 31827, 31966), (107, 22898, 23037), (107, 34347, 34486), (109, 23762, 23901), (109, 35643, 35782), (113, 25538, 25677), (113, 38307, 38446), (127, 32258, 32397), (131, 34322, 34461), (137, 37538, 37677), (139, 19460, 19460), (139, 38642, 38781)]

def row140_layer000_block000 : List ColouredInterval :=
  [(2, 24576, 24715), (2, 32768, 32907), (2, 32768, 32907), (2, 32768, 32907), (3, 19683, 19822), (3, 21870, 22009), (3, 24057, 24196), (3, 26244, 26383), (3, 28431, 28570), (3, 30618, 30757), (3, 32805, 32944), (3, 34992, 35131), (3, 37179, 37318), (3, 19683, 19822), (3, 26244, 26383)]

def row140_layer000_block001 : List ColouredInterval :=
  [(3, 32805, 32944), (3, 19683, 19822), (5, 31250, 31389), (7, 33614, 33753), (11, 19965, 20104), (11, 21296, 21435), (11, 22627, 22766), (11, 23958, 24097), (11, 25289, 25428), (11, 29282, 29421), (13, 19773, 19912), (13, 21970, 22109), (13, 24167, 24306), (13, 26364, 26503), (13, 28561, 28700)]

def row140_layer000_block002 : List ColouredInterval :=
  [(13, 30758, 30897), (13, 32955, 33094), (13, 35152, 35291), (13, 37349, 37488), (13, 28561, 28700), (17, 19652, 19791), (17, 24565, 24704), (17, 29478, 29617), (17, 34391, 34530), (19, 20577, 20716), (19, 27436, 27575), (19, 34295, 34434), (23, 24334, 24473), (23, 36501, 36640), (29, 24389, 24528)]

def row140_layer000_block003 : List ColouredInterval :=
  [(31, 29791, 29930), (37, 20535, 20674), (37, 21904, 22043), (37, 23273, 23412), (37, 24642, 24781), (37, 26011, 26150), (41, 20172, 20311), (41, 21853, 21992), (41, 23534, 23673), (41, 25215, 25354), (41, 26896, 27035), (41, 28577, 28716), (41, 30258, 30397), (41, 31939, 32078), (43, 20339, 20478)]

def row140_layer000_block004 : List ColouredInterval :=
  [(43, 22188, 22327), (43, 24037, 24176), (43, 25886, 26025), (43, 27735, 27874), (43, 29584, 29723), (43, 31433, 31572), (43, 33282, 33421), (43, 35131, 35270), (47, 19881, 20020), (47, 22090, 22229), (47, 24299, 24438), (47, 26508, 26647), (47, 28717, 28856), (47, 30926, 31065), (47, 33135, 33274)]

def row140_layer000_block005 : List ColouredInterval :=
  [(47, 35344, 35483), (47, 37553, 37692), (53, 19663, 19802), (53, 22472, 22611), (53, 25281, 25420), (53, 28090, 28229), (53, 30899, 31038), (53, 33708, 33847), (53, 36517, 36656), (59, 20886, 21025), (59, 24367, 24506), (59, 27848, 27987), (59, 31329, 31468), (59, 34810, 34949), (59, 38291, 38430)]

def row140_layer000_block006 : List ColouredInterval :=
  [(61, 22326, 22465), (61, 26047, 26186), (61, 29768, 29907), (61, 33489, 33628), (61, 37210, 37349), (67, 22445, 22584), (67, 26934, 27073), (67, 31423, 31562), (67, 35912, 36051), (71, 20164, 20303), (71, 25205, 25344), (71, 30246, 30385), (71, 35287, 35426), (73, 21316, 21455), (73, 26645, 26784)]

def row140_layer000_block007 : List ColouredInterval :=
  [(73, 31974, 32113), (73, 37303, 37442), (79, 24964, 25103), (79, 31205, 31344), (79, 37446, 37585), (83, 20667, 20806), (83, 27556, 27695), (83, 34445, 34584), (89, 23763, 23902), (89, 31684, 31823), (97, 28227, 28366), (97, 37636, 37775), (101, 20402, 20541), (101, 30603, 30742), (103, 21218, 21357)]

def row140_layer000_block008 : List ColouredInterval :=
  [(103, 31827, 31966), (107, 22898, 23037), (107, 34347, 34486), (109, 23762, 23901), (109, 35643, 35782), (113, 25538, 25677), (113, 38307, 38446), (127, 32258, 32397), (131, 34322, 34461), (137, 37538, 37677), (139, 19460, 19460), (139, 38642, 38781)]

def row140_layer000_chunks : List (List ColouredInterval) :=
  [row140_layer000_block000, row140_layer000_block001, row140_layer000_block002, row140_layer000_block003, row140_layer000_block004, row140_layer000_block005, row140_layer000_block006, row140_layer000_block007, row140_layer000_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer000_arithmetic : LayerArithmeticValid row140.height { lower := 19460, upper := 38920, M := 19 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer000_enumeration :
    activePowerIntervalList 140 19 19460 38920 = row140_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer000_pairs000 :
    row140_layer000_block000.all (fun I => row140_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row140_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer000_pairs001 :
    row140_layer000_block001.all (fun I => row140_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row140_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer000_pairs002 :
    row140_layer000_block002.all (fun I => row140_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row140_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer000_pairs003 :
    row140_layer000_block003.all (fun I => row140_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row140_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer000_pairs004 :
    row140_layer000_block004.all (fun I => row140_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row140_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer000_pairs005 :
    row140_layer000_block005.all (fun I => row140_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row140_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer000_pairs006 :
    row140_layer000_block006.all (fun I => row140_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row140_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer000_pairs007 :
    row140_layer000_block007.all (fun I => row140_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row140_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer000_pairs007
