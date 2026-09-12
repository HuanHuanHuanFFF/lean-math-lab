import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row142_height : HeightCertificateDatum := { i := 142, r := 47, s := 100, n0Power10 := 8 }

def row142_goods : List GoodSegment := [
  { lower := 286, upper := 424, witness := RowWitness.topPrime 283 },
  { lower := 425, upper := 562, witness := RowWitness.topPrime 421 },
  { lower := 563, upper := 704, witness := RowWitness.topPrime 563 },
  { lower := 705, upper := 842, witness := RowWitness.topPrime 701 },
  { lower := 843, upper := 980, witness := RowWitness.topPrime 839 },
  { lower := 981, upper := 1118, witness := RowWitness.topPrime 977 },
  { lower := 1119, upper := 1258, witness := RowWitness.topPrime 1117 },
  { lower := 1259, upper := 1400, witness := RowWitness.topPrime 1259 },
  { lower := 1401, upper := 1540, witness := RowWitness.topPrime 1399 },
  { lower := 1541, upper := 1672, witness := RowWitness.topPrime 1531 },
  { lower := 1673, upper := 1810, witness := RowWitness.topPrime 1669 },
  { lower := 1811, upper := 1952, witness := RowWitness.topPrime 1811 },
  { lower := 1953, upper := 2092, witness := RowWitness.topPrime 1951 },
  { lower := 2093, upper := 2230, witness := RowWitness.topPrime 2089 },
  { lower := 2231, upper := 2362, witness := RowWitness.topPrime 2221 },
  { lower := 2363, upper := 2498, witness := RowWitness.topPrime 2357 },
  { lower := 2499, upper := 2618, witness := RowWitness.topPrime 2477 },
  { lower := 2619, upper := 2758, witness := RowWitness.topPrime 2617 },
  { lower := 2759, upper := 2894, witness := RowWitness.topPrime 2753 },
  { lower := 2895, upper := 3028, witness := RowWitness.topPrime 2887 },
  { lower := 3029, upper := 3164, witness := RowWitness.topPrime 3023 },
  { lower := 3165, upper := 3304, witness := RowWitness.topPrime 3163 },
  { lower := 3305, upper := 3442, witness := RowWitness.topPrime 3301 },
  { lower := 3443, upper := 3574, witness := RowWitness.topPrime 3433 },
  { lower := 3575, upper := 3712, witness := RowWitness.topPrime 3571 },
  { lower := 3713, upper := 3850, witness := RowWitness.topPrime 3709 },
  { lower := 3851, upper := 3992, witness := RowWitness.topPrime 3851 },
  { lower := 3993, upper := 4130, witness := RowWitness.topPrime 3989 },
  { lower := 4131, upper := 4270, witness := RowWitness.topPrime 4129 },
  { lower := 4271, upper := 4412, witness := RowWitness.topPrime 4271 },
  { lower := 4413, upper := 4550, witness := RowWitness.topPrime 4409 },
  { lower := 4551, upper := 4690, witness := RowWitness.topPrime 4549 },
  { lower := 4691, upper := 4832, witness := RowWitness.topPrime 4691 },
  { lower := 4833, upper := 4972, witness := RowWitness.topPrime 4831 },
  { lower := 4973, upper := 5114, witness := RowWitness.topPrime 4973 },
  { lower := 5115, upper := 5254, witness := RowWitness.topPrime 5113 },
  { lower := 5255, upper := 5378, witness := RowWitness.topPrime 5237 },
  { lower := 5379, upper := 5492, witness := RowWitness.topPrime 5351 },
  { lower := 5493, upper := 5624, witness := RowWitness.topPrime 5483 },
  { lower := 5625, upper := 5764, witness := RowWitness.topPrime 5623 },
  { lower := 5765, upper := 5890, witness := RowWitness.topPrime 5749 },
  { lower := 5891, upper := 6022, witness := RowWitness.topPrime 5881 },
  { lower := 6023, upper := 6152, witness := RowWitness.topPrime 6011 },
  { lower := 6153, upper := 6292, witness := RowWitness.topPrime 6151 },
  { lower := 6293, upper := 6428, witness := RowWitness.topPrime 6287 },
  { lower := 6429, upper := 6568, witness := RowWitness.topPrime 6427 },
  { lower := 6569, upper := 6710, witness := RowWitness.topPrime 6569 },
  { lower := 6711, upper := 6850, witness := RowWitness.topPrime 6709 },
  { lower := 6851, upper := 6982, witness := RowWitness.topPrime 6841 },
  { lower := 6983, upper := 7124, witness := RowWitness.topPrime 6983 },
  { lower := 7125, upper := 7262, witness := RowWitness.topPrime 7121 },
  { lower := 7263, upper := 7394, witness := RowWitness.topPrime 7253 },
  { lower := 7395, upper := 7534, witness := RowWitness.topPrime 7393 },
  { lower := 7535, upper := 7670, witness := RowWitness.topPrime 7529 },
  { lower := 7671, upper := 7810, witness := RowWitness.topPrime 7669 },
  { lower := 7811, upper := 7934, witness := RowWitness.topPrime 7793 },
  { lower := 7935, upper := 8074, witness := RowWitness.topPrime 7933 },
  { lower := 8075, upper := 8210, witness := RowWitness.topPrime 8069 },
  { lower := 8211, upper := 8350, witness := RowWitness.topPrime 8209 },
  { lower := 8351, upper := 8470, witness := RowWitness.topPrime 8329 },
  { lower := 8471, upper := 8608, witness := RowWitness.topPrime 8467 },
  { lower := 8609, upper := 8750, witness := RowWitness.topPrime 8609 },
  { lower := 8751, upper := 8888, witness := RowWitness.topPrime 8747 },
  { lower := 8889, upper := 9028, witness := RowWitness.topPrime 8887 },
  { lower := 9029, upper := 9170, witness := RowWitness.topPrime 9029 },
  { lower := 9171, upper := 9302, witness := RowWitness.topPrime 9161 },
  { lower := 9303, upper := 9434, witness := RowWitness.topPrime 9293 },
  { lower := 9435, upper := 9574, witness := RowWitness.topPrime 9433 },
  { lower := 9575, upper := 9692, witness := RowWitness.topPrime 9551 },
  { lower := 9693, upper := 9830, witness := RowWitness.topPrime 9689 },
  { lower := 9831, upper := 9970, witness := RowWitness.topPrime 9829 },
  { lower := 9971, upper := 10108, witness := RowWitness.topPrime 9967 },
  { lower := 10109, upper := 10244, witness := RowWitness.topPrime 10103 },
  { lower := 10245, upper := 10384, witness := RowWitness.topPrime 10243 },
  { lower := 10385, upper := 10510, witness := RowWitness.topPrime 10369 },
  { lower := 10511, upper := 10642, witness := RowWitness.topPrime 10501 },
  { lower := 10643, upper := 10780, witness := RowWitness.topPrime 10639 },
  { lower := 10781, upper := 10922, witness := RowWitness.topPrime 10781 },
  { lower := 10923, upper := 11050, witness := RowWitness.topPrime 10909 },
  { lower := 11051, upper := 11188, witness := RowWitness.topPrime 11047 },
  { lower := 11189, upper := 11318, witness := RowWitness.topPrime 11177 },
  { lower := 11319, upper := 11458, witness := RowWitness.topPrime 11317 },
  { lower := 11459, upper := 11588, witness := RowWitness.topPrime 11447 },
  { lower := 11589, upper := 11728, witness := RowWitness.topPrime 11587 },
  { lower := 11729, upper := 11860, witness := RowWitness.topPrime 11719 },
  { lower := 11861, upper := 11980, witness := RowWitness.topPrime 11839 },
  { lower := 11981, upper := 12122, witness := RowWitness.topPrime 11981 },
  { lower := 12123, upper := 12260, witness := RowWitness.topPrime 12119 },
  { lower := 12261, upper := 12394, witness := RowWitness.topPrime 12253 },
  { lower := 12395, upper := 12532, witness := RowWitness.topPrime 12391 },
  { lower := 12533, upper := 12668, witness := RowWitness.topPrime 12527 },
  { lower := 12669, upper := 12800, witness := RowWitness.topPrime 12659 },
  { lower := 12801, upper := 12940, witness := RowWitness.topPrime 12799 },
  { lower := 12941, upper := 13082, witness := RowWitness.topPrime 12941 },
  { lower := 13083, upper := 13204, witness := RowWitness.topPrime 13063 },
  { lower := 13205, upper := 13328, witness := RowWitness.topPrime 13187 },
  { lower := 13329, upper := 13468, witness := RowWitness.topPrime 13327 },
  { lower := 13469, upper := 13610, witness := RowWitness.topPrime 13469 },
  { lower := 13611, upper := 13738, witness := RowWitness.topPrime 13597 },
  { lower := 13739, upper := 13870, witness := RowWitness.topPrime 13729 },
  { lower := 13871, upper := 14000, witness := RowWitness.topPrime 13859 },
  { lower := 14001, upper := 14140, witness := RowWitness.topPrime 13999 },
  { lower := 14141, upper := 14248, witness := RowWitness.topPrime 14107 },
  { lower := 14249, upper := 14390, witness := RowWitness.topPrime 14249 },
  { lower := 14391, upper := 14530, witness := RowWitness.topPrime 14389 },
  { lower := 14531, upper := 14660, witness := RowWitness.topPrime 14519 },
  { lower := 14661, upper := 14798, witness := RowWitness.topPrime 14657 },
  { lower := 14799, upper := 14938, witness := RowWitness.topPrime 14797 },
  { lower := 14939, upper := 15080, witness := RowWitness.topPrime 14939 },
  { lower := 15081, upper := 15218, witness := RowWitness.topPrime 15077 },
  { lower := 15219, upper := 15358, witness := RowWitness.topPrime 15217 },
  { lower := 15359, upper := 15500, witness := RowWitness.topPrime 15359 },
  { lower := 15501, upper := 15638, witness := RowWitness.topPrime 15497 },
  { lower := 15639, upper := 15770, witness := RowWitness.topPrime 15629 },
  { lower := 15771, upper := 15908, witness := RowWitness.topPrime 15767 },
  { lower := 15909, upper := 16048, witness := RowWitness.topPrime 15907 },
  { lower := 16049, upper := 16174, witness := RowWitness.topPrime 16033 },
  { lower := 16175, upper := 16282, witness := RowWitness.topPrime 16141 },
  { lower := 16283, upper := 16414, witness := RowWitness.topPrime 16273 },
  { lower := 16415, upper := 16552, witness := RowWitness.topPrime 16411 },
  { lower := 16553, upper := 16694, witness := RowWitness.topPrime 16553 },
  { lower := 16695, upper := 16834, witness := RowWitness.topPrime 16693 },
  { lower := 16835, upper := 16972, witness := RowWitness.topPrime 16831 },
  { lower := 16973, upper := 17104, witness := RowWitness.topPrime 16963 },
  { lower := 17105, upper := 17240, witness := RowWitness.topPrime 17099 },
  { lower := 17241, upper := 17380, witness := RowWitness.topPrime 17239 },
  { lower := 17381, upper := 17518, witness := RowWitness.topPrime 17377 },
  { lower := 17519, upper := 17660, witness := RowWitness.topPrime 17519 },
  { lower := 17661, upper := 17800, witness := RowWitness.topPrime 17659 },
  { lower := 17801, upper := 17932, witness := RowWitness.topPrime 17791 },
  { lower := 17933, upper := 18070, witness := RowWitness.topPrime 17929 },
  { lower := 18071, upper := 18202, witness := RowWitness.topPrime 18061 },
  { lower := 18203, upper := 18340, witness := RowWitness.topPrime 18199 },
  { lower := 18341, upper := 18482, witness := RowWitness.topPrime 18341 },
  { lower := 18483, upper := 18622, witness := RowWitness.topPrime 18481 },
  { lower := 18623, upper := 18758, witness := RowWitness.topPrime 18617 },
  { lower := 18759, upper := 18898, witness := RowWitness.topPrime 18757 },
  { lower := 18899, upper := 19040, witness := RowWitness.topPrime 18899 },
  { lower := 19041, upper := 19178, witness := RowWitness.topPrime 19037 },
  { lower := 19179, upper := 19304, witness := RowWitness.topPrime 19163 },
  { lower := 19305, upper := 19442, witness := RowWitness.topPrime 19301 },
  { lower := 19443, upper := 19582, witness := RowWitness.topPrime 19441 },
  { lower := 19583, upper := 19724, witness := RowWitness.topPrime 19583 },
  { lower := 19725, upper := 19858, witness := RowWitness.topPrime 19717 },
  { lower := 19859, upper := 19994, witness := RowWitness.topPrime 19853 },
  { lower := 19995, upper := 20022, witness := RowWitness.topPrime 19993 },
  { lower := 20402, upper := 20540, witness := RowWitness.topPrime 20399 },
  { lower := 20541, upper := 20674, witness := RowWitness.topPrime 20533 },
  { lower := 20675, upper := 20718, witness := RowWitness.topPrime 20663 },
  { lower := 21296, upper := 21424, witness := RowWitness.topPrime 21283 },
  { lower := 21425, upper := 21437, witness := RowWitness.topPrime 21419 },
  { lower := 21870, upper := 22004, witness := RowWitness.topPrime 21863 },
  { lower := 22005, upper := 22045, witness := RowWitness.topPrime 22003 },
  { lower := 22090, upper := 22111, witness := RowWitness.topPrime 22079 },
  { lower := 22188, upper := 22231, witness := RowWitness.topPrime 22171 },
  { lower := 22326, upper := 22329, witness := RowWitness.topPrime 22307 },
  { lower := 22445, upper := 22467, witness := RowWitness.topPrime 22441 },
  { lower := 22472, upper := 22586, witness := RowWitness.topPrime 22469 },
  { lower := 23763, upper := 23902, witness := RowWitness.topPrime 23761 },
  { lower := 23903, upper := 23903, witness := RowWitness.topPrime 23899 },
  { lower := 24010, upper := 24148, witness := RowWitness.topPrime 24007 },
  { lower := 24149, upper := 24198, witness := RowWitness.topPrime 24137 },
  { lower := 24299, upper := 24308, witness := RowWitness.topPrime 24281 },
  { lower := 24334, upper := 24470, witness := RowWitness.topPrime 24329 },
  { lower := 24471, upper := 24508, witness := RowWitness.topPrime 24469 },
  { lower := 24576, upper := 24712, witness := RowWitness.topPrime 24571 },
  { lower := 24713, upper := 24717, witness := RowWitness.topPrime 24709 },
  { lower := 25000, upper := 25105, witness := RowWitness.topPrime 24989 },
  { lower := 25281, upper := 25356, witness := RowWitness.topPrime 25261 },
  { lower := 26364, upper := 26385, witness := RowWitness.topPrime 26357 },
  { lower := 26411, upper := 26505, witness := RowWitness.topPrime 26407 },
  { lower := 26508, upper := 26552, witness := RowWitness.topPrime 26501 },
  { lower := 26645, upper := 26649, witness := RowWitness.topPrime 26641 },
  { lower := 26934, upper := 27037, witness := RowWitness.topPrime 26927 },
  { lower := 27556, upper := 27577, witness := RowWitness.topPrime 27551 },
  { lower := 27848, upper := 27876, witness := RowWitness.topPrime 27847 },
  { lower := 28125, upper := 28264, witness := RowWitness.topPrime 28123 },
  { lower := 28265, upper := 28266, witness := RowWitness.topPrime 28229 },
  { lower := 28561, upper := 28572, witness := RowWitness.topPrime 28559 },
  { lower := 28577, upper := 28714, witness := RowWitness.topPrime 28573 },
  { lower := 28715, upper := 28852, witness := RowWitness.topPrime 28711 },
  { lower := 28853, upper := 28858, witness := RowWitness.topPrime 28843 },
  { lower := 29584, upper := 29619, witness := RowWitness.topPrime 29581 },
  { lower := 29791, upper := 29909, witness := RowWitness.topPrime 29789 },
  { lower := 30618, upper := 30734, witness := RowWitness.topPrime 30593 },
  { lower := 30735, upper := 30744, witness := RowWitness.topPrime 30727 },
  { lower := 30758, upper := 30759, witness := RowWitness.topPrime 30757 },
  { lower := 30899, upper := 30899, witness := RowWitness.topPrime 30893 },
  { lower := 30926, upper := 31040, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31334, witness := RowWitness.topPrime 31193 },
  { lower := 31335, upper := 31391, witness := RowWitness.topPrime 31333 },
  { lower := 31423, upper := 31538, witness := RowWitness.topPrime 31397 },
  { lower := 31539, upper := 31564, witness := RowWitness.topPrime 31531 },
  { lower := 32805, upper := 32909, witness := RowWitness.topPrime 32803 },
  { lower := 33614, upper := 33630, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33755, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34460, witness := RowWitness.topPrime 34319 },
  { lower := 34461, upper := 34532, witness := RowWitness.topPrime 34457 },
  { lower := 36015, upper := 36053, witness := RowWitness.topPrime 36013 },
  { lower := 36517, upper := 36638, witness := RowWitness.topPrime 36497 },
  { lower := 36639, upper := 36642, witness := RowWitness.topPrime 36637 },
  { lower := 37210, upper := 37342, witness := RowWitness.topPrime 37201 },
  { lower := 37343, upper := 37444, witness := RowWitness.topPrime 37339 },
  { lower := 37446, upper := 37490, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37634, witness := RowWitness.topPrime 37493 },
  { lower := 37635, upper := 37694, witness := RowWitness.topPrime 37633 },
  { lower := 38307, upper := 38444, witness := RowWitness.topPrime 38303 },
  { lower := 38445, upper := 38448, witness := RowWitness.topPrime 38431 },
  { lower := 39326, upper := 39464, witness := RowWitness.topPrime 39323 },
  { lower := 39465, upper := 39467, witness := RowWitness.topPrime 39461 },
  { lower := 39605, upper := 39687, witness := RowWitness.topPrime 39581 },
  { lower := 40931, upper := 40945, witness := RowWitness.topPrime 40927 },
  { lower := 40960, upper := 41072, witness := RowWitness.topPrime 40949 },
  { lower := 43750, upper := 43828, witness := RowWitness.topPrime 43721 },
  { lower := 45927, upper := 45937, witness := RowWitness.topPrime 45893 },
  { lower := 47526, upper := 47662, witness := RowWitness.topPrime 47521 },
  { lower := 47663, upper := 47665, witness := RowWitness.topPrime 47659 },
  { lower := 48013, upper := 48102, witness := RowWitness.topPrime 47981 },
  { lower := 48387, upper := 48514, witness := RowWitness.topPrime 48383 },
  { lower := 48734, upper := 48874, witness := RowWitness.topPrime 48733 },
  { lower := 48875, upper := 48875, witness := RowWitness.topPrime 48871 },
  { lower := 49152, upper := 49271, witness := RowWitness.topPrime 49139 },
  { lower := 51076, upper := 51146, witness := RowWitness.topPrime 51071 },
  { lower := 56307, upper := 56310, witness := RowWitness.topPrime 56299 },
  { lower := 57245, upper := 57263, witness := RowWitness.topPrime 57241 },
  { lower := 57344, upper := 57386, witness := RowWitness.topPrime 57331 },
  { lower := 58619, upper := 58705, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59097, witness := RowWitness.topPrime 59029 },
  { lower := 62500, upper := 62551, witness := RowWitness.topPrime 62497 },
  { lower := 63869, upper := 64004, witness := RowWitness.topPrime 63863 },
  { lower := 64005, upper := 64010, witness := RowWitness.topPrime 63997 },
  { lower := 65610, upper := 65677, witness := RowWitness.topPrime 65609 },
  { lower := 68644, upper := 68780, witness := RowWitness.topPrime 68639 },
  { lower := 68781, upper := 68835, witness := RowWitness.topPrime 68777 },
  { lower := 68890, upper := 69022, witness := RowWitness.topPrime 68881 },
  { lower := 69023, upper := 69031, witness := RowWitness.topPrime 69019 },
  { lower := 71289, upper := 71428, witness := RowWitness.topPrime 71287 },
  { lower := 71429, upper := 71430, witness := RowWitness.topPrime 71429 },
  { lower := 73205, upper := 73308, witness := RowWitness.topPrime 73189 },
  { lower := 85805, upper := 85824, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89514, witness := RowWitness.topPrime 89381 },
  { lower := 93845, upper := 93891, witness := RowWitness.topPrime 93827 },
  { lower := 98415, upper := 98445, witness := RowWitness.topPrime 98411 },
  { lower := 103041, upper := 103107, witness := RowWitness.topPrime 103007 },
  { lower := 109503, upper := 109516, witness := RowWitness.topPrime 109481 },
  { lower := 137842, upper := 137922, witness := RowWitness.topPrime 137831 },
  { lower := 146410, upper := 146475, witness := RowWitness.topPrime 146407 },
  { lower := 148955, upper := 149018, witness := RowWitness.topPrime 148949 },
  { lower := 154568, upper := 154590, witness := RowWitness.topPrime 154543 }
]

