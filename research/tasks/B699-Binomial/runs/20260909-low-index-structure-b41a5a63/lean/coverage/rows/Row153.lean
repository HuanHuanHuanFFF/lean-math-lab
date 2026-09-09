import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

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

theorem row153_registered :
    decide (row153.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row153_goods_checked :
    row153.goods.all (goodSegmentCheck row153.height.i row153.height.r row153.height.s) = true := by
  decide +kernel

theorem row153_small_checked :
    coverCheck (2 * row153.height.i + 2) (row153.height.i * (row153.height.i - 1) - 1)
      (row153.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row153_layerCover_checked :
    coverCheck (row153.height.i * (row153.height.i - 1)) (row153.height.n0 - 1)
      (row153.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row153_layer000_checked :
    coverLayerCheck row153.height row153.goods { lower := 23256, upper := 46512, M := 16 } = true := by
  decide +kernel

theorem row153_layer001_checked :
    coverLayerCheck row153.height row153.goods { lower := 46512, upper := 93024, M := 12 } = true := by
  decide +kernel

theorem row153_layer002_checked :
    coverLayerCheck row153.height row153.goods { lower := 93024, upper := 186048, M := 9 } = true := by
  decide +kernel

theorem row153_layer003_checked :
    coverLayerCheck row153.height row153.goods { lower := 186048, upper := 372096, M := 7 } = true := by
  decide +kernel

theorem row153_layer004_checked :
    coverLayerCheck row153.height row153.goods { lower := 372096, upper := 744192, M := 5 } = true := by
  decide +kernel

theorem row153_layer005_checked :
    coverLayerCheck row153.height row153.goods { lower := 744192, upper := 1488384, M := 4 } = true := by
  decide +kernel

theorem row153_layer006_checked :
    coverLayerCheck row153.height row153.goods { lower := 1488384, upper := 2976768, M := 3 } = true := by
  decide +kernel

theorem row153_layer007_checked :
    coverLayerCheck row153.height row153.goods { lower := 2976768, upper := 5953536, M := 3 } = true := by
  decide +kernel

theorem row153_layer008_checked :
    coverLayerCheck row153.height row153.goods { lower := 5953536, upper := 11907072, M := 2 } = true := by
  decide +kernel

theorem row153_layer009_checked :
    coverLayerCheck row153.height row153.goods { lower := 11907072, upper := 23814144, M := 2 } = true := by
  decide +kernel

theorem row153_layer010_checked :
    coverLayerCheck row153.height row153.goods { lower := 23814144, upper := 47628288, M := 1 } = true := by
  decide +kernel

theorem row153_layer011_checked :
    coverLayerCheck row153.height row153.goods { lower := 47628288, upper := 95256576, M := 1 } = true := by
  decide +kernel

theorem row153_layer012_checked :
    coverLayerCheck row153.height row153.goods { lower := 95256576, upper := 100000000, M := 1 } = true := by
  decide +kernel

theorem row153_layers_checked :
    row153.layers.all (coverLayerCheck row153.height row153.goods) = true := by
  change List.all [
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
  ] (coverLayerCheck row153.height row153.goods) = true
  simp only [List.all_cons, List.all_nil,
    row153_layer000_checked,
    row153_layer001_checked,
    row153_layer002_checked,
    row153_layer003_checked,
    row153_layer004_checked,
    row153_layer005_checked,
    row153_layer006_checked,
    row153_layer007_checked,
    row153_layer008_checked,
    row153_layer009_checked,
    row153_layer010_checked,
    row153_layer011_checked,
    row153_layer012_checked,
    Bool.true_and]

theorem row153_checked : finiteCoverRowCheck row153 = true := by
  simp only [finiteCoverRowCheck, row153_registered, row153_goods_checked,
    row153_small_checked, row153_layerCover_checked, row153_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row153_checked

end B699LowIndex
