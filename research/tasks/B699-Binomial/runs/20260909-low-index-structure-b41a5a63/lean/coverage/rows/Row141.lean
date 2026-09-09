import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def row141_height : HeightCertificateDatum := { i := 141, r := 46, s := 99, n0Power10 := 8 }

def row141_goods : List GoodSegment := [
  { lower := 284, upper := 423, witness := RowWitness.topPrime 283 },
  { lower := 424, upper := 561, witness := RowWitness.topPrime 421 },
  { lower := 562, upper := 697, witness := RowWitness.topPrime 557 },
  { lower := 698, upper := 831, witness := RowWitness.topPrime 691 },
  { lower := 832, upper := 969, witness := RowWitness.topPrime 829 },
  { lower := 970, upper := 1107, witness := RowWitness.topPrime 967 },
  { lower := 1108, upper := 1243, witness := RowWitness.topPrime 1103 },
  { lower := 1244, upper := 1377, witness := RowWitness.topPrime 1237 },
  { lower := 1378, upper := 1513, witness := RowWitness.topPrime 1373 },
  { lower := 1514, upper := 1651, witness := RowWitness.topPrime 1511 },
  { lower := 1652, upper := 1777, witness := RowWitness.topPrime 1637 },
  { lower := 1778, upper := 1917, witness := RowWitness.topPrime 1777 },
  { lower := 1918, upper := 2053, witness := RowWitness.topPrime 1913 },
  { lower := 2054, upper := 2193, witness := RowWitness.topPrime 2053 },
  { lower := 2194, upper := 2319, witness := RowWitness.topPrime 2179 },
  { lower := 2320, upper := 2451, witness := RowWitness.topPrime 2311 },
  { lower := 2452, upper := 2587, witness := RowWitness.topPrime 2447 },
  { lower := 2588, upper := 2719, witness := RowWitness.topPrime 2579 },
  { lower := 2720, upper := 2859, witness := RowWitness.topPrime 2719 },
  { lower := 2860, upper := 2997, witness := RowWitness.topPrime 2857 },
  { lower := 2998, upper := 3111, witness := RowWitness.topPrime 2971 },
  { lower := 3112, upper := 3249, witness := RowWitness.topPrime 3109 },
  { lower := 3250, upper := 3369, witness := RowWitness.topPrime 3229 },
  { lower := 3370, upper := 3501, witness := RowWitness.topPrime 3361 },
  { lower := 3502, upper := 3639, witness := RowWitness.topPrime 3499 },
  { lower := 3640, upper := 3777, witness := RowWitness.topPrime 3637 },
  { lower := 3778, upper := 3909, witness := RowWitness.topPrime 3769 },
  { lower := 3910, upper := 4047, witness := RowWitness.topPrime 3907 },
  { lower := 4048, upper := 4167, witness := RowWitness.topPrime 4027 },
  { lower := 4168, upper := 4299, witness := RowWitness.topPrime 4159 },
  { lower := 4300, upper := 4437, witness := RowWitness.topPrime 4297 },
  { lower := 4438, upper := 4563, witness := RowWitness.topPrime 4423 },
  { lower := 4564, upper := 4701, witness := RowWitness.topPrime 4561 },
  { lower := 4702, upper := 4831, witness := RowWitness.topPrime 4691 },
  { lower := 4832, upper := 4971, witness := RowWitness.topPrime 4831 },
  { lower := 4972, upper := 5109, witness := RowWitness.topPrime 4969 },
  { lower := 5110, upper := 5247, witness := RowWitness.topPrime 5107 },
  { lower := 5248, upper := 5377, witness := RowWitness.topPrime 5237 },
  { lower := 5378, upper := 5491, witness := RowWitness.topPrime 5351 },
  { lower := 5492, upper := 5623, witness := RowWitness.topPrime 5483 },
  { lower := 5624, upper := 5763, witness := RowWitness.topPrime 5623 },
  { lower := 5764, upper := 5889, witness := RowWitness.topPrime 5749 },
  { lower := 5890, upper := 6021, witness := RowWitness.topPrime 5881 },
  { lower := 6022, upper := 6151, witness := RowWitness.topPrime 6011 },
  { lower := 6152, upper := 6291, witness := RowWitness.topPrime 6151 },
  { lower := 6292, upper := 6427, witness := RowWitness.topPrime 6287 },
  { lower := 6428, upper := 6567, witness := RowWitness.topPrime 6427 },
  { lower := 6568, upper := 6703, witness := RowWitness.topPrime 6563 },
  { lower := 6704, upper := 6843, witness := RowWitness.topPrime 6703 },
  { lower := 6844, upper := 6981, witness := RowWitness.topPrime 6841 },
  { lower := 6982, upper := 7117, witness := RowWitness.topPrime 6977 },
  { lower := 7118, upper := 7249, witness := RowWitness.topPrime 7109 },
  { lower := 7250, upper := 7387, witness := RowWitness.topPrime 7247 },
  { lower := 7388, upper := 7509, witness := RowWitness.topPrime 7369 },
  { lower := 7510, upper := 7647, witness := RowWitness.topPrime 7507 },
  { lower := 7648, upper := 7783, witness := RowWitness.topPrime 7643 },
  { lower := 7784, upper := 7899, witness := RowWitness.topPrime 7759 },
  { lower := 7900, upper := 8023, witness := RowWitness.topPrime 7883 },
  { lower := 8024, upper := 8157, witness := RowWitness.topPrime 8017 },
  { lower := 8158, upper := 8287, witness := RowWitness.topPrime 8147 },
  { lower := 8288, upper := 8427, witness := RowWitness.topPrime 8287 },
  { lower := 8428, upper := 8563, witness := RowWitness.topPrime 8423 },
  { lower := 8564, upper := 8703, witness := RowWitness.topPrime 8563 },
  { lower := 8704, upper := 8839, witness := RowWitness.topPrime 8699 },
  { lower := 8840, upper := 8979, witness := RowWitness.topPrime 8839 },
  { lower := 8980, upper := 9111, witness := RowWitness.topPrime 8971 },
  { lower := 9112, upper := 9249, witness := RowWitness.topPrime 9109 },
  { lower := 9250, upper := 9381, witness := RowWitness.topPrime 9241 },
  { lower := 9382, upper := 9517, witness := RowWitness.topPrime 9377 },
  { lower := 9518, upper := 9651, witness := RowWitness.topPrime 9511 },
  { lower := 9652, upper := 9789, witness := RowWitness.topPrime 9649 },
  { lower := 9790, upper := 9927, witness := RowWitness.topPrime 9787 },
  { lower := 9928, upper := 10063, witness := RowWitness.topPrime 9923 },
  { lower := 10064, upper := 10201, witness := RowWitness.topPrime 10061 },
  { lower := 10202, upper := 10333, witness := RowWitness.topPrime 10193 },
  { lower := 10334, upper := 10473, witness := RowWitness.topPrime 10333 },
  { lower := 10474, upper := 10603, witness := RowWitness.topPrime 10463 },
  { lower := 10604, upper := 10741, witness := RowWitness.topPrime 10601 },
  { lower := 10742, upper := 10879, witness := RowWitness.topPrime 10739 },
  { lower := 10880, upper := 11007, witness := RowWitness.topPrime 10867 },
  { lower := 11008, upper := 11143, witness := RowWitness.topPrime 11003 },
  { lower := 11144, upper := 11271, witness := RowWitness.topPrime 11131 },
  { lower := 11272, upper := 11401, witness := RowWitness.topPrime 11261 },
  { lower := 11402, upper := 11539, witness := RowWitness.topPrime 11399 },
  { lower := 11540, upper := 11667, witness := RowWitness.topPrime 11527 },
  { lower := 11668, upper := 11797, witness := RowWitness.topPrime 11657 },
  { lower := 11798, upper := 11929, witness := RowWitness.topPrime 11789 },
  { lower := 11930, upper := 12067, witness := RowWitness.topPrime 11927 },
  { lower := 12068, upper := 12189, witness := RowWitness.topPrime 12049 },
  { lower := 12190, upper := 12303, witness := RowWitness.topPrime 12163 },
  { lower := 12304, upper := 12441, witness := RowWitness.topPrime 12301 },
  { lower := 12442, upper := 12577, witness := RowWitness.topPrime 12437 },
  { lower := 12578, upper := 12717, witness := RowWitness.topPrime 12577 },
  { lower := 12718, upper := 12853, witness := RowWitness.topPrime 12713 },
  { lower := 12854, upper := 12993, witness := RowWitness.topPrime 12853 },
  { lower := 12994, upper := 13123, witness := RowWitness.topPrime 12983 },
  { lower := 13124, upper := 13261, witness := RowWitness.topPrime 13121 },
  { lower := 13262, upper := 13399, witness := RowWitness.topPrime 13259 },
  { lower := 13400, upper := 13539, witness := RowWitness.topPrime 13399 },
  { lower := 13540, upper := 13677, witness := RowWitness.topPrime 13537 },
  { lower := 13678, upper := 13809, witness := RowWitness.topPrime 13669 },
  { lower := 13810, upper := 13947, witness := RowWitness.topPrime 13807 },
  { lower := 13948, upper := 14073, witness := RowWitness.topPrime 13933 },
  { lower := 14074, upper := 14211, witness := RowWitness.topPrime 14071 },
  { lower := 14212, upper := 14347, witness := RowWitness.topPrime 14207 },
  { lower := 14348, upper := 14487, witness := RowWitness.topPrime 14347 },
  { lower := 14488, upper := 14619, witness := RowWitness.topPrime 14479 },
  { lower := 14620, upper := 14733, witness := RowWitness.topPrime 14593 },
  { lower := 14734, upper := 14871, witness := RowWitness.topPrime 14731 },
  { lower := 14872, upper := 15009, witness := RowWitness.topPrime 14869 },
  { lower := 15010, upper := 15123, witness := RowWitness.topPrime 14983 },
  { lower := 15124, upper := 15261, witness := RowWitness.topPrime 15121 },
  { lower := 15262, upper := 15399, witness := RowWitness.topPrime 15259 },
  { lower := 15400, upper := 15531, witness := RowWitness.topPrime 15391 },
  { lower := 15532, upper := 15667, witness := RowWitness.topPrime 15527 },
  { lower := 15668, upper := 15807, witness := RowWitness.topPrime 15667 },
  { lower := 15808, upper := 15943, witness := RowWitness.topPrime 15803 },
  { lower := 15944, upper := 16077, witness := RowWitness.topPrime 15937 },
  { lower := 16078, upper := 16213, witness := RowWitness.topPrime 16073 },
  { lower := 16214, upper := 16333, witness := RowWitness.topPrime 16193 },
  { lower := 16334, upper := 16473, witness := RowWitness.topPrime 16333 },
  { lower := 16474, upper := 16593, witness := RowWitness.topPrime 16453 },
  { lower := 16594, upper := 16713, witness := RowWitness.topPrime 16573 },
  { lower := 16714, upper := 16843, witness := RowWitness.topPrime 16703 },
  { lower := 16844, upper := 16983, witness := RowWitness.topPrime 16843 },
  { lower := 16984, upper := 17121, witness := RowWitness.topPrime 16981 },
  { lower := 17122, upper := 17257, witness := RowWitness.topPrime 17117 },
  { lower := 17258, upper := 17397, witness := RowWitness.topPrime 17257 },
  { lower := 17398, upper := 17533, witness := RowWitness.topPrime 17393 },
  { lower := 17534, upper := 17659, witness := RowWitness.topPrime 17519 },
  { lower := 17660, upper := 17799, witness := RowWitness.topPrime 17659 },
  { lower := 17800, upper := 17931, witness := RowWitness.topPrime 17791 },
  { lower := 17932, upper := 18069, witness := RowWitness.topPrime 17929 },
  { lower := 18070, upper := 18201, witness := RowWitness.topPrime 18061 },
  { lower := 18202, upper := 18339, witness := RowWitness.topPrime 18199 },
  { lower := 18340, upper := 18469, witness := RowWitness.topPrime 18329 },
  { lower := 18470, upper := 18601, witness := RowWitness.topPrime 18461 },
  { lower := 18602, upper := 18733, witness := RowWitness.topPrime 18593 },
  { lower := 18734, upper := 18871, witness := RowWitness.topPrime 18731 },
  { lower := 18872, upper := 19009, witness := RowWitness.topPrime 18869 },
  { lower := 19010, upper := 19149, witness := RowWitness.topPrime 19009 },
  { lower := 19150, upper := 19281, witness := RowWitness.topPrime 19141 },
  { lower := 19282, upper := 19413, witness := RowWitness.topPrime 19273 },
  { lower := 19414, upper := 19543, witness := RowWitness.topPrime 19403 },
  { lower := 19544, upper := 19683, witness := RowWitness.topPrime 19543 },
  { lower := 19684, upper := 19821, witness := RowWitness.topPrime 19681 },
  { lower := 19822, upper := 19823, witness := RowWitness.topPrime 19819 },
  { lower := 20172, upper := 20301, witness := RowWitness.topPrime 20161 },
  { lower := 20302, upper := 20304, witness := RowWitness.topPrime 20297 },
  { lower := 20402, upper := 20539, witness := RowWitness.topPrime 20399 },
  { lower := 20540, upper := 20673, witness := RowWitness.topPrime 20533 },
  { lower := 20674, upper := 20717, witness := RowWitness.topPrime 20663 },
  { lower := 21296, upper := 21423, witness := RowWitness.topPrime 21283 },
  { lower := 21424, upper := 21436, witness := RowWitness.topPrime 21419 },
  { lower := 21875, upper := 22011, witness := RowWitness.topPrime 21871 },
  { lower := 22012, upper := 22044, witness := RowWitness.topPrime 22003 },
  { lower := 22326, upper := 22328, witness := RowWitness.topPrime 22307 },
  { lower := 22445, upper := 22466, witness := RowWitness.topPrime 22441 },
  { lower := 22472, upper := 22609, witness := RowWitness.topPrime 22469 },
  { lower := 22610, upper := 22612, witness := RowWitness.topPrime 22573 },
  { lower := 22627, upper := 22668, witness := RowWitness.topPrime 22621 },
  { lower := 23763, upper := 23901, witness := RowWitness.topPrime 23761 },
  { lower := 23902, upper := 23902, witness := RowWitness.topPrime 23899 },
  { lower := 24010, upper := 24147, witness := RowWitness.topPrime 24007 },
  { lower := 24148, upper := 24150, witness := RowWitness.topPrime 24137 },
  { lower := 24167, upper := 24177, witness := RowWitness.topPrime 24151 },
  { lower := 24367, upper := 24499, witness := RowWitness.topPrime 24359 },
  { lower := 24500, upper := 24507, witness := RowWitness.topPrime 24499 },
  { lower := 24576, upper := 24711, witness := RowWitness.topPrime 24571 },
  { lower := 24712, upper := 24716, witness := RowWitness.topPrime 24709 },
  { lower := 25000, upper := 25104, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25329, witness := RowWitness.topPrime 25189 },
  { lower := 25330, upper := 25421, witness := RowWitness.topPrime 25321 },
  { lower := 26011, upper := 26026, witness := RowWitness.topPrime 26003 },
  { lower := 26047, upper := 26151, witness := RowWitness.topPrime 26041 },
  { lower := 26364, upper := 26384, witness := RowWitness.topPrime 26357 },
  { lower := 26411, upper := 26504, witness := RowWitness.topPrime 26407 },
  { lower := 26645, upper := 26764, witness := RowWitness.topPrime 26641 },
  { lower := 26934, upper := 27036, witness := RowWitness.topPrime 26927 },
  { lower := 27556, upper := 27576, witness := RowWitness.topPrime 27551 },
  { lower := 27848, upper := 27875, witness := RowWitness.topPrime 27847 },
  { lower := 28125, upper := 28263, witness := RowWitness.topPrime 28123 },
  { lower := 28264, upper := 28265, witness := RowWitness.topPrime 28229 },
  { lower := 28577, upper := 28713, witness := RowWitness.topPrime 28573 },
  { lower := 28714, upper := 28717, witness := RowWitness.topPrime 28711 },
  { lower := 28812, upper := 28812, witness := RowWitness.topPrime 28807 },
  { lower := 29584, upper := 29618, witness := RowWitness.topPrime 29581 },
  { lower := 29791, upper := 29908, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30386, witness := RowWitness.topPrime 30253 },
  { lower := 30720, upper := 30743, witness := RowWitness.topPrime 30713 },
  { lower := 30758, upper := 30860, witness := RowWitness.topPrime 30757 },
  { lower := 31213, upper := 31333, witness := RowWitness.topPrime 31193 },
  { lower := 31334, upper := 31390, witness := RowWitness.topPrime 31333 },
  { lower := 31423, upper := 31537, witness := RowWitness.topPrime 31397 },
  { lower := 31538, upper := 31563, witness := RowWitness.topPrime 31531 },
  { lower := 31939, upper := 31967, witness := RowWitness.topPrime 31907 },
  { lower := 31974, upper := 32079, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32908, witness := RowWitness.topPrime 32803 },
  { lower := 33614, upper := 33629, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33754, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34459, witness := RowWitness.topPrime 34319 },
  { lower := 34460, upper := 34531, witness := RowWitness.topPrime 34457 },
  { lower := 34816, upper := 34947, witness := RowWitness.topPrime 34807 },
  { lower := 34948, upper := 34950, witness := RowWitness.topPrime 34939 },
  { lower := 35152, upper := 35271, witness := RowWitness.topPrime 35149 },
  { lower := 35287, upper := 35292, witness := RowWitness.topPrime 35281 },
  { lower := 36015, upper := 36052, witness := RowWitness.topPrime 36013 },
  { lower := 36517, upper := 36637, witness := RowWitness.topPrime 36497 },
  { lower := 36638, upper := 36641, witness := RowWitness.topPrime 36637 },
  { lower := 37303, upper := 37417, witness := RowWitness.topPrime 37277 },
  { lower := 37418, upper := 37443, witness := RowWitness.topPrime 37409 },
  { lower := 37446, upper := 37489, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37633, witness := RowWitness.topPrime 37493 },
  { lower := 37634, upper := 37678, witness := RowWitness.topPrime 37633 },
  { lower := 38307, upper := 38443, witness := RowWitness.topPrime 38303 },
  { lower := 38444, upper := 38447, witness := RowWitness.topPrime 38431 },
  { lower := 39326, upper := 39463, witness := RowWitness.topPrime 39323 },
  { lower := 39464, upper := 39466, witness := RowWitness.topPrime 39461 },
  { lower := 40401, upper := 40468, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 40944, witness := RowWitness.topPrime 40927 },
  { lower := 40960, upper := 41071, witness := RowWitness.topPrime 40949 },
  { lower := 43750, upper := 43827, witness := RowWitness.topPrime 43721 },
  { lower := 45369, upper := 45393, witness := RowWitness.topPrime 45361 },
  { lower := 47526, upper := 47661, witness := RowWitness.topPrime 47521 },
  { lower := 47662, upper := 47664, witness := RowWitness.topPrime 47659 },
  { lower := 48013, upper := 48101, witness := RowWitness.topPrime 47981 },
  { lower := 48387, upper := 48513, witness := RowWitness.topPrime 48383 },
  { lower := 48734, upper := 48873, witness := RowWitness.topPrime 48733 },
  { lower := 48874, upper := 48874, witness := RowWitness.topPrime 48871 },
  { lower := 49152, upper := 49270, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50550, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51145, witness := RowWitness.topPrime 51071 },
  { lower := 53290, upper := 53388, witness := RowWitness.topPrime 53281 },
  { lower := 55451, upper := 55581, witness := RowWitness.topPrime 55441 },
  { lower := 55582, upper := 55587, witness := RowWitness.topPrime 55579 },
  { lower := 56307, upper := 56309, witness := RowWitness.topPrime 56299 },
  { lower := 57245, upper := 57262, witness := RowWitness.topPrime 57241 },
  { lower := 57344, upper := 57385, witness := RowWitness.topPrime 57331 },
  { lower := 58619, upper := 58704, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59096, witness := RowWitness.topPrime 59029 },
  { lower := 62500, upper := 62550, witness := RowWitness.topPrime 62497 },
  { lower := 63869, upper := 64003, witness := RowWitness.topPrime 63863 },
  { lower := 64004, upper := 64009, witness := RowWitness.topPrime 63997 },
  { lower := 65536, upper := 65661, witness := RowWitness.topPrime 65521 },
  { lower := 65662, upper := 65673, witness := RowWitness.topPrime 65657 },
  { lower := 68644, upper := 68779, witness := RowWitness.topPrime 68639 },
  { lower := 68780, upper := 68834, witness := RowWitness.topPrime 68777 },
  { lower := 68890, upper := 69021, witness := RowWitness.topPrime 68881 },
  { lower := 69022, upper := 69030, witness := RowWitness.topPrime 69019 },
  { lower := 71289, upper := 71427, witness := RowWitness.topPrime 71287 },
  { lower := 71428, upper := 71429, witness := RowWitness.topPrime 71419 },
  { lower := 73205, upper := 73307, witness := RowWitness.topPrime 73189 },
  { lower := 85805, upper := 85823, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89513, witness := RowWitness.topPrime 89381 },
  { lower := 93845, upper := 93890, witness := RowWitness.topPrime 93827 },
  { lower := 103041, upper := 103106, witness := RowWitness.topPrime 103007 },
  { lower := 109503, upper := 109515, witness := RowWitness.topPrime 109481 },
  { lower := 146410, upper := 146474, witness := RowWitness.topPrime 146407 },
  { lower := 148955, upper := 149017, witness := RowWitness.topPrime 148949 },
  { lower := 154568, upper := 154589, witness := RowWitness.topPrime 154543 }
]

