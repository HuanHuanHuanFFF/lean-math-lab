import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row153_height : HeightCertificateDatum := { i := 153, r := 50, s := 108, n0Power10 := 8 }

def row153_goods : List GoodSegment := [
  { lower := 308, upper := 459, witness := RowWitness.topPrime 307 },
  { lower := 460, upper := 609, witness := RowWitness.topPrime 457 },
  { lower := 610, upper := 759, witness := RowWitness.topPrime 607 },
  { lower := 760, upper := 909, witness := RowWitness.topPrime 757 },
  { lower := 910, upper := 1059, witness := RowWitness.topPrime 907 },
  { lower := 1060, upper := 1203, witness := RowWitness.topPrime 1051 },
  { lower := 1204, upper := 1353, witness := RowWitness.topPrime 1201 },
  { lower := 1354, upper := 1479, witness := RowWitness.topPrime 1327 },
  { lower := 1480, upper := 1623, witness := RowWitness.topPrime 1471 },
  { lower := 1624, upper := 1773, witness := RowWitness.topPrime 1621 },
  { lower := 1774, upper := 1911, witness := RowWitness.topPrime 1759 },
  { lower := 1912, upper := 2059, witness := RowWitness.topPrime 1907 },
  { lower := 2060, upper := 2205, witness := RowWitness.topPrime 2053 },
  { lower := 2206, upper := 2355, witness := RowWitness.topPrime 2203 },
  { lower := 2356, upper := 2503, witness := RowWitness.topPrime 2351 },
  { lower := 2504, upper := 2655, witness := RowWitness.topPrime 2503 },
  { lower := 2656, upper := 2799, witness := RowWitness.topPrime 2647 },
  { lower := 2800, upper := 2949, witness := RowWitness.topPrime 2797 },
  { lower := 2950, upper := 3091, witness := RowWitness.topPrime 2939 },
  { lower := 3092, upper := 3241, witness := RowWitness.topPrime 3089 },
  { lower := 3242, upper := 3381, witness := RowWitness.topPrime 3229 },
  { lower := 3382, upper := 3525, witness := RowWitness.topPrime 3373 },
  { lower := 3526, upper := 3669, witness := RowWitness.topPrime 3517 },
  { lower := 3670, upper := 3811, witness := RowWitness.topPrime 3659 },
  { lower := 3812, upper := 3955, witness := RowWitness.topPrime 3803 },
  { lower := 3956, upper := 4099, witness := RowWitness.topPrime 3947 },
  { lower := 4100, upper := 4251, witness := RowWitness.topPrime 4099 },
  { lower := 4252, upper := 4395, witness := RowWitness.topPrime 4243 },
  { lower := 4396, upper := 4543, witness := RowWitness.topPrime 4391 },
  { lower := 4544, upper := 4675, witness := RowWitness.topPrime 4523 },
  { lower := 4676, upper := 4825, witness := RowWitness.topPrime 4673 },
  { lower := 4826, upper := 4969, witness := RowWitness.topPrime 4817 },
  { lower := 4970, upper := 5121, witness := RowWitness.topPrime 4969 },
  { lower := 5122, upper := 5271, witness := RowWitness.topPrime 5119 },
  { lower := 5272, upper := 5413, witness := RowWitness.topPrime 5261 },
  { lower := 5414, upper := 5565, witness := RowWitness.topPrime 5413 },
  { lower := 5566, upper := 5715, witness := RowWitness.topPrime 5563 },
  { lower := 5716, upper := 5863, witness := RowWitness.topPrime 5711 },
  { lower := 5864, upper := 6013, witness := RowWitness.topPrime 5861 },
  { lower := 6014, upper := 6163, witness := RowWitness.topPrime 6011 },
  { lower := 6164, upper := 6315, witness := RowWitness.topPrime 6163 },
  { lower := 6316, upper := 6463, witness := RowWitness.topPrime 6311 },
  { lower := 6464, upper := 6603, witness := RowWitness.topPrime 6451 },
  { lower := 6604, upper := 6751, witness := RowWitness.topPrime 6599 },
  { lower := 6752, upper := 6889, witness := RowWitness.topPrime 6737 },
  { lower := 6890, upper := 7035, witness := RowWitness.topPrime 6883 },
  { lower := 7036, upper := 7179, witness := RowWitness.topPrime 7027 },
  { lower := 7180, upper := 7329, witness := RowWitness.topPrime 7177 },
  { lower := 7330, upper := 7473, witness := RowWitness.topPrime 7321 },
  { lower := 7474, upper := 7611, witness := RowWitness.topPrime 7459 },
  { lower := 7612, upper := 7759, witness := RowWitness.topPrime 7607 },
  { lower := 7760, upper := 7911, witness := RowWitness.topPrime 7759 },
  { lower := 7912, upper := 8059, witness := RowWitness.topPrime 7907 },
  { lower := 8060, upper := 8211, witness := RowWitness.topPrime 8059 },
  { lower := 8212, upper := 8361, witness := RowWitness.topPrime 8209 },
  { lower := 8362, upper := 8505, witness := RowWitness.topPrime 8353 },
  { lower := 8506, upper := 8653, witness := RowWitness.topPrime 8501 },
  { lower := 8654, upper := 8799, witness := RowWitness.topPrime 8647 },
  { lower := 8800, upper := 8935, witness := RowWitness.topPrime 8783 },
  { lower := 8936, upper := 9085, witness := RowWitness.topPrime 8933 },
  { lower := 9086, upper := 9219, witness := RowWitness.topPrime 9067 },
  { lower := 9220, upper := 9361, witness := RowWitness.topPrime 9209 },
  { lower := 9362, upper := 9501, witness := RowWitness.topPrime 9349 },
  { lower := 9502, upper := 9649, witness := RowWitness.topPrime 9497 },
  { lower := 9650, upper := 9801, witness := RowWitness.topPrime 9649 },
  { lower := 9802, upper := 9943, witness := RowWitness.topPrime 9791 },
  { lower := 9944, upper := 10093, witness := RowWitness.topPrime 9941 },
  { lower := 10094, upper := 10245, witness := RowWitness.topPrime 10093 },
  { lower := 10246, upper := 10395, witness := RowWitness.topPrime 10243 },
  { lower := 10396, upper := 10543, witness := RowWitness.topPrime 10391 },
  { lower := 10544, upper := 10683, witness := RowWitness.topPrime 10531 },
  { lower := 10684, upper := 10819, witness := RowWitness.topPrime 10667 },
  { lower := 10820, upper := 10951, witness := RowWitness.topPrime 10799 },
  { lower := 10952, upper := 11101, witness := RowWitness.topPrime 10949 },
  { lower := 11102, upper := 11245, witness := RowWitness.topPrime 11093 },
  { lower := 11246, upper := 11395, witness := RowWitness.topPrime 11243 },
  { lower := 11396, upper := 11545, witness := RowWitness.topPrime 11393 },
  { lower := 11546, upper := 11679, witness := RowWitness.topPrime 11527 },
  { lower := 11680, upper := 11829, witness := RowWitness.topPrime 11677 },
  { lower := 11830, upper := 11979, witness := RowWitness.topPrime 11827 },
  { lower := 11980, upper := 12123, witness := RowWitness.topPrime 11971 },
  { lower := 12124, upper := 12271, witness := RowWitness.topPrime 12119 },
  { lower := 12272, upper := 12421, witness := RowWitness.topPrime 12269 },
  { lower := 12422, upper := 12573, witness := RowWitness.topPrime 12421 },
  { lower := 12574, upper := 12721, witness := RowWitness.topPrime 12569 },
  { lower := 12722, upper := 12873, witness := RowWitness.topPrime 12721 },
  { lower := 12874, upper := 13005, witness := RowWitness.topPrime 12853 },
  { lower := 13006, upper := 13155, witness := RowWitness.topPrime 13003 },
  { lower := 13156, upper := 13303, witness := RowWitness.topPrime 13151 },
  { lower := 13304, upper := 13449, witness := RowWitness.topPrime 13297 },
  { lower := 13450, upper := 13593, witness := RowWitness.topPrime 13441 },
  { lower := 13594, upper := 13743, witness := RowWitness.topPrime 13591 },
  { lower := 13744, upper := 13881, witness := RowWitness.topPrime 13729 },
  { lower := 13882, upper := 14031, witness := RowWitness.topPrime 13879 },
  { lower := 14032, upper := 14181, witness := RowWitness.topPrime 14029 },
  { lower := 14182, upper := 14329, witness := RowWitness.topPrime 14177 },
  { lower := 14330, upper := 14479, witness := RowWitness.topPrime 14327 },
  { lower := 14480, upper := 14631, witness := RowWitness.topPrime 14479 },
  { lower := 14632, upper := 14781, witness := RowWitness.topPrime 14629 },
  { lower := 14782, upper := 14931, witness := RowWitness.topPrime 14779 },
  { lower := 14932, upper := 15081, witness := RowWitness.topPrime 14929 },
  { lower := 15082, upper := 15229, witness := RowWitness.topPrime 15077 },
  { lower := 15230, upper := 15379, witness := RowWitness.topPrime 15227 },
  { lower := 15380, upper := 15529, witness := RowWitness.topPrime 15377 },
  { lower := 15530, upper := 15679, witness := RowWitness.topPrime 15527 },
  { lower := 15680, upper := 15831, witness := RowWitness.topPrime 15679 },
  { lower := 15832, upper := 15975, witness := RowWitness.topPrime 15823 },
  { lower := 15976, upper := 16125, witness := RowWitness.topPrime 15973 },
  { lower := 16126, upper := 16263, witness := RowWitness.topPrime 16111 },
  { lower := 16264, upper := 16405, witness := RowWitness.topPrime 16253 },
  { lower := 16406, upper := 16533, witness := RowWitness.topPrime 16381 },
  { lower := 16534, upper := 16681, witness := RowWitness.topPrime 16529 },
  { lower := 16682, upper := 16825, witness := RowWitness.topPrime 16673 },
  { lower := 16826, upper := 16975, witness := RowWitness.topPrime 16823 },
  { lower := 16976, upper := 17115, witness := RowWitness.topPrime 16963 },
  { lower := 17116, upper := 17259, witness := RowWitness.topPrime 17107 },
  { lower := 17260, upper := 17409, witness := RowWitness.topPrime 17257 },
  { lower := 17410, upper := 17553, witness := RowWitness.topPrime 17401 },
  { lower := 17554, upper := 17703, witness := RowWitness.topPrime 17551 },
  { lower := 17704, upper := 17835, witness := RowWitness.topPrime 17683 },
  { lower := 17836, upper := 17979, witness := RowWitness.topPrime 17827 },
  { lower := 17980, upper := 18129, witness := RowWitness.topPrime 17977 },
  { lower := 18130, upper := 18279, witness := RowWitness.topPrime 18127 },
  { lower := 18280, upper := 18421, witness := RowWitness.topPrime 18269 },
  { lower := 18422, upper := 18565, witness := RowWitness.topPrime 18413 },
  { lower := 18566, upper := 18705, witness := RowWitness.topPrime 18553 },
  { lower := 18706, upper := 18853, witness := RowWitness.topPrime 18701 },
  { lower := 18854, upper := 18991, witness := RowWitness.topPrime 18839 },
  { lower := 18992, upper := 19131, witness := RowWitness.topPrime 18979 },
  { lower := 19132, upper := 19273, witness := RowWitness.topPrime 19121 },
  { lower := 19274, upper := 19425, witness := RowWitness.topPrime 19273 },
  { lower := 19426, upper := 19575, witness := RowWitness.topPrime 19423 },
  { lower := 19576, upper := 19723, witness := RowWitness.topPrime 19571 },
  { lower := 19724, upper := 19869, witness := RowWitness.topPrime 19717 },
  { lower := 19870, upper := 20019, witness := RowWitness.topPrime 19867 },
  { lower := 20020, upper := 20163, witness := RowWitness.topPrime 20011 },
  { lower := 20164, upper := 20313, witness := RowWitness.topPrime 20161 },
  { lower := 20314, upper := 20449, witness := RowWitness.topPrime 20297 },
  { lower := 20450, upper := 20595, witness := RowWitness.topPrime 20443 },
  { lower := 20596, upper := 20745, witness := RowWitness.topPrime 20593 },
  { lower := 20746, upper := 20895, witness := RowWitness.topPrime 20743 },
  { lower := 20896, upper := 21039, witness := RowWitness.topPrime 20887 },
  { lower := 21040, upper := 21183, witness := RowWitness.topPrime 21031 },
  { lower := 21184, upper := 21331, witness := RowWitness.topPrime 21179 },
  { lower := 21332, upper := 21475, witness := RowWitness.topPrime 21323 },
  { lower := 21476, upper := 21619, witness := RowWitness.topPrime 21467 },
  { lower := 21620, upper := 21769, witness := RowWitness.topPrime 21617 },
  { lower := 21770, upper := 21919, witness := RowWitness.topPrime 21767 },
  { lower := 21920, upper := 22063, witness := RowWitness.topPrime 21911 },
  { lower := 22064, upper := 22215, witness := RowWitness.topPrime 22063 },
  { lower := 22216, upper := 22345, witness := RowWitness.topPrime 22193 },
  { lower := 22346, upper := 22495, witness := RowWitness.topPrime 22343 },
  { lower := 22496, upper := 22635, witness := RowWitness.topPrime 22483 },
  { lower := 22636, upper := 22773, witness := RowWitness.topPrime 22621 },
  { lower := 22774, upper := 22921, witness := RowWitness.topPrime 22769 },
  { lower := 22922, upper := 23073, witness := RowWitness.topPrime 22921 },
  { lower := 23074, upper := 23223, witness := RowWitness.topPrime 23071 },
  { lower := 23224, upper := 23255, witness := RowWitness.topPrime 23209 },
  { lower := 23763, upper := 23913, witness := RowWitness.topPrime 23761 },
  { lower := 23914, upper := 23914, witness := RowWitness.topPrime 23911 },
  { lower := 24037, upper := 24162, witness := RowWitness.topPrime 24029 },
  { lower := 24167, upper := 24189, witness := RowWitness.topPrime 24151 },
  { lower := 24299, upper := 24319, witness := RowWitness.topPrime 24281 },
  { lower := 24334, upper := 24481, witness := RowWitness.topPrime 24329 },
  { lower := 24482, upper := 24519, witness := RowWitness.topPrime 24481 },
  { lower := 25000, upper := 25116, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25341, witness := RowWitness.topPrime 25189 },
  { lower := 25342, upper := 25367, witness := RowWitness.topPrime 25339 },
  { lower := 26411, upper := 26559, witness := RowWitness.topPrime 26407 },
  { lower := 26560, upper := 26563, witness := RowWitness.topPrime 26557 },
  { lower := 26624, upper := 26749, witness := RowWitness.topPrime 26597 },
  { lower := 26750, upper := 26776, witness := RowWitness.topPrime 26737 },
  { lower := 26934, upper := 27048, witness := RowWitness.topPrime 26927 },
  { lower := 27556, upper := 27588, witness := RowWitness.topPrime 27551 },
  { lower := 27848, upper := 27887, witness := RowWitness.topPrime 27847 },
  { lower := 28125, upper := 28275, witness := RowWitness.topPrime 28123 },
  { lower := 28276, upper := 28277, witness := RowWitness.topPrime 28229 },
  { lower := 28672, upper := 28713, witness := RowWitness.topPrime 28669 },
  { lower := 28717, upper := 28863, witness := RowWitness.topPrime 28711 },
  { lower := 28864, upper := 28869, witness := RowWitness.topPrime 28859 },
  { lower := 29791, upper := 29920, witness := RowWitness.topPrime 29789 },
  { lower := 30720, upper := 30755, witness := RowWitness.topPrime 30713 },
  { lower := 30758, upper := 30872, witness := RowWitness.topPrime 30757 },
  { lower := 30899, upper := 30910, witness := RowWitness.topPrime 30893 },
  { lower := 30926, upper := 31051, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31345, witness := RowWitness.topPrime 31193 },
  { lower := 31346, upper := 31402, witness := RowWitness.topPrime 31337 },
  { lower := 31423, upper := 31481, witness := RowWitness.topPrime 31397 },
  { lower := 31827, upper := 31836, witness := RowWitness.topPrime 31817 },
  { lower := 31974, upper := 31979, witness := RowWitness.topPrime 31973 },
  { lower := 33614, upper := 33641, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33766, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34471, witness := RowWitness.topPrime 34319 },
  { lower := 34472, upper := 34527, witness := RowWitness.topPrime 34471 },
  { lower := 35287, upper := 35304, witness := RowWitness.topPrime 35281 },
  { lower := 35344, upper := 35439, witness := RowWitness.topPrime 35339 },
  { lower := 36015, upper := 36064, witness := RowWitness.topPrime 36013 },
  { lower := 36517, upper := 36649, witness := RowWitness.topPrime 36497 },
  { lower := 36650, upper := 36653, witness := RowWitness.topPrime 36643 },
  { lower := 37303, upper := 37362, witness := RowWitness.topPrime 37277 },
  { lower := 37446, upper := 37455, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37645, witness := RowWitness.topPrime 37493 },
  { lower := 37646, upper := 37690, witness := RowWitness.topPrime 37643 },
  { lower := 38307, upper := 38455, witness := RowWitness.topPrime 38303 },
  { lower := 38456, upper := 38459, witness := RowWitness.topPrime 38453 },
  { lower := 40401, upper := 40480, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 40956, witness := RowWitness.topPrime 40927 },
  { lower := 40960, upper := 41083, witness := RowWitness.topPrime 40949 },
  { lower := 43750, upper := 43839, witness := RowWitness.topPrime 43721 },
  { lower := 44944, upper := 45042, witness := RowWitness.topPrime 44939 },
  { lower := 45056, upper := 45096, witness := RowWitness.topPrime 45053 },
  { lower := 45369, upper := 45405, witness := RowWitness.topPrime 45361 },
  { lower := 47526, upper := 47673, witness := RowWitness.topPrime 47521 },
  { lower := 47674, upper := 47676, witness := RowWitness.topPrime 47659 },
  { lower := 48013, upper := 48113, witness := RowWitness.topPrime 47981 },
  { lower := 48778, upper := 48820, witness := RowWitness.topPrime 48767 },
  { lower := 50421, upper := 50562, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51157, witness := RowWitness.topPrime 51071 },
  { lower := 55451, upper := 55593, witness := RowWitness.topPrime 55441 },
  { lower := 55594, upper := 55599, witness := RowWitness.topPrime 55589 },
  { lower := 56307, upper := 56321, witness := RowWitness.topPrime 56299 },
  { lower := 56454, upper := 56459, witness := RowWitness.topPrime 56453 },
  { lower := 57245, upper := 57274, witness := RowWitness.topPrime 57241 },
  { lower := 57344, upper := 57397, witness := RowWitness.topPrime 57331 },
  { lower := 58619, upper := 58716, witness := RowWitness.topPrime 58613 },
  { lower := 62500, upper := 62562, witness := RowWitness.topPrime 62497 },
  { lower := 63948, upper := 63997, witness := RowWitness.topPrime 63929 },
  { lower := 68644, upper := 68791, witness := RowWitness.topPrime 68639 },
  { lower := 68792, upper := 68803, witness := RowWitness.topPrime 68791 },
  { lower := 68921, upper := 69042, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71439, witness := RowWitness.topPrime 71287 },
  { lower := 71440, upper := 71441, witness := RowWitness.topPrime 71437 },
  { lower := 73205, upper := 73319, witness := RowWitness.topPrime 73189 },
  { lower := 85805, upper := 85835, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89525, witness := RowWitness.topPrime 89381 },
  { lower := 93845, upper := 93902, witness := RowWitness.topPrime 93827 },
  { lower := 103041, upper := 103118, witness := RowWitness.topPrime 103007 },
  { lower := 109503, upper := 109527, witness := RowWitness.topPrime 109481 },
  { lower := 148955, upper := 149029, witness := RowWitness.topPrime 148949 },
  { lower := 154568, upper := 154601, witness := RowWitness.topPrime 154543 }
]

