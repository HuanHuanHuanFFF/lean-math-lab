import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row143_height : HeightCertificateDatum := { i := 143, r := 47, s := 101, n0Power10 := 8 }

def row143_goods : List GoodSegment := [
  { lower := 288, upper := 425, witness := RowWitness.topPrime 283 },
  { lower := 426, upper := 563, witness := RowWitness.topPrime 421 },
  { lower := 564, upper := 705, witness := RowWitness.topPrime 563 },
  { lower := 706, upper := 843, witness := RowWitness.topPrime 701 },
  { lower := 844, upper := 981, witness := RowWitness.topPrime 839 },
  { lower := 982, upper := 1119, witness := RowWitness.topPrime 977 },
  { lower := 1120, upper := 1259, witness := RowWitness.topPrime 1117 },
  { lower := 1260, upper := 1401, witness := RowWitness.topPrime 1259 },
  { lower := 1402, upper := 1541, witness := RowWitness.topPrime 1399 },
  { lower := 1542, upper := 1673, witness := RowWitness.topPrime 1531 },
  { lower := 1674, upper := 1811, witness := RowWitness.topPrime 1669 },
  { lower := 1812, upper := 1953, witness := RowWitness.topPrime 1811 },
  { lower := 1954, upper := 2093, witness := RowWitness.topPrime 1951 },
  { lower := 2094, upper := 2231, witness := RowWitness.topPrime 2089 },
  { lower := 2232, upper := 2363, witness := RowWitness.topPrime 2221 },
  { lower := 2364, upper := 2499, witness := RowWitness.topPrime 2357 },
  { lower := 2500, upper := 2619, witness := RowWitness.topPrime 2477 },
  { lower := 2620, upper := 2759, witness := RowWitness.topPrime 2617 },
  { lower := 2760, upper := 2895, witness := RowWitness.topPrime 2753 },
  { lower := 2896, upper := 3029, witness := RowWitness.topPrime 2887 },
  { lower := 3030, upper := 3165, witness := RowWitness.topPrime 3023 },
  { lower := 3166, upper := 3305, witness := RowWitness.topPrime 3163 },
  { lower := 3306, upper := 3443, witness := RowWitness.topPrime 3301 },
  { lower := 3444, upper := 3575, witness := RowWitness.topPrime 3433 },
  { lower := 3576, upper := 3713, witness := RowWitness.topPrime 3571 },
  { lower := 3714, upper := 3851, witness := RowWitness.topPrime 3709 },
  { lower := 3852, upper := 3993, witness := RowWitness.topPrime 3851 },
  { lower := 3994, upper := 4131, witness := RowWitness.topPrime 3989 },
  { lower := 4132, upper := 4271, witness := RowWitness.topPrime 4129 },
  { lower := 4272, upper := 4413, witness := RowWitness.topPrime 4271 },
  { lower := 4414, upper := 4551, witness := RowWitness.topPrime 4409 },
  { lower := 4552, upper := 4691, witness := RowWitness.topPrime 4549 },
  { lower := 4692, upper := 4833, witness := RowWitness.topPrime 4691 },
  { lower := 4834, upper := 4973, witness := RowWitness.topPrime 4831 },
  { lower := 4974, upper := 5115, witness := RowWitness.topPrime 4973 },
  { lower := 5116, upper := 5255, witness := RowWitness.topPrime 5113 },
  { lower := 5256, upper := 5379, witness := RowWitness.topPrime 5237 },
  { lower := 5380, upper := 5493, witness := RowWitness.topPrime 5351 },
  { lower := 5494, upper := 5625, witness := RowWitness.topPrime 5483 },
  { lower := 5626, upper := 5765, witness := RowWitness.topPrime 5623 },
  { lower := 5766, upper := 5891, witness := RowWitness.topPrime 5749 },
  { lower := 5892, upper := 6023, witness := RowWitness.topPrime 5881 },
  { lower := 6024, upper := 6153, witness := RowWitness.topPrime 6011 },
  { lower := 6154, upper := 6293, witness := RowWitness.topPrime 6151 },
  { lower := 6294, upper := 6429, witness := RowWitness.topPrime 6287 },
  { lower := 6430, upper := 6569, witness := RowWitness.topPrime 6427 },
  { lower := 6570, upper := 6711, witness := RowWitness.topPrime 6569 },
  { lower := 6712, upper := 6851, witness := RowWitness.topPrime 6709 },
  { lower := 6852, upper := 6983, witness := RowWitness.topPrime 6841 },
  { lower := 6984, upper := 7125, witness := RowWitness.topPrime 6983 },
  { lower := 7126, upper := 7263, witness := RowWitness.topPrime 7121 },
  { lower := 7264, upper := 7395, witness := RowWitness.topPrime 7253 },
  { lower := 7396, upper := 7535, witness := RowWitness.topPrime 7393 },
  { lower := 7536, upper := 7671, witness := RowWitness.topPrime 7529 },
  { lower := 7672, upper := 7811, witness := RowWitness.topPrime 7669 },
  { lower := 7812, upper := 7935, witness := RowWitness.topPrime 7793 },
  { lower := 7936, upper := 8075, witness := RowWitness.topPrime 7933 },
  { lower := 8076, upper := 8211, witness := RowWitness.topPrime 8069 },
  { lower := 8212, upper := 8351, witness := RowWitness.topPrime 8209 },
  { lower := 8352, upper := 8471, witness := RowWitness.topPrime 8329 },
  { lower := 8472, upper := 8609, witness := RowWitness.topPrime 8467 },
  { lower := 8610, upper := 8751, witness := RowWitness.topPrime 8609 },
  { lower := 8752, upper := 8889, witness := RowWitness.topPrime 8747 },
  { lower := 8890, upper := 9029, witness := RowWitness.topPrime 8887 },
  { lower := 9030, upper := 9171, witness := RowWitness.topPrime 9029 },
  { lower := 9172, upper := 9303, witness := RowWitness.topPrime 9161 },
  { lower := 9304, upper := 9435, witness := RowWitness.topPrime 9293 },
  { lower := 9436, upper := 9575, witness := RowWitness.topPrime 9433 },
  { lower := 9576, upper := 9693, witness := RowWitness.topPrime 9551 },
  { lower := 9694, upper := 9831, witness := RowWitness.topPrime 9689 },
  { lower := 9832, upper := 9971, witness := RowWitness.topPrime 9829 },
  { lower := 9972, upper := 10109, witness := RowWitness.topPrime 9967 },
  { lower := 10110, upper := 10245, witness := RowWitness.topPrime 10103 },
  { lower := 10246, upper := 10385, witness := RowWitness.topPrime 10243 },
  { lower := 10386, upper := 10511, witness := RowWitness.topPrime 10369 },
  { lower := 10512, upper := 10643, witness := RowWitness.topPrime 10501 },
  { lower := 10644, upper := 10781, witness := RowWitness.topPrime 10639 },
  { lower := 10782, upper := 10923, witness := RowWitness.topPrime 10781 },
  { lower := 10924, upper := 11051, witness := RowWitness.topPrime 10909 },
  { lower := 11052, upper := 11189, witness := RowWitness.topPrime 11047 },
  { lower := 11190, upper := 11319, witness := RowWitness.topPrime 11177 },
  { lower := 11320, upper := 11459, witness := RowWitness.topPrime 11317 },
  { lower := 11460, upper := 11589, witness := RowWitness.topPrime 11447 },
  { lower := 11590, upper := 11729, witness := RowWitness.topPrime 11587 },
  { lower := 11730, upper := 11861, witness := RowWitness.topPrime 11719 },
  { lower := 11862, upper := 11981, witness := RowWitness.topPrime 11839 },
  { lower := 11982, upper := 12123, witness := RowWitness.topPrime 11981 },
  { lower := 12124, upper := 12261, witness := RowWitness.topPrime 12119 },
  { lower := 12262, upper := 12395, witness := RowWitness.topPrime 12253 },
  { lower := 12396, upper := 12533, witness := RowWitness.topPrime 12391 },
  { lower := 12534, upper := 12669, witness := RowWitness.topPrime 12527 },
  { lower := 12670, upper := 12801, witness := RowWitness.topPrime 12659 },
  { lower := 12802, upper := 12941, witness := RowWitness.topPrime 12799 },
  { lower := 12942, upper := 13083, witness := RowWitness.topPrime 12941 },
  { lower := 13084, upper := 13205, witness := RowWitness.topPrime 13063 },
  { lower := 13206, upper := 13329, witness := RowWitness.topPrime 13187 },
  { lower := 13330, upper := 13469, witness := RowWitness.topPrime 13327 },
  { lower := 13470, upper := 13611, witness := RowWitness.topPrime 13469 },
  { lower := 13612, upper := 13739, witness := RowWitness.topPrime 13597 },
  { lower := 13740, upper := 13871, witness := RowWitness.topPrime 13729 },
  { lower := 13872, upper := 14001, witness := RowWitness.topPrime 13859 },
  { lower := 14002, upper := 14141, witness := RowWitness.topPrime 13999 },
  { lower := 14142, upper := 14249, witness := RowWitness.topPrime 14107 },
  { lower := 14250, upper := 14391, witness := RowWitness.topPrime 14249 },
  { lower := 14392, upper := 14531, witness := RowWitness.topPrime 14389 },
  { lower := 14532, upper := 14661, witness := RowWitness.topPrime 14519 },
  { lower := 14662, upper := 14799, witness := RowWitness.topPrime 14657 },
  { lower := 14800, upper := 14939, witness := RowWitness.topPrime 14797 },
  { lower := 14940, upper := 15081, witness := RowWitness.topPrime 14939 },
  { lower := 15082, upper := 15219, witness := RowWitness.topPrime 15077 },
  { lower := 15220, upper := 15359, witness := RowWitness.topPrime 15217 },
  { lower := 15360, upper := 15501, witness := RowWitness.topPrime 15359 },
  { lower := 15502, upper := 15639, witness := RowWitness.topPrime 15497 },
  { lower := 15640, upper := 15771, witness := RowWitness.topPrime 15629 },
  { lower := 15772, upper := 15909, witness := RowWitness.topPrime 15767 },
  { lower := 15910, upper := 16049, witness := RowWitness.topPrime 15907 },
  { lower := 16050, upper := 16175, witness := RowWitness.topPrime 16033 },
  { lower := 16176, upper := 16283, witness := RowWitness.topPrime 16141 },
  { lower := 16284, upper := 16415, witness := RowWitness.topPrime 16273 },
  { lower := 16416, upper := 16553, witness := RowWitness.topPrime 16411 },
  { lower := 16554, upper := 16695, witness := RowWitness.topPrime 16553 },
  { lower := 16696, upper := 16835, witness := RowWitness.topPrime 16693 },
  { lower := 16836, upper := 16973, witness := RowWitness.topPrime 16831 },
  { lower := 16974, upper := 17105, witness := RowWitness.topPrime 16963 },
  { lower := 17106, upper := 17241, witness := RowWitness.topPrime 17099 },
  { lower := 17242, upper := 17381, witness := RowWitness.topPrime 17239 },
  { lower := 17382, upper := 17519, witness := RowWitness.topPrime 17377 },
  { lower := 17520, upper := 17661, witness := RowWitness.topPrime 17519 },
  { lower := 17662, upper := 17801, witness := RowWitness.topPrime 17659 },
  { lower := 17802, upper := 17933, witness := RowWitness.topPrime 17791 },
  { lower := 17934, upper := 18071, witness := RowWitness.topPrime 17929 },
  { lower := 18072, upper := 18203, witness := RowWitness.topPrime 18061 },
  { lower := 18204, upper := 18341, witness := RowWitness.topPrime 18199 },
  { lower := 18342, upper := 18483, witness := RowWitness.topPrime 18341 },
  { lower := 18484, upper := 18623, witness := RowWitness.topPrime 18481 },
  { lower := 18624, upper := 18759, witness := RowWitness.topPrime 18617 },
  { lower := 18760, upper := 18899, witness := RowWitness.topPrime 18757 },
  { lower := 18900, upper := 19041, witness := RowWitness.topPrime 18899 },
  { lower := 19042, upper := 19179, witness := RowWitness.topPrime 19037 },
  { lower := 19180, upper := 19305, witness := RowWitness.topPrime 19163 },
  { lower := 19306, upper := 19443, witness := RowWitness.topPrime 19301 },
  { lower := 19444, upper := 19583, witness := RowWitness.topPrime 19441 },
  { lower := 19584, upper := 19725, witness := RowWitness.topPrime 19583 },
  { lower := 19726, upper := 19859, witness := RowWitness.topPrime 19717 },
  { lower := 19860, upper := 19995, witness := RowWitness.topPrime 19853 },
  { lower := 19996, upper := 20135, witness := RowWitness.topPrime 19993 },
  { lower := 20136, upper := 20271, witness := RowWitness.topPrime 20129 },
  { lower := 20272, upper := 20306, witness := RowWitness.topPrime 20269 },
  { lower := 20402, upper := 20541, witness := RowWitness.topPrime 20399 },
  { lower := 20542, upper := 20675, witness := RowWitness.topPrime 20533 },
  { lower := 20676, upper := 20719, witness := RowWitness.topPrime 20663 },
  { lower := 21316, upper := 21360, witness := RowWitness.topPrime 21313 },
  { lower := 21870, upper := 22005, witness := RowWitness.topPrime 21863 },
  { lower := 22006, upper := 22017, witness := RowWitness.topPrime 22003 },
  { lower := 22188, upper := 22232, witness := RowWitness.topPrime 22171 },
  { lower := 22326, upper := 22330, witness := RowWitness.topPrime 22307 },
  { lower := 22445, upper := 22468, witness := RowWitness.topPrime 22441 },
  { lower := 22472, upper := 22611, witness := RowWitness.topPrime 22469 },
  { lower := 22612, upper := 22614, witness := RowWitness.topPrime 22573 },
  { lower := 23763, upper := 23903, witness := RowWitness.topPrime 23761 },
  { lower := 23904, upper := 23904, witness := RowWitness.topPrime 23899 },
  { lower := 24037, upper := 24171, witness := RowWitness.topPrime 24029 },
  { lower := 24172, upper := 24179, witness := RowWitness.topPrime 24169 },
  { lower := 24334, upper := 24471, witness := RowWitness.topPrime 24329 },
  { lower := 24472, upper := 24509, witness := RowWitness.topPrime 24469 },
  { lower := 24576, upper := 24707, witness := RowWitness.topPrime 24571 },
  { lower := 25000, upper := 25106, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25331, witness := RowWitness.topPrime 25189 },
  { lower := 25332, upper := 25357, witness := RowWitness.topPrime 25321 },
  { lower := 26508, upper := 26553, witness := RowWitness.topPrime 26501 },
  { lower := 26624, upper := 26739, witness := RowWitness.topPrime 26597 },
  { lower := 26740, upper := 26766, witness := RowWitness.topPrime 26737 },
  { lower := 26934, upper := 27038, witness := RowWitness.topPrime 26927 },
  { lower := 27556, upper := 27578, witness := RowWitness.topPrime 27551 },
  { lower := 27848, upper := 27877, witness := RowWitness.topPrime 27847 },
  { lower := 28125, upper := 28265, witness := RowWitness.topPrime 28123 },
  { lower := 28266, upper := 28267, witness := RowWitness.topPrime 28229 },
  { lower := 28561, upper := 28573, witness := RowWitness.topPrime 28559 },
  { lower := 28577, upper := 28715, witness := RowWitness.topPrime 28573 },
  { lower := 28716, upper := 28853, witness := RowWitness.topPrime 28711 },
  { lower := 28854, upper := 28859, witness := RowWitness.topPrime 28843 },
  { lower := 29584, upper := 29620, witness := RowWitness.topPrime 29581 },
  { lower := 29791, upper := 29910, witness := RowWitness.topPrime 29789 },
  { lower := 30618, upper := 30735, witness := RowWitness.topPrime 30593 },
  { lower := 30736, upper := 30760, witness := RowWitness.topPrime 30727 },
  { lower := 30926, upper := 31041, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31335, witness := RowWitness.topPrime 31193 },
  { lower := 31336, upper := 31392, witness := RowWitness.topPrime 31333 },
  { lower := 31423, upper := 31539, witness := RowWitness.topPrime 31397 },
  { lower := 31540, upper := 31565, witness := RowWitness.topPrime 31531 },
  { lower := 32805, upper := 32910, witness := RowWitness.topPrime 32803 },
  { lower := 33614, upper := 33631, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33756, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34461, witness := RowWitness.topPrime 34319 },
  { lower := 34462, upper := 34533, witness := RowWitness.topPrime 34457 },
  { lower := 34816, upper := 34949, witness := RowWitness.topPrime 34807 },
  { lower := 34950, upper := 34952, witness := RowWitness.topPrime 34949 },
  { lower := 35344, upper := 35429, witness := RowWitness.topPrime 35339 },
  { lower := 36015, upper := 36054, witness := RowWitness.topPrime 36013 },
  { lower := 36517, upper := 36639, witness := RowWitness.topPrime 36497 },
  { lower := 36640, upper := 36643, witness := RowWitness.topPrime 36637 },
  { lower := 37210, upper := 37343, witness := RowWitness.topPrime 37201 },
  { lower := 37344, upper := 37352, witness := RowWitness.topPrime 37339 },
  { lower := 37500, upper := 37635, witness := RowWitness.topPrime 37493 },
  { lower := 37636, upper := 37695, witness := RowWitness.topPrime 37633 },
  { lower := 38307, upper := 38445, witness := RowWitness.topPrime 38303 },
  { lower := 38446, upper := 38449, witness := RowWitness.topPrime 38431 },
  { lower := 39326, upper := 39465, witness := RowWitness.topPrime 39323 },
  { lower := 39466, upper := 39468, witness := RowWitness.topPrime 39461 },
  { lower := 40401, upper := 40470, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 40946, witness := RowWitness.topPrime 40927 },
  { lower := 40960, upper := 41073, witness := RowWitness.topPrime 40949 },
  { lower := 45369, upper := 45395, witness := RowWitness.topPrime 45361 },
  { lower := 45927, upper := 45938, witness := RowWitness.topPrime 45893 },
  { lower := 47526, upper := 47663, witness := RowWitness.topPrime 47521 },
  { lower := 47664, upper := 47666, witness := RowWitness.topPrime 47659 },
  { lower := 48013, upper := 48103, witness := RowWitness.topPrime 47981 },
  { lower := 48387, upper := 48515, witness := RowWitness.topPrime 48383 },
  { lower := 48778, upper := 48810, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49272, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50552, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51147, witness := RowWitness.topPrime 51071 },
  { lower := 53290, upper := 53390, witness := RowWitness.topPrime 53281 },
  { lower := 55451, upper := 55583, witness := RowWitness.topPrime 55441 },
  { lower := 55584, upper := 55589, witness := RowWitness.topPrime 55579 },
  { lower := 56307, upper := 56311, witness := RowWitness.topPrime 56299 },
  { lower := 57344, upper := 57387, witness := RowWitness.topPrime 57331 },
  { lower := 59049, upper := 59098, witness := RowWitness.topPrime 59029 },
  { lower := 62500, upper := 62552, witness := RowWitness.topPrime 62497 },
  { lower := 63869, upper := 64005, witness := RowWitness.topPrime 63863 },
  { lower := 64006, upper := 64011, witness := RowWitness.topPrime 63997 },
  { lower := 65536, upper := 65663, witness := RowWitness.topPrime 65521 },
  { lower := 65664, upper := 65678, witness := RowWitness.topPrime 65657 },
  { lower := 68644, upper := 68781, witness := RowWitness.topPrime 68639 },
  { lower := 68782, upper := 68793, witness := RowWitness.topPrime 68777 },
  { lower := 68921, upper := 69032, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71429, witness := RowWitness.topPrime 71287 },
  { lower := 71430, upper := 71431, witness := RowWitness.topPrime 71429 },
  { lower := 89383, upper := 89515, witness := RowWitness.topPrime 89381 },
  { lower := 93845, upper := 93892, witness := RowWitness.topPrime 93827 },
  { lower := 98415, upper := 98446, witness := RowWitness.topPrime 98411 },
  { lower := 102152, upper := 102152, witness := RowWitness.topPrime 102149 },
  { lower := 103041, upper := 103108, witness := RowWitness.topPrime 103007 },
  { lower := 109503, upper := 109517, witness := RowWitness.topPrime 109481 },
  { lower := 137842, upper := 137923, witness := RowWitness.topPrime 137831 },
  { lower := 148955, upper := 149019, witness := RowWitness.topPrime 148949 },
  { lower := 154568, upper := 154591, witness := RowWitness.topPrime 154543 }
]