def row141_layers : List CoverLayer := [
  { lower := 19740, upper := 39480, M := 19 },
  { lower := 39480, upper := 78960, M := 14 },
  { lower := 78960, upper := 157920, M := 11 },
  { lower := 157920, upper := 315840, M := 9 },
  { lower := 315840, upper := 631680, M := 7 },
  { lower := 631680, upper := 1263360, M := 5 },
  { lower := 1263360, upper := 2526720, M := 4 },
  { lower := 2526720, upper := 5053440, M := 3 },
  { lower := 5053440, upper := 10106880, M := 3 },
  { lower := 10106880, upper := 20213760, M := 2 },
  { lower := 20213760, upper := 40427520, M := 2 },
  { lower := 40427520, upper := 80855040, M := 2 },
  { lower := 80855040, upper := 100000000, M := 1 }
]

def row141 : FiniteCoverRow := {
  height := row141_height,
  goods := row141_goods,
  layers := row141_layers
}

theorem row141_registered :
    decide (row141.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row141_goods_checked :
    row141.goods.all (goodSegmentCheck row141.height.i row141.height.r row141.height.s) = true := by
  decide +kernel

theorem row141_small_checked :
    coverCheck (2 * row141.height.i + 2) (row141.height.i * (row141.height.i - 1) - 1)
      (row141.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row141_layerCover_checked :
    coverCheck (row141.height.i * (row141.height.i - 1)) (row141.height.n0 - 1)
      (row141.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row141_layer000_checked :
    coverLayerCheck row141.height row141.goods { lower := 19740, upper := 39480, M := 19 } = true := by
  decide +kernel

theorem row141_layer001_checked :
    coverLayerCheck row141.height row141.goods { lower := 39480, upper := 78960, M := 14 } = true := by
  decide +kernel

theorem row141_layer002_checked :
    coverLayerCheck row141.height row141.goods { lower := 78960, upper := 157920, M := 11 } = true := by
  decide +kernel

theorem row141_layer003_checked :
    coverLayerCheck row141.height row141.goods { lower := 157920, upper := 315840, M := 9 } = true := by
  decide +kernel

theorem row141_layer004_checked :
    coverLayerCheck row141.height row141.goods { lower := 315840, upper := 631680, M := 7 } = true := by
  decide +kernel

theorem row141_layer005_checked :
    coverLayerCheck row141.height row141.goods { lower := 631680, upper := 1263360, M := 5 } = true := by
  decide +kernel

theorem row141_layer006_checked :
    coverLayerCheck row141.height row141.goods { lower := 1263360, upper := 2526720, M := 4 } = true := by
  decide +kernel

theorem row141_layer007_checked :
    coverLayerCheck row141.height row141.goods { lower := 2526720, upper := 5053440, M := 3 } = true := by
  decide +kernel

theorem row141_layer008_checked :
    coverLayerCheck row141.height row141.goods { lower := 5053440, upper := 10106880, M := 3 } = true := by
  decide +kernel

theorem row141_layer009_checked :
    coverLayerCheck row141.height row141.goods { lower := 10106880, upper := 20213760, M := 2 } = true := by
  decide +kernel

theorem row141_layer010_checked :
    coverLayerCheck row141.height row141.goods { lower := 20213760, upper := 40427520, M := 2 } = true := by
  decide +kernel

theorem row141_layer011_checked :
    coverLayerCheck row141.height row141.goods { lower := 40427520, upper := 80855040, M := 2 } = true := by
  decide +kernel

theorem row141_layer012_checked :
    coverLayerCheck row141.height row141.goods { lower := 80855040, upper := 100000000, M := 1 } = true := by
  decide +kernel

theorem row141_layers_checked :
    row141.layers.all (coverLayerCheck row141.height row141.goods) = true := by
  change List.all [
    { lower := 19740, upper := 39480, M := 19 },
    { lower := 39480, upper := 78960, M := 14 },
    { lower := 78960, upper := 157920, M := 11 },
    { lower := 157920, upper := 315840, M := 9 },
    { lower := 315840, upper := 631680, M := 7 },
    { lower := 631680, upper := 1263360, M := 5 },
    { lower := 1263360, upper := 2526720, M := 4 },
    { lower := 2526720, upper := 5053440, M := 3 },
    { lower := 5053440, upper := 10106880, M := 3 },
    { lower := 10106880, upper := 20213760, M := 2 },
    { lower := 20213760, upper := 40427520, M := 2 },
    { lower := 40427520, upper := 80855040, M := 2 },
    { lower := 80855040, upper := 100000000, M := 1 }
  ] (coverLayerCheck row141.height row141.goods) = true
  simp only [List.all_cons, List.all_nil,
    row141_layer000_checked,
    row141_layer001_checked,
    row141_layer002_checked,
    row141_layer003_checked,
    row141_layer004_checked,
    row141_layer005_checked,
    row141_layer006_checked,
    row141_layer007_checked,
    row141_layer008_checked,
    row141_layer009_checked,
    row141_layer010_checked,
    row141_layer011_checked,
    row141_layer012_checked,
    Bool.true_and]

theorem row141_checked : finiteCoverRowCheck row141 = true := by
  simp only [finiteCoverRowCheck, row141_registered, row141_goods_checked,
    row141_small_checked, row141_layerCover_checked, row141_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row141_checked

end B699LowIndex
