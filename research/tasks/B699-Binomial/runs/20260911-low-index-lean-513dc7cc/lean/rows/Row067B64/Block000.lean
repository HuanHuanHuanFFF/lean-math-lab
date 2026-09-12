import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

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


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_good000_checked :
    goodSegmentCheck 67 22 46
      { lower := 136, upper := 197, witness := RowWitness.topPrime 131 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good001_checked :
    goodSegmentCheck 67 22 46
      { lower := 198, upper := 263, witness := RowWitness.topPrime 197 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good002_checked :
    goodSegmentCheck 67 22 46
      { lower := 264, upper := 329, witness := RowWitness.topPrime 263 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good003_checked :
    goodSegmentCheck 67 22 46
      { lower := 330, upper := 383, witness := RowWitness.topPrime 317 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good004_checked :
    goodSegmentCheck 67 22 46
      { lower := 384, upper := 449, witness := RowWitness.topPrime 383 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good005_checked :
    goodSegmentCheck 67 22 46
      { lower := 450, upper := 515, witness := RowWitness.topPrime 449 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good006_checked :
    goodSegmentCheck 67 22 46
      { lower := 516, upper := 575, witness := RowWitness.topPrime 509 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good007_checked :
    goodSegmentCheck 67 22 46
      { lower := 576, upper := 637, witness := RowWitness.topPrime 571 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good008_checked :
    goodSegmentCheck 67 22 46
      { lower := 638, upper := 697, witness := RowWitness.topPrime 631 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good009_checked :
    goodSegmentCheck 67 22 46
      { lower := 698, upper := 757, witness := RowWitness.topPrime 691 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good010_checked :
    goodSegmentCheck 67 22 46
      { lower := 758, upper := 823, witness := RowWitness.topPrime 757 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good011_checked :
    goodSegmentCheck 67 22 46
      { lower := 824, upper := 889, witness := RowWitness.topPrime 823 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good012_checked :
    goodSegmentCheck 67 22 46
      { lower := 890, upper := 953, witness := RowWitness.topPrime 887 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good013_checked :
    goodSegmentCheck 67 22 46
      { lower := 954, upper := 1019, witness := RowWitness.topPrime 953 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good014_checked :
    goodSegmentCheck 67 22 46
      { lower := 1020, upper := 1085, witness := RowWitness.topPrime 1019 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good015_checked :
    goodSegmentCheck 67 22 46
      { lower := 1086, upper := 1135, witness := RowWitness.topPrime 1069 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_good016_checked :
    goodSegmentCheck 67 22 46
      { lower := 1136, upper := 1195, witness := RowWitness.topPrime 1129 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good017_checked :
    goodSegmentCheck 67 22 46
      { lower := 1196, upper := 1259, witness := RowWitness.topPrime 1193 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good018_checked :
    goodSegmentCheck 67 22 46
      { lower := 1260, upper := 1325, witness := RowWitness.topPrime 1259 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good019_checked :
    goodSegmentCheck 67 22 46
      { lower := 1326, upper := 1387, witness := RowWitness.topPrime 1321 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good020_checked :
    goodSegmentCheck 67 22 46
      { lower := 1388, upper := 1447, witness := RowWitness.topPrime 1381 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good021_checked :
    goodSegmentCheck 67 22 46
      { lower := 1448, upper := 1513, witness := RowWitness.topPrime 1447 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good022_checked :
    goodSegmentCheck 67 22 46
      { lower := 1514, upper := 1577, witness := RowWitness.topPrime 1511 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good023_checked :
    goodSegmentCheck 67 22 46
      { lower := 1578, upper := 1637, witness := RowWitness.topPrime 1571 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good024_checked :
    goodSegmentCheck 67 22 46
      { lower := 1638, upper := 1703, witness := RowWitness.topPrime 1637 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good025_checked :
    goodSegmentCheck 67 22 46
      { lower := 1704, upper := 1765, witness := RowWitness.topPrime 1699 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good026_checked :
    goodSegmentCheck 67 22 46
      { lower := 1766, upper := 1825, witness := RowWitness.topPrime 1759 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good027_checked :
    goodSegmentCheck 67 22 46
      { lower := 1826, upper := 1889, witness := RowWitness.topPrime 1823 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good028_checked :
    goodSegmentCheck 67 22 46
      { lower := 1890, upper := 1955, witness := RowWitness.topPrime 1889 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good029_checked :
    goodSegmentCheck 67 22 46
      { lower := 1956, upper := 2017, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good030_checked :
    goodSegmentCheck 67 22 46
      { lower := 2018, upper := 2083, witness := RowWitness.topPrime 2017 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good031_checked :
    goodSegmentCheck 67 22 46
      { lower := 2084, upper := 2149, witness := RowWitness.topPrime 2083 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_good032_checked :
    goodSegmentCheck 67 22 46
      { lower := 2150, upper := 2209, witness := RowWitness.topPrime 2143 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good033_checked :
    goodSegmentCheck 67 22 46
      { lower := 2210, upper := 2273, witness := RowWitness.topPrime 2207 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good034_checked :
    goodSegmentCheck 67 22 46
      { lower := 2274, upper := 2339, witness := RowWitness.topPrime 2273 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good035_checked :
    goodSegmentCheck 67 22 46
      { lower := 2340, upper := 2405, witness := RowWitness.topPrime 2339 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good036_checked :
    goodSegmentCheck 67 22 46
      { lower := 2406, upper := 2465, witness := RowWitness.topPrime 2399 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good037_checked :
    goodSegmentCheck 67 22 46
      { lower := 2466, upper := 2525, witness := RowWitness.topPrime 2459 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good038_checked :
    goodSegmentCheck 67 22 46
      { lower := 2526, upper := 2587, witness := RowWitness.topPrime 2521 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good039_checked :
    goodSegmentCheck 67 22 46
      { lower := 2588, upper := 2645, witness := RowWitness.topPrime 2579 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good040_checked :
    goodSegmentCheck 67 22 46
      { lower := 2646, upper := 2699, witness := RowWitness.topPrime 2633 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good041_checked :
    goodSegmentCheck 67 22 46
      { lower := 2700, upper := 2765, witness := RowWitness.topPrime 2699 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good042_checked :
    goodSegmentCheck 67 22 46
      { lower := 2766, upper := 2819, witness := RowWitness.topPrime 2753 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good043_checked :
    goodSegmentCheck 67 22 46
      { lower := 2820, upper := 2885, witness := RowWitness.topPrime 2819 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good044_checked :
    goodSegmentCheck 67 22 46
      { lower := 2886, upper := 2945, witness := RowWitness.topPrime 2879 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good045_checked :
    goodSegmentCheck 67 22 46
      { lower := 2946, upper := 3005, witness := RowWitness.topPrime 2939 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good046_checked :
    goodSegmentCheck 67 22 46
      { lower := 3006, upper := 3067, witness := RowWitness.topPrime 3001 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good047_checked :
    goodSegmentCheck 67 22 46
      { lower := 3068, upper := 3133, witness := RowWitness.topPrime 3067 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_good048_checked :
    goodSegmentCheck 67 22 46
      { lower := 3134, upper := 3187, witness := RowWitness.topPrime 3121 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good049_checked :
    goodSegmentCheck 67 22 46
      { lower := 3188, upper := 3253, witness := RowWitness.topPrime 3187 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good050_checked :
    goodSegmentCheck 67 22 46
      { lower := 3254, upper := 3319, witness := RowWitness.topPrime 3253 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good051_checked :
    goodSegmentCheck 67 22 46
      { lower := 3320, upper := 3385, witness := RowWitness.topPrime 3319 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good052_checked :
    goodSegmentCheck 67 22 46
      { lower := 3386, upper := 3439, witness := RowWitness.topPrime 3373 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good053_checked :
    goodSegmentCheck 67 22 46
      { lower := 3440, upper := 3499, witness := RowWitness.topPrime 3433 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good054_checked :
    goodSegmentCheck 67 22 46
      { lower := 3500, upper := 3565, witness := RowWitness.topPrime 3499 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good055_checked :
    goodSegmentCheck 67 22 46
      { lower := 3566, upper := 3625, witness := RowWitness.topPrime 3559 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good056_checked :
    goodSegmentCheck 67 22 46
      { lower := 3626, upper := 3689, witness := RowWitness.topPrime 3623 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good057_checked :
    goodSegmentCheck 67 22 46
      { lower := 3690, upper := 3743, witness := RowWitness.topPrime 3677 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good058_checked :
    goodSegmentCheck 67 22 46
      { lower := 3744, upper := 3805, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good059_checked :
    goodSegmentCheck 67 22 46
      { lower := 3806, upper := 3869, witness := RowWitness.topPrime 3803 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good060_checked :
    goodSegmentCheck 67 22 46
      { lower := 3870, upper := 3929, witness := RowWitness.topPrime 3863 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good061_checked :
    goodSegmentCheck 67 22 46
      { lower := 3930, upper := 3995, witness := RowWitness.topPrime 3929 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good062_checked :
    goodSegmentCheck 67 22 46
      { lower := 3996, upper := 4055, witness := RowWitness.topPrime 3989 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good063_checked :
    goodSegmentCheck 67 22 46
      { lower := 4056, upper := 4117, witness := RowWitness.topPrime 4051 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_good064_checked :
    goodSegmentCheck 67 22 46
      { lower := 4118, upper := 4177, witness := RowWitness.topPrime 4111 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good065_checked :
    goodSegmentCheck 67 22 46
      { lower := 4178, upper := 4243, witness := RowWitness.topPrime 4177 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good066_checked :
    goodSegmentCheck 67 22 46
      { lower := 4244, upper := 4309, witness := RowWitness.topPrime 4243 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good067_checked :
    goodSegmentCheck 67 22 46
      { lower := 4310, upper := 4363, witness := RowWitness.topPrime 4297 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good068_checked :
    goodSegmentCheck 67 22 46
      { lower := 4364, upper := 4429, witness := RowWitness.topPrime 4363 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good069_checked :
    goodSegmentCheck 67 22 46
      { lower := 4430, upper := 4484, witness := RowWitness.topPrime 4423 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good070_checked :
    goodSegmentCheck 67 22 46
      { lower := 4617, upper := 4669, witness := RowWitness.topPrime 4603 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good071_checked :
    goodSegmentCheck 67 22 46
      { lower := 4670, upper := 4683, witness := RowWitness.topPrime 4663 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good072_checked :
    goodSegmentCheck 67 22 46
      { lower := 4802, upper := 4867, witness := RowWitness.topPrime 4801 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good073_checked :
    goodSegmentCheck 67 22 46
      { lower := 4868, upper := 4927, witness := RowWitness.topPrime 4861 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good074_checked :
    goodSegmentCheck 67 22 46
      { lower := 4928, upper := 4930, witness := RowWitness.topPrime 4919 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good075_checked :
    goodSegmentCheck 67 22 46
      { lower := 5043, upper := 5105, witness := RowWitness.topPrime 5039 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good076_checked :
    goodSegmentCheck 67 22 46
      { lower := 5106, upper := 5167, witness := RowWitness.topPrime 5101 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good077_checked :
    goodSegmentCheck 67 22 46
      { lower := 5168, upper := 5186, witness := RowWitness.topPrime 5167 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good078_checked :
    goodSegmentCheck 67 22 46
      { lower := 5202, upper := 5211, witness := RowWitness.topPrime 5197 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good079_checked :
    goodSegmentCheck 67 22 46
      { lower := 5324, upper := 5389, witness := RowWitness.topPrime 5323 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_good080_checked :
    goodSegmentCheck 67 22 46
      { lower := 5390, upper := 5412, witness := RowWitness.topPrime 5387 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good081_checked :
    goodSegmentCheck 67 22 46
      { lower := 5415, upper := 5442, witness := RowWitness.topPrime 5413 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good082_checked :
    goodSegmentCheck 67 22 46
      { lower := 5476, upper := 5481, witness := RowWitness.topPrime 5471 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good083_checked :
    goodSegmentCheck 67 22 46
      { lower := 5488, upper := 5549, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good084_checked :
    goodSegmentCheck 67 22 46
      { lower := 5550, upper := 5557, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good085_checked :
    goodSegmentCheck 67 22 46
      { lower := 5589, upper := 5613, witness := RowWitness.topPrime 5581 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good086_checked :
    goodSegmentCheck 67 22 46
      { lower := 5618, upper := 5657, witness := RowWitness.topPrime 5591 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good087_checked :
    goodSegmentCheck 67 22 46
      { lower := 5658, upper := 5691, witness := RowWitness.topPrime 5657 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good088_checked :
    goodSegmentCheck 67 22 46
      { lower := 5776, upper := 5815, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good089_checked :
    goodSegmentCheck 67 22 46
      { lower := 5816, upper := 5879, witness := RowWitness.topPrime 5813 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good090_checked :
    goodSegmentCheck 67 22 46
      { lower := 5880, upper := 5945, witness := RowWitness.topPrime 5879 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good091_checked :
    goodSegmentCheck 67 22 46
      { lower := 5946, upper := 5953, witness := RowWitness.topPrime 5939 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good092_checked :
    goodSegmentCheck 67 22 46
      { lower := 6075, upper := 6135, witness := RowWitness.topPrime 6073 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good093_checked :
    goodSegmentCheck 67 22 46
      { lower := 6137, upper := 6141, witness := RowWitness.topPrime 6133 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good094_checked :
    goodSegmentCheck 67 22 46
      { lower := 6144, upper := 6209, witness := RowWitness.topPrime 6143 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good095_checked :
    goodSegmentCheck 67 22 46
      { lower := 6210, upper := 6210, witness := RowWitness.topPrime 6203 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_good096_checked :
    goodSegmentCheck 67 22 46
      { lower := 6358, upper := 6419, witness := RowWitness.topPrime 6353 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good097_checked :
    goodSegmentCheck 67 22 46
      { lower := 6420, upper := 6424, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good098_checked :
    goodSegmentCheck 67 22 46
      { lower := 6517, upper := 6557, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good099_checked :
    goodSegmentCheck 67 22 46
      { lower := 6558, upper := 6583, witness := RowWitness.topPrime 6553 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good100_checked :
    goodSegmentCheck 67 22 46
      { lower := 6591, upper := 6647, witness := RowWitness.topPrime 6581 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good101_checked :
    goodSegmentCheck 67 22 46
      { lower := 6648, upper := 6703, witness := RowWitness.topPrime 6637 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good102_checked :
    goodSegmentCheck 67 22 46
      { lower := 6704, upper := 6721, witness := RowWitness.topPrime 6703 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good103_checked :
    goodSegmentCheck 67 22 46
      { lower := 6727, upper := 6785, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good104_checked :
    goodSegmentCheck 67 22 46
      { lower := 6786, upper := 6793, witness := RowWitness.topPrime 6781 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good105_checked :
    goodSegmentCheck 67 22 46
      { lower := 6859, upper := 6923, witness := RowWitness.topPrime 6857 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good106_checked :
    goodSegmentCheck 67 22 46
      { lower := 6924, upper := 6943, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good107_checked :
    goodSegmentCheck 67 22 46
      { lower := 6962, upper := 7002, witness := RowWitness.topPrime 6961 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good108_checked :
    goodSegmentCheck 67 22 46
      { lower := 7203, upper := 7259, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good109_checked :
    goodSegmentCheck 67 22 46
      { lower := 7260, upper := 7286, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good110_checked :
    goodSegmentCheck 67 22 46
      { lower := 7290, upper := 7291, witness := RowWitness.topPrime 7283 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good111_checked :
    goodSegmentCheck 67 22 46
      { lower := 7406, upper := 7459, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_good112_checked :
    goodSegmentCheck 67 22 46
      { lower := 7460, upper := 7472, witness := RowWitness.topPrime 7459 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good113_checked :
    goodSegmentCheck 67 22 46
      { lower := 7500, upper := 7508, witness := RowWitness.topPrime 7499 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good114_checked :
    goodSegmentCheck 67 22 46
      { lower := 7546, upper := 7566, witness := RowWitness.topPrime 7541 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good115_checked :
    goodSegmentCheck 67 22 46
      { lower := 7569, upper := 7627, witness := RowWitness.topPrime 7561 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good116_checked :
    goodSegmentCheck 67 22 46
      { lower := 7628, upper := 7635, witness := RowWitness.topPrime 7621 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good117_checked :
    goodSegmentCheck 67 22 46
      { lower := 7688, upper := 7746, witness := RowWitness.topPrime 7687 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good118_checked :
    goodSegmentCheck 67 22 46
      { lower := 7935, upper := 7999, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good119_checked :
    goodSegmentCheck 67 22 46
      { lower := 8000, upper := 8008, witness := RowWitness.topPrime 7993 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good120_checked :
    goodSegmentCheck 67 22 46
      { lower := 8019, upper := 8052, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good121_checked :
    goodSegmentCheck 67 22 46
      { lower := 8214, upper := 8275, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good122_checked :
    goodSegmentCheck 67 22 46
      { lower := 8276, upper := 8280, witness := RowWitness.topPrime 8273 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good123_checked :
    goodSegmentCheck 67 22 46
      { lower := 8410, upper := 8455, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good124_checked :
    goodSegmentCheck 67 22 46
      { lower := 8456, upper := 8493, witness := RowWitness.topPrime 8447 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good125_checked :
    goodSegmentCheck 67 22 46
      { lower := 8664, upper := 8729, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good126_checked :
    goodSegmentCheck 67 22 46
      { lower := 8730, upper := 8730, witness := RowWitness.topPrime 8719 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good127_checked :
    goodSegmentCheck 67 22 46
      { lower := 8748, upper := 8813, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_good128_checked :
    goodSegmentCheck 67 22 46
      { lower := 8814, upper := 8816, witness := RowWitness.topPrime 8807 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good129_checked :
    goodSegmentCheck 67 22 46
      { lower := 8836, upper := 8854, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good130_checked :
    goodSegmentCheck 67 22 46
      { lower := 9245, upper := 9307, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good131_checked :
    goodSegmentCheck 67 22 46
      { lower := 9308, upper := 9311, witness := RowWitness.topPrime 9293 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good132_checked :
    goodSegmentCheck 67 22 46
      { lower := 9317, upper := 9317, witness := RowWitness.topPrime 9311 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good133_checked :
    goodSegmentCheck 67 22 46
      { lower := 9375, upper := 9383, witness := RowWitness.topPrime 9371 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good134_checked :
    goodSegmentCheck 67 22 46
      { lower := 9522, upper := 9543, witness := RowWitness.topPrime 9521 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good135_checked :
    goodSegmentCheck 67 22 46
      { lower := 9583, upper := 9588, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good136_checked :
    goodSegmentCheck 67 22 46
      { lower := 9604, upper := 9667, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good137_checked :
    goodSegmentCheck 67 22 46
      { lower := 9668, upper := 9670, witness := RowWitness.topPrime 9661 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good138_checked :
    goodSegmentCheck 67 22 46
      { lower := 10051, upper := 10066, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good139_checked :
    goodSegmentCheck 67 22 46
      { lower := 10086, upper := 10145, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good140_checked :
    goodSegmentCheck 67 22 46
      { lower := 10146, upper := 10152, witness := RowWitness.topPrime 10141 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good141_checked :
    goodSegmentCheck 67 22 46
      { lower := 10240, upper := 10272, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good142_checked :
    goodSegmentCheck 67 22 46
      { lower := 10580, upper := 10633, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good143_checked :
    goodSegmentCheck 67 22 46
      { lower := 10634, upper := 10646, witness := RowWitness.topPrime 10631 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_good144_checked :
    goodSegmentCheck 67 22 46
      { lower := 10648, upper := 10691, witness := RowWitness.topPrime 10639 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good145_checked :
    goodSegmentCheck 67 22 46
      { lower := 10935, upper := 10975, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good146_checked :
    goodSegmentCheck 67 22 46
      { lower := 10976, upper := 11018, witness := RowWitness.topPrime 10973 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good147_checked :
    goodSegmentCheck 67 22 46
      { lower := 11045, upper := 11051, witness := RowWitness.topPrime 11027 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good148_checked :
    goodSegmentCheck 67 22 46
      { lower := 11094, upper := 11159, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good149_checked :
    goodSegmentCheck 67 22 46
      { lower := 11160, upper := 11160, witness := RowWitness.topPrime 11159 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good150_checked :
    goodSegmentCheck 67 22 46
      { lower := 11163, upper := 11175, witness := RowWitness.topPrime 11161 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good151_checked :
    goodSegmentCheck 67 22 46
      { lower := 11250, upper := 11309, witness := RowWitness.topPrime 11243 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good152_checked :
    goodSegmentCheck 67 22 46
      { lower := 11310, upper := 11316, witness := RowWitness.topPrime 11299 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good153_checked :
    goodSegmentCheck 67 22 46
      { lower := 11774, upper := 11809, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good154_checked :
    goodSegmentCheck 67 22 46
      { lower := 11810, upper := 11833, witness := RowWitness.topPrime 11807 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good155_checked :
    goodSegmentCheck 67 22 46
      { lower := 12005, upper := 12045, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good156_checked :
    goodSegmentCheck 67 22 46
      { lower := 12321, upper := 12354, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good157_checked :
    goodSegmentCheck 67 22 46
      { lower := 12500, upper := 12559, witness := RowWitness.topPrime 12497 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good158_checked :
    goodSegmentCheck 67 22 46
      { lower := 13125, upper := 13187, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good159_checked :
    goodSegmentCheck 67 22 46
      { lower := 13188, upper := 13191, witness := RowWitness.topPrime 13187 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_good160_checked :
    goodSegmentCheck 67 22 46
      { lower := 13310, upper := 13375, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good161_checked :
    goodSegmentCheck 67 22 46
      { lower := 13376, upper := 13376, witness := RowWitness.topPrime 13367 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good162_checked :
    goodSegmentCheck 67 22 46
      { lower := 13454, upper := 13517, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good163_checked :
    goodSegmentCheck 67 22 46
      { lower := 13518, upper := 13520, witness := RowWitness.topPrime 13513 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good164_checked :
    goodSegmentCheck 67 22 46
      { lower := 13718, upper := 13756, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good165_checked :
    goodSegmentCheck 67 22 46
      { lower := 14336, upper := 14363, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good166_checked :
    goodSegmentCheck 67 22 46
      { lower := 14415, upper := 14472, witness := RowWitness.topPrime 14411 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good167_checked :
    goodSegmentCheck 67 22 46
      { lower := 14641, upper := 14646, witness := RowWitness.topPrime 14639 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good168_checked :
    goodSegmentCheck 67 22 46
      { lower := 14792, upper := 14805, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good169_checked :
    goodSegmentCheck 67 22 46
      { lower := 15138, upper := 15195, witness := RowWitness.topPrime 15137 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good170_checked :
    goodSegmentCheck 67 22 46
      { lower := 15360, upper := 15425, witness := RowWitness.topPrime 15359 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good171_checked :
    goodSegmentCheck 67 22 46
      { lower := 15426, upper := 15442, witness := RowWitness.topPrime 15413 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good172_checked :
    goodSegmentCheck 67 22 46
      { lower := 15979, upper := 16038, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good173_checked :
    goodSegmentCheck 67 22 46
      { lower := 16384, upper := 16403, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good174_checked :
    goodSegmentCheck 67 22 46
      { lower := 16428, upper := 16450, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good175_checked :
    goodSegmentCheck 67 22 46
      { lower := 16810, upper := 16853, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_good176_checked :
    goodSegmentCheck 67 22 46
      { lower := 16854, upper := 16886, witness := RowWitness.topPrime 16843 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good177_checked :
    goodSegmentCheck 67 22 46
      { lower := 17303, upper := 17364, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good178_checked :
    goodSegmentCheck 67 22 46
      { lower := 17408, upper := 17467, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good179_checked :
    goodSegmentCheck 67 22 46
      { lower := 17468, upper := 17471, witness := RowWitness.topPrime 17467 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good180_checked :
    goodSegmentCheck 67 22 46
      { lower := 17672, upper := 17687, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good181_checked :
    goodSegmentCheck 67 22 46
      { lower := 18490, upper := 18547, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good182_checked :
    goodSegmentCheck 67 22 46
      { lower := 18548, upper := 18556, witness := RowWitness.topPrime 18541 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good183_checked :
    goodSegmentCheck 67 22 46
      { lower := 18634, upper := 18671, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good184_checked :
    goodSegmentCheck 67 22 46
      { lower := 19208, upper := 19232, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good185_checked :
    goodSegmentCheck 67 22 46
      { lower := 19663, upper := 19727, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good186_checked :
    goodSegmentCheck 67 22 46
      { lower := 19728, upper := 19729, witness := RowWitness.topPrime 19727 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good187_checked :
    goodSegmentCheck 67 22 46
      { lower := 20535, upper := 20546, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good188_checked :
    goodSegmentCheck 67 22 46
      { lower := 20577, upper := 20601, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good189_checked :
    goodSegmentCheck 67 22 46
      { lower := 21870, upper := 21929, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good190_checked :
    goodSegmentCheck 67 22 46
      { lower := 21930, upper := 21941, witness := RowWitness.topPrime 21929 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good191_checked :
    goodSegmentCheck 67 22 46
      { lower := 21970, upper := 21970, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_good192_checked :
    goodSegmentCheck 67 22 46
      { lower := 22528, upper := 22538, witness := RowWitness.topPrime 22511 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good193_checked :
    goodSegmentCheck 67 22 46
      { lower := 24010, upper := 24024, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good194_checked :
    goodSegmentCheck 67 22 46
      { lower := 24037, upper := 24095, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good195_checked :
    goodSegmentCheck 67 22 46
      { lower := 24096, upper := 24103, witness := RowWitness.topPrime 24091 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good196_checked :
    goodSegmentCheck 67 22 46
      { lower := 24334, upper := 24365, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good197_checked :
    goodSegmentCheck 67 22 46
      { lower := 24367, upper := 24425, witness := RowWitness.topPrime 24359 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good198_checked :
    goodSegmentCheck 67 22 46
      { lower := 24426, upper := 24433, witness := RowWitness.topPrime 24421 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good199_checked :
    goodSegmentCheck 67 22 46
      { lower := 24576, upper := 24631, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good200_checked :
    goodSegmentCheck 67 22 46
      { lower := 24642, upper := 24642, witness := RowWitness.topPrime 24631 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good201_checked :
    goodSegmentCheck 67 22 46
      { lower := 25281, upper := 25281, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good202_checked :
    goodSegmentCheck 67 22 46
      { lower := 26411, upper := 26430, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good203_checked :
    goodSegmentCheck 67 22 46
      { lower := 28125, upper := 28156, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good204_checked :
    goodSegmentCheck 67 22 46
      { lower := 28577, upper := 28627, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good205_checked :
    goodSegmentCheck 67 22 46
      { lower := 28717, upper := 28738, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good206_checked :
    goodSegmentCheck 67 22 46
      { lower := 29791, upper := 29834, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good207_checked :
    goodSegmentCheck 67 22 46
      { lower := 30758, upper := 30786, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_good208_checked :
    goodSegmentCheck 67 22 46
      { lower := 30926, upper := 30965, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good209_checked :
    goodSegmentCheck 67 22 46
      { lower := 31250, upper := 31279, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good210_checked :
    goodSegmentCheck 67 22 46
      { lower := 32805, upper := 32834, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good211_checked :
    goodSegmentCheck 67 22 46
      { lower := 34391, upper := 34441, witness := RowWitness.topPrime 34381 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good212_checked :
    goodSegmentCheck 67 22 46
      { lower := 34816, upper := 34873, witness := RowWitness.topPrime 34807 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good213_checked :
    goodSegmentCheck 67 22 46
      { lower := 34874, upper := 34876, witness := RowWitness.topPrime 34871 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good214_checked :
    goodSegmentCheck 67 22 46
      { lower := 36517, upper := 36563, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good215_checked :
    goodSegmentCheck 67 22 46
      { lower := 36564, upper := 36567, witness := RowWitness.topPrime 36563 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good216_checked :
    goodSegmentCheck 67 22 46
      { lower := 39326, upper := 39389, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good217_checked :
    goodSegmentCheck 67 22 46
      { lower := 39390, upper := 39392, witness := RowWitness.topPrime 39383 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good218_checked :
    goodSegmentCheck 67 22 46
      { lower := 40960, upper := 40997, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good219_checked :
    goodSegmentCheck 67 22 46
      { lower := 48734, upper := 48734, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good220_checked :
    goodSegmentCheck 67 22 46
      { lower := 48778, upper := 48800, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good221_checked :
    goodSegmentCheck 67 22 46
      { lower := 49152, upper := 49196, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good222_checked :
    goodSegmentCheck 67 22 46
      { lower := 59582, upper := 59602, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row067_good223_checked :
    goodSegmentCheck 67 22 46
      { lower := 73205, upper := 73233, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_good224_checked :
    goodSegmentCheck 67 22 46
      { lower := 137842, upper := 137847, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 67) (r := 22) (s := 46) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_good224_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_goods_checked :
    row067.goods.all (goodSegmentCheck row067.height.i row067.height.r row067.height.s) = true := by
  change row067_goods.all (goodSegmentCheck 67 22 46) = true
  simp only [row067_goods, List.all_cons, List.all_nil,
    row067_good000_checked,
    row067_good001_checked,
    row067_good002_checked,
    row067_good003_checked,
    row067_good004_checked,
    row067_good005_checked,
    row067_good006_checked,
    row067_good007_checked,
    row067_good008_checked,
    row067_good009_checked,
    row067_good010_checked,
    row067_good011_checked,
    row067_good012_checked,
    row067_good013_checked,
    row067_good014_checked,
    row067_good015_checked,
    row067_good016_checked,
    row067_good017_checked,
    row067_good018_checked,
    row067_good019_checked,
    row067_good020_checked,
    row067_good021_checked,
    row067_good022_checked,
    row067_good023_checked,
    row067_good024_checked,
    row067_good025_checked,
    row067_good026_checked,
    row067_good027_checked,
    row067_good028_checked,
    row067_good029_checked,
    row067_good030_checked,
    row067_good031_checked,
    row067_good032_checked,
    row067_good033_checked,
    row067_good034_checked,
    row067_good035_checked,
    row067_good036_checked,
    row067_good037_checked,
    row067_good038_checked,
    row067_good039_checked,
    row067_good040_checked,
    row067_good041_checked,
    row067_good042_checked,
    row067_good043_checked,
    row067_good044_checked,
    row067_good045_checked,
    row067_good046_checked,
    row067_good047_checked,
    row067_good048_checked,
    row067_good049_checked,
    row067_good050_checked,
    row067_good051_checked,
    row067_good052_checked,
    row067_good053_checked,
    row067_good054_checked,
    row067_good055_checked,
    row067_good056_checked,
    row067_good057_checked,
    row067_good058_checked,
    row067_good059_checked,
    row067_good060_checked,
    row067_good061_checked,
    row067_good062_checked,
    row067_good063_checked,
    row067_good064_checked,
    row067_good065_checked,
    row067_good066_checked,
    row067_good067_checked,
    row067_good068_checked,
    row067_good069_checked,
    row067_good070_checked,
    row067_good071_checked,
    row067_good072_checked,
    row067_good073_checked,
    row067_good074_checked,
    row067_good075_checked,
    row067_good076_checked,
    row067_good077_checked,
    row067_good078_checked,
    row067_good079_checked,
    row067_good080_checked,
    row067_good081_checked,
    row067_good082_checked,
    row067_good083_checked,
    row067_good084_checked,
    row067_good085_checked,
    row067_good086_checked,
    row067_good087_checked,
    row067_good088_checked,
    row067_good089_checked,
    row067_good090_checked,
    row067_good091_checked,
    row067_good092_checked,
    row067_good093_checked,
    row067_good094_checked,
    row067_good095_checked,
    row067_good096_checked,
    row067_good097_checked,
    row067_good098_checked,
    row067_good099_checked,
    row067_good100_checked,
    row067_good101_checked,
    row067_good102_checked,
    row067_good103_checked,
    row067_good104_checked,
    row067_good105_checked,
    row067_good106_checked,
    row067_good107_checked,
    row067_good108_checked,
    row067_good109_checked,
    row067_good110_checked,
    row067_good111_checked,
    row067_good112_checked,
    row067_good113_checked,
    row067_good114_checked,
    row067_good115_checked,
    row067_good116_checked,
    row067_good117_checked,
    row067_good118_checked,
    row067_good119_checked,
    row067_good120_checked,
    row067_good121_checked,
    row067_good122_checked,
    row067_good123_checked,
    row067_good124_checked,
    row067_good125_checked,
    row067_good126_checked,
    row067_good127_checked,
    row067_good128_checked,
    row067_good129_checked,
    row067_good130_checked,
    row067_good131_checked,
    row067_good132_checked,
    row067_good133_checked,
    row067_good134_checked,
    row067_good135_checked,
    row067_good136_checked,
    row067_good137_checked,
    row067_good138_checked,
    row067_good139_checked,
    row067_good140_checked,
    row067_good141_checked,
    row067_good142_checked,
    row067_good143_checked,
    row067_good144_checked,
    row067_good145_checked,
    row067_good146_checked,
    row067_good147_checked,
    row067_good148_checked,
    row067_good149_checked,
    row067_good150_checked,
    row067_good151_checked,
    row067_good152_checked,
    row067_good153_checked,
    row067_good154_checked,
    row067_good155_checked,
    row067_good156_checked,
    row067_good157_checked,
    row067_good158_checked,
    row067_good159_checked,
    row067_good160_checked,
    row067_good161_checked,
    row067_good162_checked,
    row067_good163_checked,
    row067_good164_checked,
    row067_good165_checked,
    row067_good166_checked,
    row067_good167_checked,
    row067_good168_checked,
    row067_good169_checked,
    row067_good170_checked,
    row067_good171_checked,
    row067_good172_checked,
    row067_good173_checked,
    row067_good174_checked,
    row067_good175_checked,
    row067_good176_checked,
    row067_good177_checked,
    row067_good178_checked,
    row067_good179_checked,
    row067_good180_checked,
    row067_good181_checked,
    row067_good182_checked,
    row067_good183_checked,
    row067_good184_checked,
    row067_good185_checked,
    row067_good186_checked,
    row067_good187_checked,
    row067_good188_checked,
    row067_good189_checked,
    row067_good190_checked,
    row067_good191_checked,
    row067_good192_checked,
    row067_good193_checked,
    row067_good194_checked,
    row067_good195_checked,
    row067_good196_checked,
    row067_good197_checked,
    row067_good198_checked,
    row067_good199_checked,
    row067_good200_checked,
    row067_good201_checked,
    row067_good202_checked,
    row067_good203_checked,
    row067_good204_checked,
    row067_good205_checked,
    row067_good206_checked,
    row067_good207_checked,
    row067_good208_checked,
    row067_good209_checked,
    row067_good210_checked,
    row067_good211_checked,
    row067_good212_checked,
    row067_good213_checked,
    row067_good214_checked,
    row067_good215_checked,
    row067_good216_checked,
    row067_good217_checked,
    row067_good218_checked,
    row067_good219_checked,
    row067_good220_checked,
    row067_good221_checked,
    row067_good222_checked,
    row067_good223_checked,
    row067_good224_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_registered :
    decide (row067.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row067_small_checked :
    coverCheck (2 * row067.height.i + 2) (row067.height.i * (row067.height.i - 1) - 1)
      (row067.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row067_layerCover_checked :
    coverCheck (row067.height.i * (row067.height.i - 1)) (row067.height.n0 - 1)
      (row067.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row067_bounds : List NatInterval :=
  [(136, 197), (198, 263), (264, 329), (330, 383), (384, 449), (450, 515), (516, 575), (576, 637), (638, 697), (698, 757), (758, 823), (824, 889), (890, 953), (954, 1019), (1020, 1085), (1086, 1135), (1136, 1195), (1196, 1259), (1260, 1325), (1326, 1387), (1388, 1447), (1448, 1513), (1514, 1577), (1578, 1637), (1638, 1703), (1704, 1765), (1766, 1825), (1826, 1889), (1890, 1955), (1956, 2017), (2018, 2083), (2084, 2149), (2150, 2209), (2210, 2273), (2274, 2339), (2340, 2405), (2406, 2465), (2466, 2525), (2526, 2587), (2588, 2645), (2646, 2699), (2700, 2765), (2766, 2819), (2820, 2885), (2886, 2945), (2946, 3005), (3006, 3067), (3068, 3133), (3134, 3187), (3188, 3253), (3254, 3319), (3320, 3385), (3386, 3439), (3440, 3499), (3500, 3565), (3566, 3625), (3626, 3689), (3690, 3743), (3744, 3805), (3806, 3869), (3870, 3929), (3930, 3995), (3996, 4055), (4056, 4117), (4118, 4177), (4178, 4243), (4244, 4309), (4310, 4363), (4364, 4429), (4430, 4484), (4617, 4669), (4670, 4683), (4802, 4867), (4868, 4927), (4928, 4930), (5043, 5105), (5106, 5167), (5168, 5186), (5202, 5211), (5324, 5389), (5390, 5412), (5415, 5442), (5476, 5481), (5488, 5549), (5550, 5557), (5589, 5613), (5618, 5657), (5658, 5691), (5776, 5815), (5816, 5879), (5880, 5945), (5946, 5953), (6075, 6135), (6137, 6141), (6144, 6209), (6210, 6210), (6358, 6419), (6420, 6424), (6517, 6557), (6558, 6583), (6591, 6647), (6648, 6703), (6704, 6721), (6727, 6785), (6786, 6793), (6859, 6923), (6924, 6943), (6962, 7002), (7203, 7259), (7260, 7286), (7290, 7291), (7406, 7459), (7460, 7472), (7500, 7508), (7546, 7566), (7569, 7627), (7628, 7635), (7688, 7746), (7935, 7999), (8000, 8008), (8019, 8052), (8214, 8275), (8276, 8280), (8410, 8455), (8456, 8493), (8664, 8729), (8730, 8730), (8748, 8813), (8814, 8816), (8836, 8854), (9245, 9307), (9308, 9311), (9317, 9317), (9375, 9383), (9522, 9543), (9583, 9588), (9604, 9667), (9668, 9670), (10051, 10066), (10086, 10145), (10146, 10152), (10240, 10272), (10580, 10633), (10634, 10646), (10648, 10691), (10935, 10975), (10976, 11018), (11045, 11051), (11094, 11159), (11160, 11160), (11163, 11175), (11250, 11309), (11310, 11316), (11774, 11809), (11810, 11833), (12005, 12045), (12321, 12354), (12500, 12559), (13125, 13187), (13188, 13191), (13310, 13375), (13376, 13376), (13454, 13517), (13518, 13520), (13718, 13756), (14336, 14363), (14415, 14472), (14641, 14646), (14792, 14805), (15138, 15195), (15360, 15425), (15426, 15442), (15979, 16038), (16384, 16403), (16428, 16450), (16810, 16853), (16854, 16886), (17303, 17364), (17408, 17467), (17468, 17471), (17672, 17687), (18490, 18547), (18548, 18556), (18634, 18671), (19208, 19232), (19663, 19727), (19728, 19729), (20535, 20546), (20577, 20601), (21870, 21929), (21930, 21941), (21970, 21970), (22528, 22538), (24010, 24024), (24037, 24095), (24096, 24103), (24334, 24365), (24367, 24425), (24426, 24433), (24576, 24631), (24642, 24642), (25281, 25281), (26411, 26430), (28125, 28156), (28577, 28627), (28717, 28738), (29791, 29834), (30758, 30786), (30926, 30965), (31250, 31279), (32805, 32834), (34391, 34441), (34816, 34873), (34874, 34876), (36517, 36563), (36564, 36567), (39326, 39389), (39390, 39392), (40960, 40997), (48734, 48734), (48778, 48800), (49152, 49196), (59582, 59602), (73205, 73233), (137842, 137847)]

theorem row067_bounds_eq : row067.goods.map goodSegmentBounds = row067_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row067_layer000_intervals : List ColouredInterval :=
  [(2, 4608, 4674), (2, 4864, 4930), (2, 5120, 5186), (2, 5376, 5442), (2, 5632, 5698), (2, 5888, 5954), (2, 6144, 6210), (2, 6400, 6466), (2, 4608, 4674), (2, 5120, 5186), (2, 5632, 5698), (2, 6144, 6210), (2, 6656, 6722), (2, 7168, 7234), (2, 7680, 7746), (2, 8192, 8258), (2, 8704, 8770), (2, 5120, 5186), (2, 6144, 6210), (2, 7168, 7234), (2, 8192, 8258), (2, 6144, 6210), (2, 8192, 8258), (2, 8192, 8258), (2, 8192, 8258), (3, 4422, 4440), (3, 4617, 4683), (3, 4860, 4926), (3, 5103, 5169), (3, 5346, 5412), (3, 5589, 5655), (3, 5832, 5898), (3, 6075, 6141), (3, 4422, 4440), (3, 5103, 5169), (3, 5832, 5898), (3, 6561, 6627), (3, 7290, 7356), (3, 8019, 8085), (3, 8748, 8814), (3, 4422, 4440), (3, 6561, 6627), (3, 8748, 8814), (3, 6561, 6627), (5, 4422, 4441), (5, 5000, 5066), (5, 5625, 5691), (5, 6250, 6316), (5, 6875, 6941), (5, 7500, 7566), (5, 8125, 8191), (5, 8750, 8816), (5, 6250, 6316), (7, 4459, 4525), (7, 4802, 4868), (7, 5145, 5211), (7, 5488, 5554), (7, 5831, 5897), (7, 6174, 6240), (7, 6517, 6583), (7, 6860, 6926), (7, 7203, 7269), (7, 7546, 7612), (7, 7889, 7955), (7, 8232, 8298), (7, 8575, 8641), (7, 4802, 4868), (7, 7203, 7269), (11, 5324, 5390), (11, 6655, 6721), (11, 7986, 8052), (13, 4422, 4460), (13, 6591, 6657), (13, 8788, 8843), (17, 4624, 4690), (17, 4913, 4979), (17, 5202, 5268), (17, 5491, 5557), (17, 5780, 5846), (17, 6069, 6135), (17, 6358, 6424), (17, 6647, 6713), (17, 6936, 7002), (17, 7225, 7291), (17, 4913, 4979), (19, 4693, 4759), (19, 5054, 5120), (19, 5415, 5481), (19, 5776, 5842), (19, 6137, 6203), (19, 6498, 6564), (19, 6859, 6925), (19, 7220, 7286), (19, 7581, 7647), (19, 7942, 8008), (19, 8303, 8369), (19, 8664, 8730), (19, 6859, 6925), (23, 4761, 4827), (23, 5290, 5356), (23, 5819, 5885), (23, 6348, 6414), (23, 6877, 6943), (23, 7406, 7472), (23, 7935, 8001), (23, 8464, 8530), (29, 5046, 5112), (29, 5887, 5953), (29, 6728, 6794), (29, 7569, 7635), (29, 8410, 8476), (31, 4805, 4871), (31, 5766, 5832), (31, 6727, 6793), (31, 7688, 7754), (31, 8649, 8715), (37, 5476, 5542), (37, 6845, 6911), (37, 8214, 8280), (41, 5043, 5109), (41, 6724, 6790), (41, 8405, 8471), (43, 5547, 5613), (43, 7396, 7462), (47, 4422, 4484), (47, 6627, 6693), (47, 8836, 8843), (53, 5618, 5684), (53, 8427, 8493), (59, 6962, 7028), (61, 7442, 7508)]

def row067_layer000_block000 : List ColouredInterval :=
  [(2, 4608, 4674), (2, 4864, 4930), (2, 5120, 5186), (2, 5376, 5442), (2, 5632, 5698), (2, 5888, 5954), (2, 6144, 6210), (2, 6400, 6466), (2, 4608, 4674), (2, 5120, 5186), (2, 5632, 5698), (2, 6144, 6210), (2, 6656, 6722), (2, 7168, 7234), (2, 7680, 7746)]

def row067_layer000_block001 : List ColouredInterval :=
  [(2, 8192, 8258), (2, 8704, 8770), (2, 5120, 5186), (2, 6144, 6210), (2, 7168, 7234), (2, 8192, 8258), (2, 6144, 6210), (2, 8192, 8258), (2, 8192, 8258), (2, 8192, 8258), (3, 4422, 4440), (3, 4617, 4683), (3, 4860, 4926), (3, 5103, 5169), (3, 5346, 5412)]

def row067_layer000_block002 : List ColouredInterval :=
  [(3, 5589, 5655), (3, 5832, 5898), (3, 6075, 6141), (3, 4422, 4440), (3, 5103, 5169), (3, 5832, 5898), (3, 6561, 6627), (3, 7290, 7356), (3, 8019, 8085), (3, 8748, 8814), (3, 4422, 4440), (3, 6561, 6627), (3, 8748, 8814), (3, 6561, 6627), (5, 4422, 4441)]

def row067_layer000_block003 : List ColouredInterval :=
  [(5, 5000, 5066), (5, 5625, 5691), (5, 6250, 6316), (5, 6875, 6941), (5, 7500, 7566), (5, 8125, 8191), (5, 8750, 8816), (5, 6250, 6316), (7, 4459, 4525), (7, 4802, 4868), (7, 5145, 5211), (7, 5488, 5554), (7, 5831, 5897), (7, 6174, 6240), (7, 6517, 6583)]

def row067_layer000_block004 : List ColouredInterval :=
  [(7, 6860, 6926), (7, 7203, 7269), (7, 7546, 7612), (7, 7889, 7955), (7, 8232, 8298), (7, 8575, 8641), (7, 4802, 4868), (7, 7203, 7269), (11, 5324, 5390), (11, 6655, 6721), (11, 7986, 8052), (13, 4422, 4460), (13, 6591, 6657), (13, 8788, 8843), (17, 4624, 4690)]

def row067_layer000_block005 : List ColouredInterval :=
  [(17, 4913, 4979), (17, 5202, 5268), (17, 5491, 5557), (17, 5780, 5846), (17, 6069, 6135), (17, 6358, 6424), (17, 6647, 6713), (17, 6936, 7002), (17, 7225, 7291), (17, 4913, 4979), (19, 4693, 4759), (19, 5054, 5120), (19, 5415, 5481), (19, 5776, 5842), (19, 6137, 6203)]

def row067_layer000_block006 : List ColouredInterval :=
  [(19, 6498, 6564), (19, 6859, 6925), (19, 7220, 7286), (19, 7581, 7647), (19, 7942, 8008), (19, 8303, 8369), (19, 8664, 8730), (19, 6859, 6925), (23, 4761, 4827), (23, 5290, 5356), (23, 5819, 5885), (23, 6348, 6414), (23, 6877, 6943), (23, 7406, 7472), (23, 7935, 8001)]

def row067_layer000_block007 : List ColouredInterval :=
  [(23, 8464, 8530), (29, 5046, 5112), (29, 5887, 5953), (29, 6728, 6794), (29, 7569, 7635), (29, 8410, 8476), (31, 4805, 4871), (31, 5766, 5832), (31, 6727, 6793), (31, 7688, 7754), (31, 8649, 8715), (37, 5476, 5542), (37, 6845, 6911), (37, 8214, 8280), (41, 5043, 5109)]

def row067_layer000_block008 : List ColouredInterval :=
  [(41, 6724, 6790), (41, 8405, 8471), (43, 5547, 5613), (43, 7396, 7462), (47, 4422, 4484), (47, 6627, 6693), (47, 8836, 8843), (53, 5618, 5684), (53, 8427, 8493), (59, 6962, 7028), (61, 7442, 7508)]

def row067_layer000_chunks : List (List ColouredInterval) :=
  [row067_layer000_block000, row067_layer000_block001, row067_layer000_block002, row067_layer000_block003, row067_layer000_block004, row067_layer000_block005, row067_layer000_block006, row067_layer000_block007, row067_layer000_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer000_arithmetic : LayerArithmeticValid row067.height { lower := 4422, upper := 8844, M := 25 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer000_enumeration :
    activePowerIntervalList 67 25 4422 8844 = row067_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer000_pairs000 :
    row067_layer000_block000.all (fun I => row067_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row067_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer000_pairs001 :
    row067_layer000_block001.all (fun I => row067_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row067_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer000_pairs002 :
    row067_layer000_block002.all (fun I => row067_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row067_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer000_pairs003 :
    row067_layer000_block003.all (fun I => row067_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row067_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer000_pairs004 :
    row067_layer000_block004.all (fun I => row067_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row067_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer000_pairs005 :
    row067_layer000_block005.all (fun I => row067_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row067_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer000_pairs006 :
    row067_layer000_block006.all (fun I => row067_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row067_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer000_pairs007 :
    row067_layer000_block007.all (fun I => row067_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row067_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer000_pairs008 :
    row067_layer000_block008.all (fun I => row067_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row067_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer000_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer000_chunks_eq : row067_layer000_chunks.flatten = row067_layer000_intervals := by
  rfl

theorem row067_layer000_pairs : pairCoverCheck row067_layer000_intervals row067_bounds = true := by
  apply pairCoverCheck_of_chunks row067_layer000_chunks_eq
  intro block hblock
  simp only [row067_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row067_layer000_pairs000
  · exact row067_layer000_pairs001
  · exact row067_layer000_pairs002
  · exact row067_layer000_pairs003
  · exact row067_layer000_pairs004
  · exact row067_layer000_pairs005
  · exact row067_layer000_pairs006
  · exact row067_layer000_pairs007
  · exact row067_layer000_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer000_checked :
    coverLayerCheck row067.height row067.goods { lower := 4422, upper := 8844, M := 25 } = true := by
  exact coverLayerCheck_of_parts row067_layer000_arithmetic row067_layer000_enumeration row067_bounds_eq row067_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row067_layer001_intervals : List ColouredInterval :=
  [(2, 9216, 9282), (2, 9728, 9794), (2, 10240, 10306), (2, 10752, 10818), (2, 9216, 9282), (2, 10240, 10306), (2, 11264, 11330), (2, 12288, 12354), (2, 13312, 13378), (2, 14336, 14402), (2, 15360, 15426), (2, 16384, 16450), (2, 17408, 17474), (2, 10240, 10306), (2, 12288, 12354), (2, 14336, 14402), (2, 16384, 16450), (2, 12288, 12354), (2, 16384, 16450), (2, 16384, 16450), (2, 16384, 16450), (3, 9477, 9543), (3, 10206, 10272), (3, 10935, 11001), (3, 11664, 11730), (3, 12393, 12459), (3, 13122, 13188), (3, 13851, 13917), (3, 14580, 14646), (3, 15309, 15375), (3, 10935, 11001), (3, 13122, 13188), (3, 15309, 15375), (3, 17496, 17562), (3, 13122, 13188), (5, 9375, 9441), (5, 10000, 10066), (5, 10625, 10691), (5, 11250, 11316), (5, 11875, 11941), (5, 12500, 12566), (5, 13125, 13191), (5, 9375, 9441), (5, 12500, 12566), (5, 15625, 15691), (5, 15625, 15691), (7, 9604, 9670), (7, 12005, 12071), (7, 14406, 14472), (7, 16807, 16873), (7, 16807, 16873), (11, 9317, 9383), (11, 10648, 10714), (11, 11979, 12045), (11, 13310, 13376), (11, 14641, 14707), (11, 15972, 16038), (11, 17303, 17369), (11, 14641, 14707), (13, 8844, 8854), (13, 10985, 11051), (13, 13182, 13248), (13, 15379, 15445), (13, 17576, 17642), (17, 9826, 9892), (17, 14739, 14805), (19, 13718, 13784), (23, 8993, 9059), (23, 9522, 9588), (23, 10051, 10117), (23, 10580, 10646), (23, 11109, 11175), (23, 12167, 12233), (29, 9251, 9317), (29, 10092, 10158), (29, 10933, 10999), (29, 11774, 11840), (29, 12615, 12681), (29, 13456, 13522), (29, 14297, 14363), (29, 15138, 15204), (29, 15979, 16045), (29, 16820, 16886), (29, 17661, 17687), (31, 9610, 9676), (31, 10571, 10637), (31, 11532, 11598), (31, 12493, 12559), (31, 13454, 13520), (31, 14415, 14481), (31, 15376, 15442), (31, 16337, 16403), (31, 17298, 17364), (37, 9583, 9649), (37, 10952, 11018), (37, 12321, 12387), (37, 13690, 13756), (37, 15059, 15125), (37, 16428, 16494), (41, 10086, 10152), (41, 11767, 11833), (41, 13448, 13514), (41, 15129, 15195), (41, 16810, 16876), (43, 9245, 9311), (43, 11094, 11160), (43, 12943, 13009), (43, 14792, 14858), (43, 16641, 16707), (47, 8844, 8902), (47, 11045, 11111), (47, 13254, 13320), (47, 15463, 15529), (47, 17672, 17687), (53, 11236, 11302), (53, 14045, 14111), (53, 16854, 16920), (59, 10443, 10509), (59, 13924, 13990), (59, 17405, 17471), (61, 11163, 11229), (61, 14884, 14950)]

def row067_layer001_block000 : List ColouredInterval :=
  [(2, 9216, 9282), (2, 9728, 9794), (2, 10240, 10306), (2, 10752, 10818), (2, 9216, 9282), (2, 10240, 10306), (2, 11264, 11330), (2, 12288, 12354), (2, 13312, 13378), (2, 14336, 14402), (2, 15360, 15426), (2, 16384, 16450), (2, 17408, 17474), (2, 10240, 10306), (2, 12288, 12354), (2, 14336, 14402)]

def row067_layer001_block001 : List ColouredInterval :=
  [(2, 16384, 16450), (2, 12288, 12354), (2, 16384, 16450), (2, 16384, 16450), (2, 16384, 16450), (3, 9477, 9543), (3, 10206, 10272), (3, 10935, 11001), (3, 11664, 11730), (3, 12393, 12459), (3, 13122, 13188), (3, 13851, 13917), (3, 14580, 14646), (3, 15309, 15375), (3, 10935, 11001), (3, 13122, 13188)]

def row067_layer001_block002 : List ColouredInterval :=
  [(3, 15309, 15375), (3, 17496, 17562), (3, 13122, 13188), (5, 9375, 9441), (5, 10000, 10066), (5, 10625, 10691), (5, 11250, 11316), (5, 11875, 11941), (5, 12500, 12566), (5, 13125, 13191), (5, 9375, 9441), (5, 12500, 12566), (5, 15625, 15691), (5, 15625, 15691), (7, 9604, 9670), (7, 12005, 12071)]

def row067_layer001_block003 : List ColouredInterval :=
  [(7, 14406, 14472), (7, 16807, 16873), (7, 16807, 16873), (11, 9317, 9383), (11, 10648, 10714), (11, 11979, 12045), (11, 13310, 13376), (11, 14641, 14707), (11, 15972, 16038), (11, 17303, 17369), (11, 14641, 14707), (13, 8844, 8854), (13, 10985, 11051), (13, 13182, 13248), (13, 15379, 15445), (13, 17576, 17642)]

def row067_layer001_block004 : List ColouredInterval :=
  [(17, 9826, 9892), (17, 14739, 14805), (19, 13718, 13784), (23, 8993, 9059), (23, 9522, 9588), (23, 10051, 10117), (23, 10580, 10646), (23, 11109, 11175), (23, 12167, 12233), (29, 9251, 9317), (29, 10092, 10158), (29, 10933, 10999), (29, 11774, 11840), (29, 12615, 12681), (29, 13456, 13522), (29, 14297, 14363)]

def row067_layer001_block005 : List ColouredInterval :=
  [(29, 15138, 15204), (29, 15979, 16045), (29, 16820, 16886), (29, 17661, 17687), (31, 9610, 9676), (31, 10571, 10637), (31, 11532, 11598), (31, 12493, 12559), (31, 13454, 13520), (31, 14415, 14481), (31, 15376, 15442), (31, 16337, 16403), (31, 17298, 17364), (37, 9583, 9649), (37, 10952, 11018), (37, 12321, 12387)]

def row067_layer001_block006 : List ColouredInterval :=
  [(37, 13690, 13756), (37, 15059, 15125), (37, 16428, 16494), (41, 10086, 10152), (41, 11767, 11833), (41, 13448, 13514), (41, 15129, 15195), (41, 16810, 16876), (43, 9245, 9311), (43, 11094, 11160), (43, 12943, 13009), (43, 14792, 14858), (43, 16641, 16707), (47, 8844, 8902), (47, 11045, 11111), (47, 13254, 13320)]

def row067_layer001_block007 : List ColouredInterval :=
  [(47, 15463, 15529), (47, 17672, 17687), (53, 11236, 11302), (53, 14045, 14111), (53, 16854, 16920), (59, 10443, 10509), (59, 13924, 13990), (59, 17405, 17471), (61, 11163, 11229), (61, 14884, 14950)]

def row067_layer001_chunks : List (List ColouredInterval) :=
  [row067_layer001_block000, row067_layer001_block001, row067_layer001_block002, row067_layer001_block003, row067_layer001_block004, row067_layer001_block005, row067_layer001_block006, row067_layer001_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer001_arithmetic : LayerArithmeticValid row067.height { lower := 8844, upper := 17688, M := 21 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer001_enumeration :
    activePowerIntervalList 67 21 8844 17688 = row067_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer001_pairs000 :
    row067_layer001_block000.all (fun I => row067_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row067_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer001_pairs001 :
    row067_layer001_block001.all (fun I => row067_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row067_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer001_pairs002 :
    row067_layer001_block002.all (fun I => row067_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row067_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer001_pairs003 :
    row067_layer001_block003.all (fun I => row067_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row067_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer001_pairs004 :
    row067_layer001_block004.all (fun I => row067_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row067_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer001_pairs005 :
    row067_layer001_block005.all (fun I => row067_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row067_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer001_pairs006 :
    row067_layer001_block006.all (fun I => row067_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row067_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer001_pairs007 :
    row067_layer001_block007.all (fun I => row067_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row067_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer001_chunks_eq : row067_layer001_chunks.flatten = row067_layer001_intervals := by
  rfl

theorem row067_layer001_pairs : pairCoverCheck row067_layer001_intervals row067_bounds = true := by
  apply pairCoverCheck_of_chunks row067_layer001_chunks_eq
  intro block hblock
  simp only [row067_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row067_layer001_pairs000
  · exact row067_layer001_pairs001
  · exact row067_layer001_pairs002
  · exact row067_layer001_pairs003
  · exact row067_layer001_pairs004
  · exact row067_layer001_pairs005
  · exact row067_layer001_pairs006
  · exact row067_layer001_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer001_checked :
    coverLayerCheck row067.height row067.goods { lower := 8844, upper := 17688, M := 21 } = true := by
  exact coverLayerCheck_of_parts row067_layer001_arithmetic row067_layer001_enumeration row067_bounds_eq row067_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row067_layer002_intervals : List ColouredInterval :=
  [(2, 18432, 18498), (2, 18432, 18498), (2, 20480, 20546), (2, 22528, 22594), (2, 24576, 24642), (2, 26624, 26690), (2, 28672, 28738), (2, 30720, 30786), (2, 32768, 32834), (2, 34816, 34882), (2, 20480, 20546), (2, 24576, 24642), (2, 28672, 28738), (2, 32768, 32834), (2, 24576, 24642), (2, 32768, 32834), (2, 32768, 32834), (2, 32768, 32834), (3, 19683, 19749), (3, 21870, 21936), (3, 24057, 24123), (3, 26244, 26310), (3, 28431, 28497), (3, 30618, 30684), (3, 32805, 32871), (3, 34992, 35058), (3, 19683, 19749), (3, 26244, 26310), (3, 32805, 32871), (3, 19683, 19749), (5, 18750, 18816), (5, 21875, 21941), (5, 25000, 25066), (5, 28125, 28191), (5, 31250, 31316), (5, 34375, 34441), (5, 31250, 31316), (7, 19208, 19274), (7, 21609, 21675), (7, 24010, 24076), (7, 26411, 26477), (7, 28812, 28878), (7, 31213, 31279), (7, 33614, 33680), (7, 33614, 33680), (11, 18634, 18700), (11, 19965, 20031), (11, 21296, 21362), (11, 22627, 22693), (11, 23958, 24024), (11, 29282, 29348), (13, 19773, 19839), (13, 21970, 22036), (13, 24167, 24233), (13, 26364, 26430), (13, 28561, 28627), (13, 30758, 30824), (13, 32955, 33021), (13, 35152, 35218), (13, 28561, 28627), (17, 19652, 19718), (17, 24565, 24631), (17, 29478, 29544), (17, 34391, 34457), (19, 20577, 20643), (19, 27436, 27502), (19, 34295, 34361), (23, 24334, 24400), (29, 24389, 24455), (31, 29791, 29857), (37, 17797, 17863), (37, 19166, 19232), (37, 20535, 20601), (37, 21904, 21970), (37, 23273, 23339), (37, 24642, 24708), (41, 18491, 18557), (41, 20172, 20238), (41, 21853, 21919), (41, 23534, 23600), (41, 25215, 25281), (41, 26896, 26962), (41, 28577, 28643), (41, 30258, 30324), (43, 18490, 18556), (43, 20339, 20405), (43, 22188, 22254), (43, 24037, 24103), (43, 25886, 25952), (43, 27735, 27801), (43, 29584, 29650), (43, 31433, 31499), (43, 33282, 33348), (47, 17688, 17738), (47, 19881, 19947), (47, 22090, 22156), (47, 24299, 24365), (47, 26508, 26574), (47, 28717, 28783), (47, 30926, 30992), (47, 33135, 33201), (47, 35344, 35375), (53, 19663, 19729), (53, 22472, 22538), (53, 25281, 25347), (53, 28090, 28156), (53, 30899, 30965), (53, 33708, 33774), (59, 20886, 20952), (59, 24367, 24433), (59, 27848, 27914), (59, 31329, 31395), (59, 34810, 34876), (61, 18605, 18671), (61, 22326, 22392), (61, 26047, 26113), (61, 29768, 29834), (61, 33489, 33555)]

def row067_layer002_block000 : List ColouredInterval :=
  [(2, 18432, 18498), (2, 18432, 18498), (2, 20480, 20546), (2, 22528, 22594), (2, 24576, 24642), (2, 26624, 26690), (2, 28672, 28738), (2, 30720, 30786), (2, 32768, 32834), (2, 34816, 34882), (2, 20480, 20546), (2, 24576, 24642), (2, 28672, 28738), (2, 32768, 32834), (2, 24576, 24642), (2, 32768, 32834)]

def row067_layer002_block001 : List ColouredInterval :=
  [(2, 32768, 32834), (2, 32768, 32834), (3, 19683, 19749), (3, 21870, 21936), (3, 24057, 24123), (3, 26244, 26310), (3, 28431, 28497), (3, 30618, 30684), (3, 32805, 32871), (3, 34992, 35058), (3, 19683, 19749), (3, 26244, 26310), (3, 32805, 32871), (3, 19683, 19749), (5, 18750, 18816), (5, 21875, 21941)]

def row067_layer002_block002 : List ColouredInterval :=
  [(5, 25000, 25066), (5, 28125, 28191), (5, 31250, 31316), (5, 34375, 34441), (5, 31250, 31316), (7, 19208, 19274), (7, 21609, 21675), (7, 24010, 24076), (7, 26411, 26477), (7, 28812, 28878), (7, 31213, 31279), (7, 33614, 33680), (7, 33614, 33680), (11, 18634, 18700), (11, 19965, 20031), (11, 21296, 21362)]

def row067_layer002_block003 : List ColouredInterval :=
  [(11, 22627, 22693), (11, 23958, 24024), (11, 29282, 29348), (13, 19773, 19839), (13, 21970, 22036), (13, 24167, 24233), (13, 26364, 26430), (13, 28561, 28627), (13, 30758, 30824), (13, 32955, 33021), (13, 35152, 35218), (13, 28561, 28627), (17, 19652, 19718), (17, 24565, 24631), (17, 29478, 29544), (17, 34391, 34457)]

def row067_layer002_block004 : List ColouredInterval :=
  [(19, 20577, 20643), (19, 27436, 27502), (19, 34295, 34361), (23, 24334, 24400), (29, 24389, 24455), (31, 29791, 29857), (37, 17797, 17863), (37, 19166, 19232), (37, 20535, 20601), (37, 21904, 21970), (37, 23273, 23339), (37, 24642, 24708), (41, 18491, 18557), (41, 20172, 20238), (41, 21853, 21919), (41, 23534, 23600)]

def row067_layer002_block005 : List ColouredInterval :=
  [(41, 25215, 25281), (41, 26896, 26962), (41, 28577, 28643), (41, 30258, 30324), (43, 18490, 18556), (43, 20339, 20405), (43, 22188, 22254), (43, 24037, 24103), (43, 25886, 25952), (43, 27735, 27801), (43, 29584, 29650), (43, 31433, 31499), (43, 33282, 33348), (47, 17688, 17738), (47, 19881, 19947), (47, 22090, 22156)]

def row067_layer002_block006 : List ColouredInterval :=
  [(47, 24299, 24365), (47, 26508, 26574), (47, 28717, 28783), (47, 30926, 30992), (47, 33135, 33201), (47, 35344, 35375), (53, 19663, 19729), (53, 22472, 22538), (53, 25281, 25347), (53, 28090, 28156), (53, 30899, 30965), (53, 33708, 33774), (59, 20886, 20952), (59, 24367, 24433), (59, 27848, 27914), (59, 31329, 31395)]

def row067_layer002_block007 : List ColouredInterval :=
  [(59, 34810, 34876), (61, 18605, 18671), (61, 22326, 22392), (61, 26047, 26113), (61, 29768, 29834), (61, 33489, 33555)]

def row067_layer002_chunks : List (List ColouredInterval) :=
  [row067_layer002_block000, row067_layer002_block001, row067_layer002_block002, row067_layer002_block003, row067_layer002_block004, row067_layer002_block005, row067_layer002_block006, row067_layer002_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer002_arithmetic : LayerArithmeticValid row067.height { lower := 17688, upper := 35376, M := 18 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer002_enumeration :
    activePowerIntervalList 67 18 17688 35376 = row067_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer002_pairs000 :
    row067_layer002_block000.all (fun I => row067_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row067_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer002_pairs001 :
    row067_layer002_block001.all (fun I => row067_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row067_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer002_pairs002 :
    row067_layer002_block002.all (fun I => row067_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row067_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer002_pairs003 :
    row067_layer002_block003.all (fun I => row067_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row067_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer002_pairs004 :
    row067_layer002_block004.all (fun I => row067_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row067_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer002_pairs005 :
    row067_layer002_block005.all (fun I => row067_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row067_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer002_pairs006 :
    row067_layer002_block006.all (fun I => row067_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row067_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer002_pairs007 :
    row067_layer002_block007.all (fun I => row067_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row067_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer002_chunks_eq : row067_layer002_chunks.flatten = row067_layer002_intervals := by
  rfl

theorem row067_layer002_pairs : pairCoverCheck row067_layer002_intervals row067_bounds = true := by
  apply pairCoverCheck_of_chunks row067_layer002_chunks_eq
  intro block hblock
  simp only [row067_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row067_layer002_pairs000
  · exact row067_layer002_pairs001
  · exact row067_layer002_pairs002
  · exact row067_layer002_pairs003
  · exact row067_layer002_pairs004
  · exact row067_layer002_pairs005
  · exact row067_layer002_pairs006
  · exact row067_layer002_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer002_checked :
    coverLayerCheck row067.height row067.goods { lower := 17688, upper := 35376, M := 18 } = true := by
  exact coverLayerCheck_of_parts row067_layer002_arithmetic row067_layer002_enumeration row067_bounds_eq row067_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row067_layer003_intervals : List ColouredInterval :=
  [(2, 36864, 36930), (2, 40960, 41026), (2, 45056, 45122), (2, 49152, 49218), (2, 53248, 53314), (2, 57344, 57410), (2, 61440, 61506), (2, 65536, 65602), (2, 40960, 41026), (2, 49152, 49218), (2, 57344, 57410), (2, 65536, 65602), (2, 49152, 49218), (2, 65536, 65602), (2, 65536, 65602), (2, 65536, 65602), (3, 39366, 39432), (3, 45927, 45993), (3, 52488, 52554), (3, 59049, 59115), (3, 65610, 65676), (3, 39366, 39432), (3, 59049, 59115), (3, 59049, 59115), (5, 37500, 37566), (5, 40625, 40691), (5, 43750, 43816), (5, 46875, 46941), (5, 50000, 50066), (5, 46875, 46941), (5, 62500, 62566), (7, 36015, 36081), (7, 38416, 38482), (7, 50421, 50487), (7, 67228, 67294), (11, 43923, 43989), (11, 58564, 58630), (13, 57122, 57188), (17, 39304, 39370), (17, 44217, 44283), (17, 49130, 49196), (17, 54043, 54109), (17, 58956, 59022), (17, 63869, 63935), (17, 68782, 68848), (19, 41154, 41220), (19, 48013, 48079), (19, 54872, 54938), (19, 61731, 61797), (19, 68590, 68656), (23, 36501, 36567), (23, 48668, 48734), (23, 60835, 60901), (29, 48778, 48844), (31, 59582, 59648), (37, 50653, 50719), (41, 68921, 68987), (47, 35376, 35410), (53, 36517, 36583), (53, 39326, 39392), (53, 42135, 42201), (53, 44944, 45010), (59, 38291, 38357), (59, 41772, 41838), (59, 45253, 45319), (59, 48734, 48800), (59, 52215, 52281), (59, 55696, 55762), (61, 37210, 37276), (61, 40931, 40997), (61, 44652, 44718), (61, 48373, 48439), (61, 52094, 52160), (61, 55815, 55881), (61, 59536, 59602)]

def row067_layer003_block000 : List ColouredInterval :=
  [(2, 36864, 36930), (2, 40960, 41026), (2, 45056, 45122), (2, 49152, 49218), (2, 53248, 53314), (2, 57344, 57410), (2, 61440, 61506), (2, 65536, 65602), (2, 40960, 41026), (2, 49152, 49218), (2, 57344, 57410), (2, 65536, 65602), (2, 49152, 49218), (2, 65536, 65602), (2, 65536, 65602), (2, 65536, 65602)]

def row067_layer003_block001 : List ColouredInterval :=
  [(3, 39366, 39432), (3, 45927, 45993), (3, 52488, 52554), (3, 59049, 59115), (3, 65610, 65676), (3, 39366, 39432), (3, 59049, 59115), (3, 59049, 59115), (5, 37500, 37566), (5, 40625, 40691), (5, 43750, 43816), (5, 46875, 46941), (5, 50000, 50066), (5, 46875, 46941), (5, 62500, 62566), (7, 36015, 36081)]

def row067_layer003_block002 : List ColouredInterval :=
  [(7, 38416, 38482), (7, 50421, 50487), (7, 67228, 67294), (11, 43923, 43989), (11, 58564, 58630), (13, 57122, 57188), (17, 39304, 39370), (17, 44217, 44283), (17, 49130, 49196), (17, 54043, 54109), (17, 58956, 59022), (17, 63869, 63935), (17, 68782, 68848), (19, 41154, 41220), (19, 48013, 48079), (19, 54872, 54938)]

def row067_layer003_block003 : List ColouredInterval :=
  [(19, 61731, 61797), (19, 68590, 68656), (23, 36501, 36567), (23, 48668, 48734), (23, 60835, 60901), (29, 48778, 48844), (31, 59582, 59648), (37, 50653, 50719), (41, 68921, 68987), (47, 35376, 35410), (53, 36517, 36583), (53, 39326, 39392), (53, 42135, 42201), (53, 44944, 45010), (59, 38291, 38357), (59, 41772, 41838)]

def row067_layer003_block004 : List ColouredInterval :=
  [(59, 45253, 45319), (59, 48734, 48800), (59, 52215, 52281), (59, 55696, 55762), (61, 37210, 37276), (61, 40931, 40997), (61, 44652, 44718), (61, 48373, 48439), (61, 52094, 52160), (61, 55815, 55881), (61, 59536, 59602)]

def row067_layer003_chunks : List (List ColouredInterval) :=
  [row067_layer003_block000, row067_layer003_block001, row067_layer003_block002, row067_layer003_block003, row067_layer003_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer003_arithmetic : LayerArithmeticValid row067.height { lower := 35376, upper := 70752, M := 16 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer003_enumeration :
    activePowerIntervalList 67 16 35376 70752 = row067_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer003_pairs000 :
    row067_layer003_block000.all (fun I => row067_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row067_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer003_pairs001 :
    row067_layer003_block001.all (fun I => row067_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row067_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer003_pairs001
