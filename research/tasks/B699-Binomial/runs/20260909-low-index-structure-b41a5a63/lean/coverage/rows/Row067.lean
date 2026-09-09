import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def row067_height : HeightCertificateDatum := { i := 67, r := 22, s := 46, n0Power10 := 10 }

def row067_goods : List GoodSegment := [
  { lower := 136, upper := 197, witness := RowWitness.topPrime 131 },
  { lower := 198, upper := 263, witness := RowWitness.topPrime 197 },
  { lower := 264, upper := 329, witness := RowWitness.topPrime 263 },
  { lower := 330, upper := 383, witness := RowWitness.topPrime 317 },
  { lower := 384, upper := 449, witness := RowWitness.topPrime 383 },
  { lower := 450, upper := 515, witness := RowWitness.topPrime 449 },
  { lower := 516, upper := 575, witness := RowWitness.topPrime 509 },
  { lower := 576, upper := 637, witness := RowWitness.topPrime 571 },
  { lower := 638, upper := 697, witness := RowWitness.topPrime 631 },
  { lower := 698, upper := 757, witness := RowWitness.topPrime 691 },
  { lower := 758, upper := 823, witness := RowWitness.topPrime 757 },
  { lower := 824, upper := 889, witness := RowWitness.topPrime 823 },
  { lower := 890, upper := 953, witness := RowWitness.topPrime 887 },
  { lower := 954, upper := 1019, witness := RowWitness.topPrime 953 },
  { lower := 1020, upper := 1085, witness := RowWitness.topPrime 1019 },
  { lower := 1086, upper := 1135, witness := RowWitness.topPrime 1069 },
  { lower := 1136, upper := 1195, witness := RowWitness.topPrime 1129 },
  { lower := 1196, upper := 1259, witness := RowWitness.topPrime 1193 },
  { lower := 1260, upper := 1325, witness := RowWitness.topPrime 1259 },
  { lower := 1326, upper := 1387, witness := RowWitness.topPrime 1321 },
  { lower := 1388, upper := 1447, witness := RowWitness.topPrime 1381 },
  { lower := 1448, upper := 1513, witness := RowWitness.topPrime 1447 },
  { lower := 1514, upper := 1577, witness := RowWitness.topPrime 1511 },
  { lower := 1578, upper := 1637, witness := RowWitness.topPrime 1571 },
  { lower := 1638, upper := 1703, witness := RowWitness.topPrime 1637 },
  { lower := 1704, upper := 1765, witness := RowWitness.topPrime 1699 },
  { lower := 1766, upper := 1825, witness := RowWitness.topPrime 1759 },
  { lower := 1826, upper := 1889, witness := RowWitness.topPrime 1823 },
  { lower := 1890, upper := 1955, witness := RowWitness.topPrime 1889 },
  { lower := 1956, upper := 2017, witness := RowWitness.topPrime 1951 },
  { lower := 2018, upper := 2083, witness := RowWitness.topPrime 2017 },
  { lower := 2084, upper := 2149, witness := RowWitness.topPrime 2083 },
  { lower := 2150, upper := 2209, witness := RowWitness.topPrime 2143 },
  { lower := 2210, upper := 2273, witness := RowWitness.topPrime 2207 },
  { lower := 2274, upper := 2339, witness := RowWitness.topPrime 2273 },
  { lower := 2340, upper := 2405, witness := RowWitness.topPrime 2339 },
  { lower := 2406, upper := 2465, witness := RowWitness.topPrime 2399 },
  { lower := 2466, upper := 2525, witness := RowWitness.topPrime 2459 },
  { lower := 2526, upper := 2587, witness := RowWitness.topPrime 2521 },
  { lower := 2588, upper := 2645, witness := RowWitness.topPrime 2579 },
  { lower := 2646, upper := 2699, witness := RowWitness.topPrime 2633 },
  { lower := 2700, upper := 2765, witness := RowWitness.topPrime 2699 },
  { lower := 2766, upper := 2819, witness := RowWitness.topPrime 2753 },
  { lower := 2820, upper := 2885, witness := RowWitness.topPrime 2819 },
  { lower := 2886, upper := 2945, witness := RowWitness.topPrime 2879 },
  { lower := 2946, upper := 3005, witness := RowWitness.topPrime 2939 },
  { lower := 3006, upper := 3067, witness := RowWitness.topPrime 3001 },
  { lower := 3068, upper := 3133, witness := RowWitness.topPrime 3067 },
  { lower := 3134, upper := 3187, witness := RowWitness.topPrime 3121 },
  { lower := 3188, upper := 3253, witness := RowWitness.topPrime 3187 },
  { lower := 3254, upper := 3319, witness := RowWitness.topPrime 3253 },
  { lower := 3320, upper := 3385, witness := RowWitness.topPrime 3319 },
  { lower := 3386, upper := 3439, witness := RowWitness.topPrime 3373 },
  { lower := 3440, upper := 3499, witness := RowWitness.topPrime 3433 },
  { lower := 3500, upper := 3565, witness := RowWitness.topPrime 3499 },
  { lower := 3566, upper := 3625, witness := RowWitness.topPrime 3559 },
  { lower := 3626, upper := 3689, witness := RowWitness.topPrime 3623 },
  { lower := 3690, upper := 3743, witness := RowWitness.topPrime 3677 },
  { lower := 3744, upper := 3805, witness := RowWitness.topPrime 3739 },
  { lower := 3806, upper := 3869, witness := RowWitness.topPrime 3803 },
  { lower := 3870, upper := 3929, witness := RowWitness.topPrime 3863 },
  { lower := 3930, upper := 3995, witness := RowWitness.topPrime 3929 },
  { lower := 3996, upper := 4055, witness := RowWitness.topPrime 3989 },
  { lower := 4056, upper := 4117, witness := RowWitness.topPrime 4051 },
  { lower := 4118, upper := 4177, witness := RowWitness.topPrime 4111 },
  { lower := 4178, upper := 4243, witness := RowWitness.topPrime 4177 },
  { lower := 4244, upper := 4309, witness := RowWitness.topPrime 4243 },
  { lower := 4310, upper := 4363, witness := RowWitness.topPrime 4297 },
  { lower := 4364, upper := 4429, witness := RowWitness.topPrime 4363 },
  { lower := 4430, upper := 4484, witness := RowWitness.topPrime 4423 },
  { lower := 4617, upper := 4669, witness := RowWitness.topPrime 4603 },
  { lower := 4670, upper := 4683, witness := RowWitness.topPrime 4663 },
  { lower := 4802, upper := 4867, witness := RowWitness.topPrime 4801 },
  { lower := 4868, upper := 4927, witness := RowWitness.topPrime 4861 },
  { lower := 4928, upper := 4930, witness := RowWitness.topPrime 4919 },
  { lower := 5043, upper := 5105, witness := RowWitness.topPrime 5039 },
  { lower := 5106, upper := 5167, witness := RowWitness.topPrime 5101 },
  { lower := 5168, upper := 5186, witness := RowWitness.topPrime 5167 },
  { lower := 5202, upper := 5211, witness := RowWitness.topPrime 5197 },
  { lower := 5324, upper := 5389, witness := RowWitness.topPrime 5323 },
  { lower := 5390, upper := 5412, witness := RowWitness.topPrime 5387 },
  { lower := 5415, upper := 5442, witness := RowWitness.topPrime 5413 },
  { lower := 5476, upper := 5481, witness := RowWitness.topPrime 5471 },
  { lower := 5488, upper := 5549, witness := RowWitness.topPrime 5483 },
  { lower := 5550, upper := 5557, witness := RowWitness.topPrime 5531 },
  { lower := 5589, upper := 5613, witness := RowWitness.topPrime 5581 },
  { lower := 5618, upper := 5657, witness := RowWitness.topPrime 5591 },
  { lower := 5658, upper := 5691, witness := RowWitness.topPrime 5657 },
  { lower := 5776, upper := 5815, witness := RowWitness.topPrime 5749 },
  { lower := 5816, upper := 5879, witness := RowWitness.topPrime 5813 },
  { lower := 5880, upper := 5945, witness := RowWitness.topPrime 5879 },
  { lower := 5946, upper := 5953, witness := RowWitness.topPrime 5939 },
  { lower := 6075, upper := 6135, witness := RowWitness.topPrime 6073 },
  { lower := 6137, upper := 6141, witness := RowWitness.topPrime 6133 },
  { lower := 6144, upper := 6209, witness := RowWitness.topPrime 6143 },
  { lower := 6210, upper := 6210, witness := RowWitness.topPrime 6203 },
  { lower := 6358, upper := 6419, witness := RowWitness.topPrime 6353 },
  { lower := 6420, upper := 6424, witness := RowWitness.topPrime 6397 },
  { lower := 6517, upper := 6557, witness := RowWitness.topPrime 6491 },
  { lower := 6558, upper := 6583, witness := RowWitness.topPrime 6553 },
  { lower := 6591, upper := 6647, witness := RowWitness.topPrime 6581 },
  { lower := 6648, upper := 6703, witness := RowWitness.topPrime 6637 },
  { lower := 6704, upper := 6721, witness := RowWitness.topPrime 6703 },
  { lower := 6727, upper := 6785, witness := RowWitness.topPrime 6719 },
  { lower := 6786, upper := 6793, witness := RowWitness.topPrime 6781 },
  { lower := 6859, upper := 6923, witness := RowWitness.topPrime 6857 },
  { lower := 6924, upper := 6943, witness := RowWitness.topPrime 6917 },
  { lower := 6962, upper := 7002, witness := RowWitness.topPrime 6961 },
  { lower := 7203, upper := 7259, witness := RowWitness.topPrime 7193 },
  { lower := 7260, upper := 7286, witness := RowWitness.topPrime 7253 },
  { lower := 7290, upper := 7291, witness := RowWitness.topPrime 7283 },
  { lower := 7406, upper := 7459, witness := RowWitness.topPrime 7393 },
  { lower := 7460, upper := 7472, witness := RowWitness.topPrime 7459 },
  { lower := 7500, upper := 7508, witness := RowWitness.topPrime 7499 },
  { lower := 7546, upper := 7566, witness := RowWitness.topPrime 7541 },
  { lower := 7569, upper := 7627, witness := RowWitness.topPrime 7561 },
  { lower := 7628, upper := 7635, witness := RowWitness.topPrime 7621 },
  { lower := 7688, upper := 7746, witness := RowWitness.topPrime 7687 },
  { lower := 7935, upper := 7999, witness := RowWitness.topPrime 7933 },
  { lower := 8000, upper := 8008, witness := RowWitness.topPrime 7993 },
  { lower := 8019, upper := 8052, witness := RowWitness.topPrime 8017 },
  { lower := 8214, upper := 8275, witness := RowWitness.topPrime 8209 },
  { lower := 8276, upper := 8280, witness := RowWitness.topPrime 8273 },
  { lower := 8410, upper := 8455, witness := RowWitness.topPrime 8389 },
  { lower := 8456, upper := 8493, witness := RowWitness.topPrime 8447 },
  { lower := 8664, upper := 8729, witness := RowWitness.topPrime 8663 },
  { lower := 8730, upper := 8730, witness := RowWitness.topPrime 8719 },
  { lower := 8748, upper := 8813, witness := RowWitness.topPrime 8747 },
  { lower := 8814, upper := 8816, witness := RowWitness.topPrime 8807 },
  { lower := 8836, upper := 8854, witness := RowWitness.topPrime 8831 },
  { lower := 9245, upper := 9307, witness := RowWitness.topPrime 9241 },
  { lower := 9308, upper := 9311, witness := RowWitness.topPrime 9293 },
  { lower := 9317, upper := 9317, witness := RowWitness.topPrime 9311 },
  { lower := 9375, upper := 9383, witness := RowWitness.topPrime 9371 },
  { lower := 9522, upper := 9543, witness := RowWitness.topPrime 9521 },
  { lower := 9583, upper := 9588, witness := RowWitness.topPrime 9551 },
  { lower := 9604, upper := 9667, witness := RowWitness.topPrime 9601 },
  { lower := 9668, upper := 9670, witness := RowWitness.topPrime 9661 },
  { lower := 10051, upper := 10066, witness := RowWitness.topPrime 10039 },
  { lower := 10086, upper := 10145, witness := RowWitness.topPrime 10079 },
  { lower := 10146, upper := 10152, witness := RowWitness.topPrime 10141 },
  { lower := 10240, upper := 10272, witness := RowWitness.topPrime 10223 },
  { lower := 10580, upper := 10633, witness := RowWitness.topPrime 10567 },
  { lower := 10634, upper := 10646, witness := RowWitness.topPrime 10631 },
  { lower := 10648, upper := 10691, witness := RowWitness.topPrime 10639 },
  { lower := 10935, upper := 10975, witness := RowWitness.topPrime 10909 },
  { lower := 10976, upper := 11018, witness := RowWitness.topPrime 10973 },
  { lower := 11045, upper := 11051, witness := RowWitness.topPrime 11027 },
  { lower := 11094, upper := 11159, witness := RowWitness.topPrime 11093 },
  { lower := 11160, upper := 11160, witness := RowWitness.topPrime 11159 },
  { lower := 11163, upper := 11175, witness := RowWitness.topPrime 11161 },
  { lower := 11250, upper := 11309, witness := RowWitness.topPrime 11243 },
  { lower := 11310, upper := 11316, witness := RowWitness.topPrime 11299 },
  { lower := 11774, upper := 11809, witness := RowWitness.topPrime 11743 },
  { lower := 11810, upper := 11833, witness := RowWitness.topPrime 11807 },
  { lower := 12005, upper := 12045, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12354, witness := RowWitness.topPrime 12301 },
  { lower := 12500, upper := 12559, witness := RowWitness.topPrime 12497 },
  { lower := 13125, upper := 13187, witness := RowWitness.topPrime 13121 },
  { lower := 13188, upper := 13191, witness := RowWitness.topPrime 13187 },
  { lower := 13310, upper := 13375, witness := RowWitness.topPrime 13309 },
  { lower := 13376, upper := 13376, witness := RowWitness.topPrime 13367 },
  { lower := 13454, upper := 13517, witness := RowWitness.topPrime 13451 },
  { lower := 13518, upper := 13520, witness := RowWitness.topPrime 13513 },
  { lower := 13718, upper := 13756, witness := RowWitness.topPrime 13711 },
  { lower := 14336, upper := 14363, witness := RowWitness.topPrime 14327 },
  { lower := 14415, upper := 14472, witness := RowWitness.topPrime 14411 },
  { lower := 14641, upper := 14646, witness := RowWitness.topPrime 14639 },
  { lower := 14792, upper := 14805, witness := RowWitness.topPrime 14783 },
  { lower := 15138, upper := 15195, witness := RowWitness.topPrime 15137 },
  { lower := 15360, upper := 15425, witness := RowWitness.topPrime 15359 },
  { lower := 15426, upper := 15442, witness := RowWitness.topPrime 15413 },
  { lower := 15979, upper := 16038, witness := RowWitness.topPrime 15973 },
  { lower := 16384, upper := 16403, witness := RowWitness.topPrime 16381 },
  { lower := 16428, upper := 16450, witness := RowWitness.topPrime 16427 },
  { lower := 16810, upper := 16853, witness := RowWitness.topPrime 16787 },
  { lower := 16854, upper := 16886, witness := RowWitness.topPrime 16843 },
  { lower := 17303, upper := 17364, witness := RowWitness.topPrime 17299 },
  { lower := 17408, upper := 17467, witness := RowWitness.topPrime 17401 },
  { lower := 17468, upper := 17471, witness := RowWitness.topPrime 17467 },
  { lower := 17672, upper := 17687, witness := RowWitness.topPrime 17669 },
  { lower := 18490, upper := 18547, witness := RowWitness.topPrime 18481 },
  { lower := 18548, upper := 18556, witness := RowWitness.topPrime 18541 },
  { lower := 18634, upper := 18671, witness := RowWitness.topPrime 18617 },
  { lower := 19208, upper := 19232, witness := RowWitness.topPrime 19207 },
  { lower := 19663, upper := 19727, witness := RowWitness.topPrime 19661 },
  { lower := 19728, upper := 19729, witness := RowWitness.topPrime 19727 },
  { lower := 20535, upper := 20546, witness := RowWitness.topPrime 20533 },
  { lower := 20577, upper := 20601, witness := RowWitness.topPrime 20563 },
  { lower := 21870, upper := 21929, witness := RowWitness.topPrime 21863 },
  { lower := 21930, upper := 21941, witness := RowWitness.topPrime 21929 },
  { lower := 21970, upper := 21970, witness := RowWitness.topPrime 21961 },
  { lower := 22528, upper := 22538, witness := RowWitness.topPrime 22511 },
  { lower := 24010, upper := 24024, witness := RowWitness.topPrime 24007 },
  { lower := 24037, upper := 24095, witness := RowWitness.topPrime 24029 },
  { lower := 24096, upper := 24103, witness := RowWitness.topPrime 24091 },
  { lower := 24334, upper := 24365, witness := RowWitness.topPrime 24329 },
  { lower := 24367, upper := 24425, witness := RowWitness.topPrime 24359 },
  { lower := 24426, upper := 24433, witness := RowWitness.topPrime 24421 },
  { lower := 24576, upper := 24631, witness := RowWitness.topPrime 24571 },
  { lower := 24642, upper := 24642, witness := RowWitness.topPrime 24631 },
  { lower := 25281, upper := 25281, witness := RowWitness.topPrime 25261 },
  { lower := 26411, upper := 26430, witness := RowWitness.topPrime 26407 },
  { lower := 28125, upper := 28156, witness := RowWitness.topPrime 28123 },
  { lower := 28577, upper := 28627, witness := RowWitness.topPrime 28573 },
  { lower := 28717, upper := 28738, witness := RowWitness.topPrime 28711 },
  { lower := 29791, upper := 29834, witness := RowWitness.topPrime 29789 },
  { lower := 30758, upper := 30786, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 30965, witness := RowWitness.topPrime 30911 },
  { lower := 31250, upper := 31279, witness := RowWitness.topPrime 31249 },
  { lower := 32805, upper := 32834, witness := RowWitness.topPrime 32803 },
  { lower := 34391, upper := 34441, witness := RowWitness.topPrime 34381 },
  { lower := 34816, upper := 34873, witness := RowWitness.topPrime 34807 },
  { lower := 34874, upper := 34876, witness := RowWitness.topPrime 34871 },
  { lower := 36517, upper := 36563, witness := RowWitness.topPrime 36497 },
  { lower := 36564, upper := 36567, witness := RowWitness.topPrime 36563 },
  { lower := 39326, upper := 39389, witness := RowWitness.topPrime 39323 },
  { lower := 39390, upper := 39392, witness := RowWitness.topPrime 39383 },
  { lower := 40960, upper := 40997, witness := RowWitness.topPrime 40949 },
  { lower := 48734, upper := 48734, witness := RowWitness.topPrime 48733 },
  { lower := 48778, upper := 48800, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49196, witness := RowWitness.topPrime 49139 },
  { lower := 59582, upper := 59602, witness := RowWitness.topPrime 59581 },
  { lower := 73205, upper := 73233, witness := RowWitness.topPrime 73189 },
  { lower := 137842, upper := 137847, witness := RowWitness.topPrime 137831 }
]