def row143_layers : List CoverLayer := [
  { lower := 20306, upper := 40612, M := 17 },
  { lower := 40612, upper := 81224, M := 13 },
  { lower := 81224, upper := 162448, M := 10 },
  { lower := 162448, upper := 324896, M := 8 },
  { lower := 324896, upper := 649792, M := 6 },
  { lower := 649792, upper := 1299584, M := 5 },
  { lower := 1299584, upper := 2599168, M := 4 },
  { lower := 2599168, upper := 5198336, M := 3 },
  { lower := 5198336, upper := 10396672, M := 2 },
  { lower := 10396672, upper := 20793344, M := 2 },
  { lower := 20793344, upper := 41586688, M := 2 },
  { lower := 41586688, upper := 83173376, M := 1 },
  { lower := 83173376, upper := 100000000, M := 1 }
]

def row143 : FiniteCoverRow := {
  height := row143_height,
  goods := row143_goods,
  layers := row143_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_good000_checked :
    goodSegmentCheck 143 47 101
      { lower := 288, upper := 425, witness := RowWitness.topPrime 283 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good001_checked :
    goodSegmentCheck 143 47 101
      { lower := 426, upper := 563, witness := RowWitness.topPrime 421 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good002_checked :
    goodSegmentCheck 143 47 101
      { lower := 564, upper := 705, witness := RowWitness.topPrime 563 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good003_checked :
    goodSegmentCheck 143 47 101
      { lower := 706, upper := 843, witness := RowWitness.topPrime 701 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good004_checked :
    goodSegmentCheck 143 47 101
      { lower := 844, upper := 981, witness := RowWitness.topPrime 839 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good005_checked :
    goodSegmentCheck 143 47 101
      { lower := 982, upper := 1119, witness := RowWitness.topPrime 977 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good006_checked :
    goodSegmentCheck 143 47 101
      { lower := 1120, upper := 1259, witness := RowWitness.topPrime 1117 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good007_checked :
    goodSegmentCheck 143 47 101
      { lower := 1260, upper := 1401, witness := RowWitness.topPrime 1259 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good008_checked :
    goodSegmentCheck 143 47 101
      { lower := 1402, upper := 1541, witness := RowWitness.topPrime 1399 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good009_checked :
    goodSegmentCheck 143 47 101
      { lower := 1542, upper := 1673, witness := RowWitness.topPrime 1531 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good010_checked :
    goodSegmentCheck 143 47 101
      { lower := 1674, upper := 1811, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good011_checked :
    goodSegmentCheck 143 47 101
      { lower := 1812, upper := 1953, witness := RowWitness.topPrime 1811 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good012_checked :
    goodSegmentCheck 143 47 101
      { lower := 1954, upper := 2093, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good013_checked :
    goodSegmentCheck 143 47 101
      { lower := 2094, upper := 2231, witness := RowWitness.topPrime 2089 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good014_checked :
    goodSegmentCheck 143 47 101
      { lower := 2232, upper := 2363, witness := RowWitness.topPrime 2221 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good015_checked :
    goodSegmentCheck 143 47 101
      { lower := 2364, upper := 2499, witness := RowWitness.topPrime 2357 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_good016_checked :
    goodSegmentCheck 143 47 101
      { lower := 2500, upper := 2619, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good017_checked :
    goodSegmentCheck 143 47 101
      { lower := 2620, upper := 2759, witness := RowWitness.topPrime 2617 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good018_checked :
    goodSegmentCheck 143 47 101
      { lower := 2760, upper := 2895, witness := RowWitness.topPrime 2753 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good019_checked :
    goodSegmentCheck 143 47 101
      { lower := 2896, upper := 3029, witness := RowWitness.topPrime 2887 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good020_checked :
    goodSegmentCheck 143 47 101
      { lower := 3030, upper := 3165, witness := RowWitness.topPrime 3023 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good021_checked :
    goodSegmentCheck 143 47 101
      { lower := 3166, upper := 3305, witness := RowWitness.topPrime 3163 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good022_checked :
    goodSegmentCheck 143 47 101
      { lower := 3306, upper := 3443, witness := RowWitness.topPrime 3301 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good023_checked :
    goodSegmentCheck 143 47 101
      { lower := 3444, upper := 3575, witness := RowWitness.topPrime 3433 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good024_checked :
    goodSegmentCheck 143 47 101
      { lower := 3576, upper := 3713, witness := RowWitness.topPrime 3571 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good025_checked :
    goodSegmentCheck 143 47 101
      { lower := 3714, upper := 3851, witness := RowWitness.topPrime 3709 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good026_checked :
    goodSegmentCheck 143 47 101
      { lower := 3852, upper := 3993, witness := RowWitness.topPrime 3851 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good027_checked :
    goodSegmentCheck 143 47 101
      { lower := 3994, upper := 4131, witness := RowWitness.topPrime 3989 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good028_checked :
    goodSegmentCheck 143 47 101
      { lower := 4132, upper := 4271, witness := RowWitness.topPrime 4129 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good029_checked :
    goodSegmentCheck 143 47 101
      { lower := 4272, upper := 4413, witness := RowWitness.topPrime 4271 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good030_checked :
    goodSegmentCheck 143 47 101
      { lower := 4414, upper := 4551, witness := RowWitness.topPrime 4409 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good031_checked :
    goodSegmentCheck 143 47 101
      { lower := 4552, upper := 4691, witness := RowWitness.topPrime 4549 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_good032_checked :
    goodSegmentCheck 143 47 101
      { lower := 4692, upper := 4833, witness := RowWitness.topPrime 4691 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good033_checked :
    goodSegmentCheck 143 47 101
      { lower := 4834, upper := 4973, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good034_checked :
    goodSegmentCheck 143 47 101
      { lower := 4974, upper := 5115, witness := RowWitness.topPrime 4973 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good035_checked :
    goodSegmentCheck 143 47 101
      { lower := 5116, upper := 5255, witness := RowWitness.topPrime 5113 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good036_checked :
    goodSegmentCheck 143 47 101
      { lower := 5256, upper := 5379, witness := RowWitness.topPrime 5237 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good037_checked :
    goodSegmentCheck 143 47 101
      { lower := 5380, upper := 5493, witness := RowWitness.topPrime 5351 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good038_checked :
    goodSegmentCheck 143 47 101
      { lower := 5494, upper := 5625, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good039_checked :
    goodSegmentCheck 143 47 101
      { lower := 5626, upper := 5765, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good040_checked :
    goodSegmentCheck 143 47 101
      { lower := 5766, upper := 5891, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good041_checked :
    goodSegmentCheck 143 47 101
      { lower := 5892, upper := 6023, witness := RowWitness.topPrime 5881 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good042_checked :
    goodSegmentCheck 143 47 101
      { lower := 6024, upper := 6153, witness := RowWitness.topPrime 6011 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good043_checked :
    goodSegmentCheck 143 47 101
      { lower := 6154, upper := 6293, witness := RowWitness.topPrime 6151 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good044_checked :
    goodSegmentCheck 143 47 101
      { lower := 6294, upper := 6429, witness := RowWitness.topPrime 6287 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good045_checked :
    goodSegmentCheck 143 47 101
      { lower := 6430, upper := 6569, witness := RowWitness.topPrime 6427 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good046_checked :
    goodSegmentCheck 143 47 101
      { lower := 6570, upper := 6711, witness := RowWitness.topPrime 6569 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good047_checked :
    goodSegmentCheck 143 47 101
      { lower := 6712, upper := 6851, witness := RowWitness.topPrime 6709 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_good048_checked :
    goodSegmentCheck 143 47 101
      { lower := 6852, upper := 6983, witness := RowWitness.topPrime 6841 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good049_checked :
    goodSegmentCheck 143 47 101
      { lower := 6984, upper := 7125, witness := RowWitness.topPrime 6983 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good050_checked :
    goodSegmentCheck 143 47 101
      { lower := 7126, upper := 7263, witness := RowWitness.topPrime 7121 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good051_checked :
    goodSegmentCheck 143 47 101
      { lower := 7264, upper := 7395, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good052_checked :
    goodSegmentCheck 143 47 101
      { lower := 7396, upper := 7535, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good053_checked :
    goodSegmentCheck 143 47 101
      { lower := 7536, upper := 7671, witness := RowWitness.topPrime 7529 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good054_checked :
    goodSegmentCheck 143 47 101
      { lower := 7672, upper := 7811, witness := RowWitness.topPrime 7669 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good055_checked :
    goodSegmentCheck 143 47 101
      { lower := 7812, upper := 7935, witness := RowWitness.topPrime 7793 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good056_checked :
    goodSegmentCheck 143 47 101
      { lower := 7936, upper := 8075, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good057_checked :
    goodSegmentCheck 143 47 101
      { lower := 8076, upper := 8211, witness := RowWitness.topPrime 8069 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good058_checked :
    goodSegmentCheck 143 47 101
      { lower := 8212, upper := 8351, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good059_checked :
    goodSegmentCheck 143 47 101
      { lower := 8352, upper := 8471, witness := RowWitness.topPrime 8329 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good060_checked :
    goodSegmentCheck 143 47 101
      { lower := 8472, upper := 8609, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good061_checked :
    goodSegmentCheck 143 47 101
      { lower := 8610, upper := 8751, witness := RowWitness.topPrime 8609 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good062_checked :
    goodSegmentCheck 143 47 101
      { lower := 8752, upper := 8889, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good063_checked :
    goodSegmentCheck 143 47 101
      { lower := 8890, upper := 9029, witness := RowWitness.topPrime 8887 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_good064_checked :
    goodSegmentCheck 143 47 101
      { lower := 9030, upper := 9171, witness := RowWitness.topPrime 9029 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good065_checked :
    goodSegmentCheck 143 47 101
      { lower := 9172, upper := 9303, witness := RowWitness.topPrime 9161 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good066_checked :
    goodSegmentCheck 143 47 101
      { lower := 9304, upper := 9435, witness := RowWitness.topPrime 9293 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good067_checked :
    goodSegmentCheck 143 47 101
      { lower := 9436, upper := 9575, witness := RowWitness.topPrime 9433 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good068_checked :
    goodSegmentCheck 143 47 101
      { lower := 9576, upper := 9693, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good069_checked :
    goodSegmentCheck 143 47 101
      { lower := 9694, upper := 9831, witness := RowWitness.topPrime 9689 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good070_checked :
    goodSegmentCheck 143 47 101
      { lower := 9832, upper := 9971, witness := RowWitness.topPrime 9829 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good071_checked :
    goodSegmentCheck 143 47 101
      { lower := 9972, upper := 10109, witness := RowWitness.topPrime 9967 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good072_checked :
    goodSegmentCheck 143 47 101
      { lower := 10110, upper := 10245, witness := RowWitness.topPrime 10103 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good073_checked :
    goodSegmentCheck 143 47 101
      { lower := 10246, upper := 10385, witness := RowWitness.topPrime 10243 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good074_checked :
    goodSegmentCheck 143 47 101
      { lower := 10386, upper := 10511, witness := RowWitness.topPrime 10369 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good075_checked :
    goodSegmentCheck 143 47 101
      { lower := 10512, upper := 10643, witness := RowWitness.topPrime 10501 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good076_checked :
    goodSegmentCheck 143 47 101
      { lower := 10644, upper := 10781, witness := RowWitness.topPrime 10639 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good077_checked :
    goodSegmentCheck 143 47 101
      { lower := 10782, upper := 10923, witness := RowWitness.topPrime 10781 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good078_checked :
    goodSegmentCheck 143 47 101
      { lower := 10924, upper := 11051, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good079_checked :
    goodSegmentCheck 143 47 101
      { lower := 11052, upper := 11189, witness := RowWitness.topPrime 11047 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_good080_checked :
    goodSegmentCheck 143 47 101
      { lower := 11190, upper := 11319, witness := RowWitness.topPrime 11177 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good081_checked :
    goodSegmentCheck 143 47 101
      { lower := 11320, upper := 11459, witness := RowWitness.topPrime 11317 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good082_checked :
    goodSegmentCheck 143 47 101
      { lower := 11460, upper := 11589, witness := RowWitness.topPrime 11447 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good083_checked :
    goodSegmentCheck 143 47 101
      { lower := 11590, upper := 11729, witness := RowWitness.topPrime 11587 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good084_checked :
    goodSegmentCheck 143 47 101
      { lower := 11730, upper := 11861, witness := RowWitness.topPrime 11719 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good085_checked :
    goodSegmentCheck 143 47 101
      { lower := 11862, upper := 11981, witness := RowWitness.topPrime 11839 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good086_checked :
    goodSegmentCheck 143 47 101
      { lower := 11982, upper := 12123, witness := RowWitness.topPrime 11981 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good087_checked :
    goodSegmentCheck 143 47 101
      { lower := 12124, upper := 12261, witness := RowWitness.topPrime 12119 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good088_checked :
    goodSegmentCheck 143 47 101
      { lower := 12262, upper := 12395, witness := RowWitness.topPrime 12253 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good089_checked :
    goodSegmentCheck 143 47 101
      { lower := 12396, upper := 12533, witness := RowWitness.topPrime 12391 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good090_checked :
    goodSegmentCheck 143 47 101
      { lower := 12534, upper := 12669, witness := RowWitness.topPrime 12527 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good091_checked :
    goodSegmentCheck 143 47 101
      { lower := 12670, upper := 12801, witness := RowWitness.topPrime 12659 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good092_checked :
    goodSegmentCheck 143 47 101
      { lower := 12802, upper := 12941, witness := RowWitness.topPrime 12799 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good093_checked :
    goodSegmentCheck 143 47 101
      { lower := 12942, upper := 13083, witness := RowWitness.topPrime 12941 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good094_checked :
    goodSegmentCheck 143 47 101
      { lower := 13084, upper := 13205, witness := RowWitness.topPrime 13063 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good095_checked :
    goodSegmentCheck 143 47 101
      { lower := 13206, upper := 13329, witness := RowWitness.topPrime 13187 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_good096_checked :
    goodSegmentCheck 143 47 101
      { lower := 13330, upper := 13469, witness := RowWitness.topPrime 13327 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good097_checked :
    goodSegmentCheck 143 47 101
      { lower := 13470, upper := 13611, witness := RowWitness.topPrime 13469 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good098_checked :
    goodSegmentCheck 143 47 101
      { lower := 13612, upper := 13739, witness := RowWitness.topPrime 13597 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good099_checked :
    goodSegmentCheck 143 47 101
      { lower := 13740, upper := 13871, witness := RowWitness.topPrime 13729 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good100_checked :
    goodSegmentCheck 143 47 101
      { lower := 13872, upper := 14001, witness := RowWitness.topPrime 13859 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good101_checked :
    goodSegmentCheck 143 47 101
      { lower := 14002, upper := 14141, witness := RowWitness.topPrime 13999 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good102_checked :
    goodSegmentCheck 143 47 101
      { lower := 14142, upper := 14249, witness := RowWitness.topPrime 14107 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good103_checked :
    goodSegmentCheck 143 47 101
      { lower := 14250, upper := 14391, witness := RowWitness.topPrime 14249 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good104_checked :
    goodSegmentCheck 143 47 101
      { lower := 14392, upper := 14531, witness := RowWitness.topPrime 14389 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good105_checked :
    goodSegmentCheck 143 47 101
      { lower := 14532, upper := 14661, witness := RowWitness.topPrime 14519 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good106_checked :
    goodSegmentCheck 143 47 101
      { lower := 14662, upper := 14799, witness := RowWitness.topPrime 14657 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good107_checked :
    goodSegmentCheck 143 47 101
      { lower := 14800, upper := 14939, witness := RowWitness.topPrime 14797 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good108_checked :
    goodSegmentCheck 143 47 101
      { lower := 14940, upper := 15081, witness := RowWitness.topPrime 14939 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good109_checked :
    goodSegmentCheck 143 47 101
      { lower := 15082, upper := 15219, witness := RowWitness.topPrime 15077 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good110_checked :
    goodSegmentCheck 143 47 101
      { lower := 15220, upper := 15359, witness := RowWitness.topPrime 15217 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good111_checked :
    goodSegmentCheck 143 47 101
      { lower := 15360, upper := 15501, witness := RowWitness.topPrime 15359 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_good112_checked :
    goodSegmentCheck 143 47 101
      { lower := 15502, upper := 15639, witness := RowWitness.topPrime 15497 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good113_checked :
    goodSegmentCheck 143 47 101
      { lower := 15640, upper := 15771, witness := RowWitness.topPrime 15629 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good114_checked :
    goodSegmentCheck 143 47 101
      { lower := 15772, upper := 15909, witness := RowWitness.topPrime 15767 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good115_checked :
    goodSegmentCheck 143 47 101
      { lower := 15910, upper := 16049, witness := RowWitness.topPrime 15907 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good116_checked :
    goodSegmentCheck 143 47 101
      { lower := 16050, upper := 16175, witness := RowWitness.topPrime 16033 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good117_checked :
    goodSegmentCheck 143 47 101
      { lower := 16176, upper := 16283, witness := RowWitness.topPrime 16141 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good118_checked :
    goodSegmentCheck 143 47 101
      { lower := 16284, upper := 16415, witness := RowWitness.topPrime 16273 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good119_checked :
    goodSegmentCheck 143 47 101
      { lower := 16416, upper := 16553, witness := RowWitness.topPrime 16411 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good120_checked :
    goodSegmentCheck 143 47 101
      { lower := 16554, upper := 16695, witness := RowWitness.topPrime 16553 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good121_checked :
    goodSegmentCheck 143 47 101
      { lower := 16696, upper := 16835, witness := RowWitness.topPrime 16693 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good122_checked :
    goodSegmentCheck 143 47 101
      { lower := 16836, upper := 16973, witness := RowWitness.topPrime 16831 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good123_checked :
    goodSegmentCheck 143 47 101
      { lower := 16974, upper := 17105, witness := RowWitness.topPrime 16963 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good124_checked :
    goodSegmentCheck 143 47 101
      { lower := 17106, upper := 17241, witness := RowWitness.topPrime 17099 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good125_checked :
    goodSegmentCheck 143 47 101
      { lower := 17242, upper := 17381, witness := RowWitness.topPrime 17239 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good126_checked :
    goodSegmentCheck 143 47 101
      { lower := 17382, upper := 17519, witness := RowWitness.topPrime 17377 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good127_checked :
    goodSegmentCheck 143 47 101
      { lower := 17520, upper := 17661, witness := RowWitness.topPrime 17519 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_good128_checked :
    goodSegmentCheck 143 47 101
      { lower := 17662, upper := 17801, witness := RowWitness.topPrime 17659 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good129_checked :
    goodSegmentCheck 143 47 101
      { lower := 17802, upper := 17933, witness := RowWitness.topPrime 17791 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good130_checked :
    goodSegmentCheck 143 47 101
      { lower := 17934, upper := 18071, witness := RowWitness.topPrime 17929 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good131_checked :
    goodSegmentCheck 143 47 101
      { lower := 18072, upper := 18203, witness := RowWitness.topPrime 18061 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good132_checked :
    goodSegmentCheck 143 47 101
      { lower := 18204, upper := 18341, witness := RowWitness.topPrime 18199 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good133_checked :
    goodSegmentCheck 143 47 101
      { lower := 18342, upper := 18483, witness := RowWitness.topPrime 18341 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good134_checked :
    goodSegmentCheck 143 47 101
      { lower := 18484, upper := 18623, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good135_checked :
    goodSegmentCheck 143 47 101
      { lower := 18624, upper := 18759, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good136_checked :
    goodSegmentCheck 143 47 101
      { lower := 18760, upper := 18899, witness := RowWitness.topPrime 18757 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good137_checked :
    goodSegmentCheck 143 47 101
      { lower := 18900, upper := 19041, witness := RowWitness.topPrime 18899 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good138_checked :
    goodSegmentCheck 143 47 101
      { lower := 19042, upper := 19179, witness := RowWitness.topPrime 19037 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good139_checked :
    goodSegmentCheck 143 47 101
      { lower := 19180, upper := 19305, witness := RowWitness.topPrime 19163 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good140_checked :
    goodSegmentCheck 143 47 101
      { lower := 19306, upper := 19443, witness := RowWitness.topPrime 19301 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good141_checked :
    goodSegmentCheck 143 47 101
      { lower := 19444, upper := 19583, witness := RowWitness.topPrime 19441 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good142_checked :
    goodSegmentCheck 143 47 101
      { lower := 19584, upper := 19725, witness := RowWitness.topPrime 19583 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good143_checked :
    goodSegmentCheck 143 47 101
      { lower := 19726, upper := 19859, witness := RowWitness.topPrime 19717 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_good144_checked :
    goodSegmentCheck 143 47 101
      { lower := 19860, upper := 19995, witness := RowWitness.topPrime 19853 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good145_checked :
    goodSegmentCheck 143 47 101
      { lower := 19996, upper := 20135, witness := RowWitness.topPrime 19993 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good146_checked :
    goodSegmentCheck 143 47 101
      { lower := 20136, upper := 20271, witness := RowWitness.topPrime 20129 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good147_checked :
    goodSegmentCheck 143 47 101
      { lower := 20272, upper := 20306, witness := RowWitness.topPrime 20269 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good148_checked :
    goodSegmentCheck 143 47 101
      { lower := 20402, upper := 20541, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good149_checked :
    goodSegmentCheck 143 47 101
      { lower := 20542, upper := 20675, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good150_checked :
    goodSegmentCheck 143 47 101
      { lower := 20676, upper := 20719, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good151_checked :
    goodSegmentCheck 143 47 101
      { lower := 21316, upper := 21360, witness := RowWitness.topPrime 21313 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good152_checked :
    goodSegmentCheck 143 47 101
      { lower := 21870, upper := 22005, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good153_checked :
    goodSegmentCheck 143 47 101
      { lower := 22006, upper := 22017, witness := RowWitness.topPrime 22003 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good154_checked :
    goodSegmentCheck 143 47 101
      { lower := 22188, upper := 22232, witness := RowWitness.topPrime 22171 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good155_checked :
    goodSegmentCheck 143 47 101
      { lower := 22326, upper := 22330, witness := RowWitness.topPrime 22307 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good156_checked :
    goodSegmentCheck 143 47 101
      { lower := 22445, upper := 22468, witness := RowWitness.topPrime 22441 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good157_checked :
    goodSegmentCheck 143 47 101
      { lower := 22472, upper := 22611, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good158_checked :
    goodSegmentCheck 143 47 101
      { lower := 22612, upper := 22614, witness := RowWitness.topPrime 22573 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good159_checked :
    goodSegmentCheck 143 47 101
      { lower := 23763, upper := 23903, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_good160_checked :
    goodSegmentCheck 143 47 101
      { lower := 23904, upper := 23904, witness := RowWitness.topPrime 23899 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good161_checked :
    goodSegmentCheck 143 47 101
      { lower := 24037, upper := 24171, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good162_checked :
    goodSegmentCheck 143 47 101
      { lower := 24172, upper := 24179, witness := RowWitness.topPrime 24169 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good163_checked :
    goodSegmentCheck 143 47 101
      { lower := 24334, upper := 24471, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good164_checked :
    goodSegmentCheck 143 47 101
      { lower := 24472, upper := 24509, witness := RowWitness.topPrime 24469 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good165_checked :
    goodSegmentCheck 143 47 101
      { lower := 24576, upper := 24707, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good166_checked :
    goodSegmentCheck 143 47 101
      { lower := 25000, upper := 25106, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good167_checked :
    goodSegmentCheck 143 47 101
      { lower := 25215, upper := 25331, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good168_checked :
    goodSegmentCheck 143 47 101
      { lower := 25332, upper := 25357, witness := RowWitness.topPrime 25321 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good169_checked :
    goodSegmentCheck 143 47 101
      { lower := 26508, upper := 26553, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good170_checked :
    goodSegmentCheck 143 47 101
      { lower := 26624, upper := 26739, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good171_checked :
    goodSegmentCheck 143 47 101
      { lower := 26740, upper := 26766, witness := RowWitness.topPrime 26737 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good172_checked :
    goodSegmentCheck 143 47 101
      { lower := 26934, upper := 27038, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good173_checked :
    goodSegmentCheck 143 47 101
      { lower := 27556, upper := 27578, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good174_checked :
    goodSegmentCheck 143 47 101
      { lower := 27848, upper := 27877, witness := RowWitness.topPrime 27847 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good175_checked :
    goodSegmentCheck 143 47 101
      { lower := 28125, upper := 28265, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_good176_checked :
    goodSegmentCheck 143 47 101
      { lower := 28266, upper := 28267, witness := RowWitness.topPrime 28229 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good177_checked :
    goodSegmentCheck 143 47 101
      { lower := 28561, upper := 28573, witness := RowWitness.topPrime 28559 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good178_checked :
    goodSegmentCheck 143 47 101
      { lower := 28577, upper := 28715, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good179_checked :
    goodSegmentCheck 143 47 101
      { lower := 28716, upper := 28853, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good180_checked :
    goodSegmentCheck 143 47 101
      { lower := 28854, upper := 28859, witness := RowWitness.topPrime 28843 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good181_checked :
    goodSegmentCheck 143 47 101
      { lower := 29584, upper := 29620, witness := RowWitness.topPrime 29581 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good182_checked :
    goodSegmentCheck 143 47 101
      { lower := 29791, upper := 29910, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good183_checked :
    goodSegmentCheck 143 47 101
      { lower := 30618, upper := 30735, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good184_checked :
    goodSegmentCheck 143 47 101
      { lower := 30736, upper := 30760, witness := RowWitness.topPrime 30727 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good185_checked :
    goodSegmentCheck 143 47 101
      { lower := 30926, upper := 31041, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good186_checked :
    goodSegmentCheck 143 47 101
      { lower := 31213, upper := 31335, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good187_checked :
    goodSegmentCheck 143 47 101
      { lower := 31336, upper := 31392, witness := RowWitness.topPrime 31333 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good188_checked :
    goodSegmentCheck 143 47 101
      { lower := 31423, upper := 31539, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good189_checked :
    goodSegmentCheck 143 47 101
      { lower := 31540, upper := 31565, witness := RowWitness.topPrime 31531 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good190_checked :
    goodSegmentCheck 143 47 101
      { lower := 32805, upper := 32910, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good191_checked :
    goodSegmentCheck 143 47 101
      { lower := 33614, upper := 33631, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_good192_checked :
    goodSegmentCheck 143 47 101
      { lower := 33708, upper := 33756, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good193_checked :
    goodSegmentCheck 143 47 101
      { lower := 34322, upper := 34461, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good194_checked :
    goodSegmentCheck 143 47 101
      { lower := 34462, upper := 34533, witness := RowWitness.topPrime 34457 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good195_checked :
    goodSegmentCheck 143 47 101
      { lower := 34816, upper := 34949, witness := RowWitness.topPrime 34807 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good196_checked :
    goodSegmentCheck 143 47 101
      { lower := 34950, upper := 34952, witness := RowWitness.topPrime 34949 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good197_checked :
    goodSegmentCheck 143 47 101
      { lower := 35344, upper := 35429, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good198_checked :
    goodSegmentCheck 143 47 101
      { lower := 36015, upper := 36054, witness := RowWitness.topPrime 36013 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good199_checked :
    goodSegmentCheck 143 47 101
      { lower := 36517, upper := 36639, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good200_checked :
    goodSegmentCheck 143 47 101
      { lower := 36640, upper := 36643, witness := RowWitness.topPrime 36637 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good201_checked :
    goodSegmentCheck 143 47 101
      { lower := 37210, upper := 37343, witness := RowWitness.topPrime 37201 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good202_checked :
    goodSegmentCheck 143 47 101
      { lower := 37344, upper := 37352, witness := RowWitness.topPrime 37339 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good203_checked :
    goodSegmentCheck 143 47 101
      { lower := 37500, upper := 37635, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good204_checked :
    goodSegmentCheck 143 47 101
      { lower := 37636, upper := 37695, witness := RowWitness.topPrime 37633 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good205_checked :
    goodSegmentCheck 143 47 101
      { lower := 38307, upper := 38445, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good206_checked :
    goodSegmentCheck 143 47 101
      { lower := 38446, upper := 38449, witness := RowWitness.topPrime 38431 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good207_checked :
    goodSegmentCheck 143 47 101
      { lower := 39326, upper := 39465, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_good208_checked :
    goodSegmentCheck 143 47 101
      { lower := 39466, upper := 39468, witness := RowWitness.topPrime 39461 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good209_checked :
    goodSegmentCheck 143 47 101
      { lower := 40401, upper := 40470, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good210_checked :
    goodSegmentCheck 143 47 101
      { lower := 40931, upper := 40946, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good211_checked :
    goodSegmentCheck 143 47 101
      { lower := 40960, upper := 41073, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good212_checked :
    goodSegmentCheck 143 47 101
      { lower := 45369, upper := 45395, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good213_checked :
    goodSegmentCheck 143 47 101
      { lower := 45927, upper := 45938, witness := RowWitness.topPrime 45893 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good214_checked :
    goodSegmentCheck 143 47 101
      { lower := 47526, upper := 47663, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good215_checked :
    goodSegmentCheck 143 47 101
      { lower := 47664, upper := 47666, witness := RowWitness.topPrime 47659 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good216_checked :
    goodSegmentCheck 143 47 101
      { lower := 48013, upper := 48103, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good217_checked :
    goodSegmentCheck 143 47 101
      { lower := 48387, upper := 48515, witness := RowWitness.topPrime 48383 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good218_checked :
    goodSegmentCheck 143 47 101
      { lower := 48778, upper := 48810, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good219_checked :
    goodSegmentCheck 143 47 101
      { lower := 49152, upper := 49272, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good220_checked :
    goodSegmentCheck 143 47 101
      { lower := 50421, upper := 50552, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good221_checked :
    goodSegmentCheck 143 47 101
      { lower := 51076, upper := 51147, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good222_checked :
    goodSegmentCheck 143 47 101
      { lower := 53290, upper := 53390, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good223_checked :
    goodSegmentCheck 143 47 101
      { lower := 55451, upper := 55583, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_good224_checked :
    goodSegmentCheck 143 47 101
      { lower := 55584, upper := 55589, witness := RowWitness.topPrime 55579 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good225_checked :
    goodSegmentCheck 143 47 101
      { lower := 56307, upper := 56311, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good226_checked :
    goodSegmentCheck 143 47 101
      { lower := 57344, upper := 57387, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good227_checked :
    goodSegmentCheck 143 47 101
      { lower := 59049, upper := 59098, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good228_checked :
    goodSegmentCheck 143 47 101
      { lower := 62500, upper := 62552, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good229_checked :
    goodSegmentCheck 143 47 101
      { lower := 63869, upper := 64005, witness := RowWitness.topPrime 63863 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good230_checked :
    goodSegmentCheck 143 47 101
      { lower := 64006, upper := 64011, witness := RowWitness.topPrime 63997 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good231_checked :
    goodSegmentCheck 143 47 101
      { lower := 65536, upper := 65663, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good232_checked :
    goodSegmentCheck 143 47 101
      { lower := 65664, upper := 65678, witness := RowWitness.topPrime 65657 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good233_checked :
    goodSegmentCheck 143 47 101
      { lower := 68644, upper := 68781, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good234_checked :
    goodSegmentCheck 143 47 101
      { lower := 68782, upper := 68793, witness := RowWitness.topPrime 68777 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good235_checked :
    goodSegmentCheck 143 47 101
      { lower := 68921, upper := 69032, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good236_checked :
    goodSegmentCheck 143 47 101
      { lower := 71289, upper := 71429, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good237_checked :
    goodSegmentCheck 143 47 101
      { lower := 71430, upper := 71431, witness := RowWitness.topPrime 71429 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good238_checked :
    goodSegmentCheck 143 47 101
      { lower := 89383, upper := 89515, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good239_checked :
    goodSegmentCheck 143 47 101
      { lower := 93845, upper := 93892, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_good240_checked :
    goodSegmentCheck 143 47 101
      { lower := 98415, upper := 98446, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good241_checked :
    goodSegmentCheck 143 47 101
      { lower := 102152, upper := 102152, witness := RowWitness.topPrime 102149 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good242_checked :
    goodSegmentCheck 143 47 101
      { lower := 103041, upper := 103108, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good243_checked :
    goodSegmentCheck 143 47 101
      { lower := 109503, upper := 109517, witness := RowWitness.topPrime 109481 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good244_checked :
    goodSegmentCheck 143 47 101
      { lower := 137842, upper := 137923, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good245_checked :
    goodSegmentCheck 143 47 101
      { lower := 148955, upper := 149019, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row143_good246_checked :
    goodSegmentCheck 143 47 101
      { lower := 154568, upper := 154591, witness := RowWitness.topPrime 154543 } = true := by
  exact good_top_prime_checked (i := 143) (r := 47) (s := 101) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_good246_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_goods_checked :
    row143.goods.all (goodSegmentCheck row143.height.i row143.height.r row143.height.s) = true := by
  change row143_goods.all (goodSegmentCheck 143 47 101) = true
  simp only [row143_goods, List.all_cons, List.all_nil,
    row143_good000_checked,
    row143_good001_checked,
    row143_good002_checked,
    row143_good003_checked,
    row143_good004_checked,
    row143_good005_checked,
    row143_good006_checked,
    row143_good007_checked,
    row143_good008_checked,
    row143_good009_checked,
    row143_good010_checked,
    row143_good011_checked,
    row143_good012_checked,
    row143_good013_checked,
    row143_good014_checked,
    row143_good015_checked,
    row143_good016_checked,
    row143_good017_checked,
    row143_good018_checked,
    row143_good019_checked,
    row143_good020_checked,
    row143_good021_checked,
    row143_good022_checked,
    row143_good023_checked,
    row143_good024_checked,
    row143_good025_checked,
    row143_good026_checked,
    row143_good027_checked,
    row143_good028_checked,
    row143_good029_checked,
    row143_good030_checked,
    row143_good031_checked,
    row143_good032_checked,
    row143_good033_checked,
    row143_good034_checked,
    row143_good035_checked,
    row143_good036_checked,
    row143_good037_checked,
    row143_good038_checked,
    row143_good039_checked,
    row143_good040_checked,
    row143_good041_checked,
    row143_good042_checked,
    row143_good043_checked,
    row143_good044_checked,
    row143_good045_checked,
    row143_good046_checked,
    row143_good047_checked,
    row143_good048_checked,
    row143_good049_checked,
    row143_good050_checked,
    row143_good051_checked,
    row143_good052_checked,
    row143_good053_checked,
    row143_good054_checked,
    row143_good055_checked,
    row143_good056_checked,
    row143_good057_checked,
    row143_good058_checked,
    row143_good059_checked,
    row143_good060_checked,
    row143_good061_checked,
    row143_good062_checked,
    row143_good063_checked,
    row143_good064_checked,
    row143_good065_checked,
    row143_good066_checked,
    row143_good067_checked,
    row143_good068_checked,
    row143_good069_checked,
    row143_good070_checked,
    row143_good071_checked,
    row143_good072_checked,
    row143_good073_checked,
    row143_good074_checked,
    row143_good075_checked,
    row143_good076_checked,
    row143_good077_checked,
    row143_good078_checked,
    row143_good079_checked,
    row143_good080_checked,
    row143_good081_checked,
    row143_good082_checked,
    row143_good083_checked,
    row143_good084_checked,
    row143_good085_checked,
    row143_good086_checked,
    row143_good087_checked,
    row143_good088_checked,
    row143_good089_checked,
    row143_good090_checked,
    row143_good091_checked,
    row143_good092_checked,
    row143_good093_checked,
    row143_good094_checked,
    row143_good095_checked,
    row143_good096_checked,
    row143_good097_checked,
    row143_good098_checked,
    row143_good099_checked,
    row143_good100_checked,
    row143_good101_checked,
    row143_good102_checked,
    row143_good103_checked,
    row143_good104_checked,
    row143_good105_checked,
    row143_good106_checked,
    row143_good107_checked,
    row143_good108_checked,
    row143_good109_checked,
    row143_good110_checked,
    row143_good111_checked,
    row143_good112_checked,
    row143_good113_checked,
    row143_good114_checked,
    row143_good115_checked,
    row143_good116_checked,
    row143_good117_checked,
    row143_good118_checked,
    row143_good119_checked,
    row143_good120_checked,
    row143_good121_checked,
    row143_good122_checked,
    row143_good123_checked,
    row143_good124_checked,
    row143_good125_checked,
    row143_good126_checked,
    row143_good127_checked,
    row143_good128_checked,
    row143_good129_checked,
    row143_good130_checked,
    row143_good131_checked,
    row143_good132_checked,
    row143_good133_checked,
    row143_good134_checked,
    row143_good135_checked,
    row143_good136_checked,
    row143_good137_checked,
    row143_good138_checked,
    row143_good139_checked,
    row143_good140_checked,
    row143_good141_checked,
    row143_good142_checked,
    row143_good143_checked,
    row143_good144_checked,
    row143_good145_checked,
    row143_good146_checked,
    row143_good147_checked,
    row143_good148_checked,
    row143_good149_checked,
    row143_good150_checked,
    row143_good151_checked,
    row143_good152_checked,
    row143_good153_checked,
    row143_good154_checked,
    row143_good155_checked,
    row143_good156_checked,
    row143_good157_checked,
    row143_good158_checked,
    row143_good159_checked,
    row143_good160_checked,
    row143_good161_checked,
    row143_good162_checked,
    row143_good163_checked,
    row143_good164_checked,
    row143_good165_checked,
    row143_good166_checked,
    row143_good167_checked,
    row143_good168_checked,
    row143_good169_checked,
    row143_good170_checked,
    row143_good171_checked,
    row143_good172_checked,
    row143_good173_checked,
    row143_good174_checked,
    row143_good175_checked,
    row143_good176_checked,
    row143_good177_checked,
    row143_good178_checked,
    row143_good179_checked,
    row143_good180_checked,
    row143_good181_checked,
    row143_good182_checked,
    row143_good183_checked,
    row143_good184_checked,
    row143_good185_checked,
    row143_good186_checked,
    row143_good187_checked,
    row143_good188_checked,
    row143_good189_checked,
    row143_good190_checked,
    row143_good191_checked,
    row143_good192_checked,
    row143_good193_checked,
    row143_good194_checked,
    row143_good195_checked,
    row143_good196_checked,
    row143_good197_checked,
    row143_good198_checked,
    row143_good199_checked,
    row143_good200_checked,
    row143_good201_checked,
    row143_good202_checked,
    row143_good203_checked,
    row143_good204_checked,
    row143_good205_checked,
    row143_good206_checked,
    row143_good207_checked,
    row143_good208_checked,
    row143_good209_checked,
    row143_good210_checked,
    row143_good211_checked,
    row143_good212_checked,
    row143_good213_checked,
    row143_good214_checked,
    row143_good215_checked,
    row143_good216_checked,
    row143_good217_checked,
    row143_good218_checked,
    row143_good219_checked,
    row143_good220_checked,
    row143_good221_checked,
    row143_good222_checked,
    row143_good223_checked,
    row143_good224_checked,
    row143_good225_checked,
    row143_good226_checked,
    row143_good227_checked,
    row143_good228_checked,
    row143_good229_checked,
    row143_good230_checked,
    row143_good231_checked,
    row143_good232_checked,
    row143_good233_checked,
    row143_good234_checked,
    row143_good235_checked,
    row143_good236_checked,
    row143_good237_checked,
    row143_good238_checked,
    row143_good239_checked,
    row143_good240_checked,
    row143_good241_checked,
    row143_good242_checked,
    row143_good243_checked,
    row143_good244_checked,
    row143_good245_checked,
    row143_good246_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_registered :
    decide (row143.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row143_small_checked :
    coverCheck (2 * row143.height.i + 2) (row143.height.i * (row143.height.i - 1) - 1)
      (row143.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row143_layerCover_checked :
    coverCheck (row143.height.i * (row143.height.i - 1)) (row143.height.n0 - 1)
      (row143.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row143_bounds : List NatInterval :=
  [(288, 425), (426, 563), (564, 705), (706, 843), (844, 981), (982, 1119), (1120, 1259), (1260, 1401), (1402, 1541), (1542, 1673), (1674, 1811), (1812, 1953), (1954, 2093), (2094, 2231), (2232, 2363), (2364, 2499), (2500, 2619), (2620, 2759), (2760, 2895), (2896, 3029), (3030, 3165), (3166, 3305), (3306, 3443), (3444, 3575), (3576, 3713), (3714, 3851), (3852, 3993), (3994, 4131), (4132, 4271), (4272, 4413), (4414, 4551), (4552, 4691), (4692, 4833), (4834, 4973), (4974, 5115), (5116, 5255), (5256, 5379), (5380, 5493), (5494, 5625), (5626, 5765), (5766, 5891), (5892, 6023), (6024, 6153), (6154, 6293), (6294, 6429), (6430, 6569), (6570, 6711), (6712, 6851), (6852, 6983), (6984, 7125), (7126, 7263), (7264, 7395), (7396, 7535), (7536, 7671), (7672, 7811), (7812, 7935), (7936, 8075), (8076, 8211), (8212, 8351), (8352, 8471), (8472, 8609), (8610, 8751), (8752, 8889), (8890, 9029), (9030, 9171), (9172, 9303), (9304, 9435), (9436, 9575), (9576, 9693), (9694, 9831), (9832, 9971), (9972, 10109), (10110, 10245), (10246, 10385), (10386, 10511), (10512, 10643), (10644, 10781), (10782, 10923), (10924, 11051), (11052, 11189), (11190, 11319), (11320, 11459), (11460, 11589), (11590, 11729), (11730, 11861), (11862, 11981), (11982, 12123), (12124, 12261), (12262, 12395), (12396, 12533), (12534, 12669), (12670, 12801), (12802, 12941), (12942, 13083), (13084, 13205), (13206, 13329), (13330, 13469), (13470, 13611), (13612, 13739), (13740, 13871), (13872, 14001), (14002, 14141), (14142, 14249), (14250, 14391), (14392, 14531), (14532, 14661), (14662, 14799), (14800, 14939), (14940, 15081), (15082, 15219), (15220, 15359), (15360, 15501), (15502, 15639), (15640, 15771), (15772, 15909), (15910, 16049), (16050, 16175), (16176, 16283), (16284, 16415), (16416, 16553), (16554, 16695), (16696, 16835), (16836, 16973), (16974, 17105), (17106, 17241), (17242, 17381), (17382, 17519), (17520, 17661), (17662, 17801), (17802, 17933), (17934, 18071), (18072, 18203), (18204, 18341), (18342, 18483), (18484, 18623), (18624, 18759), (18760, 18899), (18900, 19041), (19042, 19179), (19180, 19305), (19306, 19443), (19444, 19583), (19584, 19725), (19726, 19859), (19860, 19995), (19996, 20135), (20136, 20271), (20272, 20306), (20402, 20541), (20542, 20675), (20676, 20719), (21316, 21360), (21870, 22005), (22006, 22017), (22188, 22232), (22326, 22330), (22445, 22468), (22472, 22611), (22612, 22614), (23763, 23903), (23904, 23904), (24037, 24171), (24172, 24179), (24334, 24471), (24472, 24509), (24576, 24707), (25000, 25106), (25215, 25331), (25332, 25357), (26508, 26553), (26624, 26739), (26740, 26766), (26934, 27038), (27556, 27578), (27848, 27877), (28125, 28265), (28266, 28267), (28561, 28573), (28577, 28715), (28716, 28853), (28854, 28859), (29584, 29620), (29791, 29910), (30618, 30735), (30736, 30760), (30926, 31041), (31213, 31335), (31336, 31392), (31423, 31539), (31540, 31565), (32805, 32910), (33614, 33631), (33708, 33756), (34322, 34461), (34462, 34533), (34816, 34949), (34950, 34952), (35344, 35429), (36015, 36054), (36517, 36639), (36640, 36643), (37210, 37343), (37344, 37352), (37500, 37635), (37636, 37695), (38307, 38445), (38446, 38449), (39326, 39465), (39466, 39468), (40401, 40470), (40931, 40946), (40960, 41073), (45369, 45395), (45927, 45938), (47526, 47663), (47664, 47666), (48013, 48103), (48387, 48515), (48778, 48810), (49152, 49272), (50421, 50552), (51076, 51147), (53290, 53390), (55451, 55583), (55584, 55589), (56307, 56311), (57344, 57387), (59049, 59098), (62500, 62552), (63869, 64005), (64006, 64011), (65536, 65663), (65664, 65678), (68644, 68781), (68782, 68793), (68921, 69032), (71289, 71429), (71430, 71431), (89383, 89515), (93845, 93892), (98415, 98446), (102152, 102152), (103041, 103108), (109503, 109517), (137842, 137923), (148955, 149019), (154568, 154591)]

theorem row143_bounds_eq : row143.goods.map goodSegmentBounds = row143_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row143_layer000_intervals : List ColouredInterval :=
  [(2, 20480, 20622), (2, 22528, 22670), (2, 24576, 24718), (2, 26624, 26766), (2, 28672, 28814), (2, 30720, 30862), (2, 32768, 32910), (2, 34816, 34958), (2, 20480, 20622), (2, 24576, 24718), (2, 28672, 28814), (2, 32768, 32910), (2, 36864, 37006), (2, 24576, 24718), (2, 32768, 32910), (2, 32768, 32910), (2, 32768, 32910), (3, 21870, 22012), (3, 24057, 24199), (3, 26244, 26386), (3, 28431, 28573), (3, 30618, 30760), (3, 32805, 32947), (3, 34992, 35134), (3, 37179, 37321), (3, 26244, 26386), (3, 32805, 32947), (3, 39366, 39508), (3, 39366, 39508), (5, 21875, 22017), (5, 25000, 25142), (5, 28125, 28267), (5, 31250, 31392), (5, 34375, 34517), (5, 37500, 37642), (5, 31250, 31392), (7, 21609, 21751), (7, 24010, 24152), (7, 26411, 26553), (7, 28812, 28954), (7, 31213, 31355), (7, 33614, 33756), (7, 36015, 36157), (7, 38416, 38558), (7, 33614, 33756), (13, 28561, 28703), (17, 24565, 24707), (17, 29478, 29620), (17, 34391, 34533), (17, 39304, 39446), (19, 20577, 20719), (19, 27436, 27578), (19, 34295, 34437), (23, 24334, 24476), (23, 36501, 36643), (29, 24389, 24531), (31, 29791, 29933), (37, 20535, 20677), (37, 21904, 22046), (37, 23273, 23415), (41, 20306, 20314), (41, 21853, 21995), (41, 23534, 23676), (41, 25215, 25357), (41, 26896, 27038), (41, 28577, 28719), (43, 20339, 20481), (43, 22188, 22330), (43, 24037, 24179), (43, 25886, 26028), (43, 27735, 27877), (43, 29584, 29726), (43, 31433, 31575), (47, 22090, 22232), (47, 24299, 24441), (47, 26508, 26650), (47, 28717, 28859), (47, 30926, 31068), (47, 33135, 33277), (47, 35344, 35486), (47, 37553, 37695), (53, 22472, 22614), (53, 25281, 25423), (53, 28090, 28232), (53, 30899, 31041), (53, 33708, 33850), (53, 36517, 36659), (53, 39326, 39468), (59, 20886, 21028), (59, 24367, 24509), (59, 27848, 27990), (59, 31329, 31471), (59, 34810, 34952), (59, 38291, 38433), (61, 22326, 22468), (61, 26047, 26189), (61, 29768, 29910), (61, 33489, 33631), (61, 37210, 37352), (67, 22445, 22587), (67, 26934, 27076), (67, 31423, 31565), (67, 35912, 36054), (67, 40401, 40543), (71, 20306, 20306), (71, 25205, 25347), (71, 30246, 30388), (71, 35287, 35429), (71, 40328, 40470), (73, 21316, 21458), (73, 26645, 26787), (73, 31974, 32116), (73, 37303, 37445), (79, 24964, 25106), (79, 31205, 31347), (79, 37446, 37588), (83, 20667, 20809), (83, 27556, 27698), (83, 34445, 34587), (89, 23763, 23905), (89, 31684, 31826), (89, 39605, 39747), (97, 28227, 28369), (97, 37636, 37778), (101, 20402, 20544), (101, 30603, 30745), (103, 21218, 21360), (103, 31827, 31969), (107, 22898, 23040), (107, 34347, 34489), (109, 23762, 23904), (109, 35643, 35785), (113, 25538, 25680), (113, 38307, 38449), (127, 32258, 32400), (131, 34322, 34464), (137, 37538, 37680), (139, 38642, 38784)]

def row143_layer000_block000 : List ColouredInterval :=
  [(2, 20480, 20622), (2, 22528, 22670), (2, 24576, 24718), (2, 26624, 26766), (2, 28672, 28814), (2, 30720, 30862), (2, 32768, 32910), (2, 34816, 34958), (2, 20480, 20622), (2, 24576, 24718), (2, 28672, 28814), (2, 32768, 32910), (2, 36864, 37006), (2, 24576, 24718)]

def row143_layer000_block001 : List ColouredInterval :=
  [(2, 32768, 32910), (2, 32768, 32910), (2, 32768, 32910), (3, 21870, 22012), (3, 24057, 24199), (3, 26244, 26386), (3, 28431, 28573), (3, 30618, 30760), (3, 32805, 32947), (3, 34992, 35134), (3, 37179, 37321), (3, 26244, 26386), (3, 32805, 32947), (3, 39366, 39508)]

def row143_layer000_block002 : List ColouredInterval :=
  [(3, 39366, 39508), (5, 21875, 22017), (5, 25000, 25142), (5, 28125, 28267), (5, 31250, 31392), (5, 34375, 34517), (5, 37500, 37642), (5, 31250, 31392), (7, 21609, 21751), (7, 24010, 24152), (7, 26411, 26553), (7, 28812, 28954), (7, 31213, 31355), (7, 33614, 33756)]

def row143_layer000_block003 : List ColouredInterval :=
  [(7, 36015, 36157), (7, 38416, 38558), (7, 33614, 33756), (13, 28561, 28703), (17, 24565, 24707), (17, 29478, 29620), (17, 34391, 34533), (17, 39304, 39446), (19, 20577, 20719), (19, 27436, 27578), (19, 34295, 34437), (23, 24334, 24476), (23, 36501, 36643), (29, 24389, 24531)]

def row143_layer000_block004 : List ColouredInterval :=
  [(31, 29791, 29933), (37, 20535, 20677), (37, 21904, 22046), (37, 23273, 23415), (41, 20306, 20314), (41, 21853, 21995), (41, 23534, 23676), (41, 25215, 25357), (41, 26896, 27038), (41, 28577, 28719), (43, 20339, 20481), (43, 22188, 22330), (43, 24037, 24179), (43, 25886, 26028)]

def row143_layer000_block005 : List ColouredInterval :=
  [(43, 27735, 27877), (43, 29584, 29726), (43, 31433, 31575), (47, 22090, 22232), (47, 24299, 24441), (47, 26508, 26650), (47, 28717, 28859), (47, 30926, 31068), (47, 33135, 33277), (47, 35344, 35486), (47, 37553, 37695), (53, 22472, 22614), (53, 25281, 25423), (53, 28090, 28232)]

def row143_layer000_block006 : List ColouredInterval :=
  [(53, 30899, 31041), (53, 33708, 33850), (53, 36517, 36659), (53, 39326, 39468), (59, 20886, 21028), (59, 24367, 24509), (59, 27848, 27990), (59, 31329, 31471), (59, 34810, 34952), (59, 38291, 38433), (61, 22326, 22468), (61, 26047, 26189), (61, 29768, 29910), (61, 33489, 33631)]

def row143_layer000_block007 : List ColouredInterval :=
  [(61, 37210, 37352), (67, 22445, 22587), (67, 26934, 27076), (67, 31423, 31565), (67, 35912, 36054), (67, 40401, 40543), (71, 20306, 20306), (71, 25205, 25347), (71, 30246, 30388), (71, 35287, 35429), (71, 40328, 40470), (73, 21316, 21458), (73, 26645, 26787), (73, 31974, 32116)]

def row143_layer000_block008 : List ColouredInterval :=
  [(73, 37303, 37445), (79, 24964, 25106), (79, 31205, 31347), (79, 37446, 37588), (83, 20667, 20809), (83, 27556, 27698), (83, 34445, 34587), (89, 23763, 23905), (89, 31684, 31826), (89, 39605, 39747), (97, 28227, 28369), (97, 37636, 37778), (101, 20402, 20544), (101, 30603, 30745)]

def row143_layer000_block009 : List ColouredInterval :=
  [(103, 21218, 21360), (103, 31827, 31969), (107, 22898, 23040), (107, 34347, 34489), (109, 23762, 23904), (109, 35643, 35785), (113, 25538, 25680), (113, 38307, 38449), (127, 32258, 32400), (131, 34322, 34464), (137, 37538, 37680), (139, 38642, 38784)]

def row143_layer000_chunks : List (List ColouredInterval) :=
  [row143_layer000_block000, row143_layer000_block001, row143_layer000_block002, row143_layer000_block003, row143_layer000_block004, row143_layer000_block005, row143_layer000_block006, row143_layer000_block007, row143_layer000_block008, row143_layer000_block009]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer000_arithmetic : LayerArithmeticValid row143.height { lower := 20306, upper := 40612, M := 17 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer000_enumeration :
    activePowerIntervalList 143 17 20306 40612 = row143_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer000_pairs000 :
    row143_layer000_block000.all (fun I => row143_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row143_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer000_pairs001 :
    row143_layer000_block001.all (fun I => row143_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row143_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer000_pairs002 :
    row143_layer000_block002.all (fun I => row143_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row143_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer000_pairs003 :
    row143_layer000_block003.all (fun I => row143_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row143_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer000_pairs004 :
    row143_layer000_block004.all (fun I => row143_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row143_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer000_pairs005 :
    row143_layer000_block005.all (fun I => row143_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row143_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer000_pairs006 :
    row143_layer000_block006.all (fun I => row143_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row143_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer000_pairs007 :
    row143_layer000_block007.all (fun I => row143_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row143_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer000_pairs008 :
    row143_layer000_block008.all (fun I => row143_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row143_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer000_pairs008
