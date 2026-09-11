import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

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


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_good000_checked :
    goodSegmentCheck 141 46 99
      { lower := 284, upper := 423, witness := RowWitness.topPrime 283 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good001_checked :
    goodSegmentCheck 141 46 99
      { lower := 424, upper := 561, witness := RowWitness.topPrime 421 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good002_checked :
    goodSegmentCheck 141 46 99
      { lower := 562, upper := 697, witness := RowWitness.topPrime 557 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good003_checked :
    goodSegmentCheck 141 46 99
      { lower := 698, upper := 831, witness := RowWitness.topPrime 691 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good004_checked :
    goodSegmentCheck 141 46 99
      { lower := 832, upper := 969, witness := RowWitness.topPrime 829 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good005_checked :
    goodSegmentCheck 141 46 99
      { lower := 970, upper := 1107, witness := RowWitness.topPrime 967 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good006_checked :
    goodSegmentCheck 141 46 99
      { lower := 1108, upper := 1243, witness := RowWitness.topPrime 1103 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good007_checked :
    goodSegmentCheck 141 46 99
      { lower := 1244, upper := 1377, witness := RowWitness.topPrime 1237 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good008_checked :
    goodSegmentCheck 141 46 99
      { lower := 1378, upper := 1513, witness := RowWitness.topPrime 1373 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good009_checked :
    goodSegmentCheck 141 46 99
      { lower := 1514, upper := 1651, witness := RowWitness.topPrime 1511 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good010_checked :
    goodSegmentCheck 141 46 99
      { lower := 1652, upper := 1777, witness := RowWitness.topPrime 1637 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good011_checked :
    goodSegmentCheck 141 46 99
      { lower := 1778, upper := 1917, witness := RowWitness.topPrime 1777 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good012_checked :
    goodSegmentCheck 141 46 99
      { lower := 1918, upper := 2053, witness := RowWitness.topPrime 1913 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good013_checked :
    goodSegmentCheck 141 46 99
      { lower := 2054, upper := 2193, witness := RowWitness.topPrime 2053 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good014_checked :
    goodSegmentCheck 141 46 99
      { lower := 2194, upper := 2319, witness := RowWitness.topPrime 2179 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good015_checked :
    goodSegmentCheck 141 46 99
      { lower := 2320, upper := 2451, witness := RowWitness.topPrime 2311 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_good016_checked :
    goodSegmentCheck 141 46 99
      { lower := 2452, upper := 2587, witness := RowWitness.topPrime 2447 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good017_checked :
    goodSegmentCheck 141 46 99
      { lower := 2588, upper := 2719, witness := RowWitness.topPrime 2579 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good018_checked :
    goodSegmentCheck 141 46 99
      { lower := 2720, upper := 2859, witness := RowWitness.topPrime 2719 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good019_checked :
    goodSegmentCheck 141 46 99
      { lower := 2860, upper := 2997, witness := RowWitness.topPrime 2857 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good020_checked :
    goodSegmentCheck 141 46 99
      { lower := 2998, upper := 3111, witness := RowWitness.topPrime 2971 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good021_checked :
    goodSegmentCheck 141 46 99
      { lower := 3112, upper := 3249, witness := RowWitness.topPrime 3109 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good022_checked :
    goodSegmentCheck 141 46 99
      { lower := 3250, upper := 3369, witness := RowWitness.topPrime 3229 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good023_checked :
    goodSegmentCheck 141 46 99
      { lower := 3370, upper := 3501, witness := RowWitness.topPrime 3361 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good024_checked :
    goodSegmentCheck 141 46 99
      { lower := 3502, upper := 3639, witness := RowWitness.topPrime 3499 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good025_checked :
    goodSegmentCheck 141 46 99
      { lower := 3640, upper := 3777, witness := RowWitness.topPrime 3637 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good026_checked :
    goodSegmentCheck 141 46 99
      { lower := 3778, upper := 3909, witness := RowWitness.topPrime 3769 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good027_checked :
    goodSegmentCheck 141 46 99
      { lower := 3910, upper := 4047, witness := RowWitness.topPrime 3907 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good028_checked :
    goodSegmentCheck 141 46 99
      { lower := 4048, upper := 4167, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good029_checked :
    goodSegmentCheck 141 46 99
      { lower := 4168, upper := 4299, witness := RowWitness.topPrime 4159 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good030_checked :
    goodSegmentCheck 141 46 99
      { lower := 4300, upper := 4437, witness := RowWitness.topPrime 4297 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good031_checked :
    goodSegmentCheck 141 46 99
      { lower := 4438, upper := 4563, witness := RowWitness.topPrime 4423 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_good032_checked :
    goodSegmentCheck 141 46 99
      { lower := 4564, upper := 4701, witness := RowWitness.topPrime 4561 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good033_checked :
    goodSegmentCheck 141 46 99
      { lower := 4702, upper := 4831, witness := RowWitness.topPrime 4691 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good034_checked :
    goodSegmentCheck 141 46 99
      { lower := 4832, upper := 4971, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good035_checked :
    goodSegmentCheck 141 46 99
      { lower := 4972, upper := 5109, witness := RowWitness.topPrime 4969 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good036_checked :
    goodSegmentCheck 141 46 99
      { lower := 5110, upper := 5247, witness := RowWitness.topPrime 5107 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good037_checked :
    goodSegmentCheck 141 46 99
      { lower := 5248, upper := 5377, witness := RowWitness.topPrime 5237 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good038_checked :
    goodSegmentCheck 141 46 99
      { lower := 5378, upper := 5491, witness := RowWitness.topPrime 5351 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good039_checked :
    goodSegmentCheck 141 46 99
      { lower := 5492, upper := 5623, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good040_checked :
    goodSegmentCheck 141 46 99
      { lower := 5624, upper := 5763, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good041_checked :
    goodSegmentCheck 141 46 99
      { lower := 5764, upper := 5889, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good042_checked :
    goodSegmentCheck 141 46 99
      { lower := 5890, upper := 6021, witness := RowWitness.topPrime 5881 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good043_checked :
    goodSegmentCheck 141 46 99
      { lower := 6022, upper := 6151, witness := RowWitness.topPrime 6011 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good044_checked :
    goodSegmentCheck 141 46 99
      { lower := 6152, upper := 6291, witness := RowWitness.topPrime 6151 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good045_checked :
    goodSegmentCheck 141 46 99
      { lower := 6292, upper := 6427, witness := RowWitness.topPrime 6287 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good046_checked :
    goodSegmentCheck 141 46 99
      { lower := 6428, upper := 6567, witness := RowWitness.topPrime 6427 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good047_checked :
    goodSegmentCheck 141 46 99
      { lower := 6568, upper := 6703, witness := RowWitness.topPrime 6563 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_good048_checked :
    goodSegmentCheck 141 46 99
      { lower := 6704, upper := 6843, witness := RowWitness.topPrime 6703 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good049_checked :
    goodSegmentCheck 141 46 99
      { lower := 6844, upper := 6981, witness := RowWitness.topPrime 6841 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good050_checked :
    goodSegmentCheck 141 46 99
      { lower := 6982, upper := 7117, witness := RowWitness.topPrime 6977 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good051_checked :
    goodSegmentCheck 141 46 99
      { lower := 7118, upper := 7249, witness := RowWitness.topPrime 7109 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good052_checked :
    goodSegmentCheck 141 46 99
      { lower := 7250, upper := 7387, witness := RowWitness.topPrime 7247 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good053_checked :
    goodSegmentCheck 141 46 99
      { lower := 7388, upper := 7509, witness := RowWitness.topPrime 7369 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good054_checked :
    goodSegmentCheck 141 46 99
      { lower := 7510, upper := 7647, witness := RowWitness.topPrime 7507 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good055_checked :
    goodSegmentCheck 141 46 99
      { lower := 7648, upper := 7783, witness := RowWitness.topPrime 7643 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good056_checked :
    goodSegmentCheck 141 46 99
      { lower := 7784, upper := 7899, witness := RowWitness.topPrime 7759 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good057_checked :
    goodSegmentCheck 141 46 99
      { lower := 7900, upper := 8023, witness := RowWitness.topPrime 7883 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good058_checked :
    goodSegmentCheck 141 46 99
      { lower := 8024, upper := 8157, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good059_checked :
    goodSegmentCheck 141 46 99
      { lower := 8158, upper := 8287, witness := RowWitness.topPrime 8147 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good060_checked :
    goodSegmentCheck 141 46 99
      { lower := 8288, upper := 8427, witness := RowWitness.topPrime 8287 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good061_checked :
    goodSegmentCheck 141 46 99
      { lower := 8428, upper := 8563, witness := RowWitness.topPrime 8423 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good062_checked :
    goodSegmentCheck 141 46 99
      { lower := 8564, upper := 8703, witness := RowWitness.topPrime 8563 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good063_checked :
    goodSegmentCheck 141 46 99
      { lower := 8704, upper := 8839, witness := RowWitness.topPrime 8699 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_good064_checked :
    goodSegmentCheck 141 46 99
      { lower := 8840, upper := 8979, witness := RowWitness.topPrime 8839 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good065_checked :
    goodSegmentCheck 141 46 99
      { lower := 8980, upper := 9111, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good066_checked :
    goodSegmentCheck 141 46 99
      { lower := 9112, upper := 9249, witness := RowWitness.topPrime 9109 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good067_checked :
    goodSegmentCheck 141 46 99
      { lower := 9250, upper := 9381, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good068_checked :
    goodSegmentCheck 141 46 99
      { lower := 9382, upper := 9517, witness := RowWitness.topPrime 9377 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good069_checked :
    goodSegmentCheck 141 46 99
      { lower := 9518, upper := 9651, witness := RowWitness.topPrime 9511 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good070_checked :
    goodSegmentCheck 141 46 99
      { lower := 9652, upper := 9789, witness := RowWitness.topPrime 9649 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good071_checked :
    goodSegmentCheck 141 46 99
      { lower := 9790, upper := 9927, witness := RowWitness.topPrime 9787 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good072_checked :
    goodSegmentCheck 141 46 99
      { lower := 9928, upper := 10063, witness := RowWitness.topPrime 9923 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good073_checked :
    goodSegmentCheck 141 46 99
      { lower := 10064, upper := 10201, witness := RowWitness.topPrime 10061 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good074_checked :
    goodSegmentCheck 141 46 99
      { lower := 10202, upper := 10333, witness := RowWitness.topPrime 10193 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good075_checked :
    goodSegmentCheck 141 46 99
      { lower := 10334, upper := 10473, witness := RowWitness.topPrime 10333 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good076_checked :
    goodSegmentCheck 141 46 99
      { lower := 10474, upper := 10603, witness := RowWitness.topPrime 10463 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good077_checked :
    goodSegmentCheck 141 46 99
      { lower := 10604, upper := 10741, witness := RowWitness.topPrime 10601 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good078_checked :
    goodSegmentCheck 141 46 99
      { lower := 10742, upper := 10879, witness := RowWitness.topPrime 10739 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good079_checked :
    goodSegmentCheck 141 46 99
      { lower := 10880, upper := 11007, witness := RowWitness.topPrime 10867 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_good080_checked :
    goodSegmentCheck 141 46 99
      { lower := 11008, upper := 11143, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good081_checked :
    goodSegmentCheck 141 46 99
      { lower := 11144, upper := 11271, witness := RowWitness.topPrime 11131 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good082_checked :
    goodSegmentCheck 141 46 99
      { lower := 11272, upper := 11401, witness := RowWitness.topPrime 11261 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good083_checked :
    goodSegmentCheck 141 46 99
      { lower := 11402, upper := 11539, witness := RowWitness.topPrime 11399 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good084_checked :
    goodSegmentCheck 141 46 99
      { lower := 11540, upper := 11667, witness := RowWitness.topPrime 11527 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good085_checked :
    goodSegmentCheck 141 46 99
      { lower := 11668, upper := 11797, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good086_checked :
    goodSegmentCheck 141 46 99
      { lower := 11798, upper := 11929, witness := RowWitness.topPrime 11789 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good087_checked :
    goodSegmentCheck 141 46 99
      { lower := 11930, upper := 12067, witness := RowWitness.topPrime 11927 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good088_checked :
    goodSegmentCheck 141 46 99
      { lower := 12068, upper := 12189, witness := RowWitness.topPrime 12049 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good089_checked :
    goodSegmentCheck 141 46 99
      { lower := 12190, upper := 12303, witness := RowWitness.topPrime 12163 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good090_checked :
    goodSegmentCheck 141 46 99
      { lower := 12304, upper := 12441, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good091_checked :
    goodSegmentCheck 141 46 99
      { lower := 12442, upper := 12577, witness := RowWitness.topPrime 12437 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good092_checked :
    goodSegmentCheck 141 46 99
      { lower := 12578, upper := 12717, witness := RowWitness.topPrime 12577 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good093_checked :
    goodSegmentCheck 141 46 99
      { lower := 12718, upper := 12853, witness := RowWitness.topPrime 12713 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good094_checked :
    goodSegmentCheck 141 46 99
      { lower := 12854, upper := 12993, witness := RowWitness.topPrime 12853 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good095_checked :
    goodSegmentCheck 141 46 99
      { lower := 12994, upper := 13123, witness := RowWitness.topPrime 12983 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_good096_checked :
    goodSegmentCheck 141 46 99
      { lower := 13124, upper := 13261, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good097_checked :
    goodSegmentCheck 141 46 99
      { lower := 13262, upper := 13399, witness := RowWitness.topPrime 13259 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good098_checked :
    goodSegmentCheck 141 46 99
      { lower := 13400, upper := 13539, witness := RowWitness.topPrime 13399 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good099_checked :
    goodSegmentCheck 141 46 99
      { lower := 13540, upper := 13677, witness := RowWitness.topPrime 13537 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good100_checked :
    goodSegmentCheck 141 46 99
      { lower := 13678, upper := 13809, witness := RowWitness.topPrime 13669 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good101_checked :
    goodSegmentCheck 141 46 99
      { lower := 13810, upper := 13947, witness := RowWitness.topPrime 13807 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good102_checked :
    goodSegmentCheck 141 46 99
      { lower := 13948, upper := 14073, witness := RowWitness.topPrime 13933 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good103_checked :
    goodSegmentCheck 141 46 99
      { lower := 14074, upper := 14211, witness := RowWitness.topPrime 14071 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good104_checked :
    goodSegmentCheck 141 46 99
      { lower := 14212, upper := 14347, witness := RowWitness.topPrime 14207 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good105_checked :
    goodSegmentCheck 141 46 99
      { lower := 14348, upper := 14487, witness := RowWitness.topPrime 14347 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good106_checked :
    goodSegmentCheck 141 46 99
      { lower := 14488, upper := 14619, witness := RowWitness.topPrime 14479 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good107_checked :
    goodSegmentCheck 141 46 99
      { lower := 14620, upper := 14733, witness := RowWitness.topPrime 14593 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good108_checked :
    goodSegmentCheck 141 46 99
      { lower := 14734, upper := 14871, witness := RowWitness.topPrime 14731 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good109_checked :
    goodSegmentCheck 141 46 99
      { lower := 14872, upper := 15009, witness := RowWitness.topPrime 14869 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good110_checked :
    goodSegmentCheck 141 46 99
      { lower := 15010, upper := 15123, witness := RowWitness.topPrime 14983 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good111_checked :
    goodSegmentCheck 141 46 99
      { lower := 15124, upper := 15261, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_good112_checked :
    goodSegmentCheck 141 46 99
      { lower := 15262, upper := 15399, witness := RowWitness.topPrime 15259 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good113_checked :
    goodSegmentCheck 141 46 99
      { lower := 15400, upper := 15531, witness := RowWitness.topPrime 15391 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good114_checked :
    goodSegmentCheck 141 46 99
      { lower := 15532, upper := 15667, witness := RowWitness.topPrime 15527 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good115_checked :
    goodSegmentCheck 141 46 99
      { lower := 15668, upper := 15807, witness := RowWitness.topPrime 15667 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good116_checked :
    goodSegmentCheck 141 46 99
      { lower := 15808, upper := 15943, witness := RowWitness.topPrime 15803 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good117_checked :
    goodSegmentCheck 141 46 99
      { lower := 15944, upper := 16077, witness := RowWitness.topPrime 15937 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good118_checked :
    goodSegmentCheck 141 46 99
      { lower := 16078, upper := 16213, witness := RowWitness.topPrime 16073 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good119_checked :
    goodSegmentCheck 141 46 99
      { lower := 16214, upper := 16333, witness := RowWitness.topPrime 16193 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good120_checked :
    goodSegmentCheck 141 46 99
      { lower := 16334, upper := 16473, witness := RowWitness.topPrime 16333 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good121_checked :
    goodSegmentCheck 141 46 99
      { lower := 16474, upper := 16593, witness := RowWitness.topPrime 16453 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good122_checked :
    goodSegmentCheck 141 46 99
      { lower := 16594, upper := 16713, witness := RowWitness.topPrime 16573 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good123_checked :
    goodSegmentCheck 141 46 99
      { lower := 16714, upper := 16843, witness := RowWitness.topPrime 16703 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good124_checked :
    goodSegmentCheck 141 46 99
      { lower := 16844, upper := 16983, witness := RowWitness.topPrime 16843 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good125_checked :
    goodSegmentCheck 141 46 99
      { lower := 16984, upper := 17121, witness := RowWitness.topPrime 16981 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good126_checked :
    goodSegmentCheck 141 46 99
      { lower := 17122, upper := 17257, witness := RowWitness.topPrime 17117 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good127_checked :
    goodSegmentCheck 141 46 99
      { lower := 17258, upper := 17397, witness := RowWitness.topPrime 17257 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_good128_checked :
    goodSegmentCheck 141 46 99
      { lower := 17398, upper := 17533, witness := RowWitness.topPrime 17393 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good129_checked :
    goodSegmentCheck 141 46 99
      { lower := 17534, upper := 17659, witness := RowWitness.topPrime 17519 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good130_checked :
    goodSegmentCheck 141 46 99
      { lower := 17660, upper := 17799, witness := RowWitness.topPrime 17659 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good131_checked :
    goodSegmentCheck 141 46 99
      { lower := 17800, upper := 17931, witness := RowWitness.topPrime 17791 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good132_checked :
    goodSegmentCheck 141 46 99
      { lower := 17932, upper := 18069, witness := RowWitness.topPrime 17929 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good133_checked :
    goodSegmentCheck 141 46 99
      { lower := 18070, upper := 18201, witness := RowWitness.topPrime 18061 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good134_checked :
    goodSegmentCheck 141 46 99
      { lower := 18202, upper := 18339, witness := RowWitness.topPrime 18199 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good135_checked :
    goodSegmentCheck 141 46 99
      { lower := 18340, upper := 18469, witness := RowWitness.topPrime 18329 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good136_checked :
    goodSegmentCheck 141 46 99
      { lower := 18470, upper := 18601, witness := RowWitness.topPrime 18461 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good137_checked :
    goodSegmentCheck 141 46 99
      { lower := 18602, upper := 18733, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good138_checked :
    goodSegmentCheck 141 46 99
      { lower := 18734, upper := 18871, witness := RowWitness.topPrime 18731 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good139_checked :
    goodSegmentCheck 141 46 99
      { lower := 18872, upper := 19009, witness := RowWitness.topPrime 18869 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good140_checked :
    goodSegmentCheck 141 46 99
      { lower := 19010, upper := 19149, witness := RowWitness.topPrime 19009 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good141_checked :
    goodSegmentCheck 141 46 99
      { lower := 19150, upper := 19281, witness := RowWitness.topPrime 19141 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good142_checked :
    goodSegmentCheck 141 46 99
      { lower := 19282, upper := 19413, witness := RowWitness.topPrime 19273 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good143_checked :
    goodSegmentCheck 141 46 99
      { lower := 19414, upper := 19543, witness := RowWitness.topPrime 19403 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_good144_checked :
    goodSegmentCheck 141 46 99
      { lower := 19544, upper := 19683, witness := RowWitness.topPrime 19543 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good145_checked :
    goodSegmentCheck 141 46 99
      { lower := 19684, upper := 19821, witness := RowWitness.topPrime 19681 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good146_checked :
    goodSegmentCheck 141 46 99
      { lower := 19822, upper := 19823, witness := RowWitness.topPrime 19819 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good147_checked :
    goodSegmentCheck 141 46 99
      { lower := 20172, upper := 20301, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good148_checked :
    goodSegmentCheck 141 46 99
      { lower := 20302, upper := 20304, witness := RowWitness.topPrime 20297 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good149_checked :
    goodSegmentCheck 141 46 99
      { lower := 20402, upper := 20539, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good150_checked :
    goodSegmentCheck 141 46 99
      { lower := 20540, upper := 20673, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good151_checked :
    goodSegmentCheck 141 46 99
      { lower := 20674, upper := 20717, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good152_checked :
    goodSegmentCheck 141 46 99
      { lower := 21296, upper := 21423, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good153_checked :
    goodSegmentCheck 141 46 99
      { lower := 21424, upper := 21436, witness := RowWitness.topPrime 21419 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good154_checked :
    goodSegmentCheck 141 46 99
      { lower := 21875, upper := 22011, witness := RowWitness.topPrime 21871 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good155_checked :
    goodSegmentCheck 141 46 99
      { lower := 22012, upper := 22044, witness := RowWitness.topPrime 22003 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good156_checked :
    goodSegmentCheck 141 46 99
      { lower := 22326, upper := 22328, witness := RowWitness.topPrime 22307 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good157_checked :
    goodSegmentCheck 141 46 99
      { lower := 22445, upper := 22466, witness := RowWitness.topPrime 22441 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good158_checked :
    goodSegmentCheck 141 46 99
      { lower := 22472, upper := 22609, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good159_checked :
    goodSegmentCheck 141 46 99
      { lower := 22610, upper := 22612, witness := RowWitness.topPrime 22573 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_good160_checked :
    goodSegmentCheck 141 46 99
      { lower := 22627, upper := 22668, witness := RowWitness.topPrime 22621 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good161_checked :
    goodSegmentCheck 141 46 99
      { lower := 23763, upper := 23901, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good162_checked :
    goodSegmentCheck 141 46 99
      { lower := 23902, upper := 23902, witness := RowWitness.topPrime 23899 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good163_checked :
    goodSegmentCheck 141 46 99
      { lower := 24010, upper := 24147, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good164_checked :
    goodSegmentCheck 141 46 99
      { lower := 24148, upper := 24150, witness := RowWitness.topPrime 24137 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good165_checked :
    goodSegmentCheck 141 46 99
      { lower := 24167, upper := 24177, witness := RowWitness.topPrime 24151 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good166_checked :
    goodSegmentCheck 141 46 99
      { lower := 24367, upper := 24499, witness := RowWitness.topPrime 24359 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good167_checked :
    goodSegmentCheck 141 46 99
      { lower := 24500, upper := 24507, witness := RowWitness.topPrime 24499 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good168_checked :
    goodSegmentCheck 141 46 99
      { lower := 24576, upper := 24711, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good169_checked :
    goodSegmentCheck 141 46 99
      { lower := 24712, upper := 24716, witness := RowWitness.topPrime 24709 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good170_checked :
    goodSegmentCheck 141 46 99
      { lower := 25000, upper := 25104, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good171_checked :
    goodSegmentCheck 141 46 99
      { lower := 25215, upper := 25329, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good172_checked :
    goodSegmentCheck 141 46 99
      { lower := 25330, upper := 25421, witness := RowWitness.topPrime 25321 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good173_checked :
    goodSegmentCheck 141 46 99
      { lower := 26011, upper := 26026, witness := RowWitness.topPrime 26003 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good174_checked :
    goodSegmentCheck 141 46 99
      { lower := 26047, upper := 26151, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good175_checked :
    goodSegmentCheck 141 46 99
      { lower := 26364, upper := 26384, witness := RowWitness.topPrime 26357 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_good176_checked :
    goodSegmentCheck 141 46 99
      { lower := 26411, upper := 26504, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good177_checked :
    goodSegmentCheck 141 46 99
      { lower := 26645, upper := 26764, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good178_checked :
    goodSegmentCheck 141 46 99
      { lower := 26934, upper := 27036, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good179_checked :
    goodSegmentCheck 141 46 99
      { lower := 27556, upper := 27576, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good180_checked :
    goodSegmentCheck 141 46 99
      { lower := 27848, upper := 27875, witness := RowWitness.topPrime 27847 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good181_checked :
    goodSegmentCheck 141 46 99
      { lower := 28125, upper := 28263, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good182_checked :
    goodSegmentCheck 141 46 99
      { lower := 28264, upper := 28265, witness := RowWitness.topPrime 28229 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good183_checked :
    goodSegmentCheck 141 46 99
      { lower := 28577, upper := 28713, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good184_checked :
    goodSegmentCheck 141 46 99
      { lower := 28714, upper := 28717, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good185_checked :
    goodSegmentCheck 141 46 99
      { lower := 28812, upper := 28812, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good186_checked :
    goodSegmentCheck 141 46 99
      { lower := 29584, upper := 29618, witness := RowWitness.topPrime 29581 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good187_checked :
    goodSegmentCheck 141 46 99
      { lower := 29791, upper := 29908, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good188_checked :
    goodSegmentCheck 141 46 99
      { lower := 30258, upper := 30386, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good189_checked :
    goodSegmentCheck 141 46 99
      { lower := 30720, upper := 30743, witness := RowWitness.topPrime 30713 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good190_checked :
    goodSegmentCheck 141 46 99
      { lower := 30758, upper := 30860, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good191_checked :
    goodSegmentCheck 141 46 99
      { lower := 31213, upper := 31333, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_good192_checked :
    goodSegmentCheck 141 46 99
      { lower := 31334, upper := 31390, witness := RowWitness.topPrime 31333 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good193_checked :
    goodSegmentCheck 141 46 99
      { lower := 31423, upper := 31537, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good194_checked :
    goodSegmentCheck 141 46 99
      { lower := 31538, upper := 31563, witness := RowWitness.topPrime 31531 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good195_checked :
    goodSegmentCheck 141 46 99
      { lower := 31939, upper := 31967, witness := RowWitness.topPrime 31907 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good196_checked :
    goodSegmentCheck 141 46 99
      { lower := 31974, upper := 32079, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good197_checked :
    goodSegmentCheck 141 46 99
      { lower := 32805, upper := 32908, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good198_checked :
    goodSegmentCheck 141 46 99
      { lower := 33614, upper := 33629, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good199_checked :
    goodSegmentCheck 141 46 99
      { lower := 33708, upper := 33754, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good200_checked :
    goodSegmentCheck 141 46 99
      { lower := 34322, upper := 34459, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good201_checked :
    goodSegmentCheck 141 46 99
      { lower := 34460, upper := 34531, witness := RowWitness.topPrime 34457 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good202_checked :
    goodSegmentCheck 141 46 99
      { lower := 34816, upper := 34947, witness := RowWitness.topPrime 34807 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good203_checked :
    goodSegmentCheck 141 46 99
      { lower := 34948, upper := 34950, witness := RowWitness.topPrime 34939 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good204_checked :
    goodSegmentCheck 141 46 99
      { lower := 35152, upper := 35271, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good205_checked :
    goodSegmentCheck 141 46 99
      { lower := 35287, upper := 35292, witness := RowWitness.topPrime 35281 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good206_checked :
    goodSegmentCheck 141 46 99
      { lower := 36015, upper := 36052, witness := RowWitness.topPrime 36013 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good207_checked :
    goodSegmentCheck 141 46 99
      { lower := 36517, upper := 36637, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_good208_checked :
    goodSegmentCheck 141 46 99
      { lower := 36638, upper := 36641, witness := RowWitness.topPrime 36637 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good209_checked :
    goodSegmentCheck 141 46 99
      { lower := 37303, upper := 37417, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good210_checked :
    goodSegmentCheck 141 46 99
      { lower := 37418, upper := 37443, witness := RowWitness.topPrime 37409 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good211_checked :
    goodSegmentCheck 141 46 99
      { lower := 37446, upper := 37489, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good212_checked :
    goodSegmentCheck 141 46 99
      { lower := 37500, upper := 37633, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good213_checked :
    goodSegmentCheck 141 46 99
      { lower := 37634, upper := 37678, witness := RowWitness.topPrime 37633 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good214_checked :
    goodSegmentCheck 141 46 99
      { lower := 38307, upper := 38443, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good215_checked :
    goodSegmentCheck 141 46 99
      { lower := 38444, upper := 38447, witness := RowWitness.topPrime 38431 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good216_checked :
    goodSegmentCheck 141 46 99
      { lower := 39326, upper := 39463, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good217_checked :
    goodSegmentCheck 141 46 99
      { lower := 39464, upper := 39466, witness := RowWitness.topPrime 39461 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good218_checked :
    goodSegmentCheck 141 46 99
      { lower := 40401, upper := 40468, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good219_checked :
    goodSegmentCheck 141 46 99
      { lower := 40931, upper := 40944, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good220_checked :
    goodSegmentCheck 141 46 99
      { lower := 40960, upper := 41071, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good221_checked :
    goodSegmentCheck 141 46 99
      { lower := 43750, upper := 43827, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good222_checked :
    goodSegmentCheck 141 46 99
      { lower := 45369, upper := 45393, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good223_checked :
    goodSegmentCheck 141 46 99
      { lower := 47526, upper := 47661, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_good224_checked :
    goodSegmentCheck 141 46 99
      { lower := 47662, upper := 47664, witness := RowWitness.topPrime 47659 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good225_checked :
    goodSegmentCheck 141 46 99
      { lower := 48013, upper := 48101, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good226_checked :
    goodSegmentCheck 141 46 99
      { lower := 48387, upper := 48513, witness := RowWitness.topPrime 48383 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good227_checked :
    goodSegmentCheck 141 46 99
      { lower := 48734, upper := 48873, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good228_checked :
    goodSegmentCheck 141 46 99
      { lower := 48874, upper := 48874, witness := RowWitness.topPrime 48871 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good229_checked :
    goodSegmentCheck 141 46 99
      { lower := 49152, upper := 49270, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good230_checked :
    goodSegmentCheck 141 46 99
      { lower := 50421, upper := 50550, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good231_checked :
    goodSegmentCheck 141 46 99
      { lower := 51076, upper := 51145, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good232_checked :
    goodSegmentCheck 141 46 99
      { lower := 53290, upper := 53388, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good233_checked :
    goodSegmentCheck 141 46 99
      { lower := 55451, upper := 55581, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good234_checked :
    goodSegmentCheck 141 46 99
      { lower := 55582, upper := 55587, witness := RowWitness.topPrime 55579 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good235_checked :
    goodSegmentCheck 141 46 99
      { lower := 56307, upper := 56309, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good236_checked :
    goodSegmentCheck 141 46 99
      { lower := 57245, upper := 57262, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good237_checked :
    goodSegmentCheck 141 46 99
      { lower := 57344, upper := 57385, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good238_checked :
    goodSegmentCheck 141 46 99
      { lower := 58619, upper := 58704, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good239_checked :
    goodSegmentCheck 141 46 99
      { lower := 59049, upper := 59096, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_good240_checked :
    goodSegmentCheck 141 46 99
      { lower := 62500, upper := 62550, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good241_checked :
    goodSegmentCheck 141 46 99
      { lower := 63869, upper := 64003, witness := RowWitness.topPrime 63863 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good242_checked :
    goodSegmentCheck 141 46 99
      { lower := 64004, upper := 64009, witness := RowWitness.topPrime 63997 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good243_checked :
    goodSegmentCheck 141 46 99
      { lower := 65536, upper := 65661, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good244_checked :
    goodSegmentCheck 141 46 99
      { lower := 65662, upper := 65673, witness := RowWitness.topPrime 65657 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good245_checked :
    goodSegmentCheck 141 46 99
      { lower := 68644, upper := 68779, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good246_checked :
    goodSegmentCheck 141 46 99
      { lower := 68780, upper := 68834, witness := RowWitness.topPrime 68777 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good247_checked :
    goodSegmentCheck 141 46 99
      { lower := 68890, upper := 69021, witness := RowWitness.topPrime 68881 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good248_checked :
    goodSegmentCheck 141 46 99
      { lower := 69022, upper := 69030, witness := RowWitness.topPrime 69019 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good249_checked :
    goodSegmentCheck 141 46 99
      { lower := 71289, upper := 71427, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good250_checked :
    goodSegmentCheck 141 46 99
      { lower := 71428, upper := 71429, witness := RowWitness.topPrime 71419 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good251_checked :
    goodSegmentCheck 141 46 99
      { lower := 73205, upper := 73307, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good252_checked :
    goodSegmentCheck 141 46 99
      { lower := 85805, upper := 85823, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good253_checked :
    goodSegmentCheck 141 46 99
      { lower := 89383, upper := 89513, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good254_checked :
    goodSegmentCheck 141 46 99
      { lower := 93845, upper := 93890, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good255_checked :
    goodSegmentCheck 141 46 99
      { lower := 103041, upper := 103106, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good251_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good252_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good253_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good254_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good255_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_good256_checked :
    goodSegmentCheck 141 46 99
      { lower := 109503, upper := 109515, witness := RowWitness.topPrime 109481 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good257_checked :
    goodSegmentCheck 141 46 99
      { lower := 146410, upper := 146474, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good258_checked :
    goodSegmentCheck 141 46 99
      { lower := 148955, upper := 149017, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good259_checked :
    goodSegmentCheck 141 46 99
      { lower := 154568, upper := 154589, witness := RowWitness.topPrime 154543 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good258_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good259_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_goods_checked :
    row141.goods.all (goodSegmentCheck row141.height.i row141.height.r row141.height.s) = true := by
  change row141_goods.all (goodSegmentCheck 141 46 99) = true
  simp only [row141_goods, List.all_cons, List.all_nil,
    row141_good000_checked,
    row141_good001_checked,
    row141_good002_checked,
    row141_good003_checked,
    row141_good004_checked,
    row141_good005_checked,
    row141_good006_checked,
    row141_good007_checked,
    row141_good008_checked,
    row141_good009_checked,
    row141_good010_checked,
    row141_good011_checked,
    row141_good012_checked,
    row141_good013_checked,
    row141_good014_checked,
    row141_good015_checked,
    row141_good016_checked,
    row141_good017_checked,
    row141_good018_checked,
    row141_good019_checked,
    row141_good020_checked,
    row141_good021_checked,
    row141_good022_checked,
    row141_good023_checked,
    row141_good024_checked,
    row141_good025_checked,
    row141_good026_checked,
    row141_good027_checked,
    row141_good028_checked,
    row141_good029_checked,
    row141_good030_checked,
    row141_good031_checked,
    row141_good032_checked,
    row141_good033_checked,
    row141_good034_checked,
    row141_good035_checked,
    row141_good036_checked,
    row141_good037_checked,
    row141_good038_checked,
    row141_good039_checked,
    row141_good040_checked,
    row141_good041_checked,
    row141_good042_checked,
    row141_good043_checked,
    row141_good044_checked,
    row141_good045_checked,
    row141_good046_checked,
    row141_good047_checked,
    row141_good048_checked,
    row141_good049_checked,
    row141_good050_checked,
    row141_good051_checked,
    row141_good052_checked,
    row141_good053_checked,
    row141_good054_checked,
    row141_good055_checked,
    row141_good056_checked,
    row141_good057_checked,
    row141_good058_checked,
    row141_good059_checked,
    row141_good060_checked,
    row141_good061_checked,
    row141_good062_checked,
    row141_good063_checked,
    row141_good064_checked,
    row141_good065_checked,
    row141_good066_checked,
    row141_good067_checked,
    row141_good068_checked,
    row141_good069_checked,
    row141_good070_checked,
    row141_good071_checked,
    row141_good072_checked,
    row141_good073_checked,
    row141_good074_checked,
    row141_good075_checked,
    row141_good076_checked,
    row141_good077_checked,
    row141_good078_checked,
    row141_good079_checked,
    row141_good080_checked,
    row141_good081_checked,
    row141_good082_checked,
    row141_good083_checked,
    row141_good084_checked,
    row141_good085_checked,
    row141_good086_checked,
    row141_good087_checked,
    row141_good088_checked,
    row141_good089_checked,
    row141_good090_checked,
    row141_good091_checked,
    row141_good092_checked,
    row141_good093_checked,
    row141_good094_checked,
    row141_good095_checked,
    row141_good096_checked,
    row141_good097_checked,
    row141_good098_checked,
    row141_good099_checked,
    row141_good100_checked,
    row141_good101_checked,
    row141_good102_checked,
    row141_good103_checked,
    row141_good104_checked,
    row141_good105_checked,
    row141_good106_checked,
    row141_good107_checked,
    row141_good108_checked,
    row141_good109_checked,
    row141_good110_checked,
    row141_good111_checked,
    row141_good112_checked,
    row141_good113_checked,
    row141_good114_checked,
    row141_good115_checked,
    row141_good116_checked,
    row141_good117_checked,
    row141_good118_checked,
    row141_good119_checked,
    row141_good120_checked,
    row141_good121_checked,
    row141_good122_checked,
    row141_good123_checked,
    row141_good124_checked,
    row141_good125_checked,
    row141_good126_checked,
    row141_good127_checked,
    row141_good128_checked,
    row141_good129_checked,
    row141_good130_checked,
    row141_good131_checked,
    row141_good132_checked,
    row141_good133_checked,
    row141_good134_checked,
    row141_good135_checked,
    row141_good136_checked,
    row141_good137_checked,
    row141_good138_checked,
    row141_good139_checked,
    row141_good140_checked,
    row141_good141_checked,
    row141_good142_checked,
    row141_good143_checked,
    row141_good144_checked,
    row141_good145_checked,
    row141_good146_checked,
    row141_good147_checked,
    row141_good148_checked,
    row141_good149_checked,
    row141_good150_checked,
    row141_good151_checked,
    row141_good152_checked,
    row141_good153_checked,
    row141_good154_checked,
    row141_good155_checked,
    row141_good156_checked,
    row141_good157_checked,
    row141_good158_checked,
    row141_good159_checked,
    row141_good160_checked,
    row141_good161_checked,
    row141_good162_checked,
    row141_good163_checked,
    row141_good164_checked,
    row141_good165_checked,
    row141_good166_checked,
    row141_good167_checked,
    row141_good168_checked,
    row141_good169_checked,
    row141_good170_checked,
    row141_good171_checked,
    row141_good172_checked,
    row141_good173_checked,
    row141_good174_checked,
    row141_good175_checked,
    row141_good176_checked,
    row141_good177_checked,
    row141_good178_checked,
    row141_good179_checked,
    row141_good180_checked,
    row141_good181_checked,
    row141_good182_checked,
    row141_good183_checked,
    row141_good184_checked,
    row141_good185_checked,
    row141_good186_checked,
    row141_good187_checked,
    row141_good188_checked,
    row141_good189_checked,
    row141_good190_checked,
    row141_good191_checked,
    row141_good192_checked,
    row141_good193_checked,
    row141_good194_checked,
    row141_good195_checked,
    row141_good196_checked,
    row141_good197_checked,
    row141_good198_checked,
    row141_good199_checked,
    row141_good200_checked,
    row141_good201_checked,
    row141_good202_checked,
    row141_good203_checked,
    row141_good204_checked,
    row141_good205_checked,
    row141_good206_checked,
    row141_good207_checked,
    row141_good208_checked,
    row141_good209_checked,
    row141_good210_checked,
    row141_good211_checked,
    row141_good212_checked,
    row141_good213_checked,
    row141_good214_checked,
    row141_good215_checked,
    row141_good216_checked,
    row141_good217_checked,
    row141_good218_checked,
    row141_good219_checked,
    row141_good220_checked,
    row141_good221_checked,
    row141_good222_checked,
    row141_good223_checked,
    row141_good224_checked,
    row141_good225_checked,
    row141_good226_checked,
    row141_good227_checked,
    row141_good228_checked,
    row141_good229_checked,
    row141_good230_checked,
    row141_good231_checked,
    row141_good232_checked,
    row141_good233_checked,
    row141_good234_checked,
    row141_good235_checked,
    row141_good236_checked,
    row141_good237_checked,
    row141_good238_checked,
    row141_good239_checked,
    row141_good240_checked,
    row141_good241_checked,
    row141_good242_checked,
    row141_good243_checked,
    row141_good244_checked,
    row141_good245_checked,
    row141_good246_checked,
    row141_good247_checked,
    row141_good248_checked,
    row141_good249_checked,
    row141_good250_checked,
    row141_good251_checked,
    row141_good252_checked,
    row141_good253_checked,
    row141_good254_checked,
    row141_good255_checked,
    row141_good256_checked,
    row141_good257_checked,
    row141_good258_checked,
    row141_good259_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_registered :
    decide (row141.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row141_small_checked :
    coverCheck (2 * row141.height.i + 2) (row141.height.i * (row141.height.i - 1) - 1)
      (row141.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row141_layerCover_checked :
    coverCheck (row141.height.i * (row141.height.i - 1)) (row141.height.n0 - 1)
      (row141.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row141_bounds : List NatInterval :=
  [(284, 423), (424, 561), (562, 697), (698, 831), (832, 969), (970, 1107), (1108, 1243), (1244, 1377), (1378, 1513), (1514, 1651), (1652, 1777), (1778, 1917), (1918, 2053), (2054, 2193), (2194, 2319), (2320, 2451), (2452, 2587), (2588, 2719), (2720, 2859), (2860, 2997), (2998, 3111), (3112, 3249), (3250, 3369), (3370, 3501), (3502, 3639), (3640, 3777), (3778, 3909), (3910, 4047), (4048, 4167), (4168, 4299), (4300, 4437), (4438, 4563), (4564, 4701), (4702, 4831), (4832, 4971), (4972, 5109), (5110, 5247), (5248, 5377), (5378, 5491), (5492, 5623), (5624, 5763), (5764, 5889), (5890, 6021), (6022, 6151), (6152, 6291), (6292, 6427), (6428, 6567), (6568, 6703), (6704, 6843), (6844, 6981), (6982, 7117), (7118, 7249), (7250, 7387), (7388, 7509), (7510, 7647), (7648, 7783), (7784, 7899), (7900, 8023), (8024, 8157), (8158, 8287), (8288, 8427), (8428, 8563), (8564, 8703), (8704, 8839), (8840, 8979), (8980, 9111), (9112, 9249), (9250, 9381), (9382, 9517), (9518, 9651), (9652, 9789), (9790, 9927), (9928, 10063), (10064, 10201), (10202, 10333), (10334, 10473), (10474, 10603), (10604, 10741), (10742, 10879), (10880, 11007), (11008, 11143), (11144, 11271), (11272, 11401), (11402, 11539), (11540, 11667), (11668, 11797), (11798, 11929), (11930, 12067), (12068, 12189), (12190, 12303), (12304, 12441), (12442, 12577), (12578, 12717), (12718, 12853), (12854, 12993), (12994, 13123), (13124, 13261), (13262, 13399), (13400, 13539), (13540, 13677), (13678, 13809), (13810, 13947), (13948, 14073), (14074, 14211), (14212, 14347), (14348, 14487), (14488, 14619), (14620, 14733), (14734, 14871), (14872, 15009), (15010, 15123), (15124, 15261), (15262, 15399), (15400, 15531), (15532, 15667), (15668, 15807), (15808, 15943), (15944, 16077), (16078, 16213), (16214, 16333), (16334, 16473), (16474, 16593), (16594, 16713), (16714, 16843), (16844, 16983), (16984, 17121), (17122, 17257), (17258, 17397), (17398, 17533), (17534, 17659), (17660, 17799), (17800, 17931), (17932, 18069), (18070, 18201), (18202, 18339), (18340, 18469), (18470, 18601), (18602, 18733), (18734, 18871), (18872, 19009), (19010, 19149), (19150, 19281), (19282, 19413), (19414, 19543), (19544, 19683), (19684, 19821), (19822, 19823), (20172, 20301), (20302, 20304), (20402, 20539), (20540, 20673), (20674, 20717), (21296, 21423), (21424, 21436), (21875, 22011), (22012, 22044), (22326, 22328), (22445, 22466), (22472, 22609), (22610, 22612), (22627, 22668), (23763, 23901), (23902, 23902), (24010, 24147), (24148, 24150), (24167, 24177), (24367, 24499), (24500, 24507), (24576, 24711), (24712, 24716), (25000, 25104), (25215, 25329), (25330, 25421), (26011, 26026), (26047, 26151), (26364, 26384), (26411, 26504), (26645, 26764), (26934, 27036), (27556, 27576), (27848, 27875), (28125, 28263), (28264, 28265), (28577, 28713), (28714, 28717), (28812, 28812), (29584, 29618), (29791, 29908), (30258, 30386), (30720, 30743), (30758, 30860), (31213, 31333), (31334, 31390), (31423, 31537), (31538, 31563), (31939, 31967), (31974, 32079), (32805, 32908), (33614, 33629), (33708, 33754), (34322, 34459), (34460, 34531), (34816, 34947), (34948, 34950), (35152, 35271), (35287, 35292), (36015, 36052), (36517, 36637), (36638, 36641), (37303, 37417), (37418, 37443), (37446, 37489), (37500, 37633), (37634, 37678), (38307, 38443), (38444, 38447), (39326, 39463), (39464, 39466), (40401, 40468), (40931, 40944), (40960, 41071), (43750, 43827), (45369, 45393), (47526, 47661), (47662, 47664), (48013, 48101), (48387, 48513), (48734, 48873), (48874, 48874), (49152, 49270), (50421, 50550), (51076, 51145), (53290, 53388), (55451, 55581), (55582, 55587), (56307, 56309), (57245, 57262), (57344, 57385), (58619, 58704), (59049, 59096), (62500, 62550), (63869, 64003), (64004, 64009), (65536, 65661), (65662, 65673), (68644, 68779), (68780, 68834), (68890, 69021), (69022, 69030), (71289, 71427), (71428, 71429), (73205, 73307), (85805, 85823), (89383, 89513), (93845, 93890), (103041, 103106), (109503, 109515), (146410, 146474), (148955, 149017), (154568, 154589)]

theorem row141_bounds_eq : row141.goods.map goodSegmentBounds = row141_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row141_layer000_intervals : List ColouredInterval :=
  [(2, 20480, 20620), (2, 22528, 22668), (2, 24576, 24716), (2, 26624, 26764), (2, 28672, 28812), (2, 30720, 30860), (2, 32768, 32908), (2, 34816, 34956), (2, 36864, 37004), (2, 38912, 39052), (2, 20480, 20620), (2, 24576, 24716), (2, 28672, 28812), (2, 32768, 32908), (2, 36864, 37004), (2, 24576, 24716), (2, 32768, 32908), (2, 32768, 32908), (2, 32768, 32908), (3, 19740, 19823), (3, 26244, 26384), (3, 32805, 32945), (3, 39366, 39479), (3, 19740, 19823), (3, 39366, 39479), (5, 21875, 22015), (5, 25000, 25140), (5, 28125, 28265), (5, 31250, 31390), (5, 34375, 34515), (5, 37500, 37640), (5, 31250, 31390), (7, 21609, 21749), (7, 24010, 24150), (7, 26411, 26551), (7, 28812, 28952), (7, 31213, 31353), (7, 33614, 33754), (7, 36015, 36155), (7, 38416, 38556), (7, 33614, 33754), (11, 19965, 20105), (11, 21296, 21436), (11, 22627, 22767), (11, 23958, 24098), (11, 25289, 25429), (11, 29282, 29422), (13, 19773, 19913), (13, 21970, 22110), (13, 24167, 24307), (13, 26364, 26504), (13, 28561, 28701), (13, 30758, 30898), (13, 32955, 33095), (13, 35152, 35292), (13, 37349, 37489), (13, 28561, 28701), (17, 19740, 19792), (17, 24565, 24705), (17, 29478, 29618), (17, 34391, 34531), (17, 39304, 39444), (19, 20577, 20717), (19, 27436, 27576), (19, 34295, 34435), (23, 24334, 24474), (23, 36501, 36641), (29, 24389, 24529), (31, 29791, 29931), (37, 20535, 20675), (37, 21904, 22044), (37, 23273, 23413), (37, 24642, 24782), (37, 26011, 26151), (41, 20172, 20312), (41, 21853, 21993), (41, 23534, 23674), (41, 25215, 25355), (41, 26896, 27036), (41, 28577, 28717), (41, 30258, 30398), (41, 31939, 32079), (43, 20339, 20479), (43, 22188, 22328), (43, 24037, 24177), (43, 25886, 26026), (43, 27735, 27875), (43, 29584, 29724), (43, 31433, 31573), (43, 33282, 33422), (43, 35131, 35271), (53, 19740, 19803), (53, 22472, 22612), (53, 25281, 25421), (53, 28090, 28230), (53, 30899, 31039), (53, 33708, 33848), (53, 36517, 36657), (53, 39326, 39466), (59, 20886, 21026), (59, 24367, 24507), (59, 27848, 27988), (59, 31329, 31469), (59, 34810, 34950), (59, 38291, 38431), (61, 22326, 22466), (61, 26047, 26187), (61, 29768, 29908), (61, 33489, 33629), (61, 37210, 37350), (67, 22445, 22585), (67, 26934, 27074), (67, 31423, 31563), (67, 35912, 36052), (71, 20164, 20304), (71, 25205, 25345), (71, 30246, 30386), (71, 35287, 35427), (73, 21316, 21456), (73, 26645, 26785), (73, 31974, 32114), (73, 37303, 37443), (79, 24964, 25104), (79, 31205, 31345), (79, 37446, 37586), (83, 20667, 20807), (83, 27556, 27696), (83, 34445, 34585), (89, 23763, 23903), (89, 31684, 31824), (97, 28227, 28367), (97, 37636, 37776), (101, 20402, 20542), (101, 30603, 30743), (103, 21218, 21358), (103, 31827, 31967), (107, 22898, 23038), (107, 34347, 34487), (109, 23762, 23902), (109, 35643, 35783), (113, 25538, 25678), (113, 38307, 38447), (127, 32258, 32398), (131, 34322, 34462), (137, 37538, 37678), (139, 38642, 38782)]

def row141_layer000_block000 : List ColouredInterval :=
  [(2, 20480, 20620), (2, 22528, 22668), (2, 24576, 24716), (2, 26624, 26764), (2, 28672, 28812), (2, 30720, 30860), (2, 32768, 32908), (2, 34816, 34956), (2, 36864, 37004), (2, 38912, 39052), (2, 20480, 20620), (2, 24576, 24716), (2, 28672, 28812), (2, 32768, 32908)]

def row141_layer000_block001 : List ColouredInterval :=
  [(2, 36864, 37004), (2, 24576, 24716), (2, 32768, 32908), (2, 32768, 32908), (2, 32768, 32908), (3, 19740, 19823), (3, 26244, 26384), (3, 32805, 32945), (3, 39366, 39479), (3, 19740, 19823), (3, 39366, 39479), (5, 21875, 22015), (5, 25000, 25140), (5, 28125, 28265)]

def row141_layer000_block002 : List ColouredInterval :=
  [(5, 31250, 31390), (5, 34375, 34515), (5, 37500, 37640), (5, 31250, 31390), (7, 21609, 21749), (7, 24010, 24150), (7, 26411, 26551), (7, 28812, 28952), (7, 31213, 31353), (7, 33614, 33754), (7, 36015, 36155), (7, 38416, 38556), (7, 33614, 33754), (11, 19965, 20105)]

def row141_layer000_block003 : List ColouredInterval :=
  [(11, 21296, 21436), (11, 22627, 22767), (11, 23958, 24098), (11, 25289, 25429), (11, 29282, 29422), (13, 19773, 19913), (13, 21970, 22110), (13, 24167, 24307), (13, 26364, 26504), (13, 28561, 28701), (13, 30758, 30898), (13, 32955, 33095), (13, 35152, 35292), (13, 37349, 37489)]

def row141_layer000_block004 : List ColouredInterval :=
  [(13, 28561, 28701), (17, 19740, 19792), (17, 24565, 24705), (17, 29478, 29618), (17, 34391, 34531), (17, 39304, 39444), (19, 20577, 20717), (19, 27436, 27576), (19, 34295, 34435), (23, 24334, 24474), (23, 36501, 36641), (29, 24389, 24529), (31, 29791, 29931), (37, 20535, 20675)]

def row141_layer000_block005 : List ColouredInterval :=
  [(37, 21904, 22044), (37, 23273, 23413), (37, 24642, 24782), (37, 26011, 26151), (41, 20172, 20312), (41, 21853, 21993), (41, 23534, 23674), (41, 25215, 25355), (41, 26896, 27036), (41, 28577, 28717), (41, 30258, 30398), (41, 31939, 32079), (43, 20339, 20479), (43, 22188, 22328)]

def row141_layer000_block006 : List ColouredInterval :=
  [(43, 24037, 24177), (43, 25886, 26026), (43, 27735, 27875), (43, 29584, 29724), (43, 31433, 31573), (43, 33282, 33422), (43, 35131, 35271), (53, 19740, 19803), (53, 22472, 22612), (53, 25281, 25421), (53, 28090, 28230), (53, 30899, 31039), (53, 33708, 33848), (53, 36517, 36657)]

def row141_layer000_block007 : List ColouredInterval :=
  [(53, 39326, 39466), (59, 20886, 21026), (59, 24367, 24507), (59, 27848, 27988), (59, 31329, 31469), (59, 34810, 34950), (59, 38291, 38431), (61, 22326, 22466), (61, 26047, 26187), (61, 29768, 29908), (61, 33489, 33629), (61, 37210, 37350), (67, 22445, 22585), (67, 26934, 27074)]

def row141_layer000_block008 : List ColouredInterval :=
  [(67, 31423, 31563), (67, 35912, 36052), (71, 20164, 20304), (71, 25205, 25345), (71, 30246, 30386), (71, 35287, 35427), (73, 21316, 21456), (73, 26645, 26785), (73, 31974, 32114), (73, 37303, 37443), (79, 24964, 25104), (79, 31205, 31345), (79, 37446, 37586), (83, 20667, 20807)]

def row141_layer000_block009 : List ColouredInterval :=
  [(83, 27556, 27696), (83, 34445, 34585), (89, 23763, 23903), (89, 31684, 31824), (97, 28227, 28367), (97, 37636, 37776), (101, 20402, 20542), (101, 30603, 30743), (103, 21218, 21358), (103, 31827, 31967), (107, 22898, 23038), (107, 34347, 34487), (109, 23762, 23902), (109, 35643, 35783)]

def row141_layer000_block010 : List ColouredInterval :=
  [(113, 25538, 25678), (113, 38307, 38447), (127, 32258, 32398), (131, 34322, 34462), (137, 37538, 37678), (139, 38642, 38782)]

def row141_layer000_chunks : List (List ColouredInterval) :=
  [row141_layer000_block000, row141_layer000_block001, row141_layer000_block002, row141_layer000_block003, row141_layer000_block004, row141_layer000_block005, row141_layer000_block006, row141_layer000_block007, row141_layer000_block008, row141_layer000_block009, row141_layer000_block010]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer000_arithmetic : LayerArithmeticValid row141.height { lower := 19740, upper := 39480, M := 19 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer000_enumeration :
    activePowerIntervalList 141 19 19740 39480 = row141_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer000_pairs000 :
    row141_layer000_block000.all (fun I => row141_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row141_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer000_pairs001 :
    row141_layer000_block001.all (fun I => row141_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row141_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer000_pairs002 :
    row141_layer000_block002.all (fun I => row141_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row141_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer000_pairs003 :
    row141_layer000_block003.all (fun I => row141_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row141_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer000_pairs004 :
    row141_layer000_block004.all (fun I => row141_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row141_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer000_pairs005 :
    row141_layer000_block005.all (fun I => row141_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row141_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer000_pairs006 :
    row141_layer000_block006.all (fun I => row141_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row141_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer000_pairs007 :
    row141_layer000_block007.all (fun I => row141_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row141_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer000_pairs007