def row067_layers : List CoverLayer := [
  { lower := 4422, upper := 8844, M := 25 },
  { lower := 8844, upper := 17688, M := 21 },
  { lower := 17688, upper := 35376, M := 18 },
  { lower := 35376, upper := 70752, M := 16 },
  { lower := 70752, upper := 141504, M := 13 },
  { lower := 141504, upper := 283008, M := 11 },
  { lower := 283008, upper := 566016, M := 10 },
  { lower := 566016, upper := 1132032, M := 8 },
  { lower := 1132032, upper := 2264064, M := 7 },
  { lower := 2264064, upper := 4528128, M := 6 },
  { lower := 4528128, upper := 9056256, M := 5 },
  { lower := 9056256, upper := 18112512, M := 5 },
  { lower := 18112512, upper := 36225024, M := 4 },
  { lower := 36225024, upper := 72450048, M := 3 },
  { lower := 72450048, upper := 144900096, M := 3 },
  { lower := 144900096, upper := 289800192, M := 3 },
  { lower := 289800192, upper := 579600384, M := 2 },
  { lower := 579600384, upper := 1159200768, M := 2 },
  { lower := 1159200768, upper := 2318401536, M := 2 },
  { lower := 2318401536, upper := 4636803072, M := 2 },
  { lower := 4636803072, upper := 9273606144, M := 1 },
  { lower := 9273606144, upper := 10000000000, M := 1 }
]