def row142_layers : List CoverLayer := [
  { lower := 20022, upper := 40044, M := 18 },
  { lower := 40044, upper := 80088, M := 14 },
  { lower := 80088, upper := 160176, M := 10 },
  { lower := 160176, upper := 320352, M := 8 },
  { lower := 320352, upper := 640704, M := 6 },
  { lower := 640704, upper := 1281408, M := 5 },
  { lower := 1281408, upper := 2562816, M := 4 },
  { lower := 2562816, upper := 5125632, M := 3 },
  { lower := 5125632, upper := 10251264, M := 2 },
  { lower := 10251264, upper := 20502528, M := 2 },
  { lower := 20502528, upper := 41005056, M := 2 },
  { lower := 41005056, upper := 82010112, M := 1 },
  { lower := 82010112, upper := 100000000, M := 1 }
]

def row142 : FiniteCoverRow := {
  height := row142_height,
  goods := row142_goods,
  layers := row142_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_good000_checked :
    goodSegmentCheck 142 47 100
      { lower := 286, upper := 424, witness := RowWitness.topPrime 283 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good001_checked :
    goodSegmentCheck 142 47 100
      { lower := 425, upper := 562, witness := RowWitness.topPrime 421 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good002_checked :
    goodSegmentCheck 142 47 100
      { lower := 563, upper := 704, witness := RowWitness.topPrime 563 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good003_checked :
    goodSegmentCheck 142 47 100
      { lower := 705, upper := 842, witness := RowWitness.topPrime 701 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good004_checked :
    goodSegmentCheck 142 47 100
      { lower := 843, upper := 980, witness := RowWitness.topPrime 839 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good005_checked :
    goodSegmentCheck 142 47 100
      { lower := 981, upper := 1118, witness := RowWitness.topPrime 977 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good006_checked :
    goodSegmentCheck 142 47 100
      { lower := 1119, upper := 1258, witness := RowWitness.topPrime 1117 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good007_checked :
    goodSegmentCheck 142 47 100
      { lower := 1259, upper := 1400, witness := RowWitness.topPrime 1259 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good008_checked :
    goodSegmentCheck 142 47 100
      { lower := 1401, upper := 1540, witness := RowWitness.topPrime 1399 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good009_checked :
    goodSegmentCheck 142 47 100
      { lower := 1541, upper := 1672, witness := RowWitness.topPrime 1531 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good010_checked :
    goodSegmentCheck 142 47 100
      { lower := 1673, upper := 1810, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good011_checked :
    goodSegmentCheck 142 47 100
      { lower := 1811, upper := 1952, witness := RowWitness.topPrime 1811 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good012_checked :
    goodSegmentCheck 142 47 100
      { lower := 1953, upper := 2092, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good013_checked :
    goodSegmentCheck 142 47 100
      { lower := 2093, upper := 2230, witness := RowWitness.topPrime 2089 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good014_checked :
    goodSegmentCheck 142 47 100
      { lower := 2231, upper := 2362, witness := RowWitness.topPrime 2221 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good015_checked :
    goodSegmentCheck 142 47 100
      { lower := 2363, upper := 2498, witness := RowWitness.topPrime 2357 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_good016_checked :
    goodSegmentCheck 142 47 100
      { lower := 2499, upper := 2618, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good017_checked :
    goodSegmentCheck 142 47 100
      { lower := 2619, upper := 2758, witness := RowWitness.topPrime 2617 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good018_checked :
    goodSegmentCheck 142 47 100
      { lower := 2759, upper := 2894, witness := RowWitness.topPrime 2753 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good019_checked :
    goodSegmentCheck 142 47 100
      { lower := 2895, upper := 3028, witness := RowWitness.topPrime 2887 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good020_checked :
    goodSegmentCheck 142 47 100
      { lower := 3029, upper := 3164, witness := RowWitness.topPrime 3023 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good021_checked :
    goodSegmentCheck 142 47 100
      { lower := 3165, upper := 3304, witness := RowWitness.topPrime 3163 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good022_checked :
    goodSegmentCheck 142 47 100
      { lower := 3305, upper := 3442, witness := RowWitness.topPrime 3301 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good023_checked :
    goodSegmentCheck 142 47 100
      { lower := 3443, upper := 3574, witness := RowWitness.topPrime 3433 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good024_checked :
    goodSegmentCheck 142 47 100
      { lower := 3575, upper := 3712, witness := RowWitness.topPrime 3571 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good025_checked :
    goodSegmentCheck 142 47 100
      { lower := 3713, upper := 3850, witness := RowWitness.topPrime 3709 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good026_checked :
    goodSegmentCheck 142 47 100
      { lower := 3851, upper := 3992, witness := RowWitness.topPrime 3851 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good027_checked :
    goodSegmentCheck 142 47 100
      { lower := 3993, upper := 4130, witness := RowWitness.topPrime 3989 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good028_checked :
    goodSegmentCheck 142 47 100
      { lower := 4131, upper := 4270, witness := RowWitness.topPrime 4129 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good029_checked :
    goodSegmentCheck 142 47 100
      { lower := 4271, upper := 4412, witness := RowWitness.topPrime 4271 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good030_checked :
    goodSegmentCheck 142 47 100
      { lower := 4413, upper := 4550, witness := RowWitness.topPrime 4409 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good031_checked :
    goodSegmentCheck 142 47 100
      { lower := 4551, upper := 4690, witness := RowWitness.topPrime 4549 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_good032_checked :
    goodSegmentCheck 142 47 100
      { lower := 4691, upper := 4832, witness := RowWitness.topPrime 4691 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good033_checked :
    goodSegmentCheck 142 47 100
      { lower := 4833, upper := 4972, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good034_checked :
    goodSegmentCheck 142 47 100
      { lower := 4973, upper := 5114, witness := RowWitness.topPrime 4973 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good035_checked :
    goodSegmentCheck 142 47 100
      { lower := 5115, upper := 5254, witness := RowWitness.topPrime 5113 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good036_checked :
    goodSegmentCheck 142 47 100
      { lower := 5255, upper := 5378, witness := RowWitness.topPrime 5237 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good037_checked :
    goodSegmentCheck 142 47 100
      { lower := 5379, upper := 5492, witness := RowWitness.topPrime 5351 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good038_checked :
    goodSegmentCheck 142 47 100
      { lower := 5493, upper := 5624, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good039_checked :
    goodSegmentCheck 142 47 100
      { lower := 5625, upper := 5764, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good040_checked :
    goodSegmentCheck 142 47 100
      { lower := 5765, upper := 5890, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good041_checked :
    goodSegmentCheck 142 47 100
      { lower := 5891, upper := 6022, witness := RowWitness.topPrime 5881 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good042_checked :
    goodSegmentCheck 142 47 100
      { lower := 6023, upper := 6152, witness := RowWitness.topPrime 6011 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good043_checked :
    goodSegmentCheck 142 47 100
      { lower := 6153, upper := 6292, witness := RowWitness.topPrime 6151 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good044_checked :
    goodSegmentCheck 142 47 100
      { lower := 6293, upper := 6428, witness := RowWitness.topPrime 6287 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good045_checked :
    goodSegmentCheck 142 47 100
      { lower := 6429, upper := 6568, witness := RowWitness.topPrime 6427 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good046_checked :
    goodSegmentCheck 142 47 100
      { lower := 6569, upper := 6710, witness := RowWitness.topPrime 6569 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good047_checked :
    goodSegmentCheck 142 47 100
      { lower := 6711, upper := 6850, witness := RowWitness.topPrime 6709 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_good048_checked :
    goodSegmentCheck 142 47 100
      { lower := 6851, upper := 6982, witness := RowWitness.topPrime 6841 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good049_checked :
    goodSegmentCheck 142 47 100
      { lower := 6983, upper := 7124, witness := RowWitness.topPrime 6983 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good050_checked :
    goodSegmentCheck 142 47 100
      { lower := 7125, upper := 7262, witness := RowWitness.topPrime 7121 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good051_checked :
    goodSegmentCheck 142 47 100
      { lower := 7263, upper := 7394, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good052_checked :
    goodSegmentCheck 142 47 100
      { lower := 7395, upper := 7534, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good053_checked :
    goodSegmentCheck 142 47 100
      { lower := 7535, upper := 7670, witness := RowWitness.topPrime 7529 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good054_checked :
    goodSegmentCheck 142 47 100
      { lower := 7671, upper := 7810, witness := RowWitness.topPrime 7669 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good055_checked :
    goodSegmentCheck 142 47 100
      { lower := 7811, upper := 7934, witness := RowWitness.topPrime 7793 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good056_checked :
    goodSegmentCheck 142 47 100
      { lower := 7935, upper := 8074, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good057_checked :
    goodSegmentCheck 142 47 100
      { lower := 8075, upper := 8210, witness := RowWitness.topPrime 8069 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good058_checked :
    goodSegmentCheck 142 47 100
      { lower := 8211, upper := 8350, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good059_checked :
    goodSegmentCheck 142 47 100
      { lower := 8351, upper := 8470, witness := RowWitness.topPrime 8329 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good060_checked :
    goodSegmentCheck 142 47 100
      { lower := 8471, upper := 8608, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good061_checked :
    goodSegmentCheck 142 47 100
      { lower := 8609, upper := 8750, witness := RowWitness.topPrime 8609 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good062_checked :
    goodSegmentCheck 142 47 100
      { lower := 8751, upper := 8888, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good063_checked :
    goodSegmentCheck 142 47 100
      { lower := 8889, upper := 9028, witness := RowWitness.topPrime 8887 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_good064_checked :
    goodSegmentCheck 142 47 100
      { lower := 9029, upper := 9170, witness := RowWitness.topPrime 9029 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good065_checked :
    goodSegmentCheck 142 47 100
      { lower := 9171, upper := 9302, witness := RowWitness.topPrime 9161 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good066_checked :
    goodSegmentCheck 142 47 100
      { lower := 9303, upper := 9434, witness := RowWitness.topPrime 9293 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good067_checked :
    goodSegmentCheck 142 47 100
      { lower := 9435, upper := 9574, witness := RowWitness.topPrime 9433 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good068_checked :
    goodSegmentCheck 142 47 100
      { lower := 9575, upper := 9692, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good069_checked :
    goodSegmentCheck 142 47 100
      { lower := 9693, upper := 9830, witness := RowWitness.topPrime 9689 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good070_checked :
    goodSegmentCheck 142 47 100
      { lower := 9831, upper := 9970, witness := RowWitness.topPrime 9829 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good071_checked :
    goodSegmentCheck 142 47 100
      { lower := 9971, upper := 10108, witness := RowWitness.topPrime 9967 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good072_checked :
    goodSegmentCheck 142 47 100
      { lower := 10109, upper := 10244, witness := RowWitness.topPrime 10103 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good073_checked :
    goodSegmentCheck 142 47 100
      { lower := 10245, upper := 10384, witness := RowWitness.topPrime 10243 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good074_checked :
    goodSegmentCheck 142 47 100
      { lower := 10385, upper := 10510, witness := RowWitness.topPrime 10369 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good075_checked :
    goodSegmentCheck 142 47 100
      { lower := 10511, upper := 10642, witness := RowWitness.topPrime 10501 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good076_checked :
    goodSegmentCheck 142 47 100
      { lower := 10643, upper := 10780, witness := RowWitness.topPrime 10639 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good077_checked :
    goodSegmentCheck 142 47 100
      { lower := 10781, upper := 10922, witness := RowWitness.topPrime 10781 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good078_checked :
    goodSegmentCheck 142 47 100
      { lower := 10923, upper := 11050, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good079_checked :
    goodSegmentCheck 142 47 100
      { lower := 11051, upper := 11188, witness := RowWitness.topPrime 11047 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_good080_checked :
    goodSegmentCheck 142 47 100
      { lower := 11189, upper := 11318, witness := RowWitness.topPrime 11177 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good081_checked :
    goodSegmentCheck 142 47 100
      { lower := 11319, upper := 11458, witness := RowWitness.topPrime 11317 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good082_checked :
    goodSegmentCheck 142 47 100
      { lower := 11459, upper := 11588, witness := RowWitness.topPrime 11447 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good083_checked :
    goodSegmentCheck 142 47 100
      { lower := 11589, upper := 11728, witness := RowWitness.topPrime 11587 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good084_checked :
    goodSegmentCheck 142 47 100
      { lower := 11729, upper := 11860, witness := RowWitness.topPrime 11719 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good085_checked :
    goodSegmentCheck 142 47 100
      { lower := 11861, upper := 11980, witness := RowWitness.topPrime 11839 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good086_checked :
    goodSegmentCheck 142 47 100
      { lower := 11981, upper := 12122, witness := RowWitness.topPrime 11981 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good087_checked :
    goodSegmentCheck 142 47 100
      { lower := 12123, upper := 12260, witness := RowWitness.topPrime 12119 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good088_checked :
    goodSegmentCheck 142 47 100
      { lower := 12261, upper := 12394, witness := RowWitness.topPrime 12253 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good089_checked :
    goodSegmentCheck 142 47 100
      { lower := 12395, upper := 12532, witness := RowWitness.topPrime 12391 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good090_checked :
    goodSegmentCheck 142 47 100
      { lower := 12533, upper := 12668, witness := RowWitness.topPrime 12527 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good091_checked :
    goodSegmentCheck 142 47 100
      { lower := 12669, upper := 12800, witness := RowWitness.topPrime 12659 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good092_checked :
    goodSegmentCheck 142 47 100
      { lower := 12801, upper := 12940, witness := RowWitness.topPrime 12799 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good093_checked :
    goodSegmentCheck 142 47 100
      { lower := 12941, upper := 13082, witness := RowWitness.topPrime 12941 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good094_checked :
    goodSegmentCheck 142 47 100
      { lower := 13083, upper := 13204, witness := RowWitness.topPrime 13063 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good095_checked :
    goodSegmentCheck 142 47 100
      { lower := 13205, upper := 13328, witness := RowWitness.topPrime 13187 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_good096_checked :
    goodSegmentCheck 142 47 100
      { lower := 13329, upper := 13468, witness := RowWitness.topPrime 13327 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good097_checked :
    goodSegmentCheck 142 47 100
      { lower := 13469, upper := 13610, witness := RowWitness.topPrime 13469 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good098_checked :
    goodSegmentCheck 142 47 100
      { lower := 13611, upper := 13738, witness := RowWitness.topPrime 13597 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good099_checked :
    goodSegmentCheck 142 47 100
      { lower := 13739, upper := 13870, witness := RowWitness.topPrime 13729 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good100_checked :
    goodSegmentCheck 142 47 100
      { lower := 13871, upper := 14000, witness := RowWitness.topPrime 13859 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good101_checked :
    goodSegmentCheck 142 47 100
      { lower := 14001, upper := 14140, witness := RowWitness.topPrime 13999 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good102_checked :
    goodSegmentCheck 142 47 100
      { lower := 14141, upper := 14248, witness := RowWitness.topPrime 14107 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good103_checked :
    goodSegmentCheck 142 47 100
      { lower := 14249, upper := 14390, witness := RowWitness.topPrime 14249 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good104_checked :
    goodSegmentCheck 142 47 100
      { lower := 14391, upper := 14530, witness := RowWitness.topPrime 14389 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good105_checked :
    goodSegmentCheck 142 47 100
      { lower := 14531, upper := 14660, witness := RowWitness.topPrime 14519 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good106_checked :
    goodSegmentCheck 142 47 100
      { lower := 14661, upper := 14798, witness := RowWitness.topPrime 14657 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good107_checked :
    goodSegmentCheck 142 47 100
      { lower := 14799, upper := 14938, witness := RowWitness.topPrime 14797 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good108_checked :
    goodSegmentCheck 142 47 100
      { lower := 14939, upper := 15080, witness := RowWitness.topPrime 14939 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good109_checked :
    goodSegmentCheck 142 47 100
      { lower := 15081, upper := 15218, witness := RowWitness.topPrime 15077 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good110_checked :
    goodSegmentCheck 142 47 100
      { lower := 15219, upper := 15358, witness := RowWitness.topPrime 15217 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good111_checked :
    goodSegmentCheck 142 47 100
      { lower := 15359, upper := 15500, witness := RowWitness.topPrime 15359 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_good112_checked :
    goodSegmentCheck 142 47 100
      { lower := 15501, upper := 15638, witness := RowWitness.topPrime 15497 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good113_checked :
    goodSegmentCheck 142 47 100
      { lower := 15639, upper := 15770, witness := RowWitness.topPrime 15629 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good114_checked :
    goodSegmentCheck 142 47 100
      { lower := 15771, upper := 15908, witness := RowWitness.topPrime 15767 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good115_checked :
    goodSegmentCheck 142 47 100
      { lower := 15909, upper := 16048, witness := RowWitness.topPrime 15907 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good116_checked :
    goodSegmentCheck 142 47 100
      { lower := 16049, upper := 16174, witness := RowWitness.topPrime 16033 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good117_checked :
    goodSegmentCheck 142 47 100
      { lower := 16175, upper := 16282, witness := RowWitness.topPrime 16141 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good118_checked :
    goodSegmentCheck 142 47 100
      { lower := 16283, upper := 16414, witness := RowWitness.topPrime 16273 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good119_checked :
    goodSegmentCheck 142 47 100
      { lower := 16415, upper := 16552, witness := RowWitness.topPrime 16411 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good120_checked :
    goodSegmentCheck 142 47 100
      { lower := 16553, upper := 16694, witness := RowWitness.topPrime 16553 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good121_checked :
    goodSegmentCheck 142 47 100
      { lower := 16695, upper := 16834, witness := RowWitness.topPrime 16693 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good122_checked :
    goodSegmentCheck 142 47 100
      { lower := 16835, upper := 16972, witness := RowWitness.topPrime 16831 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good123_checked :
    goodSegmentCheck 142 47 100
      { lower := 16973, upper := 17104, witness := RowWitness.topPrime 16963 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good124_checked :
    goodSegmentCheck 142 47 100
      { lower := 17105, upper := 17240, witness := RowWitness.topPrime 17099 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good125_checked :
    goodSegmentCheck 142 47 100
      { lower := 17241, upper := 17380, witness := RowWitness.topPrime 17239 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good126_checked :
    goodSegmentCheck 142 47 100
      { lower := 17381, upper := 17518, witness := RowWitness.topPrime 17377 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good127_checked :
    goodSegmentCheck 142 47 100
      { lower := 17519, upper := 17660, witness := RowWitness.topPrime 17519 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_good128_checked :
    goodSegmentCheck 142 47 100
      { lower := 17661, upper := 17800, witness := RowWitness.topPrime 17659 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good129_checked :
    goodSegmentCheck 142 47 100
      { lower := 17801, upper := 17932, witness := RowWitness.topPrime 17791 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good130_checked :
    goodSegmentCheck 142 47 100
      { lower := 17933, upper := 18070, witness := RowWitness.topPrime 17929 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good131_checked :
    goodSegmentCheck 142 47 100
      { lower := 18071, upper := 18202, witness := RowWitness.topPrime 18061 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good132_checked :
    goodSegmentCheck 142 47 100
      { lower := 18203, upper := 18340, witness := RowWitness.topPrime 18199 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good133_checked :
    goodSegmentCheck 142 47 100
      { lower := 18341, upper := 18482, witness := RowWitness.topPrime 18341 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good134_checked :
    goodSegmentCheck 142 47 100
      { lower := 18483, upper := 18622, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good135_checked :
    goodSegmentCheck 142 47 100
      { lower := 18623, upper := 18758, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good136_checked :
    goodSegmentCheck 142 47 100
      { lower := 18759, upper := 18898, witness := RowWitness.topPrime 18757 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good137_checked :
    goodSegmentCheck 142 47 100
      { lower := 18899, upper := 19040, witness := RowWitness.topPrime 18899 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good138_checked :
    goodSegmentCheck 142 47 100
      { lower := 19041, upper := 19178, witness := RowWitness.topPrime 19037 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good139_checked :
    goodSegmentCheck 142 47 100
      { lower := 19179, upper := 19304, witness := RowWitness.topPrime 19163 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good140_checked :
    goodSegmentCheck 142 47 100
      { lower := 19305, upper := 19442, witness := RowWitness.topPrime 19301 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good141_checked :
    goodSegmentCheck 142 47 100
      { lower := 19443, upper := 19582, witness := RowWitness.topPrime 19441 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good142_checked :
    goodSegmentCheck 142 47 100
      { lower := 19583, upper := 19724, witness := RowWitness.topPrime 19583 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good143_checked :
    goodSegmentCheck 142 47 100
      { lower := 19725, upper := 19858, witness := RowWitness.topPrime 19717 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_good144_checked :
    goodSegmentCheck 142 47 100
      { lower := 19859, upper := 19994, witness := RowWitness.topPrime 19853 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good145_checked :
    goodSegmentCheck 142 47 100
      { lower := 19995, upper := 20022, witness := RowWitness.topPrime 19993 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good146_checked :
    goodSegmentCheck 142 47 100
      { lower := 20402, upper := 20540, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good147_checked :
    goodSegmentCheck 142 47 100
      { lower := 20541, upper := 20674, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good148_checked :
    goodSegmentCheck 142 47 100
      { lower := 20675, upper := 20718, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good149_checked :
    goodSegmentCheck 142 47 100
      { lower := 21296, upper := 21424, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good150_checked :
    goodSegmentCheck 142 47 100
      { lower := 21425, upper := 21437, witness := RowWitness.topPrime 21419 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good151_checked :
    goodSegmentCheck 142 47 100
      { lower := 21870, upper := 22004, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good152_checked :
    goodSegmentCheck 142 47 100
      { lower := 22005, upper := 22045, witness := RowWitness.topPrime 22003 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good153_checked :
    goodSegmentCheck 142 47 100
      { lower := 22090, upper := 22111, witness := RowWitness.topPrime 22079 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good154_checked :
    goodSegmentCheck 142 47 100
      { lower := 22188, upper := 22231, witness := RowWitness.topPrime 22171 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good155_checked :
    goodSegmentCheck 142 47 100
      { lower := 22326, upper := 22329, witness := RowWitness.topPrime 22307 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good156_checked :
    goodSegmentCheck 142 47 100
      { lower := 22445, upper := 22467, witness := RowWitness.topPrime 22441 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good157_checked :
    goodSegmentCheck 142 47 100
      { lower := 22472, upper := 22586, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good158_checked :
    goodSegmentCheck 142 47 100
      { lower := 23763, upper := 23902, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good159_checked :
    goodSegmentCheck 142 47 100
      { lower := 23903, upper := 23903, witness := RowWitness.topPrime 23899 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_good160_checked :
    goodSegmentCheck 142 47 100
      { lower := 24010, upper := 24148, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good161_checked :
    goodSegmentCheck 142 47 100
      { lower := 24149, upper := 24198, witness := RowWitness.topPrime 24137 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good162_checked :
    goodSegmentCheck 142 47 100
      { lower := 24299, upper := 24308, witness := RowWitness.topPrime 24281 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good163_checked :
    goodSegmentCheck 142 47 100
      { lower := 24334, upper := 24470, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good164_checked :
    goodSegmentCheck 142 47 100
      { lower := 24471, upper := 24508, witness := RowWitness.topPrime 24469 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good165_checked :
    goodSegmentCheck 142 47 100
      { lower := 24576, upper := 24712, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good166_checked :
    goodSegmentCheck 142 47 100
      { lower := 24713, upper := 24717, witness := RowWitness.topPrime 24709 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good167_checked :
    goodSegmentCheck 142 47 100
      { lower := 25000, upper := 25105, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good168_checked :
    goodSegmentCheck 142 47 100
      { lower := 25281, upper := 25356, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good169_checked :
    goodSegmentCheck 142 47 100
      { lower := 26364, upper := 26385, witness := RowWitness.topPrime 26357 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good170_checked :
    goodSegmentCheck 142 47 100
      { lower := 26411, upper := 26505, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good171_checked :
    goodSegmentCheck 142 47 100
      { lower := 26508, upper := 26552, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good172_checked :
    goodSegmentCheck 142 47 100
      { lower := 26645, upper := 26649, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good173_checked :
    goodSegmentCheck 142 47 100
      { lower := 26934, upper := 27037, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good174_checked :
    goodSegmentCheck 142 47 100
      { lower := 27556, upper := 27577, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good175_checked :
    goodSegmentCheck 142 47 100
      { lower := 27848, upper := 27876, witness := RowWitness.topPrime 27847 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_good176_checked :
    goodSegmentCheck 142 47 100
      { lower := 28125, upper := 28264, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good177_checked :
    goodSegmentCheck 142 47 100
      { lower := 28265, upper := 28266, witness := RowWitness.topPrime 28229 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good178_checked :
    goodSegmentCheck 142 47 100
      { lower := 28561, upper := 28572, witness := RowWitness.topPrime 28559 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good179_checked :
    goodSegmentCheck 142 47 100
      { lower := 28577, upper := 28714, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good180_checked :
    goodSegmentCheck 142 47 100
      { lower := 28715, upper := 28852, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good181_checked :
    goodSegmentCheck 142 47 100
      { lower := 28853, upper := 28858, witness := RowWitness.topPrime 28843 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good182_checked :
    goodSegmentCheck 142 47 100
      { lower := 29584, upper := 29619, witness := RowWitness.topPrime 29581 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good183_checked :
    goodSegmentCheck 142 47 100
      { lower := 29791, upper := 29909, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good184_checked :
    goodSegmentCheck 142 47 100
      { lower := 30618, upper := 30734, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good185_checked :
    goodSegmentCheck 142 47 100
      { lower := 30735, upper := 30744, witness := RowWitness.topPrime 30727 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good186_checked :
    goodSegmentCheck 142 47 100
      { lower := 30758, upper := 30759, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good187_checked :
    goodSegmentCheck 142 47 100
      { lower := 30899, upper := 30899, witness := RowWitness.topPrime 30893 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good188_checked :
    goodSegmentCheck 142 47 100
      { lower := 30926, upper := 31040, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good189_checked :
    goodSegmentCheck 142 47 100
      { lower := 31213, upper := 31334, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good190_checked :
    goodSegmentCheck 142 47 100
      { lower := 31335, upper := 31391, witness := RowWitness.topPrime 31333 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good191_checked :
    goodSegmentCheck 142 47 100
      { lower := 31423, upper := 31538, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_good192_checked :
    goodSegmentCheck 142 47 100
      { lower := 31539, upper := 31564, witness := RowWitness.topPrime 31531 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good193_checked :
    goodSegmentCheck 142 47 100
      { lower := 32805, upper := 32909, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good194_checked :
    goodSegmentCheck 142 47 100
      { lower := 33614, upper := 33630, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good195_checked :
    goodSegmentCheck 142 47 100
      { lower := 33708, upper := 33755, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good196_checked :
    goodSegmentCheck 142 47 100
      { lower := 34322, upper := 34460, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good197_checked :
    goodSegmentCheck 142 47 100
      { lower := 34461, upper := 34532, witness := RowWitness.topPrime 34457 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good198_checked :
    goodSegmentCheck 142 47 100
      { lower := 36015, upper := 36053, witness := RowWitness.topPrime 36013 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good199_checked :
    goodSegmentCheck 142 47 100
      { lower := 36517, upper := 36638, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good200_checked :
    goodSegmentCheck 142 47 100
      { lower := 36639, upper := 36642, witness := RowWitness.topPrime 36637 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good201_checked :
    goodSegmentCheck 142 47 100
      { lower := 37210, upper := 37342, witness := RowWitness.topPrime 37201 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good202_checked :
    goodSegmentCheck 142 47 100
      { lower := 37343, upper := 37444, witness := RowWitness.topPrime 37339 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good203_checked :
    goodSegmentCheck 142 47 100
      { lower := 37446, upper := 37490, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good204_checked :
    goodSegmentCheck 142 47 100
      { lower := 37500, upper := 37634, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good205_checked :
    goodSegmentCheck 142 47 100
      { lower := 37635, upper := 37694, witness := RowWitness.topPrime 37633 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good206_checked :
    goodSegmentCheck 142 47 100
      { lower := 38307, upper := 38444, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good207_checked :
    goodSegmentCheck 142 47 100
      { lower := 38445, upper := 38448, witness := RowWitness.topPrime 38431 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_good208_checked :
    goodSegmentCheck 142 47 100
      { lower := 39326, upper := 39464, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good209_checked :
    goodSegmentCheck 142 47 100
      { lower := 39465, upper := 39467, witness := RowWitness.topPrime 39461 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good210_checked :
    goodSegmentCheck 142 47 100
      { lower := 39605, upper := 39687, witness := RowWitness.topPrime 39581 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good211_checked :
    goodSegmentCheck 142 47 100
      { lower := 40931, upper := 40945, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good212_checked :
    goodSegmentCheck 142 47 100
      { lower := 40960, upper := 41072, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good213_checked :
    goodSegmentCheck 142 47 100
      { lower := 43750, upper := 43828, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good214_checked :
    goodSegmentCheck 142 47 100
      { lower := 45927, upper := 45937, witness := RowWitness.topPrime 45893 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good215_checked :
    goodSegmentCheck 142 47 100
      { lower := 47526, upper := 47662, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good216_checked :
    goodSegmentCheck 142 47 100
      { lower := 47663, upper := 47665, witness := RowWitness.topPrime 47659 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good217_checked :
    goodSegmentCheck 142 47 100
      { lower := 48013, upper := 48102, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good218_checked :
    goodSegmentCheck 142 47 100
      { lower := 48387, upper := 48514, witness := RowWitness.topPrime 48383 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good219_checked :
    goodSegmentCheck 142 47 100
      { lower := 48734, upper := 48874, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good220_checked :
    goodSegmentCheck 142 47 100
      { lower := 48875, upper := 48875, witness := RowWitness.topPrime 48871 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good221_checked :
    goodSegmentCheck 142 47 100
      { lower := 49152, upper := 49271, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good222_checked :
    goodSegmentCheck 142 47 100
      { lower := 51076, upper := 51146, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good223_checked :
    goodSegmentCheck 142 47 100
      { lower := 56307, upper := 56310, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_good224_checked :
    goodSegmentCheck 142 47 100
      { lower := 57245, upper := 57263, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good225_checked :
    goodSegmentCheck 142 47 100
      { lower := 57344, upper := 57386, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good226_checked :
    goodSegmentCheck 142 47 100
      { lower := 58619, upper := 58705, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good227_checked :
    goodSegmentCheck 142 47 100
      { lower := 59049, upper := 59097, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good228_checked :
    goodSegmentCheck 142 47 100
      { lower := 62500, upper := 62551, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good229_checked :
    goodSegmentCheck 142 47 100
      { lower := 63869, upper := 64004, witness := RowWitness.topPrime 63863 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good230_checked :
    goodSegmentCheck 142 47 100
      { lower := 64005, upper := 64010, witness := RowWitness.topPrime 63997 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good231_checked :
    goodSegmentCheck 142 47 100
      { lower := 65610, upper := 65677, witness := RowWitness.topPrime 65609 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good232_checked :
    goodSegmentCheck 142 47 100
      { lower := 68644, upper := 68780, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good233_checked :
    goodSegmentCheck 142 47 100
      { lower := 68781, upper := 68835, witness := RowWitness.topPrime 68777 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good234_checked :
    goodSegmentCheck 142 47 100
      { lower := 68890, upper := 69022, witness := RowWitness.topPrime 68881 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good235_checked :
    goodSegmentCheck 142 47 100
      { lower := 69023, upper := 69031, witness := RowWitness.topPrime 69019 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good236_checked :
    goodSegmentCheck 142 47 100
      { lower := 71289, upper := 71428, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good237_checked :
    goodSegmentCheck 142 47 100
      { lower := 71429, upper := 71430, witness := RowWitness.topPrime 71429 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good238_checked :
    goodSegmentCheck 142 47 100
      { lower := 73205, upper := 73308, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good239_checked :
    goodSegmentCheck 142 47 100
      { lower := 85805, upper := 85824, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_good240_checked :
    goodSegmentCheck 142 47 100
      { lower := 89383, upper := 89514, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good241_checked :
    goodSegmentCheck 142 47 100
      { lower := 93845, upper := 93891, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good242_checked :
    goodSegmentCheck 142 47 100
      { lower := 98415, upper := 98445, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good243_checked :
    goodSegmentCheck 142 47 100
      { lower := 103041, upper := 103107, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good244_checked :
    goodSegmentCheck 142 47 100
      { lower := 109503, upper := 109516, witness := RowWitness.topPrime 109481 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good245_checked :
    goodSegmentCheck 142 47 100
      { lower := 137842, upper := 137922, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good246_checked :
    goodSegmentCheck 142 47 100
      { lower := 146410, upper := 146475, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good247_checked :
    goodSegmentCheck 142 47 100
      { lower := 148955, upper := 149018, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row142_good248_checked :
    goodSegmentCheck 142 47 100
      { lower := 154568, upper := 154590, witness := RowWitness.topPrime 154543 } = true := by
  exact good_top_prime_checked (i := 142) (r := 47) (s := 100) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_good248_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_goods_checked :
    row142.goods.all (goodSegmentCheck row142.height.i row142.height.r row142.height.s) = true := by
  change row142_goods.all (goodSegmentCheck 142 47 100) = true
  simp only [row142_goods, List.all_cons, List.all_nil,
    row142_good000_checked,
    row142_good001_checked,
    row142_good002_checked,
    row142_good003_checked,
    row142_good004_checked,
    row142_good005_checked,
    row142_good006_checked,
    row142_good007_checked,
    row142_good008_checked,
    row142_good009_checked,
    row142_good010_checked,
    row142_good011_checked,
    row142_good012_checked,
    row142_good013_checked,
    row142_good014_checked,
    row142_good015_checked,
    row142_good016_checked,
    row142_good017_checked,
    row142_good018_checked,
    row142_good019_checked,
    row142_good020_checked,
    row142_good021_checked,
    row142_good022_checked,
    row142_good023_checked,
    row142_good024_checked,
    row142_good025_checked,
    row142_good026_checked,
    row142_good027_checked,
    row142_good028_checked,
    row142_good029_checked,
    row142_good030_checked,
    row142_good031_checked,
    row142_good032_checked,
    row142_good033_checked,
    row142_good034_checked,
    row142_good035_checked,
    row142_good036_checked,
    row142_good037_checked,
    row142_good038_checked,
    row142_good039_checked,
    row142_good040_checked,
    row142_good041_checked,
    row142_good042_checked,
    row142_good043_checked,
    row142_good044_checked,
    row142_good045_checked,
    row142_good046_checked,
    row142_good047_checked,
    row142_good048_checked,
    row142_good049_checked,
    row142_good050_checked,
    row142_good051_checked,
    row142_good052_checked,
    row142_good053_checked,
    row142_good054_checked,
    row142_good055_checked,
    row142_good056_checked,
    row142_good057_checked,
    row142_good058_checked,
    row142_good059_checked,
    row142_good060_checked,
    row142_good061_checked,
    row142_good062_checked,
    row142_good063_checked,
    row142_good064_checked,
    row142_good065_checked,
    row142_good066_checked,
    row142_good067_checked,
    row142_good068_checked,
    row142_good069_checked,
    row142_good070_checked,
    row142_good071_checked,
    row142_good072_checked,
    row142_good073_checked,
    row142_good074_checked,
    row142_good075_checked,
    row142_good076_checked,
    row142_good077_checked,
    row142_good078_checked,
    row142_good079_checked,
    row142_good080_checked,
    row142_good081_checked,
    row142_good082_checked,
    row142_good083_checked,
    row142_good084_checked,
    row142_good085_checked,
    row142_good086_checked,
    row142_good087_checked,
    row142_good088_checked,
    row142_good089_checked,
    row142_good090_checked,
    row142_good091_checked,
    row142_good092_checked,
    row142_good093_checked,
    row142_good094_checked,
    row142_good095_checked,
    row142_good096_checked,
    row142_good097_checked,
    row142_good098_checked,
    row142_good099_checked,
    row142_good100_checked,
    row142_good101_checked,
    row142_good102_checked,
    row142_good103_checked,
    row142_good104_checked,
    row142_good105_checked,
    row142_good106_checked,
    row142_good107_checked,
    row142_good108_checked,
    row142_good109_checked,
    row142_good110_checked,
    row142_good111_checked,
    row142_good112_checked,
    row142_good113_checked,
    row142_good114_checked,
    row142_good115_checked,
    row142_good116_checked,
    row142_good117_checked,
    row142_good118_checked,
    row142_good119_checked,
    row142_good120_checked,
    row142_good121_checked,
    row142_good122_checked,
    row142_good123_checked,
    row142_good124_checked,
    row142_good125_checked,
    row142_good126_checked,
    row142_good127_checked,
    row142_good128_checked,
    row142_good129_checked,
    row142_good130_checked,
    row142_good131_checked,
    row142_good132_checked,
    row142_good133_checked,
    row142_good134_checked,
    row142_good135_checked,
    row142_good136_checked,
    row142_good137_checked,
    row142_good138_checked,
    row142_good139_checked,
    row142_good140_checked,
    row142_good141_checked,
    row142_good142_checked,
    row142_good143_checked,
    row142_good144_checked,
    row142_good145_checked,
    row142_good146_checked,
    row142_good147_checked,
    row142_good148_checked,
    row142_good149_checked,
    row142_good150_checked,
    row142_good151_checked,
    row142_good152_checked,
    row142_good153_checked,
    row142_good154_checked,
    row142_good155_checked,
    row142_good156_checked,
    row142_good157_checked,
    row142_good158_checked,
    row142_good159_checked,
    row142_good160_checked,
    row142_good161_checked,
    row142_good162_checked,
    row142_good163_checked,
    row142_good164_checked,
    row142_good165_checked,
    row142_good166_checked,
    row142_good167_checked,
    row142_good168_checked,
    row142_good169_checked,
    row142_good170_checked,
    row142_good171_checked,
    row142_good172_checked,
    row142_good173_checked,
    row142_good174_checked,
    row142_good175_checked,
    row142_good176_checked,
    row142_good177_checked,
    row142_good178_checked,
    row142_good179_checked,
    row142_good180_checked,
    row142_good181_checked,
    row142_good182_checked,
    row142_good183_checked,
    row142_good184_checked,
    row142_good185_checked,
    row142_good186_checked,
    row142_good187_checked,
    row142_good188_checked,
    row142_good189_checked,
    row142_good190_checked,
    row142_good191_checked,
    row142_good192_checked,
    row142_good193_checked,
    row142_good194_checked,
    row142_good195_checked,
    row142_good196_checked,
    row142_good197_checked,
    row142_good198_checked,
    row142_good199_checked,
    row142_good200_checked,
    row142_good201_checked,
    row142_good202_checked,
    row142_good203_checked,
    row142_good204_checked,
    row142_good205_checked,
    row142_good206_checked,
    row142_good207_checked,
    row142_good208_checked,
    row142_good209_checked,
    row142_good210_checked,
    row142_good211_checked,
    row142_good212_checked,
    row142_good213_checked,
    row142_good214_checked,
    row142_good215_checked,
    row142_good216_checked,
    row142_good217_checked,
    row142_good218_checked,
    row142_good219_checked,
    row142_good220_checked,
    row142_good221_checked,
    row142_good222_checked,
    row142_good223_checked,
    row142_good224_checked,
    row142_good225_checked,
    row142_good226_checked,
    row142_good227_checked,
    row142_good228_checked,
    row142_good229_checked,
    row142_good230_checked,
    row142_good231_checked,
    row142_good232_checked,
    row142_good233_checked,
    row142_good234_checked,
    row142_good235_checked,
    row142_good236_checked,
    row142_good237_checked,
    row142_good238_checked,
    row142_good239_checked,
    row142_good240_checked,
    row142_good241_checked,
    row142_good242_checked,
    row142_good243_checked,
    row142_good244_checked,
    row142_good245_checked,
    row142_good246_checked,
    row142_good247_checked,
    row142_good248_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_registered :
    decide (row142.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row142_small_checked :
    coverCheck (2 * row142.height.i + 2) (row142.height.i * (row142.height.i - 1) - 1)
      (row142.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row142_layerCover_checked :
    coverCheck (row142.height.i * (row142.height.i - 1)) (row142.height.n0 - 1)
      (row142.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row142_bounds : List NatInterval :=
  [(286, 424), (425, 562), (563, 704), (705, 842), (843, 980), (981, 1118), (1119, 1258), (1259, 1400), (1401, 1540), (1541, 1672), (1673, 1810), (1811, 1952), (1953, 2092), (2093, 2230), (2231, 2362), (2363, 2498), (2499, 2618), (2619, 2758), (2759, 2894), (2895, 3028), (3029, 3164), (3165, 3304), (3305, 3442), (3443, 3574), (3575, 3712), (3713, 3850), (3851, 3992), (3993, 4130), (4131, 4270), (4271, 4412), (4413, 4550), (4551, 4690), (4691, 4832), (4833, 4972), (4973, 5114), (5115, 5254), (5255, 5378), (5379, 5492), (5493, 5624), (5625, 5764), (5765, 5890), (5891, 6022), (6023, 6152), (6153, 6292), (6293, 6428), (6429, 6568), (6569, 6710), (6711, 6850), (6851, 6982), (6983, 7124), (7125, 7262), (7263, 7394), (7395, 7534), (7535, 7670), (7671, 7810), (7811, 7934), (7935, 8074), (8075, 8210), (8211, 8350), (8351, 8470), (8471, 8608), (8609, 8750), (8751, 8888), (8889, 9028), (9029, 9170), (9171, 9302), (9303, 9434), (9435, 9574), (9575, 9692), (9693, 9830), (9831, 9970), (9971, 10108), (10109, 10244), (10245, 10384), (10385, 10510), (10511, 10642), (10643, 10780), (10781, 10922), (10923, 11050), (11051, 11188), (11189, 11318), (11319, 11458), (11459, 11588), (11589, 11728), (11729, 11860), (11861, 11980), (11981, 12122), (12123, 12260), (12261, 12394), (12395, 12532), (12533, 12668), (12669, 12800), (12801, 12940), (12941, 13082), (13083, 13204), (13205, 13328), (13329, 13468), (13469, 13610), (13611, 13738), (13739, 13870), (13871, 14000), (14001, 14140), (14141, 14248), (14249, 14390), (14391, 14530), (14531, 14660), (14661, 14798), (14799, 14938), (14939, 15080), (15081, 15218), (15219, 15358), (15359, 15500), (15501, 15638), (15639, 15770), (15771, 15908), (15909, 16048), (16049, 16174), (16175, 16282), (16283, 16414), (16415, 16552), (16553, 16694), (16695, 16834), (16835, 16972), (16973, 17104), (17105, 17240), (17241, 17380), (17381, 17518), (17519, 17660), (17661, 17800), (17801, 17932), (17933, 18070), (18071, 18202), (18203, 18340), (18341, 18482), (18483, 18622), (18623, 18758), (18759, 18898), (18899, 19040), (19041, 19178), (19179, 19304), (19305, 19442), (19443, 19582), (19583, 19724), (19725, 19858), (19859, 19994), (19995, 20022), (20402, 20540), (20541, 20674), (20675, 20718), (21296, 21424), (21425, 21437), (21870, 22004), (22005, 22045), (22090, 22111), (22188, 22231), (22326, 22329), (22445, 22467), (22472, 22586), (23763, 23902), (23903, 23903), (24010, 24148), (24149, 24198), (24299, 24308), (24334, 24470), (24471, 24508), (24576, 24712), (24713, 24717), (25000, 25105), (25281, 25356), (26364, 26385), (26411, 26505), (26508, 26552), (26645, 26649), (26934, 27037), (27556, 27577), (27848, 27876), (28125, 28264), (28265, 28266), (28561, 28572), (28577, 28714), (28715, 28852), (28853, 28858), (29584, 29619), (29791, 29909), (30618, 30734), (30735, 30744), (30758, 30759), (30899, 30899), (30926, 31040), (31213, 31334), (31335, 31391), (31423, 31538), (31539, 31564), (32805, 32909), (33614, 33630), (33708, 33755), (34322, 34460), (34461, 34532), (36015, 36053), (36517, 36638), (36639, 36642), (37210, 37342), (37343, 37444), (37446, 37490), (37500, 37634), (37635, 37694), (38307, 38444), (38445, 38448), (39326, 39464), (39465, 39467), (39605, 39687), (40931, 40945), (40960, 41072), (43750, 43828), (45927, 45937), (47526, 47662), (47663, 47665), (48013, 48102), (48387, 48514), (48734, 48874), (48875, 48875), (49152, 49271), (51076, 51146), (56307, 56310), (57245, 57263), (57344, 57386), (58619, 58705), (59049, 59097), (62500, 62551), (63869, 64004), (64005, 64010), (65610, 65677), (68644, 68780), (68781, 68835), (68890, 69022), (69023, 69031), (71289, 71428), (71429, 71430), (73205, 73308), (85805, 85824), (89383, 89514), (93845, 93891), (98415, 98445), (103041, 103107), (109503, 109516), (137842, 137922), (146410, 146475), (148955, 149018), (154568, 154590)]

theorem row142_bounds_eq : row142.goods.map goodSegmentBounds = row142_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row142_layer000_intervals : List ColouredInterval :=
  [(2, 20480, 20621), (2, 24576, 24717), (2, 28672, 28813), (2, 32768, 32909), (2, 36864, 37005), (2, 24576, 24717), (2, 32768, 32909), (2, 32768, 32909), (2, 32768, 32909), (3, 21870, 22011), (3, 24057, 24198), (3, 26244, 26385), (3, 28431, 28572), (3, 30618, 30759), (3, 32805, 32946), (3, 34992, 35133), (3, 37179, 37320), (3, 39366, 39507), (3, 26244, 26385), (3, 32805, 32946), (3, 39366, 39507), (3, 39366, 39507), (5, 21875, 22016), (5, 25000, 25141), (5, 28125, 28266), (5, 31250, 31391), (5, 34375, 34516), (5, 37500, 37641), (5, 31250, 31391), (7, 21609, 21750), (7, 24010, 24151), (7, 26411, 26552), (7, 28812, 28953), (7, 31213, 31354), (7, 33614, 33755), (7, 36015, 36156), (7, 38416, 38557), (7, 33614, 33755), (11, 20022, 20106), (11, 21296, 21437), (11, 22627, 22768), (11, 23958, 24099), (11, 29282, 29423), (13, 21970, 22111), (13, 24167, 24308), (13, 26364, 26505), (13, 28561, 28702), (13, 30758, 30899), (13, 32955, 33096), (13, 35152, 35293), (13, 37349, 37490), (13, 39546, 39687), (13, 28561, 28702), (17, 24565, 24706), (17, 29478, 29619), (17, 34391, 34532), (17, 39304, 39445), (19, 20577, 20718), (19, 27436, 27577), (19, 34295, 34436), (23, 24334, 24475), (23, 36501, 36642), (29, 24389, 24530), (31, 29791, 29932), (37, 20535, 20676), (37, 21904, 22045), (37, 23273, 23414), (37, 24642, 24783), (41, 20172, 20313), (41, 21853, 21994), (41, 23534, 23675), (41, 25215, 25356), (41, 26896, 27037), (41, 28577, 28718), (41, 30258, 30399), (43, 20339, 20480), (43, 22188, 22329), (43, 24037, 24178), (43, 25886, 26027), (43, 27735, 27876), (43, 29584, 29725), (43, 31433, 31574), (43, 33282, 33423), (47, 20022, 20022), (47, 22090, 22231), (47, 24299, 24440), (47, 26508, 26649), (47, 28717, 28858), (47, 30926, 31067), (47, 33135, 33276), (47, 35344, 35485), (47, 37553, 37694), (47, 39762, 39903), (53, 22472, 22613), (53, 25281, 25422), (53, 28090, 28231), (53, 30899, 31040), (53, 33708, 33849), (53, 36517, 36658), (53, 39326, 39467), (59, 20886, 21027), (59, 24367, 24508), (59, 27848, 27989), (59, 31329, 31470), (59, 34810, 34951), (59, 38291, 38432), (61, 22326, 22467), (61, 26047, 26188), (61, 29768, 29909), (61, 33489, 33630), (61, 37210, 37351), (67, 22445, 22586), (67, 26934, 27075), (67, 31423, 31564), (67, 35912, 36053), (73, 21316, 21457), (73, 26645, 26786), (73, 31974, 32115), (73, 37303, 37444), (79, 24964, 25105), (79, 31205, 31346), (79, 37446, 37587), (83, 20667, 20808), (83, 27556, 27697), (83, 34445, 34586), (89, 23763, 23904), (89, 31684, 31825), (89, 39605, 39746), (97, 28227, 28368), (97, 37636, 37777), (101, 20402, 20543), (101, 30603, 30744), (103, 21218, 21359), (103, 31827, 31968), (107, 22898, 23039), (107, 34347, 34488), (109, 23762, 23903), (109, 35643, 35784), (113, 25538, 25679), (113, 38307, 38448), (127, 32258, 32399), (131, 34322, 34463), (137, 37538, 37679), (139, 38642, 38783)]

def row142_layer000_block000 : List ColouredInterval :=
  [(2, 20480, 20621), (2, 24576, 24717), (2, 28672, 28813), (2, 32768, 32909), (2, 36864, 37005), (2, 24576, 24717), (2, 32768, 32909), (2, 32768, 32909), (2, 32768, 32909), (3, 21870, 22011), (3, 24057, 24198), (3, 26244, 26385), (3, 28431, 28572), (3, 30618, 30759)]

def row142_layer000_block001 : List ColouredInterval :=
  [(3, 32805, 32946), (3, 34992, 35133), (3, 37179, 37320), (3, 39366, 39507), (3, 26244, 26385), (3, 32805, 32946), (3, 39366, 39507), (3, 39366, 39507), (5, 21875, 22016), (5, 25000, 25141), (5, 28125, 28266), (5, 31250, 31391), (5, 34375, 34516), (5, 37500, 37641)]

def row142_layer000_block002 : List ColouredInterval :=
  [(5, 31250, 31391), (7, 21609, 21750), (7, 24010, 24151), (7, 26411, 26552), (7, 28812, 28953), (7, 31213, 31354), (7, 33614, 33755), (7, 36015, 36156), (7, 38416, 38557), (7, 33614, 33755), (11, 20022, 20106), (11, 21296, 21437), (11, 22627, 22768), (11, 23958, 24099)]

def row142_layer000_block003 : List ColouredInterval :=
  [(11, 29282, 29423), (13, 21970, 22111), (13, 24167, 24308), (13, 26364, 26505), (13, 28561, 28702), (13, 30758, 30899), (13, 32955, 33096), (13, 35152, 35293), (13, 37349, 37490), (13, 39546, 39687), (13, 28561, 28702), (17, 24565, 24706), (17, 29478, 29619), (17, 34391, 34532)]

def row142_layer000_block004 : List ColouredInterval :=
  [(17, 39304, 39445), (19, 20577, 20718), (19, 27436, 27577), (19, 34295, 34436), (23, 24334, 24475), (23, 36501, 36642), (29, 24389, 24530), (31, 29791, 29932), (37, 20535, 20676), (37, 21904, 22045), (37, 23273, 23414), (37, 24642, 24783), (41, 20172, 20313), (41, 21853, 21994)]

def row142_layer000_block005 : List ColouredInterval :=
  [(41, 23534, 23675), (41, 25215, 25356), (41, 26896, 27037), (41, 28577, 28718), (41, 30258, 30399), (43, 20339, 20480), (43, 22188, 22329), (43, 24037, 24178), (43, 25886, 26027), (43, 27735, 27876), (43, 29584, 29725), (43, 31433, 31574), (43, 33282, 33423), (47, 20022, 20022)]

def row142_layer000_block006 : List ColouredInterval :=
  [(47, 22090, 22231), (47, 24299, 24440), (47, 26508, 26649), (47, 28717, 28858), (47, 30926, 31067), (47, 33135, 33276), (47, 35344, 35485), (47, 37553, 37694), (47, 39762, 39903), (53, 22472, 22613), (53, 25281, 25422), (53, 28090, 28231), (53, 30899, 31040), (53, 33708, 33849)]

def row142_layer000_block007 : List ColouredInterval :=
  [(53, 36517, 36658), (53, 39326, 39467), (59, 20886, 21027), (59, 24367, 24508), (59, 27848, 27989), (59, 31329, 31470), (59, 34810, 34951), (59, 38291, 38432), (61, 22326, 22467), (61, 26047, 26188), (61, 29768, 29909), (61, 33489, 33630), (61, 37210, 37351), (67, 22445, 22586)]

def row142_layer000_block008 : List ColouredInterval :=
  [(67, 26934, 27075), (67, 31423, 31564), (67, 35912, 36053), (73, 21316, 21457), (73, 26645, 26786), (73, 31974, 32115), (73, 37303, 37444), (79, 24964, 25105), (79, 31205, 31346), (79, 37446, 37587), (83, 20667, 20808), (83, 27556, 27697), (83, 34445, 34586), (89, 23763, 23904)]

def row142_layer000_block009 : List ColouredInterval :=
  [(89, 31684, 31825), (89, 39605, 39746), (97, 28227, 28368), (97, 37636, 37777), (101, 20402, 20543), (101, 30603, 30744), (103, 21218, 21359), (103, 31827, 31968), (107, 22898, 23039), (107, 34347, 34488), (109, 23762, 23903), (109, 35643, 35784), (113, 25538, 25679), (113, 38307, 38448)]

def row142_layer000_block010 : List ColouredInterval :=
  [(127, 32258, 32399), (131, 34322, 34463), (137, 37538, 37679), (139, 38642, 38783)]

def row142_layer000_chunks : List (List ColouredInterval) :=
  [row142_layer000_block000, row142_layer000_block001, row142_layer000_block002, row142_layer000_block003, row142_layer000_block004, row142_layer000_block005, row142_layer000_block006, row142_layer000_block007, row142_layer000_block008, row142_layer000_block009, row142_layer000_block010]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer000_arithmetic : LayerArithmeticValid row142.height { lower := 20022, upper := 40044, M := 18 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer000_enumeration :
    activePowerIntervalList 142 18 20022 40044 = row142_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer000_pairs000 :
    row142_layer000_block000.all (fun I => row142_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row142_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer000_pairs001 :
    row142_layer000_block001.all (fun I => row142_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row142_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer000_pairs002 :
    row142_layer000_block002.all (fun I => row142_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row142_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer000_pairs003 :
    row142_layer000_block003.all (fun I => row142_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row142_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer000_pairs004 :
    row142_layer000_block004.all (fun I => row142_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row142_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer000_pairs005 :
    row142_layer000_block005.all (fun I => row142_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row142_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer000_pairs006 :
    row142_layer000_block006.all (fun I => row142_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row142_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer000_pairs007 :
    row142_layer000_block007.all (fun I => row142_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row142_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer000_pairs008 :
    row142_layer000_block008.all (fun I => row142_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row142_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer000_pairs008