def row153_layers : List CoverLayer := [
  { lower := 23256, upper := 46512, M := 16 },
  { lower := 46512, upper := 93024, M := 12 },
  { lower := 93024, upper := 186048, M := 9 },
  { lower := 186048, upper := 372096, M := 7 },
  { lower := 372096, upper := 744192, M := 5 },
  { lower := 744192, upper := 1488384, M := 4 },
  { lower := 1488384, upper := 2976768, M := 3 },
  { lower := 2976768, upper := 5953536, M := 3 },
  { lower := 5953536, upper := 11907072, M := 2 },
  { lower := 11907072, upper := 23814144, M := 2 },
  { lower := 23814144, upper := 47628288, M := 1 },
  { lower := 47628288, upper := 95256576, M := 1 },
  { lower := 95256576, upper := 100000000, M := 1 }
]

def row153 : FiniteCoverRow := {
  height := row153_height,
  goods := row153_goods,
  layers := row153_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row153

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row153_good000_checked :
    goodSegmentCheck 153 50 108
      { lower := 308, upper := 459, witness := RowWitness.topPrime 307 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good001_checked :
    goodSegmentCheck 153 50 108
      { lower := 460, upper := 609, witness := RowWitness.topPrime 457 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good002_checked :
    goodSegmentCheck 153 50 108
      { lower := 610, upper := 759, witness := RowWitness.topPrime 607 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good003_checked :
    goodSegmentCheck 153 50 108
      { lower := 760, upper := 909, witness := RowWitness.topPrime 757 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good004_checked :
    goodSegmentCheck 153 50 108
      { lower := 910, upper := 1059, witness := RowWitness.topPrime 907 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good005_checked :
    goodSegmentCheck 153 50 108
      { lower := 1060, upper := 1203, witness := RowWitness.topPrime 1051 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good006_checked :
    goodSegmentCheck 153 50 108
      { lower := 1204, upper := 1353, witness := RowWitness.topPrime 1201 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good007_checked :
    goodSegmentCheck 153 50 108
      { lower := 1354, upper := 1479, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good008_checked :
    goodSegmentCheck 153 50 108
      { lower := 1480, upper := 1623, witness := RowWitness.topPrime 1471 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good009_checked :
    goodSegmentCheck 153 50 108
      { lower := 1624, upper := 1773, witness := RowWitness.topPrime 1621 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good010_checked :
    goodSegmentCheck 153 50 108
      { lower := 1774, upper := 1911, witness := RowWitness.topPrime 1759 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good011_checked :
    goodSegmentCheck 153 50 108
      { lower := 1912, upper := 2059, witness := RowWitness.topPrime 1907 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good012_checked :
    goodSegmentCheck 153 50 108
      { lower := 2060, upper := 2205, witness := RowWitness.topPrime 2053 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good013_checked :
    goodSegmentCheck 153 50 108
      { lower := 2206, upper := 2355, witness := RowWitness.topPrime 2203 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good014_checked :
    goodSegmentCheck 153 50 108
      { lower := 2356, upper := 2503, witness := RowWitness.topPrime 2351 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good015_checked :
    goodSegmentCheck 153 50 108
      { lower := 2504, upper := 2655, witness := RowWitness.topPrime 2503 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row153_good016_checked :
    goodSegmentCheck 153 50 108
      { lower := 2656, upper := 2799, witness := RowWitness.topPrime 2647 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good017_checked :
    goodSegmentCheck 153 50 108
      { lower := 2800, upper := 2949, witness := RowWitness.topPrime 2797 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good018_checked :
    goodSegmentCheck 153 50 108
      { lower := 2950, upper := 3091, witness := RowWitness.topPrime 2939 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good019_checked :
    goodSegmentCheck 153 50 108
      { lower := 3092, upper := 3241, witness := RowWitness.topPrime 3089 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good020_checked :
    goodSegmentCheck 153 50 108
      { lower := 3242, upper := 3381, witness := RowWitness.topPrime 3229 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good021_checked :
    goodSegmentCheck 153 50 108
      { lower := 3382, upper := 3525, witness := RowWitness.topPrime 3373 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good022_checked :
    goodSegmentCheck 153 50 108
      { lower := 3526, upper := 3669, witness := RowWitness.topPrime 3517 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good023_checked :
    goodSegmentCheck 153 50 108
      { lower := 3670, upper := 3811, witness := RowWitness.topPrime 3659 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good024_checked :
    goodSegmentCheck 153 50 108
      { lower := 3812, upper := 3955, witness := RowWitness.topPrime 3803 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good025_checked :
    goodSegmentCheck 153 50 108
      { lower := 3956, upper := 4099, witness := RowWitness.topPrime 3947 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good026_checked :
    goodSegmentCheck 153 50 108
      { lower := 4100, upper := 4251, witness := RowWitness.topPrime 4099 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good027_checked :
    goodSegmentCheck 153 50 108
      { lower := 4252, upper := 4395, witness := RowWitness.topPrime 4243 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good028_checked :
    goodSegmentCheck 153 50 108
      { lower := 4396, upper := 4543, witness := RowWitness.topPrime 4391 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good029_checked :
    goodSegmentCheck 153 50 108
      { lower := 4544, upper := 4675, witness := RowWitness.topPrime 4523 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good030_checked :
    goodSegmentCheck 153 50 108
      { lower := 4676, upper := 4825, witness := RowWitness.topPrime 4673 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good031_checked :
    goodSegmentCheck 153 50 108
      { lower := 4826, upper := 4969, witness := RowWitness.topPrime 4817 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row153_good032_checked :
    goodSegmentCheck 153 50 108
      { lower := 4970, upper := 5121, witness := RowWitness.topPrime 4969 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good033_checked :
    goodSegmentCheck 153 50 108
      { lower := 5122, upper := 5271, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good034_checked :
    goodSegmentCheck 153 50 108
      { lower := 5272, upper := 5413, witness := RowWitness.topPrime 5261 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good035_checked :
    goodSegmentCheck 153 50 108
      { lower := 5414, upper := 5565, witness := RowWitness.topPrime 5413 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good036_checked :
    goodSegmentCheck 153 50 108
      { lower := 5566, upper := 5715, witness := RowWitness.topPrime 5563 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good037_checked :
    goodSegmentCheck 153 50 108
      { lower := 5716, upper := 5863, witness := RowWitness.topPrime 5711 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good038_checked :
    goodSegmentCheck 153 50 108
      { lower := 5864, upper := 6013, witness := RowWitness.topPrime 5861 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good039_checked :
    goodSegmentCheck 153 50 108
      { lower := 6014, upper := 6163, witness := RowWitness.topPrime 6011 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good040_checked :
    goodSegmentCheck 153 50 108
      { lower := 6164, upper := 6315, witness := RowWitness.topPrime 6163 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good041_checked :
    goodSegmentCheck 153 50 108
      { lower := 6316, upper := 6463, witness := RowWitness.topPrime 6311 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good042_checked :
    goodSegmentCheck 153 50 108
      { lower := 6464, upper := 6603, witness := RowWitness.topPrime 6451 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good043_checked :
    goodSegmentCheck 153 50 108
      { lower := 6604, upper := 6751, witness := RowWitness.topPrime 6599 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good044_checked :
    goodSegmentCheck 153 50 108
      { lower := 6752, upper := 6889, witness := RowWitness.topPrime 6737 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good045_checked :
    goodSegmentCheck 153 50 108
      { lower := 6890, upper := 7035, witness := RowWitness.topPrime 6883 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good046_checked :
    goodSegmentCheck 153 50 108
      { lower := 7036, upper := 7179, witness := RowWitness.topPrime 7027 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good047_checked :
    goodSegmentCheck 153 50 108
      { lower := 7180, upper := 7329, witness := RowWitness.topPrime 7177 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row153_good048_checked :
    goodSegmentCheck 153 50 108
      { lower := 7330, upper := 7473, witness := RowWitness.topPrime 7321 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good049_checked :
    goodSegmentCheck 153 50 108
      { lower := 7474, upper := 7611, witness := RowWitness.topPrime 7459 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good050_checked :
    goodSegmentCheck 153 50 108
      { lower := 7612, upper := 7759, witness := RowWitness.topPrime 7607 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good051_checked :
    goodSegmentCheck 153 50 108
      { lower := 7760, upper := 7911, witness := RowWitness.topPrime 7759 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good052_checked :
    goodSegmentCheck 153 50 108
      { lower := 7912, upper := 8059, witness := RowWitness.topPrime 7907 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good053_checked :
    goodSegmentCheck 153 50 108
      { lower := 8060, upper := 8211, witness := RowWitness.topPrime 8059 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good054_checked :
    goodSegmentCheck 153 50 108
      { lower := 8212, upper := 8361, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good055_checked :
    goodSegmentCheck 153 50 108
      { lower := 8362, upper := 8505, witness := RowWitness.topPrime 8353 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good056_checked :
    goodSegmentCheck 153 50 108
      { lower := 8506, upper := 8653, witness := RowWitness.topPrime 8501 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good057_checked :
    goodSegmentCheck 153 50 108
      { lower := 8654, upper := 8799, witness := RowWitness.topPrime 8647 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good058_checked :
    goodSegmentCheck 153 50 108
      { lower := 8800, upper := 8935, witness := RowWitness.topPrime 8783 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good059_checked :
    goodSegmentCheck 153 50 108
      { lower := 8936, upper := 9085, witness := RowWitness.topPrime 8933 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good060_checked :
    goodSegmentCheck 153 50 108
      { lower := 9086, upper := 9219, witness := RowWitness.topPrime 9067 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good061_checked :
    goodSegmentCheck 153 50 108
      { lower := 9220, upper := 9361, witness := RowWitness.topPrime 9209 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good062_checked :
    goodSegmentCheck 153 50 108
      { lower := 9362, upper := 9501, witness := RowWitness.topPrime 9349 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good063_checked :
    goodSegmentCheck 153 50 108
      { lower := 9502, upper := 9649, witness := RowWitness.topPrime 9497 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row153_good064_checked :
    goodSegmentCheck 153 50 108
      { lower := 9650, upper := 9801, witness := RowWitness.topPrime 9649 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good065_checked :
    goodSegmentCheck 153 50 108
      { lower := 9802, upper := 9943, witness := RowWitness.topPrime 9791 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good066_checked :
    goodSegmentCheck 153 50 108
      { lower := 9944, upper := 10093, witness := RowWitness.topPrime 9941 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good067_checked :
    goodSegmentCheck 153 50 108
      { lower := 10094, upper := 10245, witness := RowWitness.topPrime 10093 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good068_checked :
    goodSegmentCheck 153 50 108
      { lower := 10246, upper := 10395, witness := RowWitness.topPrime 10243 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good069_checked :
    goodSegmentCheck 153 50 108
      { lower := 10396, upper := 10543, witness := RowWitness.topPrime 10391 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good070_checked :
    goodSegmentCheck 153 50 108
      { lower := 10544, upper := 10683, witness := RowWitness.topPrime 10531 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good071_checked :
    goodSegmentCheck 153 50 108
      { lower := 10684, upper := 10819, witness := RowWitness.topPrime 10667 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good072_checked :
    goodSegmentCheck 153 50 108
      { lower := 10820, upper := 10951, witness := RowWitness.topPrime 10799 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good073_checked :
    goodSegmentCheck 153 50 108
      { lower := 10952, upper := 11101, witness := RowWitness.topPrime 10949 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good074_checked :
    goodSegmentCheck 153 50 108
      { lower := 11102, upper := 11245, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good075_checked :
    goodSegmentCheck 153 50 108
      { lower := 11246, upper := 11395, witness := RowWitness.topPrime 11243 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good076_checked :
    goodSegmentCheck 153 50 108
      { lower := 11396, upper := 11545, witness := RowWitness.topPrime 11393 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good077_checked :
    goodSegmentCheck 153 50 108
      { lower := 11546, upper := 11679, witness := RowWitness.topPrime 11527 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good078_checked :
    goodSegmentCheck 153 50 108
      { lower := 11680, upper := 11829, witness := RowWitness.topPrime 11677 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good079_checked :
    goodSegmentCheck 153 50 108
      { lower := 11830, upper := 11979, witness := RowWitness.topPrime 11827 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row153_good080_checked :
    goodSegmentCheck 153 50 108
      { lower := 11980, upper := 12123, witness := RowWitness.topPrime 11971 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good081_checked :
    goodSegmentCheck 153 50 108
      { lower := 12124, upper := 12271, witness := RowWitness.topPrime 12119 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good082_checked :
    goodSegmentCheck 153 50 108
      { lower := 12272, upper := 12421, witness := RowWitness.topPrime 12269 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good083_checked :
    goodSegmentCheck 153 50 108
      { lower := 12422, upper := 12573, witness := RowWitness.topPrime 12421 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good084_checked :
    goodSegmentCheck 153 50 108
      { lower := 12574, upper := 12721, witness := RowWitness.topPrime 12569 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good085_checked :
    goodSegmentCheck 153 50 108
      { lower := 12722, upper := 12873, witness := RowWitness.topPrime 12721 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good086_checked :
    goodSegmentCheck 153 50 108
      { lower := 12874, upper := 13005, witness := RowWitness.topPrime 12853 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good087_checked :
    goodSegmentCheck 153 50 108
      { lower := 13006, upper := 13155, witness := RowWitness.topPrime 13003 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good088_checked :
    goodSegmentCheck 153 50 108
      { lower := 13156, upper := 13303, witness := RowWitness.topPrime 13151 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good089_checked :
    goodSegmentCheck 153 50 108
      { lower := 13304, upper := 13449, witness := RowWitness.topPrime 13297 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good090_checked :
    goodSegmentCheck 153 50 108
      { lower := 13450, upper := 13593, witness := RowWitness.topPrime 13441 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good091_checked :
    goodSegmentCheck 153 50 108
      { lower := 13594, upper := 13743, witness := RowWitness.topPrime 13591 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good092_checked :
    goodSegmentCheck 153 50 108
      { lower := 13744, upper := 13881, witness := RowWitness.topPrime 13729 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good093_checked :
    goodSegmentCheck 153 50 108
      { lower := 13882, upper := 14031, witness := RowWitness.topPrime 13879 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good094_checked :
    goodSegmentCheck 153 50 108
      { lower := 14032, upper := 14181, witness := RowWitness.topPrime 14029 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good095_checked :
    goodSegmentCheck 153 50 108
      { lower := 14182, upper := 14329, witness := RowWitness.topPrime 14177 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row153_good096_checked :
    goodSegmentCheck 153 50 108
      { lower := 14330, upper := 14479, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good097_checked :
    goodSegmentCheck 153 50 108
      { lower := 14480, upper := 14631, witness := RowWitness.topPrime 14479 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good098_checked :
    goodSegmentCheck 153 50 108
      { lower := 14632, upper := 14781, witness := RowWitness.topPrime 14629 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good099_checked :
    goodSegmentCheck 153 50 108
      { lower := 14782, upper := 14931, witness := RowWitness.topPrime 14779 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good100_checked :
    goodSegmentCheck 153 50 108
      { lower := 14932, upper := 15081, witness := RowWitness.topPrime 14929 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good101_checked :
    goodSegmentCheck 153 50 108
      { lower := 15082, upper := 15229, witness := RowWitness.topPrime 15077 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good102_checked :
    goodSegmentCheck 153 50 108
      { lower := 15230, upper := 15379, witness := RowWitness.topPrime 15227 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good103_checked :
    goodSegmentCheck 153 50 108
      { lower := 15380, upper := 15529, witness := RowWitness.topPrime 15377 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good104_checked :
    goodSegmentCheck 153 50 108
      { lower := 15530, upper := 15679, witness := RowWitness.topPrime 15527 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good105_checked :
    goodSegmentCheck 153 50 108
      { lower := 15680, upper := 15831, witness := RowWitness.topPrime 15679 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good106_checked :
    goodSegmentCheck 153 50 108
      { lower := 15832, upper := 15975, witness := RowWitness.topPrime 15823 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good107_checked :
    goodSegmentCheck 153 50 108
      { lower := 15976, upper := 16125, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good108_checked :
    goodSegmentCheck 153 50 108
      { lower := 16126, upper := 16263, witness := RowWitness.topPrime 16111 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good109_checked :
    goodSegmentCheck 153 50 108
      { lower := 16264, upper := 16405, witness := RowWitness.topPrime 16253 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good110_checked :
    goodSegmentCheck 153 50 108
      { lower := 16406, upper := 16533, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good111_checked :
    goodSegmentCheck 153 50 108
      { lower := 16534, upper := 16681, witness := RowWitness.topPrime 16529 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row153_good112_checked :
    goodSegmentCheck 153 50 108
      { lower := 16682, upper := 16825, witness := RowWitness.topPrime 16673 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good113_checked :
    goodSegmentCheck 153 50 108
      { lower := 16826, upper := 16975, witness := RowWitness.topPrime 16823 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good114_checked :
    goodSegmentCheck 153 50 108
      { lower := 16976, upper := 17115, witness := RowWitness.topPrime 16963 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good115_checked :
    goodSegmentCheck 153 50 108
      { lower := 17116, upper := 17259, witness := RowWitness.topPrime 17107 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good116_checked :
    goodSegmentCheck 153 50 108
      { lower := 17260, upper := 17409, witness := RowWitness.topPrime 17257 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good117_checked :
    goodSegmentCheck 153 50 108
      { lower := 17410, upper := 17553, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good118_checked :
    goodSegmentCheck 153 50 108
      { lower := 17554, upper := 17703, witness := RowWitness.topPrime 17551 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good119_checked :
    goodSegmentCheck 153 50 108
      { lower := 17704, upper := 17835, witness := RowWitness.topPrime 17683 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good120_checked :
    goodSegmentCheck 153 50 108
      { lower := 17836, upper := 17979, witness := RowWitness.topPrime 17827 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good121_checked :
    goodSegmentCheck 153 50 108
      { lower := 17980, upper := 18129, witness := RowWitness.topPrime 17977 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good122_checked :
    goodSegmentCheck 153 50 108
      { lower := 18130, upper := 18279, witness := RowWitness.topPrime 18127 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good123_checked :
    goodSegmentCheck 153 50 108
      { lower := 18280, upper := 18421, witness := RowWitness.topPrime 18269 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good124_checked :
    goodSegmentCheck 153 50 108
      { lower := 18422, upper := 18565, witness := RowWitness.topPrime 18413 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good125_checked :
    goodSegmentCheck 153 50 108
      { lower := 18566, upper := 18705, witness := RowWitness.topPrime 18553 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good126_checked :
    goodSegmentCheck 153 50 108
      { lower := 18706, upper := 18853, witness := RowWitness.topPrime 18701 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good127_checked :
    goodSegmentCheck 153 50 108
      { lower := 18854, upper := 18991, witness := RowWitness.topPrime 18839 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row153_good128_checked :
    goodSegmentCheck 153 50 108
      { lower := 18992, upper := 19131, witness := RowWitness.topPrime 18979 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good129_checked :
    goodSegmentCheck 153 50 108
      { lower := 19132, upper := 19273, witness := RowWitness.topPrime 19121 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good130_checked :
    goodSegmentCheck 153 50 108
      { lower := 19274, upper := 19425, witness := RowWitness.topPrime 19273 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good131_checked :
    goodSegmentCheck 153 50 108
      { lower := 19426, upper := 19575, witness := RowWitness.topPrime 19423 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good132_checked :
    goodSegmentCheck 153 50 108
      { lower := 19576, upper := 19723, witness := RowWitness.topPrime 19571 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good133_checked :
    goodSegmentCheck 153 50 108
      { lower := 19724, upper := 19869, witness := RowWitness.topPrime 19717 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good134_checked :
    goodSegmentCheck 153 50 108
      { lower := 19870, upper := 20019, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good135_checked :
    goodSegmentCheck 153 50 108
      { lower := 20020, upper := 20163, witness := RowWitness.topPrime 20011 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good136_checked :
    goodSegmentCheck 153 50 108
      { lower := 20164, upper := 20313, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good137_checked :
    goodSegmentCheck 153 50 108
      { lower := 20314, upper := 20449, witness := RowWitness.topPrime 20297 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good138_checked :
    goodSegmentCheck 153 50 108
      { lower := 20450, upper := 20595, witness := RowWitness.topPrime 20443 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good139_checked :
    goodSegmentCheck 153 50 108
      { lower := 20596, upper := 20745, witness := RowWitness.topPrime 20593 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good140_checked :
    goodSegmentCheck 153 50 108
      { lower := 20746, upper := 20895, witness := RowWitness.topPrime 20743 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good141_checked :
    goodSegmentCheck 153 50 108
      { lower := 20896, upper := 21039, witness := RowWitness.topPrime 20887 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good142_checked :
    goodSegmentCheck 153 50 108
      { lower := 21040, upper := 21183, witness := RowWitness.topPrime 21031 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good143_checked :
    goodSegmentCheck 153 50 108
      { lower := 21184, upper := 21331, witness := RowWitness.topPrime 21179 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row153_good144_checked :
    goodSegmentCheck 153 50 108
      { lower := 21332, upper := 21475, witness := RowWitness.topPrime 21323 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good145_checked :
    goodSegmentCheck 153 50 108
      { lower := 21476, upper := 21619, witness := RowWitness.topPrime 21467 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good146_checked :
    goodSegmentCheck 153 50 108
      { lower := 21620, upper := 21769, witness := RowWitness.topPrime 21617 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good147_checked :
    goodSegmentCheck 153 50 108
      { lower := 21770, upper := 21919, witness := RowWitness.topPrime 21767 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good148_checked :
    goodSegmentCheck 153 50 108
      { lower := 21920, upper := 22063, witness := RowWitness.topPrime 21911 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good149_checked :
    goodSegmentCheck 153 50 108
      { lower := 22064, upper := 22215, witness := RowWitness.topPrime 22063 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good150_checked :
    goodSegmentCheck 153 50 108
      { lower := 22216, upper := 22345, witness := RowWitness.topPrime 22193 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good151_checked :
    goodSegmentCheck 153 50 108
      { lower := 22346, upper := 22495, witness := RowWitness.topPrime 22343 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good152_checked :
    goodSegmentCheck 153 50 108
      { lower := 22496, upper := 22635, witness := RowWitness.topPrime 22483 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good153_checked :
    goodSegmentCheck 153 50 108
      { lower := 22636, upper := 22773, witness := RowWitness.topPrime 22621 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good154_checked :
    goodSegmentCheck 153 50 108
      { lower := 22774, upper := 22921, witness := RowWitness.topPrime 22769 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good155_checked :
    goodSegmentCheck 153 50 108
      { lower := 22922, upper := 23073, witness := RowWitness.topPrime 22921 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good156_checked :
    goodSegmentCheck 153 50 108
      { lower := 23074, upper := 23223, witness := RowWitness.topPrime 23071 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good157_checked :
    goodSegmentCheck 153 50 108
      { lower := 23224, upper := 23255, witness := RowWitness.topPrime 23209 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good158_checked :
    goodSegmentCheck 153 50 108
      { lower := 23763, upper := 23913, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good159_checked :
    goodSegmentCheck 153 50 108
      { lower := 23914, upper := 23914, witness := RowWitness.topPrime 23911 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row153_good160_checked :
    goodSegmentCheck 153 50 108
      { lower := 24037, upper := 24162, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good161_checked :
    goodSegmentCheck 153 50 108
      { lower := 24167, upper := 24189, witness := RowWitness.topPrime 24151 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good162_checked :
    goodSegmentCheck 153 50 108
      { lower := 24299, upper := 24319, witness := RowWitness.topPrime 24281 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good163_checked :
    goodSegmentCheck 153 50 108
      { lower := 24334, upper := 24481, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good164_checked :
    goodSegmentCheck 153 50 108
      { lower := 24482, upper := 24519, witness := RowWitness.topPrime 24481 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good165_checked :
    goodSegmentCheck 153 50 108
      { lower := 25000, upper := 25116, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good166_checked :
    goodSegmentCheck 153 50 108
      { lower := 25215, upper := 25341, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good167_checked :
    goodSegmentCheck 153 50 108
      { lower := 25342, upper := 25367, witness := RowWitness.topPrime 25339 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good168_checked :
    goodSegmentCheck 153 50 108
      { lower := 26411, upper := 26559, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good169_checked :
    goodSegmentCheck 153 50 108
      { lower := 26560, upper := 26563, witness := RowWitness.topPrime 26557 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good170_checked :
    goodSegmentCheck 153 50 108
      { lower := 26624, upper := 26749, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good171_checked :
    goodSegmentCheck 153 50 108
      { lower := 26750, upper := 26776, witness := RowWitness.topPrime 26737 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good172_checked :
    goodSegmentCheck 153 50 108
      { lower := 26934, upper := 27048, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good173_checked :
    goodSegmentCheck 153 50 108
      { lower := 27556, upper := 27588, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good174_checked :
    goodSegmentCheck 153 50 108
      { lower := 27848, upper := 27887, witness := RowWitness.topPrime 27847 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good175_checked :
    goodSegmentCheck 153 50 108
      { lower := 28125, upper := 28275, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row153_good176_checked :
    goodSegmentCheck 153 50 108
      { lower := 28276, upper := 28277, witness := RowWitness.topPrime 28229 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good177_checked :
    goodSegmentCheck 153 50 108
      { lower := 28672, upper := 28713, witness := RowWitness.topPrime 28669 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good178_checked :
    goodSegmentCheck 153 50 108
      { lower := 28717, upper := 28863, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good179_checked :
    goodSegmentCheck 153 50 108
      { lower := 28864, upper := 28869, witness := RowWitness.topPrime 28859 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good180_checked :
    goodSegmentCheck 153 50 108
      { lower := 29791, upper := 29920, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good181_checked :
    goodSegmentCheck 153 50 108
      { lower := 30720, upper := 30755, witness := RowWitness.topPrime 30713 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good182_checked :
    goodSegmentCheck 153 50 108
      { lower := 30758, upper := 30872, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good183_checked :
    goodSegmentCheck 153 50 108
      { lower := 30899, upper := 30910, witness := RowWitness.topPrime 30893 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good184_checked :
    goodSegmentCheck 153 50 108
      { lower := 30926, upper := 31051, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good185_checked :
    goodSegmentCheck 153 50 108
      { lower := 31213, upper := 31345, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good186_checked :
    goodSegmentCheck 153 50 108
      { lower := 31346, upper := 31402, witness := RowWitness.topPrime 31337 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good187_checked :
    goodSegmentCheck 153 50 108
      { lower := 31423, upper := 31481, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good188_checked :
    goodSegmentCheck 153 50 108
      { lower := 31827, upper := 31836, witness := RowWitness.topPrime 31817 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good189_checked :
    goodSegmentCheck 153 50 108
      { lower := 31974, upper := 31979, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good190_checked :
    goodSegmentCheck 153 50 108
      { lower := 33614, upper := 33641, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good191_checked :
    goodSegmentCheck 153 50 108
      { lower := 33708, upper := 33766, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row153_good192_checked :
    goodSegmentCheck 153 50 108
      { lower := 34322, upper := 34471, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good193_checked :
    goodSegmentCheck 153 50 108
      { lower := 34472, upper := 34527, witness := RowWitness.topPrime 34471 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good194_checked :
    goodSegmentCheck 153 50 108
      { lower := 35287, upper := 35304, witness := RowWitness.topPrime 35281 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good195_checked :
    goodSegmentCheck 153 50 108
      { lower := 35344, upper := 35439, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good196_checked :
    goodSegmentCheck 153 50 108
      { lower := 36015, upper := 36064, witness := RowWitness.topPrime 36013 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good197_checked :
    goodSegmentCheck 153 50 108
      { lower := 36517, upper := 36649, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good198_checked :
    goodSegmentCheck 153 50 108
      { lower := 36650, upper := 36653, witness := RowWitness.topPrime 36643 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good199_checked :
    goodSegmentCheck 153 50 108
      { lower := 37303, upper := 37362, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good200_checked :
    goodSegmentCheck 153 50 108
      { lower := 37446, upper := 37455, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good201_checked :
    goodSegmentCheck 153 50 108
      { lower := 37500, upper := 37645, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good202_checked :
    goodSegmentCheck 153 50 108
      { lower := 37646, upper := 37690, witness := RowWitness.topPrime 37643 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good203_checked :
    goodSegmentCheck 153 50 108
      { lower := 38307, upper := 38455, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good204_checked :
    goodSegmentCheck 153 50 108
      { lower := 38456, upper := 38459, witness := RowWitness.topPrime 38453 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good205_checked :
    goodSegmentCheck 153 50 108
      { lower := 40401, upper := 40480, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good206_checked :
    goodSegmentCheck 153 50 108
      { lower := 40931, upper := 40956, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good207_checked :
    goodSegmentCheck 153 50 108
      { lower := 40960, upper := 41083, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row153_good208_checked :
    goodSegmentCheck 153 50 108
      { lower := 43750, upper := 43839, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good209_checked :
    goodSegmentCheck 153 50 108
      { lower := 44944, upper := 45042, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good210_checked :
    goodSegmentCheck 153 50 108
      { lower := 45056, upper := 45096, witness := RowWitness.topPrime 45053 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good211_checked :
    goodSegmentCheck 153 50 108
      { lower := 45369, upper := 45405, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good212_checked :
    goodSegmentCheck 153 50 108
      { lower := 47526, upper := 47673, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good213_checked :
    goodSegmentCheck 153 50 108
      { lower := 47674, upper := 47676, witness := RowWitness.topPrime 47659 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good214_checked :
    goodSegmentCheck 153 50 108
      { lower := 48013, upper := 48113, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good215_checked :
    goodSegmentCheck 153 50 108
      { lower := 48778, upper := 48820, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good216_checked :
    goodSegmentCheck 153 50 108
      { lower := 50421, upper := 50562, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good217_checked :
    goodSegmentCheck 153 50 108
      { lower := 51076, upper := 51157, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good218_checked :
    goodSegmentCheck 153 50 108
      { lower := 55451, upper := 55593, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good219_checked :
    goodSegmentCheck 153 50 108
      { lower := 55594, upper := 55599, witness := RowWitness.topPrime 55589 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good220_checked :
    goodSegmentCheck 153 50 108
      { lower := 56307, upper := 56321, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good221_checked :
    goodSegmentCheck 153 50 108
      { lower := 56454, upper := 56459, witness := RowWitness.topPrime 56453 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good222_checked :
    goodSegmentCheck 153 50 108
      { lower := 57245, upper := 57274, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good223_checked :
    goodSegmentCheck 153 50 108
      { lower := 57344, upper := 57397, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row153_good224_checked :
    goodSegmentCheck 153 50 108
      { lower := 58619, upper := 58716, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good225_checked :
    goodSegmentCheck 153 50 108
      { lower := 62500, upper := 62562, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good226_checked :
    goodSegmentCheck 153 50 108
      { lower := 63948, upper := 63997, witness := RowWitness.topPrime 63929 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good227_checked :
    goodSegmentCheck 153 50 108
      { lower := 68644, upper := 68791, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good228_checked :
    goodSegmentCheck 153 50 108
      { lower := 68792, upper := 68803, witness := RowWitness.topPrime 68791 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good229_checked :
    goodSegmentCheck 153 50 108
      { lower := 68921, upper := 69042, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good230_checked :
    goodSegmentCheck 153 50 108
      { lower := 71289, upper := 71439, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good231_checked :
    goodSegmentCheck 153 50 108
      { lower := 71440, upper := 71441, witness := RowWitness.topPrime 71437 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good232_checked :
    goodSegmentCheck 153 50 108
      { lower := 73205, upper := 73319, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good233_checked :
    goodSegmentCheck 153 50 108
      { lower := 85805, upper := 85835, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good234_checked :
    goodSegmentCheck 153 50 108
      { lower := 89383, upper := 89525, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good235_checked :
    goodSegmentCheck 153 50 108
      { lower := 93845, upper := 93902, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good236_checked :
    goodSegmentCheck 153 50 108
      { lower := 103041, upper := 103118, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good237_checked :
    goodSegmentCheck 153 50 108
      { lower := 109503, upper := 109527, witness := RowWitness.topPrime 109481 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good238_checked :
    goodSegmentCheck 153 50 108
      { lower := 148955, upper := 149029, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row153_good239_checked :
    goodSegmentCheck 153 50 108
      { lower := 154568, upper := 154601, witness := RowWitness.topPrime 154543 } = true := by
  exact good_top_prime_checked (i := 153) (r := 50) (s := 108) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row153_goods_checked :
    row153.goods.all (goodSegmentCheck row153.height.i row153.height.r row153.height.s) = true := by
  change row153_goods.all (goodSegmentCheck 153 50 108) = true
  simp only [row153_goods, List.all_cons, List.all_nil,
    row153_good000_checked,
    row153_good001_checked,
    row153_good002_checked,
    row153_good003_checked,
    row153_good004_checked,
    row153_good005_checked,
    row153_good006_checked,
    row153_good007_checked,
    row153_good008_checked,
    row153_good009_checked,
    row153_good010_checked,
    row153_good011_checked,
    row153_good012_checked,
    row153_good013_checked,
    row153_good014_checked,
    row153_good015_checked,
    row153_good016_checked,
    row153_good017_checked,
    row153_good018_checked,
    row153_good019_checked,
    row153_good020_checked,
    row153_good021_checked,
    row153_good022_checked,
    row153_good023_checked,
    row153_good024_checked,
    row153_good025_checked,
    row153_good026_checked,
    row153_good027_checked,
    row153_good028_checked,
    row153_good029_checked,
    row153_good030_checked,
    row153_good031_checked,
    row153_good032_checked,
    row153_good033_checked,
    row153_good034_checked,
    row153_good035_checked,
    row153_good036_checked,
    row153_good037_checked,
    row153_good038_checked,
    row153_good039_checked,
    row153_good040_checked,
    row153_good041_checked,
    row153_good042_checked,
    row153_good043_checked,
    row153_good044_checked,
    row153_good045_checked,
    row153_good046_checked,
    row153_good047_checked,
    row153_good048_checked,
    row153_good049_checked,
    row153_good050_checked,
    row153_good051_checked,
    row153_good052_checked,
    row153_good053_checked,
    row153_good054_checked,
    row153_good055_checked,
    row153_good056_checked,
    row153_good057_checked,
    row153_good058_checked,
    row153_good059_checked,
    row153_good060_checked,
    row153_good061_checked,
    row153_good062_checked,
    row153_good063_checked,
    row153_good064_checked,
    row153_good065_checked,
    row153_good066_checked,
    row153_good067_checked,
    row153_good068_checked,
    row153_good069_checked,
    row153_good070_checked,
    row153_good071_checked,
    row153_good072_checked,
    row153_good073_checked,
    row153_good074_checked,
    row153_good075_checked,
    row153_good076_checked,
    row153_good077_checked,
    row153_good078_checked,
    row153_good079_checked,
    row153_good080_checked,
    row153_good081_checked,
    row153_good082_checked,
    row153_good083_checked,
    row153_good084_checked,
    row153_good085_checked,
    row153_good086_checked,
    row153_good087_checked,
    row153_good088_checked,
    row153_good089_checked,
    row153_good090_checked,
    row153_good091_checked,
    row153_good092_checked,
    row153_good093_checked,
    row153_good094_checked,
    row153_good095_checked,
    row153_good096_checked,
    row153_good097_checked,
    row153_good098_checked,
    row153_good099_checked,
    row153_good100_checked,
    row153_good101_checked,
    row153_good102_checked,
    row153_good103_checked,
    row153_good104_checked,
    row153_good105_checked,
    row153_good106_checked,
    row153_good107_checked,
    row153_good108_checked,
    row153_good109_checked,
    row153_good110_checked,
    row153_good111_checked,
    row153_good112_checked,
    row153_good113_checked,
    row153_good114_checked,
    row153_good115_checked,
    row153_good116_checked,
    row153_good117_checked,
    row153_good118_checked,
    row153_good119_checked,
    row153_good120_checked,
    row153_good121_checked,
    row153_good122_checked,
    row153_good123_checked,
    row153_good124_checked,
    row153_good125_checked,
    row153_good126_checked,
    row153_good127_checked,
    row153_good128_checked,
    row153_good129_checked,
    row153_good130_checked,
    row153_good131_checked,
    row153_good132_checked,
    row153_good133_checked,
    row153_good134_checked,
    row153_good135_checked,
    row153_good136_checked,
    row153_good137_checked,
    row153_good138_checked,
    row153_good139_checked,
    row153_good140_checked,
    row153_good141_checked,
    row153_good142_checked,
    row153_good143_checked,
    row153_good144_checked,
    row153_good145_checked,
    row153_good146_checked,
    row153_good147_checked,
    row153_good148_checked,
    row153_good149_checked,
    row153_good150_checked,
    row153_good151_checked,
    row153_good152_checked,
    row153_good153_checked,
    row153_good154_checked,
    row153_good155_checked,
    row153_good156_checked,
    row153_good157_checked,
    row153_good158_checked,
    row153_good159_checked,
    row153_good160_checked,
    row153_good161_checked,
    row153_good162_checked,
    row153_good163_checked,
    row153_good164_checked,
    row153_good165_checked,
    row153_good166_checked,
    row153_good167_checked,
    row153_good168_checked,
    row153_good169_checked,
    row153_good170_checked,
    row153_good171_checked,
    row153_good172_checked,
    row153_good173_checked,
    row153_good174_checked,
    row153_good175_checked,
    row153_good176_checked,
    row153_good177_checked,
    row153_good178_checked,
    row153_good179_checked,
    row153_good180_checked,
    row153_good181_checked,
    row153_good182_checked,
    row153_good183_checked,
    row153_good184_checked,
    row153_good185_checked,
    row153_good186_checked,
    row153_good187_checked,
    row153_good188_checked,
    row153_good189_checked,
    row153_good190_checked,
    row153_good191_checked,
    row153_good192_checked,
    row153_good193_checked,
    row153_good194_checked,
    row153_good195_checked,
    row153_good196_checked,
    row153_good197_checked,
    row153_good198_checked,
    row153_good199_checked,
    row153_good200_checked,
    row153_good201_checked,
    row153_good202_checked,
    row153_good203_checked,
    row153_good204_checked,
    row153_good205_checked,
    row153_good206_checked,
    row153_good207_checked,
    row153_good208_checked,
    row153_good209_checked,
    row153_good210_checked,
    row153_good211_checked,
    row153_good212_checked,
    row153_good213_checked,
    row153_good214_checked,
    row153_good215_checked,
    row153_good216_checked,
    row153_good217_checked,
    row153_good218_checked,
    row153_good219_checked,
    row153_good220_checked,
    row153_good221_checked,
    row153_good222_checked,
    row153_good223_checked,
    row153_good224_checked,
    row153_good225_checked,
    row153_good226_checked,
    row153_good227_checked,
    row153_good228_checked,
    row153_good229_checked,
    row153_good230_checked,
    row153_good231_checked,
    row153_good232_checked,
    row153_good233_checked,
    row153_good234_checked,
    row153_good235_checked,
    row153_good236_checked,
    row153_good237_checked,
    row153_good238_checked,
    row153_good239_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row153_registered :
    decide (row153.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row153_small_checked :
    coverCheck (2 * row153.height.i + 2) (row153.height.i * (row153.height.i - 1) - 1)
      (row153.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row153_layerCover_checked :
    coverCheck (row153.height.i * (row153.height.i - 1)) (row153.height.n0 - 1)
      (row153.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row153_bounds : List NatInterval :=
  [(308, 459), (460, 609), (610, 759), (760, 909), (910, 1059), (1060, 1203), (1204, 1353), (1354, 1479), (1480, 1623), (1624, 1773), (1774, 1911), (1912, 2059), (2060, 2205), (2206, 2355), (2356, 2503), (2504, 2655), (2656, 2799), (2800, 2949), (2950, 3091), (3092, 3241), (3242, 3381), (3382, 3525), (3526, 3669), (3670, 3811), (3812, 3955), (3956, 4099), (4100, 4251), (4252, 4395), (4396, 4543), (4544, 4675), (4676, 4825), (4826, 4969), (4970, 5121), (5122, 5271), (5272, 5413), (5414, 5565), (5566, 5715), (5716, 5863), (5864, 6013), (6014, 6163), (6164, 6315), (6316, 6463), (6464, 6603), (6604, 6751), (6752, 6889), (6890, 7035), (7036, 7179), (7180, 7329), (7330, 7473), (7474, 7611), (7612, 7759), (7760, 7911), (7912, 8059), (8060, 8211), (8212, 8361), (8362, 8505), (8506, 8653), (8654, 8799), (8800, 8935), (8936, 9085), (9086, 9219), (9220, 9361), (9362, 9501), (9502, 9649), (9650, 9801), (9802, 9943), (9944, 10093), (10094, 10245), (10246, 10395), (10396, 10543), (10544, 10683), (10684, 10819), (10820, 10951), (10952, 11101), (11102, 11245), (11246, 11395), (11396, 11545), (11546, 11679), (11680, 11829), (11830, 11979), (11980, 12123), (12124, 12271), (12272, 12421), (12422, 12573), (12574, 12721), (12722, 12873), (12874, 13005), (13006, 13155), (13156, 13303), (13304, 13449), (13450, 13593), (13594, 13743), (13744, 13881), (13882, 14031), (14032, 14181), (14182, 14329), (14330, 14479), (14480, 14631), (14632, 14781), (14782, 14931), (14932, 15081), (15082, 15229), (15230, 15379), (15380, 15529), (15530, 15679), (15680, 15831), (15832, 15975), (15976, 16125), (16126, 16263), (16264, 16405), (16406, 16533), (16534, 16681), (16682, 16825), (16826, 16975), (16976, 17115), (17116, 17259), (17260, 17409), (17410, 17553), (17554, 17703), (17704, 17835), (17836, 17979), (17980, 18129), (18130, 18279), (18280, 18421), (18422, 18565), (18566, 18705), (18706, 18853), (18854, 18991), (18992, 19131), (19132, 19273), (19274, 19425), (19426, 19575), (19576, 19723), (19724, 19869), (19870, 20019), (20020, 20163), (20164, 20313), (20314, 20449), (20450, 20595), (20596, 20745), (20746, 20895), (20896, 21039), (21040, 21183), (21184, 21331), (21332, 21475), (21476, 21619), (21620, 21769), (21770, 21919), (21920, 22063), (22064, 22215), (22216, 22345), (22346, 22495), (22496, 22635), (22636, 22773), (22774, 22921), (22922, 23073), (23074, 23223), (23224, 23255), (23763, 23913), (23914, 23914), (24037, 24162), (24167, 24189), (24299, 24319), (24334, 24481), (24482, 24519), (25000, 25116), (25215, 25341), (25342, 25367), (26411, 26559), (26560, 26563), (26624, 26749), (26750, 26776), (26934, 27048), (27556, 27588), (27848, 27887), (28125, 28275), (28276, 28277), (28672, 28713), (28717, 28863), (28864, 28869), (29791, 29920), (30720, 30755), (30758, 30872), (30899, 30910), (30926, 31051), (31213, 31345), (31346, 31402), (31423, 31481), (31827, 31836), (31974, 31979), (33614, 33641), (33708, 33766), (34322, 34471), (34472, 34527), (35287, 35304), (35344, 35439), (36015, 36064), (36517, 36649), (36650, 36653), (37303, 37362), (37446, 37455), (37500, 37645), (37646, 37690), (38307, 38455), (38456, 38459), (40401, 40480), (40931, 40956), (40960, 41083), (43750, 43839), (44944, 45042), (45056, 45096), (45369, 45405), (47526, 47673), (47674, 47676), (48013, 48113), (48778, 48820), (50421, 50562), (51076, 51157), (55451, 55593), (55594, 55599), (56307, 56321), (56454, 56459), (57245, 57274), (57344, 57397), (58619, 58716), (62500, 62562), (63948, 63997), (68644, 68791), (68792, 68803), (68921, 69042), (71289, 71439), (71440, 71441), (73205, 73319), (85805, 85835), (89383, 89525), (93845, 93902), (103041, 103118), (109503, 109527), (148955, 149029), (154568, 154601)]

theorem row153_bounds_eq : row153.goods.map goodSegmentBounds = row153_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row153_layer000_intervals : List ColouredInterval :=
  [(2, 24576, 24728), (2, 26624, 26776), (2, 28672, 28824), (2, 30720, 30872), (2, 32768, 32920), (2, 24576, 24728), (2, 28672, 28824), (2, 32768, 32920), (2, 36864, 37016), (2, 40960, 41112), (2, 45056, 45208), (2, 24576, 24728), (2, 32768, 32920), (2, 40960, 41112), (2, 32768, 32920), (2, 32768, 32920), (5, 25000, 25152), (5, 28125, 28277), (5, 31250, 31402), (5, 34375, 34527), (5, 37500, 37652), (5, 40625, 40777), (5, 43750, 43902), (5, 31250, 31402), (7, 24010, 24162), (7, 26411, 26563), (7, 28812, 28964), (7, 31213, 31365), (7, 33614, 33766), (7, 36015, 36167), (7, 38416, 38568), (7, 33614, 33766), (11, 29282, 29434), (11, 43923, 44075), (13, 24167, 24319), (13, 26364, 26516), (13, 28561, 28713), (13, 30758, 30910), (13, 32955, 33107), (13, 35152, 35304), (13, 28561, 28713), (19, 27436, 27588), (19, 34295, 34447), (19, 41154, 41306), (23, 24334, 24486), (23, 36501, 36653), (29, 24389, 24541), (31, 29791, 29943), (41, 23534, 23686), (41, 25215, 25367), (41, 26896, 27048), (43, 24037, 24189), (43, 25886, 26038), (43, 27735, 27887), (43, 29584, 29736), (47, 24299, 24451), (47, 26508, 26660), (47, 28717, 28869), (47, 30926, 31078), (47, 33135, 33287), (47, 35344, 35496), (53, 25281, 25433), (53, 28090, 28242), (53, 30899, 31051), (53, 33708, 33860), (53, 36517, 36669), (53, 39326, 39478), (53, 42135, 42287), (53, 44944, 45096), (59, 24367, 24519), (59, 27848, 28000), (59, 31329, 31481), (59, 34810, 34962), (59, 38291, 38443), (59, 41772, 41924), (59, 45253, 45405), (61, 26047, 26199), (61, 29768, 29920), (61, 33489, 33641), (61, 37210, 37362), (61, 40931, 41083), (61, 44652, 44804), (67, 26934, 27086), (67, 31423, 31575), (67, 35912, 36064), (67, 40401, 40553), (67, 44890, 45042), (71, 25205, 25357), (71, 30246, 30398), (71, 35287, 35439), (71, 40328, 40480), (71, 45369, 45521), (73, 26645, 26797), (73, 31974, 32126), (73, 37303, 37455), (73, 42632, 42784), (79, 24964, 25116), (79, 31205, 31357), (79, 37446, 37598), (79, 43687, 43839), (83, 27556, 27708), (83, 34445, 34597), (83, 41334, 41486), (89, 23763, 23915), (89, 31684, 31836), (89, 39605, 39757), (97, 28227, 28379), (97, 37636, 37788), (101, 30603, 30755), (101, 40804, 40956), (103, 31827, 31979), (103, 42436, 42588), (107, 34347, 34499), (107, 45796, 45948), (109, 23762, 23914), (109, 35643, 35795), (113, 25538, 25690), (113, 38307, 38459), (127, 32258, 32410), (131, 34322, 34474), (137, 37538, 37690), (139, 38642, 38794), (149, 44402, 44554), (151, 45602, 45754)]

def row153_layer000_block000 : List ColouredInterval :=
  [(2, 24576, 24728), (2, 26624, 26776), (2, 28672, 28824), (2, 30720, 30872), (2, 32768, 32920), (2, 24576, 24728), (2, 28672, 28824), (2, 32768, 32920), (2, 36864, 37016), (2, 40960, 41112), (2, 45056, 45208), (2, 24576, 24728), (2, 32768, 32920), (2, 40960, 41112), (2, 32768, 32920), (2, 32768, 32920)]

def row153_layer000_block001 : List ColouredInterval :=
  [(5, 25000, 25152), (5, 28125, 28277), (5, 31250, 31402), (5, 34375, 34527), (5, 37500, 37652), (5, 40625, 40777), (5, 43750, 43902), (5, 31250, 31402), (7, 24010, 24162), (7, 26411, 26563), (7, 28812, 28964), (7, 31213, 31365), (7, 33614, 33766), (7, 36015, 36167), (7, 38416, 38568), (7, 33614, 33766)]

def row153_layer000_block002 : List ColouredInterval :=
  [(11, 29282, 29434), (11, 43923, 44075), (13, 24167, 24319), (13, 26364, 26516), (13, 28561, 28713), (13, 30758, 30910), (13, 32955, 33107), (13, 35152, 35304), (13, 28561, 28713), (19, 27436, 27588), (19, 34295, 34447), (19, 41154, 41306), (23, 24334, 24486), (23, 36501, 36653), (29, 24389, 24541), (31, 29791, 29943)]

def row153_layer000_block003 : List ColouredInterval :=
  [(41, 23534, 23686), (41, 25215, 25367), (41, 26896, 27048), (43, 24037, 24189), (43, 25886, 26038), (43, 27735, 27887), (43, 29584, 29736), (47, 24299, 24451), (47, 26508, 26660), (47, 28717, 28869), (47, 30926, 31078), (47, 33135, 33287), (47, 35344, 35496), (53, 25281, 25433), (53, 28090, 28242), (53, 30899, 31051)]

def row153_layer000_block004 : List ColouredInterval :=
  [(53, 33708, 33860), (53, 36517, 36669), (53, 39326, 39478), (53, 42135, 42287), (53, 44944, 45096), (59, 24367, 24519), (59, 27848, 28000), (59, 31329, 31481), (59, 34810, 34962), (59, 38291, 38443), (59, 41772, 41924), (59, 45253, 45405), (61, 26047, 26199), (61, 29768, 29920), (61, 33489, 33641), (61, 37210, 37362)]

def row153_layer000_block005 : List ColouredInterval :=
  [(61, 40931, 41083), (61, 44652, 44804), (67, 26934, 27086), (67, 31423, 31575), (67, 35912, 36064), (67, 40401, 40553), (67, 44890, 45042), (71, 25205, 25357), (71, 30246, 30398), (71, 35287, 35439), (71, 40328, 40480), (71, 45369, 45521), (73, 26645, 26797), (73, 31974, 32126), (73, 37303, 37455), (73, 42632, 42784)]

def row153_layer000_block006 : List ColouredInterval :=
  [(79, 24964, 25116), (79, 31205, 31357), (79, 37446, 37598), (79, 43687, 43839), (83, 27556, 27708), (83, 34445, 34597), (83, 41334, 41486), (89, 23763, 23915), (89, 31684, 31836), (89, 39605, 39757), (97, 28227, 28379), (97, 37636, 37788), (101, 30603, 30755), (101, 40804, 40956), (103, 31827, 31979), (103, 42436, 42588)]

def row153_layer000_block007 : List ColouredInterval :=
  [(107, 34347, 34499), (107, 45796, 45948), (109, 23762, 23914), (109, 35643, 35795), (113, 25538, 25690), (113, 38307, 38459), (127, 32258, 32410), (131, 34322, 34474), (137, 37538, 37690), (139, 38642, 38794), (149, 44402, 44554), (151, 45602, 45754)]

def row153_layer000_chunks : List (List ColouredInterval) :=
  [row153_layer000_block000, row153_layer000_block001, row153_layer000_block002, row153_layer000_block003, row153_layer000_block004, row153_layer000_block005, row153_layer000_block006, row153_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row153_layer000_arithmetic : LayerArithmeticValid row153.height { lower := 23256, upper := 46512, M := 16 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row153_layer000_enumeration :
    activePowerIntervalList 153 16 23256 46512 = row153_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row153_layer000_pairs000 :
    row153_layer000_block000.all (fun I => row153_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row153_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row153_layer000_pairs001 :
    row153_layer000_block001.all (fun I => row153_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row153_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row153_layer000_pairs002 :
    row153_layer000_block002.all (fun I => row153_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row153_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row153_layer000_pairs003 :
    row153_layer000_block003.all (fun I => row153_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row153_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row153_layer000_pairs004 :
    row153_layer000_block004.all (fun I => row153_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row153_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row153_layer000_pairs005 :
    row153_layer000_block005.all (fun I => row153_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row153_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row153_layer000_pairs006 :
    row153_layer000_block006.all (fun I => row153_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row153_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row153_layer000_pairs007 :
    row153_layer000_block007.all (fun I => row153_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row153_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row153_layer000_chunks_eq : row153_layer000_chunks.flatten = row153_layer000_intervals := by
  rfl

theorem row153_layer000_pairs : pairCoverCheck row153_layer000_intervals row153_bounds = true := by
  apply pairCoverCheck_of_chunks row153_layer000_chunks_eq
  intro block hblock
  simp only [row153_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row153_layer000_pairs000
  · exact row153_layer000_pairs001
  · exact row153_layer000_pairs002
  · exact row153_layer000_pairs003
  · exact row153_layer000_pairs004
  · exact row153_layer000_pairs005
  · exact row153_layer000_pairs006
  · exact row153_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row153_layer000_checked :
    coverLayerCheck row153.height row153.goods { lower := 23256, upper := 46512, M := 16 } = true := by
  exact coverLayerCheck_of_parts row153_layer000_arithmetic row153_layer000_enumeration row153_bounds_eq row153_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_layer000_checked