def row067 : FiniteCoverRow := {
  height := row067_height,
  goods := row067_goods,
  layers := row067_layers
}

theorem row067_registered :
    decide (row067.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row067_goods_checked :
    row067.goods.all (goodSegmentCheck row067.height.i row067.height.r row067.height.s) = true := by
  decide +kernel

theorem row067_small_checked :
    coverCheck (2 * row067.height.i + 2) (row067.height.i * (row067.height.i - 1) - 1)
      (row067.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row067_layerCover_checked :
    coverCheck (row067.height.i * (row067.height.i - 1)) (row067.height.n0 - 1)
      (row067.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row067_layer000_checked :
    coverLayerCheck row067.height row067.goods { lower := 4422, upper := 8844, M := 25 } = true := by
  decide +kernel

theorem row067_layer001_checked :
    coverLayerCheck row067.height row067.goods { lower := 8844, upper := 17688, M := 21 } = true := by
  decide +kernel

theorem row067_layer002_checked :
    coverLayerCheck row067.height row067.goods { lower := 17688, upper := 35376, M := 18 } = true := by
  decide +kernel

theorem row067_layer003_checked :
    coverLayerCheck row067.height row067.goods { lower := 35376, upper := 70752, M := 16 } = true := by
  decide +kernel

theorem row067_layer004_checked :
    coverLayerCheck row067.height row067.goods { lower := 70752, upper := 141504, M := 13 } = true := by
  decide +kernel

theorem row067_layer005_checked :
    coverLayerCheck row067.height row067.goods { lower := 141504, upper := 283008, M := 11 } = true := by
  decide +kernel

theorem row067_layer006_checked :
    coverLayerCheck row067.height row067.goods { lower := 283008, upper := 566016, M := 10 } = true := by
  decide +kernel

theorem row067_layer007_checked :
    coverLayerCheck row067.height row067.goods { lower := 566016, upper := 1132032, M := 8 } = true := by
  decide +kernel

theorem row067_layer008_checked :
    coverLayerCheck row067.height row067.goods { lower := 1132032, upper := 2264064, M := 7 } = true := by
  decide +kernel

theorem row067_layer009_checked :
    coverLayerCheck row067.height row067.goods { lower := 2264064, upper := 4528128, M := 6 } = true := by
  decide +kernel

theorem row067_layer010_checked :
    coverLayerCheck row067.height row067.goods { lower := 4528128, upper := 9056256, M := 5 } = true := by
  decide +kernel

theorem row067_layer011_checked :
    coverLayerCheck row067.height row067.goods { lower := 9056256, upper := 18112512, M := 5 } = true := by
  decide +kernel

theorem row067_layer012_checked :
    coverLayerCheck row067.height row067.goods { lower := 18112512, upper := 36225024, M := 4 } = true := by
  decide +kernel

theorem row067_layer013_checked :
    coverLayerCheck row067.height row067.goods { lower := 36225024, upper := 72450048, M := 3 } = true := by
  decide +kernel

theorem row067_layer014_checked :
    coverLayerCheck row067.height row067.goods { lower := 72450048, upper := 144900096, M := 3 } = true := by
  decide +kernel

theorem row067_layer015_checked :
    coverLayerCheck row067.height row067.goods { lower := 144900096, upper := 289800192, M := 3 } = true := by
  decide +kernel

theorem row067_layer016_checked :
    coverLayerCheck row067.height row067.goods { lower := 289800192, upper := 579600384, M := 2 } = true := by
  decide +kernel

theorem row067_layer017_checked :
    coverLayerCheck row067.height row067.goods { lower := 579600384, upper := 1159200768, M := 2 } = true := by
  decide +kernel

theorem row067_layer018_checked :
    coverLayerCheck row067.height row067.goods { lower := 1159200768, upper := 2318401536, M := 2 } = true := by
  decide +kernel

theorem row067_layer019_checked :
    coverLayerCheck row067.height row067.goods { lower := 2318401536, upper := 4636803072, M := 2 } = true := by
  decide +kernel

theorem row067_layer020_checked :
    coverLayerCheck row067.height row067.goods { lower := 4636803072, upper := 9273606144, M := 1 } = true := by
  decide +kernel

theorem row067_layer021_checked :
    coverLayerCheck row067.height row067.goods { lower := 9273606144, upper := 10000000000, M := 1 } = true := by
  decide +kernel

theorem row067_layers_checked :
    row067.layers.all (coverLayerCheck row067.height row067.goods) = true := by
  change List.all [
    { lower := 4422, upper := 8844, M := 25 },
    { lower := 8844, upper := 17688, M := 21 },
    { lower := 17688, upper := 35376, M := 18 },
    { lower := 35376, upper := 70752, M := 16 },
    { lower := 70752, upper := 141504, M := 13 },
    { lower := 141504, upper := 283008, M := 11 },
    { lower := 283008, upper := 566016, M := 10 },
    { lower := 566016, upper := 1132032, M := 8 },
    { lower := 1132032, upper := 2264064, M := 7 },
    { lower := 2264064, upper := 4528128, M := 6 },
    { lower := 4528128, upper := 9056256, M := 5 },
    { lower := 9056256, upper := 18112512, M := 5 },
    { lower := 18112512, upper := 36225024, M := 4 },
    { lower := 36225024, upper := 72450048, M := 3 },
    { lower := 72450048, upper := 144900096, M := 3 },
    { lower := 144900096, upper := 289800192, M := 3 },
    { lower := 289800192, upper := 579600384, M := 2 },
    { lower := 579600384, upper := 1159200768, M := 2 },
    { lower := 1159200768, upper := 2318401536, M := 2 },
    { lower := 2318401536, upper := 4636803072, M := 2 },
    { lower := 4636803072, upper := 9273606144, M := 1 },
    { lower := 9273606144, upper := 10000000000, M := 1 }
  ] (coverLayerCheck row067.height row067.goods) = true
  simp only [List.all_cons, List.all_nil,
    row067_layer000_checked,
    row067_layer001_checked,
    row067_layer002_checked,
    row067_layer003_checked,
    row067_layer004_checked,
    row067_layer005_checked,
    row067_layer006_checked,
    row067_layer007_checked,
    row067_layer008_checked,
    row067_layer009_checked,
    row067_layer010_checked,
    row067_layer011_checked,
    row067_layer012_checked,
    row067_layer013_checked,
    row067_layer014_checked,
    row067_layer015_checked,
    row067_layer016_checked,
    row067_layer017_checked,
    row067_layer018_checked,
    row067_layer019_checked,
    row067_layer020_checked,
    row067_layer021_checked,
    Bool.true_and]

theorem row067_checked : finiteCoverRowCheck row067 = true := by
  simp only [finiteCoverRowCheck, row067_registered, row067_goods_checked,
    row067_small_checked, row067_layerCover_checked, row067_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row067_checked

end B699LowIndex
