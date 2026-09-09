import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

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

theorem row142_registered :
    decide (row142.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row142_goods_checked :
    row142.goods.all (goodSegmentCheck row142.height.i row142.height.r row142.height.s) = true := by
  decide +kernel

theorem row142_small_checked :
    coverCheck (2 * row142.height.i + 2) (row142.height.i * (row142.height.i - 1) - 1)
      (row142.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row142_layerCover_checked :
    coverCheck (row142.height.i * (row142.height.i - 1)) (row142.height.n0 - 1)
      (row142.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row142_layer000_checked :
    coverLayerCheck row142.height row142.goods { lower := 20022, upper := 40044, M := 18 } = true := by
  decide +kernel

theorem row142_layer001_checked :
    coverLayerCheck row142.height row142.goods { lower := 40044, upper := 80088, M := 14 } = true := by
  decide +kernel

theorem row142_layer002_checked :
    coverLayerCheck row142.height row142.goods { lower := 80088, upper := 160176, M := 10 } = true := by
  decide +kernel

theorem row142_layer003_checked :
    coverLayerCheck row142.height row142.goods { lower := 160176, upper := 320352, M := 8 } = true := by
  decide +kernel

theorem row142_layer004_checked :
    coverLayerCheck row142.height row142.goods { lower := 320352, upper := 640704, M := 6 } = true := by
  decide +kernel

theorem row142_layer005_checked :
    coverLayerCheck row142.height row142.goods { lower := 640704, upper := 1281408, M := 5 } = true := by
  decide +kernel

theorem row142_layer006_checked :
    coverLayerCheck row142.height row142.goods { lower := 1281408, upper := 2562816, M := 4 } = true := by
  decide +kernel

theorem row142_layer007_checked :
    coverLayerCheck row142.height row142.goods { lower := 2562816, upper := 5125632, M := 3 } = true := by
  decide +kernel

theorem row142_layer008_checked :
    coverLayerCheck row142.height row142.goods { lower := 5125632, upper := 10251264, M := 2 } = true := by
  decide +kernel

theorem row142_layer009_checked :
    coverLayerCheck row142.height row142.goods { lower := 10251264, upper := 20502528, M := 2 } = true := by
  decide +kernel

theorem row142_layer010_checked :
    coverLayerCheck row142.height row142.goods { lower := 20502528, upper := 41005056, M := 2 } = true := by
  decide +kernel

theorem row142_layer011_checked :
    coverLayerCheck row142.height row142.goods { lower := 41005056, upper := 82010112, M := 1 } = true := by
  decide +kernel

theorem row142_layer012_checked :
    coverLayerCheck row142.height row142.goods { lower := 82010112, upper := 100000000, M := 1 } = true := by
  decide +kernel

theorem row142_layers_checked :
    row142.layers.all (coverLayerCheck row142.height row142.goods) = true := by
  change List.all [
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
  ] (coverLayerCheck row142.height row142.goods) = true
  simp only [List.all_cons, List.all_nil,
    row142_layer000_checked,
    row142_layer001_checked,
    row142_layer002_checked,
    row142_layer003_checked,
    row142_layer004_checked,
    row142_layer005_checked,
    row142_layer006_checked,
    row142_layer007_checked,
    row142_layer008_checked,
    row142_layer009_checked,
    row142_layer010_checked,
    row142_layer011_checked,
    row142_layer012_checked,
    Bool.true_and]

theorem row142_checked : finiteCoverRowCheck row142 = true := by
  simp only [finiteCoverRowCheck, row142_registered, row142_goods_checked,
    row142_small_checked, row142_layerCover_checked, row142_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row142_checked

end B699LowIndex
