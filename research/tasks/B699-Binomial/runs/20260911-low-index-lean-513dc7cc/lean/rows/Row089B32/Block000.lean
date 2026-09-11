import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row089_height : HeightCertificateDatum := { i := 89, r := 29, s := 62, n0Power10 := 9 }

def row089_goods : List GoodSegment := [
  { lower := 180, upper := 267, witness := RowWitness.topPrime 179 },
  { lower := 268, upper := 351, witness := RowWitness.topPrime 263 },
  { lower := 352, upper := 437, witness := RowWitness.topPrime 349 },
  { lower := 438, upper := 521, witness := RowWitness.topPrime 433 },
  { lower := 522, upper := 609, witness := RowWitness.topPrime 521 },
  { lower := 610, upper := 695, witness := RowWitness.topPrime 607 },
  { lower := 696, upper := 779, witness := RowWitness.topPrime 691 },
  { lower := 780, upper := 861, witness := RowWitness.topPrime 773 },
  { lower := 862, upper := 947, witness := RowWitness.topPrime 859 },
  { lower := 948, upper := 1035, witness := RowWitness.topPrime 947 },
  { lower := 1036, upper := 1121, witness := RowWitness.topPrime 1033 },
  { lower := 1122, upper := 1205, witness := RowWitness.topPrime 1117 },
  { lower := 1206, upper := 1289, witness := RowWitness.topPrime 1201 },
  { lower := 1290, upper := 1377, witness := RowWitness.topPrime 1289 },
  { lower := 1378, upper := 1461, witness := RowWitness.topPrime 1373 },
  { lower := 1462, upper := 1547, witness := RowWitness.topPrime 1459 },
  { lower := 1548, upper := 1631, witness := RowWitness.topPrime 1543 },
  { lower := 1632, upper := 1715, witness := RowWitness.topPrime 1627 },
  { lower := 1716, upper := 1797, witness := RowWitness.topPrime 1709 },
  { lower := 1798, upper := 1877, witness := RowWitness.topPrime 1789 },
  { lower := 1878, upper := 1965, witness := RowWitness.topPrime 1877 },
  { lower := 1966, upper := 2039, witness := RowWitness.topPrime 1951 },
  { lower := 2040, upper := 2127, witness := RowWitness.topPrime 2039 },
  { lower := 2128, upper := 2201, witness := RowWitness.topPrime 2113 },
  { lower := 2202, upper := 2267, witness := RowWitness.topPrime 2179 },
  { lower := 2268, upper := 2355, witness := RowWitness.topPrime 2267 },
  { lower := 2356, upper := 2439, witness := RowWitness.topPrime 2351 },
  { lower := 2440, upper := 2525, witness := RowWitness.topPrime 2437 },
  { lower := 2526, upper := 2609, witness := RowWitness.topPrime 2521 },
  { lower := 2610, upper := 2697, witness := RowWitness.topPrime 2609 },
  { lower := 2698, upper := 2781, witness := RowWitness.topPrime 2693 },
  { lower := 2782, upper := 2865, witness := RowWitness.topPrime 2777 },
  { lower := 2866, upper := 2949, witness := RowWitness.topPrime 2861 },
  { lower := 2950, upper := 3027, witness := RowWitness.topPrime 2939 },
  { lower := 3028, upper := 3111, witness := RowWitness.topPrime 3023 },
  { lower := 3112, upper := 3197, witness := RowWitness.topPrime 3109 },
  { lower := 3198, upper := 3279, witness := RowWitness.topPrime 3191 },
  { lower := 3280, upper := 3359, witness := RowWitness.topPrime 3271 },
  { lower := 3360, upper := 3447, witness := RowWitness.topPrime 3359 },
  { lower := 3448, upper := 3521, witness := RowWitness.topPrime 3433 },
  { lower := 3522, upper := 3605, witness := RowWitness.topPrime 3517 },
  { lower := 3606, upper := 3681, witness := RowWitness.topPrime 3593 },
  { lower := 3682, upper := 3765, witness := RowWitness.topPrime 3677 },
  { lower := 3766, upper := 3849, witness := RowWitness.topPrime 3761 },
  { lower := 3850, upper := 3935, witness := RowWitness.topPrime 3847 },
  { lower := 3936, upper := 4019, witness := RowWitness.topPrime 3931 },
  { lower := 4020, upper := 4107, witness := RowWitness.topPrime 4019 },
  { lower := 4108, upper := 4187, witness := RowWitness.topPrime 4099 },
  { lower := 4188, upper := 4265, witness := RowWitness.topPrime 4177 },
  { lower := 4266, upper := 4349, witness := RowWitness.topPrime 4261 },
  { lower := 4350, upper := 4437, witness := RowWitness.topPrime 4349 },
  { lower := 4438, upper := 4511, witness := RowWitness.topPrime 4423 },
  { lower := 4512, upper := 4595, witness := RowWitness.topPrime 4507 },
  { lower := 4596, upper := 4679, witness := RowWitness.topPrime 4591 },
  { lower := 4680, upper := 4767, witness := RowWitness.topPrime 4679 },
  { lower := 4768, upper := 4847, witness := RowWitness.topPrime 4759 },
  { lower := 4848, upper := 4919, witness := RowWitness.topPrime 4831 },
  { lower := 4920, upper := 5007, witness := RowWitness.topPrime 4919 },
  { lower := 5008, upper := 5091, witness := RowWitness.topPrime 5003 },
  { lower := 5092, upper := 5175, witness := RowWitness.topPrime 5087 },
  { lower := 5176, upper := 5259, witness := RowWitness.topPrime 5171 },
  { lower := 5260, upper := 5325, witness := RowWitness.topPrime 5237 },
  { lower := 5326, upper := 5411, witness := RowWitness.topPrime 5323 },
  { lower := 5412, upper := 5495, witness := RowWitness.topPrime 5407 },
  { lower := 5496, upper := 5571, witness := RowWitness.topPrime 5483 },
  { lower := 5572, upper := 5657, witness := RowWitness.topPrime 5569 },
  { lower := 5658, upper := 5745, witness := RowWitness.topPrime 5657 },
  { lower := 5746, upper := 5831, witness := RowWitness.topPrime 5743 },
  { lower := 5832, upper := 5915, witness := RowWitness.topPrime 5827 },
  { lower := 5916, upper := 5991, witness := RowWitness.topPrime 5903 },
  { lower := 5992, upper := 6075, witness := RowWitness.topPrime 5987 },
  { lower := 6076, upper := 6161, witness := RowWitness.topPrime 6073 },
  { lower := 6162, upper := 6239, witness := RowWitness.topPrime 6151 },
  { lower := 6240, upper := 6317, witness := RowWitness.topPrime 6229 },
  { lower := 6318, upper := 6405, witness := RowWitness.topPrime 6317 },
  { lower := 6406, upper := 6485, witness := RowWitness.topPrime 6397 },
  { lower := 6486, upper := 6569, witness := RowWitness.topPrime 6481 },
  { lower := 6570, upper := 6657, witness := RowWitness.topPrime 6569 },
  { lower := 6658, upper := 6741, witness := RowWitness.topPrime 6653 },
  { lower := 6742, upper := 6825, witness := RowWitness.topPrime 6737 },
  { lower := 6826, upper := 6911, witness := RowWitness.topPrime 6823 },
  { lower := 6912, upper := 6999, witness := RowWitness.topPrime 6911 },
  { lower := 7000, upper := 7085, witness := RowWitness.topPrime 6997 },
  { lower := 7086, upper := 7167, witness := RowWitness.topPrime 7079 },
  { lower := 7168, upper := 7247, witness := RowWitness.topPrime 7159 },
  { lower := 7248, upper := 7335, witness := RowWitness.topPrime 7247 },
  { lower := 7336, upper := 7421, witness := RowWitness.topPrime 7333 },
  { lower := 7422, upper := 7505, witness := RowWitness.topPrime 7417 },
  { lower := 7506, upper := 7587, witness := RowWitness.topPrime 7499 },
  { lower := 7588, upper := 7671, witness := RowWitness.topPrime 7583 },
  { lower := 7672, upper := 7757, witness := RowWitness.topPrime 7669 },
  { lower := 7758, upper := 7831, witness := RowWitness.topPrime 7757 },
  { lower := 7935, upper := 8021, witness := RowWitness.topPrime 7933 },
  { lower := 8022, upper := 8074, witness := RowWitness.topPrime 8017 },
  { lower := 8192, upper := 8279, witness := RowWitness.topPrime 8191 },
  { lower := 8280, upper := 8280, witness := RowWitness.topPrime 8273 },
  { lower := 8410, upper := 8477, witness := RowWitness.topPrime 8389 },
  { lower := 8478, upper := 8515, witness := RowWitness.topPrime 8467 },
  { lower := 8704, upper := 8737, witness := RowWitness.topPrime 8699 },
  { lower := 8748, upper := 8835, witness := RowWitness.topPrime 8747 },
  { lower := 8836, upper := 8876, witness := RowWitness.topPrime 8831 },
  { lower := 8993, upper := 9059, witness := RowWitness.topPrime 8971 },
  { lower := 9060, upper := 9066, witness := RowWitness.topPrime 9059 },
  { lower := 9245, upper := 9329, witness := RowWitness.topPrime 9241 },
  { lower := 9330, upper := 9339, witness := RowWitness.topPrime 9323 },
  { lower := 9375, upper := 9405, witness := RowWitness.topPrime 9371 },
  { lower := 9522, upper := 9565, witness := RowWitness.topPrime 9521 },
  { lower := 9583, upper := 9639, witness := RowWitness.topPrime 9551 },
  { lower := 9640, upper := 9692, witness := RowWitness.topPrime 9631 },
  { lower := 10051, upper := 10127, witness := RowWitness.topPrime 10039 },
  { lower := 10128, upper := 10174, witness := RowWitness.topPrime 10111 },
  { lower := 10240, upper := 10294, witness := RowWitness.topPrime 10223 },
  { lower := 10580, upper := 10655, witness := RowWitness.topPrime 10567 },
  { lower := 10656, upper := 10736, witness := RowWitness.topPrime 10651 },
  { lower := 10935, upper := 10997, witness := RowWitness.topPrime 10909 },
  { lower := 10998, upper := 11040, witness := RowWitness.topPrime 10993 },
  { lower := 11045, upper := 11073, witness := RowWitness.topPrime 11027 },
  { lower := 11094, upper := 11181, witness := RowWitness.topPrime 11093 },
  { lower := 11182, upper := 11197, witness := RowWitness.topPrime 11177 },
  { lower := 11236, upper := 11301, witness := RowWitness.topPrime 11213 },
  { lower := 11302, upper := 11338, witness := RowWitness.topPrime 11299 },
  { lower := 11664, upper := 11726, witness := RowWitness.topPrime 11657 },
  { lower := 11774, upper := 11831, witness := RowWitness.topPrime 11743 },
  { lower := 11832, upper := 11862, witness := RowWitness.topPrime 11831 },
  { lower := 12005, upper := 12067, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12376, witness := RowWitness.topPrime 12301 },
  { lower := 12393, upper := 12409, witness := RowWitness.topPrime 12391 },
  { lower := 12493, upper := 12579, witness := RowWitness.topPrime 12491 },
  { lower := 12580, upper := 12581, witness := RowWitness.topPrime 12577 },
  { lower := 13125, upper := 13209, witness := RowWitness.topPrime 13121 },
  { lower := 13210, upper := 13213, witness := RowWitness.topPrime 13187 },
  { lower := 13254, upper := 13270, witness := RowWitness.topPrime 13249 },
  { lower := 13310, upper := 13397, witness := RowWitness.topPrime 13309 },
  { lower := 13398, upper := 13398, witness := RowWitness.topPrime 13397 },
  { lower := 13454, upper := 13539, witness := RowWitness.topPrime 13451 },
  { lower := 13540, upper := 13544, witness := RowWitness.topPrime 13537 },
  { lower := 13718, upper := 13799, witness := RowWitness.topPrime 13711 },
  { lower := 13800, upper := 13838, witness := RowWitness.topPrime 13799 },
  { lower := 13851, upper := 13866, witness := RowWitness.topPrime 13841 },
  { lower := 13924, upper := 13939, witness := RowWitness.topPrime 13921 },
  { lower := 14336, upper := 14415, witness := RowWitness.topPrime 14327 },
  { lower := 14416, upper := 14494, witness := RowWitness.topPrime 14411 },
  { lower := 14641, upper := 14668, witness := RowWitness.topPrime 14639 },
  { lower := 14792, upper := 14827, witness := RowWitness.topPrime 14783 },
  { lower := 15123, upper := 15209, witness := RowWitness.topPrime 15121 },
  { lower := 15210, upper := 15217, witness := RowWitness.topPrime 15199 },
  { lower := 15360, upper := 15447, witness := RowWitness.topPrime 15359 },
  { lower := 15448, upper := 15467, witness := RowWitness.topPrime 15443 },
  { lower := 15979, upper := 16061, witness := RowWitness.topPrime 15973 },
  { lower := 16062, upper := 16067, witness := RowWitness.topPrime 16061 },
  { lower := 16384, upper := 16425, witness := RowWitness.topPrime 16381 },
  { lower := 16428, upper := 16472, witness := RowWitness.topPrime 16427 },
  { lower := 16810, upper := 16875, witness := RowWitness.topPrime 16787 },
  { lower := 16876, upper := 16898, witness := RowWitness.topPrime 16871 },
  { lower := 17303, upper := 17386, witness := RowWitness.topPrime 17299 },
  { lower := 17408, upper := 17489, witness := RowWitness.topPrime 17401 },
  { lower := 17490, upper := 17493, witness := RowWitness.topPrime 17489 },
  { lower := 17496, upper := 17496, witness := RowWitness.topPrime 17491 },
  { lower := 17576, upper := 17584, witness := RowWitness.topPrime 17573 },
  { lower := 18490, upper := 18569, witness := RowWitness.topPrime 18481 },
  { lower := 18570, upper := 18578, witness := RowWitness.topPrime 18553 },
  { lower := 18634, upper := 18693, witness := RowWitness.topPrime 18617 },
  { lower := 18750, upper := 18811, witness := RowWitness.topPrime 18749 },
  { lower := 19208, upper := 19254, witness := RowWitness.topPrime 19207 },
  { lower := 19663, upper := 19749, witness := RowWitness.topPrime 19661 },
  { lower := 19750, upper := 19751, witness := RowWitness.topPrime 19739 },
  { lower := 19965, upper := 19969, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20249, witness := RowWitness.topPrime 20161 },
  { lower := 20250, upper := 20252, witness := RowWitness.topPrime 20249 },
  { lower := 20535, upper := 20568, witness := RowWitness.topPrime 20533 },
  { lower := 20577, upper := 20623, witness := RowWitness.topPrime 20563 },
  { lower := 21316, upper := 21384, witness := RowWitness.topPrime 21313 },
  { lower := 21870, upper := 21951, witness := RowWitness.topPrime 21863 },
  { lower := 21952, upper := 21963, witness := RowWitness.topPrime 21943 },
  { lower := 21970, upper := 21992, witness := RowWitness.topPrime 21961 },
  { lower := 22472, upper := 22557, witness := RowWitness.topPrime 22469 },
  { lower := 22558, upper := 22560, witness := RowWitness.topPrime 22549 },
  { lower := 24010, upper := 24095, witness := RowWitness.topPrime 24007 },
  { lower := 24096, upper := 24125, witness := RowWitness.topPrime 24091 },
  { lower := 24334, upper := 24417, witness := RowWitness.topPrime 24329 },
  { lower := 24418, upper := 24455, witness := RowWitness.topPrime 24413 },
  { lower := 24576, upper := 24659, witness := RowWitness.topPrime 24571 },
  { lower := 24660, upper := 24664, witness := RowWitness.topPrime 24659 },
  { lower := 25000, upper := 25052, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25277, witness := RowWitness.topPrime 25189 },
  { lower := 25278, upper := 25349, witness := RowWitness.topPrime 25261 },
  { lower := 25350, upper := 25369, witness := RowWitness.topPrime 25349 },
  { lower := 26047, upper := 26099, witness := RowWitness.topPrime 26041 },
  { lower := 26411, upper := 26452, witness := RowWitness.topPrime 26407 },
  { lower := 26645, upper := 26712, witness := RowWitness.topPrime 26641 },
  { lower := 26934, upper := 26984, witness := RowWitness.topPrime 26927 },
  { lower := 28125, upper := 28178, witness := RowWitness.topPrime 28123 },
  { lower := 28577, upper := 28649, witness := RowWitness.topPrime 28573 },
  { lower := 28717, upper := 28760, witness := RowWitness.topPrime 28711 },
  { lower := 29791, upper := 29856, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30334, witness := RowWitness.topPrime 30253 },
  { lower := 30758, upper := 30808, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 30987, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31281, witness := RowWitness.topPrime 31193 },
  { lower := 31282, upper := 31301, witness := RowWitness.topPrime 31277 },
  { lower := 31329, upper := 31338, witness := RowWitness.topPrime 31327 },
  { lower := 32805, upper := 32856, witness := RowWitness.topPrime 32803 },
  { lower := 34375, upper := 34383, witness := RowWitness.topPrime 34369 },
  { lower := 34391, upper := 34469, witness := RowWitness.topPrime 34381 },
  { lower := 34470, upper := 34479, witness := RowWitness.topPrime 34469 },
  { lower := 35344, upper := 35375, witness := RowWitness.topPrime 35339 },
  { lower := 36517, upper := 36585, witness := RowWitness.topPrime 36497 },
  { lower := 36586, upper := 36589, witness := RowWitness.topPrime 36583 },
  { lower := 37500, upper := 37534, witness := RowWitness.topPrime 37493 },
  { lower := 39326, upper := 39411, witness := RowWitness.topPrime 39323 },
  { lower := 39412, upper := 39414, witness := RowWitness.topPrime 39409 },
  { lower := 40401, upper := 40416, witness := RowWitness.topPrime 40387 },
  { lower := 40960, upper := 41019, witness := RowWitness.topPrime 40949 },
  { lower := 43750, upper := 43775, witness := RowWitness.topPrime 43721 },
  { lower := 44944, upper := 44978, witness := RowWitness.topPrime 44939 },
  { lower := 48013, upper := 48049, witness := RowWitness.topPrime 47981 },
  { lower := 48734, upper := 48756, witness := RowWitness.topPrime 48733 },
  { lower := 48778, upper := 48822, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49218, witness := RowWitness.topPrime 49139 },
  { lower := 50000, upper := 50016, witness := RowWitness.topPrime 49999 },
  { lower := 50421, upper := 50498, witness := RowWitness.topPrime 50417 },
  { lower := 53290, upper := 53336, witness := RowWitness.topPrime 53281 },
  { lower := 58619, upper := 58652, witness := RowWitness.topPrime 58613 },
  { lower := 59582, upper := 59624, witness := RowWitness.topPrime 59581 },
  { lower := 63948, upper := 63957, witness := RowWitness.topPrime 63929 },
  { lower := 65536, upper := 65609, witness := RowWitness.topPrime 65521 },
  { lower := 65610, upper := 65624, witness := RowWitness.topPrime 65609 },
  { lower := 68651, upper := 68678, witness := RowWitness.topPrime 68639 },
  { lower := 68921, upper := 68978, witness := RowWitness.topPrime 68917 },
  { lower := 73205, upper := 73255, witness := RowWitness.topPrime 73189 },
  { lower := 137842, upper := 137869, witness := RowWitness.topPrime 137831 },
  { lower := 146410, upper := 146422, witness := RowWitness.topPrime 146407 },
  { lower := 148955, upper := 148965, witness := RowWitness.topPrime 148949 }
]

def row089_layers : List CoverLayer := [
  { lower := 7832, upper := 15664, M := 23 },
  { lower := 15664, upper := 31328, M := 19 },
  { lower := 31328, upper := 62656, M := 16 },
  { lower := 62656, upper := 125312, M := 13 },
  { lower := 125312, upper := 250624, M := 11 },
  { lower := 250624, upper := 501248, M := 9 },
  { lower := 501248, upper := 1002496, M := 7 },
  { lower := 1002496, upper := 2004992, M := 6 },
  { lower := 2004992, upper := 4009984, M := 5 },
  { lower := 4009984, upper := 8019968, M := 4 },
  { lower := 8019968, upper := 16039936, M := 4 },
  { lower := 16039936, upper := 32079872, M := 3 },
  { lower := 32079872, upper := 64159744, M := 3 },
  { lower := 64159744, upper := 128319488, M := 2 },
  { lower := 128319488, upper := 256638976, M := 2 },
  { lower := 256638976, upper := 513277952, M := 2 },
  { lower := 513277952, upper := 1000000000, M := 1 }
]

def row089 : FiniteCoverRow := {
  height := row089_height,
  goods := row089_goods,
  layers := row089_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_good000_checked :
    goodSegmentCheck 89 29 62
      { lower := 180, upper := 267, witness := RowWitness.topPrime 179 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good001_checked :
    goodSegmentCheck 89 29 62
      { lower := 268, upper := 351, witness := RowWitness.topPrime 263 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good002_checked :
    goodSegmentCheck 89 29 62
      { lower := 352, upper := 437, witness := RowWitness.topPrime 349 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good003_checked :
    goodSegmentCheck 89 29 62
      { lower := 438, upper := 521, witness := RowWitness.topPrime 433 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good004_checked :
    goodSegmentCheck 89 29 62
      { lower := 522, upper := 609, witness := RowWitness.topPrime 521 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good005_checked :
    goodSegmentCheck 89 29 62
      { lower := 610, upper := 695, witness := RowWitness.topPrime 607 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good006_checked :
    goodSegmentCheck 89 29 62
      { lower := 696, upper := 779, witness := RowWitness.topPrime 691 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good007_checked :
    goodSegmentCheck 89 29 62
      { lower := 780, upper := 861, witness := RowWitness.topPrime 773 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good008_checked :
    goodSegmentCheck 89 29 62
      { lower := 862, upper := 947, witness := RowWitness.topPrime 859 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good009_checked :
    goodSegmentCheck 89 29 62
      { lower := 948, upper := 1035, witness := RowWitness.topPrime 947 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good010_checked :
    goodSegmentCheck 89 29 62
      { lower := 1036, upper := 1121, witness := RowWitness.topPrime 1033 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good011_checked :
    goodSegmentCheck 89 29 62
      { lower := 1122, upper := 1205, witness := RowWitness.topPrime 1117 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good012_checked :
    goodSegmentCheck 89 29 62
      { lower := 1206, upper := 1289, witness := RowWitness.topPrime 1201 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good013_checked :
    goodSegmentCheck 89 29 62
      { lower := 1290, upper := 1377, witness := RowWitness.topPrime 1289 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good014_checked :
    goodSegmentCheck 89 29 62
      { lower := 1378, upper := 1461, witness := RowWitness.topPrime 1373 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good015_checked :
    goodSegmentCheck 89 29 62
      { lower := 1462, upper := 1547, witness := RowWitness.topPrime 1459 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_good016_checked :
    goodSegmentCheck 89 29 62
      { lower := 1548, upper := 1631, witness := RowWitness.topPrime 1543 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good017_checked :
    goodSegmentCheck 89 29 62
      { lower := 1632, upper := 1715, witness := RowWitness.topPrime 1627 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good018_checked :
    goodSegmentCheck 89 29 62
      { lower := 1716, upper := 1797, witness := RowWitness.topPrime 1709 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good019_checked :
    goodSegmentCheck 89 29 62
      { lower := 1798, upper := 1877, witness := RowWitness.topPrime 1789 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good020_checked :
    goodSegmentCheck 89 29 62
      { lower := 1878, upper := 1965, witness := RowWitness.topPrime 1877 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good021_checked :
    goodSegmentCheck 89 29 62
      { lower := 1966, upper := 2039, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good022_checked :
    goodSegmentCheck 89 29 62
      { lower := 2040, upper := 2127, witness := RowWitness.topPrime 2039 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good023_checked :
    goodSegmentCheck 89 29 62
      { lower := 2128, upper := 2201, witness := RowWitness.topPrime 2113 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good024_checked :
    goodSegmentCheck 89 29 62
      { lower := 2202, upper := 2267, witness := RowWitness.topPrime 2179 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good025_checked :
    goodSegmentCheck 89 29 62
      { lower := 2268, upper := 2355, witness := RowWitness.topPrime 2267 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good026_checked :
    goodSegmentCheck 89 29 62
      { lower := 2356, upper := 2439, witness := RowWitness.topPrime 2351 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good027_checked :
    goodSegmentCheck 89 29 62
      { lower := 2440, upper := 2525, witness := RowWitness.topPrime 2437 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good028_checked :
    goodSegmentCheck 89 29 62
      { lower := 2526, upper := 2609, witness := RowWitness.topPrime 2521 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good029_checked :
    goodSegmentCheck 89 29 62
      { lower := 2610, upper := 2697, witness := RowWitness.topPrime 2609 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good030_checked :
    goodSegmentCheck 89 29 62
      { lower := 2698, upper := 2781, witness := RowWitness.topPrime 2693 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good031_checked :
    goodSegmentCheck 89 29 62
      { lower := 2782, upper := 2865, witness := RowWitness.topPrime 2777 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_good032_checked :
    goodSegmentCheck 89 29 62
      { lower := 2866, upper := 2949, witness := RowWitness.topPrime 2861 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good033_checked :
    goodSegmentCheck 89 29 62
      { lower := 2950, upper := 3027, witness := RowWitness.topPrime 2939 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good034_checked :
    goodSegmentCheck 89 29 62
      { lower := 3028, upper := 3111, witness := RowWitness.topPrime 3023 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good035_checked :
    goodSegmentCheck 89 29 62
      { lower := 3112, upper := 3197, witness := RowWitness.topPrime 3109 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good036_checked :
    goodSegmentCheck 89 29 62
      { lower := 3198, upper := 3279, witness := RowWitness.topPrime 3191 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good037_checked :
    goodSegmentCheck 89 29 62
      { lower := 3280, upper := 3359, witness := RowWitness.topPrime 3271 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good038_checked :
    goodSegmentCheck 89 29 62
      { lower := 3360, upper := 3447, witness := RowWitness.topPrime 3359 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good039_checked :
    goodSegmentCheck 89 29 62
      { lower := 3448, upper := 3521, witness := RowWitness.topPrime 3433 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good040_checked :
    goodSegmentCheck 89 29 62
      { lower := 3522, upper := 3605, witness := RowWitness.topPrime 3517 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good041_checked :
    goodSegmentCheck 89 29 62
      { lower := 3606, upper := 3681, witness := RowWitness.topPrime 3593 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good042_checked :
    goodSegmentCheck 89 29 62
      { lower := 3682, upper := 3765, witness := RowWitness.topPrime 3677 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good043_checked :
    goodSegmentCheck 89 29 62
      { lower := 3766, upper := 3849, witness := RowWitness.topPrime 3761 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good044_checked :
    goodSegmentCheck 89 29 62
      { lower := 3850, upper := 3935, witness := RowWitness.topPrime 3847 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good045_checked :
    goodSegmentCheck 89 29 62
      { lower := 3936, upper := 4019, witness := RowWitness.topPrime 3931 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good046_checked :
    goodSegmentCheck 89 29 62
      { lower := 4020, upper := 4107, witness := RowWitness.topPrime 4019 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good047_checked :
    goodSegmentCheck 89 29 62
      { lower := 4108, upper := 4187, witness := RowWitness.topPrime 4099 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_good048_checked :
    goodSegmentCheck 89 29 62
      { lower := 4188, upper := 4265, witness := RowWitness.topPrime 4177 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good049_checked :
    goodSegmentCheck 89 29 62
      { lower := 4266, upper := 4349, witness := RowWitness.topPrime 4261 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good050_checked :
    goodSegmentCheck 89 29 62
      { lower := 4350, upper := 4437, witness := RowWitness.topPrime 4349 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good051_checked :
    goodSegmentCheck 89 29 62
      { lower := 4438, upper := 4511, witness := RowWitness.topPrime 4423 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good052_checked :
    goodSegmentCheck 89 29 62
      { lower := 4512, upper := 4595, witness := RowWitness.topPrime 4507 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good053_checked :
    goodSegmentCheck 89 29 62
      { lower := 4596, upper := 4679, witness := RowWitness.topPrime 4591 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good054_checked :
    goodSegmentCheck 89 29 62
      { lower := 4680, upper := 4767, witness := RowWitness.topPrime 4679 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good055_checked :
    goodSegmentCheck 89 29 62
      { lower := 4768, upper := 4847, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good056_checked :
    goodSegmentCheck 89 29 62
      { lower := 4848, upper := 4919, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good057_checked :
    goodSegmentCheck 89 29 62
      { lower := 4920, upper := 5007, witness := RowWitness.topPrime 4919 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good058_checked :
    goodSegmentCheck 89 29 62
      { lower := 5008, upper := 5091, witness := RowWitness.topPrime 5003 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good059_checked :
    goodSegmentCheck 89 29 62
      { lower := 5092, upper := 5175, witness := RowWitness.topPrime 5087 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good060_checked :
    goodSegmentCheck 89 29 62
      { lower := 5176, upper := 5259, witness := RowWitness.topPrime 5171 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good061_checked :
    goodSegmentCheck 89 29 62
      { lower := 5260, upper := 5325, witness := RowWitness.topPrime 5237 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good062_checked :
    goodSegmentCheck 89 29 62
      { lower := 5326, upper := 5411, witness := RowWitness.topPrime 5323 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good063_checked :
    goodSegmentCheck 89 29 62
      { lower := 5412, upper := 5495, witness := RowWitness.topPrime 5407 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_good064_checked :
    goodSegmentCheck 89 29 62
      { lower := 5496, upper := 5571, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good065_checked :
    goodSegmentCheck 89 29 62
      { lower := 5572, upper := 5657, witness := RowWitness.topPrime 5569 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good066_checked :
    goodSegmentCheck 89 29 62
      { lower := 5658, upper := 5745, witness := RowWitness.topPrime 5657 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good067_checked :
    goodSegmentCheck 89 29 62
      { lower := 5746, upper := 5831, witness := RowWitness.topPrime 5743 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good068_checked :
    goodSegmentCheck 89 29 62
      { lower := 5832, upper := 5915, witness := RowWitness.topPrime 5827 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good069_checked :
    goodSegmentCheck 89 29 62
      { lower := 5916, upper := 5991, witness := RowWitness.topPrime 5903 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good070_checked :
    goodSegmentCheck 89 29 62
      { lower := 5992, upper := 6075, witness := RowWitness.topPrime 5987 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good071_checked :
    goodSegmentCheck 89 29 62
      { lower := 6076, upper := 6161, witness := RowWitness.topPrime 6073 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good072_checked :
    goodSegmentCheck 89 29 62
      { lower := 6162, upper := 6239, witness := RowWitness.topPrime 6151 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good073_checked :
    goodSegmentCheck 89 29 62
      { lower := 6240, upper := 6317, witness := RowWitness.topPrime 6229 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good074_checked :
    goodSegmentCheck 89 29 62
      { lower := 6318, upper := 6405, witness := RowWitness.topPrime 6317 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good075_checked :
    goodSegmentCheck 89 29 62
      { lower := 6406, upper := 6485, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good076_checked :
    goodSegmentCheck 89 29 62
      { lower := 6486, upper := 6569, witness := RowWitness.topPrime 6481 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good077_checked :
    goodSegmentCheck 89 29 62
      { lower := 6570, upper := 6657, witness := RowWitness.topPrime 6569 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good078_checked :
    goodSegmentCheck 89 29 62
      { lower := 6658, upper := 6741, witness := RowWitness.topPrime 6653 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good079_checked :
    goodSegmentCheck 89 29 62
      { lower := 6742, upper := 6825, witness := RowWitness.topPrime 6737 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_good080_checked :
    goodSegmentCheck 89 29 62
      { lower := 6826, upper := 6911, witness := RowWitness.topPrime 6823 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good081_checked :
    goodSegmentCheck 89 29 62
      { lower := 6912, upper := 6999, witness := RowWitness.topPrime 6911 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good082_checked :
    goodSegmentCheck 89 29 62
      { lower := 7000, upper := 7085, witness := RowWitness.topPrime 6997 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good083_checked :
    goodSegmentCheck 89 29 62
      { lower := 7086, upper := 7167, witness := RowWitness.topPrime 7079 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good084_checked :
    goodSegmentCheck 89 29 62
      { lower := 7168, upper := 7247, witness := RowWitness.topPrime 7159 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good085_checked :
    goodSegmentCheck 89 29 62
      { lower := 7248, upper := 7335, witness := RowWitness.topPrime 7247 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good086_checked :
    goodSegmentCheck 89 29 62
      { lower := 7336, upper := 7421, witness := RowWitness.topPrime 7333 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good087_checked :
    goodSegmentCheck 89 29 62
      { lower := 7422, upper := 7505, witness := RowWitness.topPrime 7417 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good088_checked :
    goodSegmentCheck 89 29 62
      { lower := 7506, upper := 7587, witness := RowWitness.topPrime 7499 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good089_checked :
    goodSegmentCheck 89 29 62
      { lower := 7588, upper := 7671, witness := RowWitness.topPrime 7583 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good090_checked :
    goodSegmentCheck 89 29 62
      { lower := 7672, upper := 7757, witness := RowWitness.topPrime 7669 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good091_checked :
    goodSegmentCheck 89 29 62
      { lower := 7758, upper := 7831, witness := RowWitness.topPrime 7757 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good092_checked :
    goodSegmentCheck 89 29 62
      { lower := 7935, upper := 8021, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good093_checked :
    goodSegmentCheck 89 29 62
      { lower := 8022, upper := 8074, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good094_checked :
    goodSegmentCheck 89 29 62
      { lower := 8192, upper := 8279, witness := RowWitness.topPrime 8191 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good095_checked :
    goodSegmentCheck 89 29 62
      { lower := 8280, upper := 8280, witness := RowWitness.topPrime 8273 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_good096_checked :
    goodSegmentCheck 89 29 62
      { lower := 8410, upper := 8477, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good097_checked :
    goodSegmentCheck 89 29 62
      { lower := 8478, upper := 8515, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good098_checked :
    goodSegmentCheck 89 29 62
      { lower := 8704, upper := 8737, witness := RowWitness.topPrime 8699 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good099_checked :
    goodSegmentCheck 89 29 62
      { lower := 8748, upper := 8835, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good100_checked :
    goodSegmentCheck 89 29 62
      { lower := 8836, upper := 8876, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good101_checked :
    goodSegmentCheck 89 29 62
      { lower := 8993, upper := 9059, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good102_checked :
    goodSegmentCheck 89 29 62
      { lower := 9060, upper := 9066, witness := RowWitness.topPrime 9059 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good103_checked :
    goodSegmentCheck 89 29 62
      { lower := 9245, upper := 9329, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good104_checked :
    goodSegmentCheck 89 29 62
      { lower := 9330, upper := 9339, witness := RowWitness.topPrime 9323 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good105_checked :
    goodSegmentCheck 89 29 62
      { lower := 9375, upper := 9405, witness := RowWitness.topPrime 9371 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good106_checked :
    goodSegmentCheck 89 29 62
      { lower := 9522, upper := 9565, witness := RowWitness.topPrime 9521 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good107_checked :
    goodSegmentCheck 89 29 62
      { lower := 9583, upper := 9639, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good108_checked :
    goodSegmentCheck 89 29 62
      { lower := 9640, upper := 9692, witness := RowWitness.topPrime 9631 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good109_checked :
    goodSegmentCheck 89 29 62
      { lower := 10051, upper := 10127, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good110_checked :
    goodSegmentCheck 89 29 62
      { lower := 10128, upper := 10174, witness := RowWitness.topPrime 10111 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good111_checked :
    goodSegmentCheck 89 29 62
      { lower := 10240, upper := 10294, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_good112_checked :
    goodSegmentCheck 89 29 62
      { lower := 10580, upper := 10655, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good113_checked :
    goodSegmentCheck 89 29 62
      { lower := 10656, upper := 10736, witness := RowWitness.topPrime 10651 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good114_checked :
    goodSegmentCheck 89 29 62
      { lower := 10935, upper := 10997, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good115_checked :
    goodSegmentCheck 89 29 62
      { lower := 10998, upper := 11040, witness := RowWitness.topPrime 10993 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good116_checked :
    goodSegmentCheck 89 29 62
      { lower := 11045, upper := 11073, witness := RowWitness.topPrime 11027 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good117_checked :
    goodSegmentCheck 89 29 62
      { lower := 11094, upper := 11181, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good118_checked :
    goodSegmentCheck 89 29 62
      { lower := 11182, upper := 11197, witness := RowWitness.topPrime 11177 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good119_checked :
    goodSegmentCheck 89 29 62
      { lower := 11236, upper := 11301, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good120_checked :
    goodSegmentCheck 89 29 62
      { lower := 11302, upper := 11338, witness := RowWitness.topPrime 11299 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good121_checked :
    goodSegmentCheck 89 29 62
      { lower := 11664, upper := 11726, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good122_checked :
    goodSegmentCheck 89 29 62
      { lower := 11774, upper := 11831, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good123_checked :
    goodSegmentCheck 89 29 62
      { lower := 11832, upper := 11862, witness := RowWitness.topPrime 11831 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good124_checked :
    goodSegmentCheck 89 29 62
      { lower := 12005, upper := 12067, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good125_checked :
    goodSegmentCheck 89 29 62
      { lower := 12321, upper := 12376, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good126_checked :
    goodSegmentCheck 89 29 62
      { lower := 12393, upper := 12409, witness := RowWitness.topPrime 12391 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good127_checked :
    goodSegmentCheck 89 29 62
      { lower := 12493, upper := 12579, witness := RowWitness.topPrime 12491 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_good128_checked :
    goodSegmentCheck 89 29 62
      { lower := 12580, upper := 12581, witness := RowWitness.topPrime 12577 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good129_checked :
    goodSegmentCheck 89 29 62
      { lower := 13125, upper := 13209, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good130_checked :
    goodSegmentCheck 89 29 62
      { lower := 13210, upper := 13213, witness := RowWitness.topPrime 13187 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good131_checked :
    goodSegmentCheck 89 29 62
      { lower := 13254, upper := 13270, witness := RowWitness.topPrime 13249 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good132_checked :
    goodSegmentCheck 89 29 62
      { lower := 13310, upper := 13397, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good133_checked :
    goodSegmentCheck 89 29 62
      { lower := 13398, upper := 13398, witness := RowWitness.topPrime 13397 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good134_checked :
    goodSegmentCheck 89 29 62
      { lower := 13454, upper := 13539, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good135_checked :
    goodSegmentCheck 89 29 62
      { lower := 13540, upper := 13544, witness := RowWitness.topPrime 13537 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good136_checked :
    goodSegmentCheck 89 29 62
      { lower := 13718, upper := 13799, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good137_checked :
    goodSegmentCheck 89 29 62
      { lower := 13800, upper := 13838, witness := RowWitness.topPrime 13799 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good138_checked :
    goodSegmentCheck 89 29 62
      { lower := 13851, upper := 13866, witness := RowWitness.topPrime 13841 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good139_checked :
    goodSegmentCheck 89 29 62
      { lower := 13924, upper := 13939, witness := RowWitness.topPrime 13921 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good140_checked :
    goodSegmentCheck 89 29 62
      { lower := 14336, upper := 14415, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good141_checked :
    goodSegmentCheck 89 29 62
      { lower := 14416, upper := 14494, witness := RowWitness.topPrime 14411 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good142_checked :
    goodSegmentCheck 89 29 62
      { lower := 14641, upper := 14668, witness := RowWitness.topPrime 14639 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good143_checked :
    goodSegmentCheck 89 29 62
      { lower := 14792, upper := 14827, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_good144_checked :
    goodSegmentCheck 89 29 62
      { lower := 15123, upper := 15209, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good145_checked :
    goodSegmentCheck 89 29 62
      { lower := 15210, upper := 15217, witness := RowWitness.topPrime 15199 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good146_checked :
    goodSegmentCheck 89 29 62
      { lower := 15360, upper := 15447, witness := RowWitness.topPrime 15359 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good147_checked :
    goodSegmentCheck 89 29 62
      { lower := 15448, upper := 15467, witness := RowWitness.topPrime 15443 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good148_checked :
    goodSegmentCheck 89 29 62
      { lower := 15979, upper := 16061, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good149_checked :
    goodSegmentCheck 89 29 62
      { lower := 16062, upper := 16067, witness := RowWitness.topPrime 16061 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good150_checked :
    goodSegmentCheck 89 29 62
      { lower := 16384, upper := 16425, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good151_checked :
    goodSegmentCheck 89 29 62
      { lower := 16428, upper := 16472, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good152_checked :
    goodSegmentCheck 89 29 62
      { lower := 16810, upper := 16875, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good153_checked :
    goodSegmentCheck 89 29 62
      { lower := 16876, upper := 16898, witness := RowWitness.topPrime 16871 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good154_checked :
    goodSegmentCheck 89 29 62
      { lower := 17303, upper := 17386, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good155_checked :
    goodSegmentCheck 89 29 62
      { lower := 17408, upper := 17489, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good156_checked :
    goodSegmentCheck 89 29 62
      { lower := 17490, upper := 17493, witness := RowWitness.topPrime 17489 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good157_checked :
    goodSegmentCheck 89 29 62
      { lower := 17496, upper := 17496, witness := RowWitness.topPrime 17491 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good158_checked :
    goodSegmentCheck 89 29 62
      { lower := 17576, upper := 17584, witness := RowWitness.topPrime 17573 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good159_checked :
    goodSegmentCheck 89 29 62
      { lower := 18490, upper := 18569, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_good160_checked :
    goodSegmentCheck 89 29 62
      { lower := 18570, upper := 18578, witness := RowWitness.topPrime 18553 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good161_checked :
    goodSegmentCheck 89 29 62
      { lower := 18634, upper := 18693, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good162_checked :
    goodSegmentCheck 89 29 62
      { lower := 18750, upper := 18811, witness := RowWitness.topPrime 18749 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good163_checked :
    goodSegmentCheck 89 29 62
      { lower := 19208, upper := 19254, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good164_checked :
    goodSegmentCheck 89 29 62
      { lower := 19663, upper := 19749, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good165_checked :
    goodSegmentCheck 89 29 62
      { lower := 19750, upper := 19751, witness := RowWitness.topPrime 19739 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good166_checked :
    goodSegmentCheck 89 29 62
      { lower := 19965, upper := 19969, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good167_checked :
    goodSegmentCheck 89 29 62
      { lower := 20172, upper := 20249, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good168_checked :
    goodSegmentCheck 89 29 62
      { lower := 20250, upper := 20252, witness := RowWitness.topPrime 20249 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good169_checked :
    goodSegmentCheck 89 29 62
      { lower := 20535, upper := 20568, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good170_checked :
    goodSegmentCheck 89 29 62
      { lower := 20577, upper := 20623, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good171_checked :
    goodSegmentCheck 89 29 62
      { lower := 21316, upper := 21384, witness := RowWitness.topPrime 21313 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good172_checked :
    goodSegmentCheck 89 29 62
      { lower := 21870, upper := 21951, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good173_checked :
    goodSegmentCheck 89 29 62
      { lower := 21952, upper := 21963, witness := RowWitness.topPrime 21943 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good174_checked :
    goodSegmentCheck 89 29 62
      { lower := 21970, upper := 21992, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good175_checked :
    goodSegmentCheck 89 29 62
      { lower := 22472, upper := 22557, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_good176_checked :
    goodSegmentCheck 89 29 62
      { lower := 22558, upper := 22560, witness := RowWitness.topPrime 22549 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good177_checked :
    goodSegmentCheck 89 29 62
      { lower := 24010, upper := 24095, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good178_checked :
    goodSegmentCheck 89 29 62
      { lower := 24096, upper := 24125, witness := RowWitness.topPrime 24091 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good179_checked :
    goodSegmentCheck 89 29 62
      { lower := 24334, upper := 24417, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good180_checked :
    goodSegmentCheck 89 29 62
      { lower := 24418, upper := 24455, witness := RowWitness.topPrime 24413 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good181_checked :
    goodSegmentCheck 89 29 62
      { lower := 24576, upper := 24659, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good182_checked :
    goodSegmentCheck 89 29 62
      { lower := 24660, upper := 24664, witness := RowWitness.topPrime 24659 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good183_checked :
    goodSegmentCheck 89 29 62
      { lower := 25000, upper := 25052, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good184_checked :
    goodSegmentCheck 89 29 62
      { lower := 25215, upper := 25277, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good185_checked :
    goodSegmentCheck 89 29 62
      { lower := 25278, upper := 25349, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good186_checked :
    goodSegmentCheck 89 29 62
      { lower := 25350, upper := 25369, witness := RowWitness.topPrime 25349 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good187_checked :
    goodSegmentCheck 89 29 62
      { lower := 26047, upper := 26099, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good188_checked :
    goodSegmentCheck 89 29 62
      { lower := 26411, upper := 26452, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good189_checked :
    goodSegmentCheck 89 29 62
      { lower := 26645, upper := 26712, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good190_checked :
    goodSegmentCheck 89 29 62
      { lower := 26934, upper := 26984, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good191_checked :
    goodSegmentCheck 89 29 62
      { lower := 28125, upper := 28178, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_good192_checked :
    goodSegmentCheck 89 29 62
      { lower := 28577, upper := 28649, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good193_checked :
    goodSegmentCheck 89 29 62
      { lower := 28717, upper := 28760, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good194_checked :
    goodSegmentCheck 89 29 62
      { lower := 29791, upper := 29856, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good195_checked :
    goodSegmentCheck 89 29 62
      { lower := 30258, upper := 30334, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good196_checked :
    goodSegmentCheck 89 29 62
      { lower := 30758, upper := 30808, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good197_checked :
    goodSegmentCheck 89 29 62
      { lower := 30926, upper := 30987, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good198_checked :
    goodSegmentCheck 89 29 62
      { lower := 31213, upper := 31281, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good199_checked :
    goodSegmentCheck 89 29 62
      { lower := 31282, upper := 31301, witness := RowWitness.topPrime 31277 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good200_checked :
    goodSegmentCheck 89 29 62
      { lower := 31329, upper := 31338, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good201_checked :
    goodSegmentCheck 89 29 62
      { lower := 32805, upper := 32856, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good202_checked :
    goodSegmentCheck 89 29 62
      { lower := 34375, upper := 34383, witness := RowWitness.topPrime 34369 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good203_checked :
    goodSegmentCheck 89 29 62
      { lower := 34391, upper := 34469, witness := RowWitness.topPrime 34381 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good204_checked :
    goodSegmentCheck 89 29 62
      { lower := 34470, upper := 34479, witness := RowWitness.topPrime 34469 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good205_checked :
    goodSegmentCheck 89 29 62
      { lower := 35344, upper := 35375, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good206_checked :
    goodSegmentCheck 89 29 62
      { lower := 36517, upper := 36585, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good207_checked :
    goodSegmentCheck 89 29 62
      { lower := 36586, upper := 36589, witness := RowWitness.topPrime 36583 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_good208_checked :
    goodSegmentCheck 89 29 62
      { lower := 37500, upper := 37534, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good209_checked :
    goodSegmentCheck 89 29 62
      { lower := 39326, upper := 39411, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good210_checked :
    goodSegmentCheck 89 29 62
      { lower := 39412, upper := 39414, witness := RowWitness.topPrime 39409 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good211_checked :
    goodSegmentCheck 89 29 62
      { lower := 40401, upper := 40416, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good212_checked :
    goodSegmentCheck 89 29 62
      { lower := 40960, upper := 41019, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good213_checked :
    goodSegmentCheck 89 29 62
      { lower := 43750, upper := 43775, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good214_checked :
    goodSegmentCheck 89 29 62
      { lower := 44944, upper := 44978, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good215_checked :
    goodSegmentCheck 89 29 62
      { lower := 48013, upper := 48049, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good216_checked :
    goodSegmentCheck 89 29 62
      { lower := 48734, upper := 48756, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good217_checked :
    goodSegmentCheck 89 29 62
      { lower := 48778, upper := 48822, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good218_checked :
    goodSegmentCheck 89 29 62
      { lower := 49152, upper := 49218, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good219_checked :
    goodSegmentCheck 89 29 62
      { lower := 50000, upper := 50016, witness := RowWitness.topPrime 49999 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good220_checked :
    goodSegmentCheck 89 29 62
      { lower := 50421, upper := 50498, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good221_checked :
    goodSegmentCheck 89 29 62
      { lower := 53290, upper := 53336, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good222_checked :
    goodSegmentCheck 89 29 62
      { lower := 58619, upper := 58652, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good223_checked :
    goodSegmentCheck 89 29 62
      { lower := 59582, upper := 59624, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_good224_checked :
    goodSegmentCheck 89 29 62
      { lower := 63948, upper := 63957, witness := RowWitness.topPrime 63929 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good225_checked :
    goodSegmentCheck 89 29 62
      { lower := 65536, upper := 65609, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good226_checked :
    goodSegmentCheck 89 29 62
      { lower := 65610, upper := 65624, witness := RowWitness.topPrime 65609 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good227_checked :
    goodSegmentCheck 89 29 62
      { lower := 68651, upper := 68678, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good228_checked :
    goodSegmentCheck 89 29 62
      { lower := 68921, upper := 68978, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good229_checked :
    goodSegmentCheck 89 29 62
      { lower := 73205, upper := 73255, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good230_checked :
    goodSegmentCheck 89 29 62
      { lower := 137842, upper := 137869, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good231_checked :
    goodSegmentCheck 89 29 62
      { lower := 146410, upper := 146422, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row089_good232_checked :
    goodSegmentCheck 89 29 62
      { lower := 148955, upper := 148965, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 89) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_good232_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_goods_checked :
    row089.goods.all (goodSegmentCheck row089.height.i row089.height.r row089.height.s) = true := by
  change row089_goods.all (goodSegmentCheck 89 29 62) = true
  simp only [row089_goods, List.all_cons, List.all_nil,
    row089_good000_checked,
    row089_good001_checked,
    row089_good002_checked,
    row089_good003_checked,
    row089_good004_checked,
    row089_good005_checked,
    row089_good006_checked,
    row089_good007_checked,
    row089_good008_checked,
    row089_good009_checked,
    row089_good010_checked,
    row089_good011_checked,
    row089_good012_checked,
    row089_good013_checked,
    row089_good014_checked,
    row089_good015_checked,
    row089_good016_checked,
    row089_good017_checked,
    row089_good018_checked,
    row089_good019_checked,
    row089_good020_checked,
    row089_good021_checked,
    row089_good022_checked,
    row089_good023_checked,
    row089_good024_checked,
    row089_good025_checked,
    row089_good026_checked,
    row089_good027_checked,
    row089_good028_checked,
    row089_good029_checked,
    row089_good030_checked,
    row089_good031_checked,
    row089_good032_checked,
    row089_good033_checked,
    row089_good034_checked,
    row089_good035_checked,
    row089_good036_checked,
    row089_good037_checked,
    row089_good038_checked,
    row089_good039_checked,
    row089_good040_checked,
    row089_good041_checked,
    row089_good042_checked,
    row089_good043_checked,
    row089_good044_checked,
    row089_good045_checked,
    row089_good046_checked,
    row089_good047_checked,
    row089_good048_checked,
    row089_good049_checked,
    row089_good050_checked,
    row089_good051_checked,
    row089_good052_checked,
    row089_good053_checked,
    row089_good054_checked,
    row089_good055_checked,
    row089_good056_checked,
    row089_good057_checked,
    row089_good058_checked,
    row089_good059_checked,
    row089_good060_checked,
    row089_good061_checked,
    row089_good062_checked,
    row089_good063_checked,
    row089_good064_checked,
    row089_good065_checked,
    row089_good066_checked,
    row089_good067_checked,
    row089_good068_checked,
    row089_good069_checked,
    row089_good070_checked,
    row089_good071_checked,
    row089_good072_checked,
    row089_good073_checked,
    row089_good074_checked,
    row089_good075_checked,
    row089_good076_checked,
    row089_good077_checked,
    row089_good078_checked,
    row089_good079_checked,
    row089_good080_checked,
    row089_good081_checked,
    row089_good082_checked,
    row089_good083_checked,
    row089_good084_checked,
    row089_good085_checked,
    row089_good086_checked,
    row089_good087_checked,
    row089_good088_checked,
    row089_good089_checked,
    row089_good090_checked,
    row089_good091_checked,
    row089_good092_checked,
    row089_good093_checked,
    row089_good094_checked,
    row089_good095_checked,
    row089_good096_checked,
    row089_good097_checked,
    row089_good098_checked,
    row089_good099_checked,
    row089_good100_checked,
    row089_good101_checked,
    row089_good102_checked,
    row089_good103_checked,
    row089_good104_checked,
    row089_good105_checked,
    row089_good106_checked,
    row089_good107_checked,
    row089_good108_checked,
    row089_good109_checked,
    row089_good110_checked,
    row089_good111_checked,
    row089_good112_checked,
    row089_good113_checked,
    row089_good114_checked,
    row089_good115_checked,
    row089_good116_checked,
    row089_good117_checked,
    row089_good118_checked,
    row089_good119_checked,
    row089_good120_checked,
    row089_good121_checked,
    row089_good122_checked,
    row089_good123_checked,
    row089_good124_checked,
    row089_good125_checked,
    row089_good126_checked,
    row089_good127_checked,
    row089_good128_checked,
    row089_good129_checked,
    row089_good130_checked,
    row089_good131_checked,
    row089_good132_checked,
    row089_good133_checked,
    row089_good134_checked,
    row089_good135_checked,
    row089_good136_checked,
    row089_good137_checked,
    row089_good138_checked,
    row089_good139_checked,
    row089_good140_checked,
    row089_good141_checked,
    row089_good142_checked,
    row089_good143_checked,
    row089_good144_checked,
    row089_good145_checked,
    row089_good146_checked,
    row089_good147_checked,
    row089_good148_checked,
    row089_good149_checked,
    row089_good150_checked,
    row089_good151_checked,
    row089_good152_checked,
    row089_good153_checked,
    row089_good154_checked,
    row089_good155_checked,
    row089_good156_checked,
    row089_good157_checked,
    row089_good158_checked,
    row089_good159_checked,
    row089_good160_checked,
    row089_good161_checked,
    row089_good162_checked,
    row089_good163_checked,
    row089_good164_checked,
    row089_good165_checked,
    row089_good166_checked,
    row089_good167_checked,
    row089_good168_checked,
    row089_good169_checked,
    row089_good170_checked,
    row089_good171_checked,
    row089_good172_checked,
    row089_good173_checked,
    row089_good174_checked,
    row089_good175_checked,
    row089_good176_checked,
    row089_good177_checked,
    row089_good178_checked,
    row089_good179_checked,
    row089_good180_checked,
    row089_good181_checked,
    row089_good182_checked,
    row089_good183_checked,
    row089_good184_checked,
    row089_good185_checked,
    row089_good186_checked,
    row089_good187_checked,
    row089_good188_checked,
    row089_good189_checked,
    row089_good190_checked,
    row089_good191_checked,
    row089_good192_checked,
    row089_good193_checked,
    row089_good194_checked,
    row089_good195_checked,
    row089_good196_checked,
    row089_good197_checked,
    row089_good198_checked,
    row089_good199_checked,
    row089_good200_checked,
    row089_good201_checked,
    row089_good202_checked,
    row089_good203_checked,
    row089_good204_checked,
    row089_good205_checked,
    row089_good206_checked,
    row089_good207_checked,
    row089_good208_checked,
    row089_good209_checked,
    row089_good210_checked,
    row089_good211_checked,
    row089_good212_checked,
    row089_good213_checked,
    row089_good214_checked,
    row089_good215_checked,
    row089_good216_checked,
    row089_good217_checked,
    row089_good218_checked,
    row089_good219_checked,
    row089_good220_checked,
    row089_good221_checked,
    row089_good222_checked,
    row089_good223_checked,
    row089_good224_checked,
    row089_good225_checked,
    row089_good226_checked,
    row089_good227_checked,
    row089_good228_checked,
    row089_good229_checked,
    row089_good230_checked,
    row089_good231_checked,
    row089_good232_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_registered :
    decide (row089.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row089_small_checked :
    coverCheck (2 * row089.height.i + 2) (row089.height.i * (row089.height.i - 1) - 1)
      (row089.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row089_layerCover_checked :
    coverCheck (row089.height.i * (row089.height.i - 1)) (row089.height.n0 - 1)
      (row089.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row089_bounds : List NatInterval :=
  [(180, 267), (268, 351), (352, 437), (438, 521), (522, 609), (610, 695), (696, 779), (780, 861), (862, 947), (948, 1035), (1036, 1121), (1122, 1205), (1206, 1289), (1290, 1377), (1378, 1461), (1462, 1547), (1548, 1631), (1632, 1715), (1716, 1797), (1798, 1877), (1878, 1965), (1966, 2039), (2040, 2127), (2128, 2201), (2202, 2267), (2268, 2355), (2356, 2439), (2440, 2525), (2526, 2609), (2610, 2697), (2698, 2781), (2782, 2865), (2866, 2949), (2950, 3027), (3028, 3111), (3112, 3197), (3198, 3279), (3280, 3359), (3360, 3447), (3448, 3521), (3522, 3605), (3606, 3681), (3682, 3765), (3766, 3849), (3850, 3935), (3936, 4019), (4020, 4107), (4108, 4187), (4188, 4265), (4266, 4349), (4350, 4437), (4438, 4511), (4512, 4595), (4596, 4679), (4680, 4767), (4768, 4847), (4848, 4919), (4920, 5007), (5008, 5091), (5092, 5175), (5176, 5259), (5260, 5325), (5326, 5411), (5412, 5495), (5496, 5571), (5572, 5657), (5658, 5745), (5746, 5831), (5832, 5915), (5916, 5991), (5992, 6075), (6076, 6161), (6162, 6239), (6240, 6317), (6318, 6405), (6406, 6485), (6486, 6569), (6570, 6657), (6658, 6741), (6742, 6825), (6826, 6911), (6912, 6999), (7000, 7085), (7086, 7167), (7168, 7247), (7248, 7335), (7336, 7421), (7422, 7505), (7506, 7587), (7588, 7671), (7672, 7757), (7758, 7831), (7935, 8021), (8022, 8074), (8192, 8279), (8280, 8280), (8410, 8477), (8478, 8515), (8704, 8737), (8748, 8835), (8836, 8876), (8993, 9059), (9060, 9066), (9245, 9329), (9330, 9339), (9375, 9405), (9522, 9565), (9583, 9639), (9640, 9692), (10051, 10127), (10128, 10174), (10240, 10294), (10580, 10655), (10656, 10736), (10935, 10997), (10998, 11040), (11045, 11073), (11094, 11181), (11182, 11197), (11236, 11301), (11302, 11338), (11664, 11726), (11774, 11831), (11832, 11862), (12005, 12067), (12321, 12376), (12393, 12409), (12493, 12579), (12580, 12581), (13125, 13209), (13210, 13213), (13254, 13270), (13310, 13397), (13398, 13398), (13454, 13539), (13540, 13544), (13718, 13799), (13800, 13838), (13851, 13866), (13924, 13939), (14336, 14415), (14416, 14494), (14641, 14668), (14792, 14827), (15123, 15209), (15210, 15217), (15360, 15447), (15448, 15467), (15979, 16061), (16062, 16067), (16384, 16425), (16428, 16472), (16810, 16875), (16876, 16898), (17303, 17386), (17408, 17489), (17490, 17493), (17496, 17496), (17576, 17584), (18490, 18569), (18570, 18578), (18634, 18693), (18750, 18811), (19208, 19254), (19663, 19749), (19750, 19751), (19965, 19969), (20172, 20249), (20250, 20252), (20535, 20568), (20577, 20623), (21316, 21384), (21870, 21951), (21952, 21963), (21970, 21992), (22472, 22557), (22558, 22560), (24010, 24095), (24096, 24125), (24334, 24417), (24418, 24455), (24576, 24659), (24660, 24664), (25000, 25052), (25215, 25277), (25278, 25349), (25350, 25369), (26047, 26099), (26411, 26452), (26645, 26712), (26934, 26984), (28125, 28178), (28577, 28649), (28717, 28760), (29791, 29856), (30258, 30334), (30758, 30808), (30926, 30987), (31213, 31281), (31282, 31301), (31329, 31338), (32805, 32856), (34375, 34383), (34391, 34469), (34470, 34479), (35344, 35375), (36517, 36585), (36586, 36589), (37500, 37534), (39326, 39411), (39412, 39414), (40401, 40416), (40960, 41019), (43750, 43775), (44944, 44978), (48013, 48049), (48734, 48756), (48778, 48822), (49152, 49218), (50000, 50016), (50421, 50498), (53290, 53336), (58619, 58652), (59582, 59624), (63948, 63957), (65536, 65609), (65610, 65624), (68651, 68678), (68921, 68978), (73205, 73255), (137842, 137869), (146410, 146422), (148955, 148965)]

theorem row089_bounds_eq : row089.goods.map goodSegmentBounds = row089_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row089_layer000_intervals : List ColouredInterval :=
  [(2, 8192, 8280), (2, 8704, 8792), (2, 9216, 9304), (2, 9728, 9816), (2, 10240, 10328), (2, 10752, 10840), (2, 11264, 11352), (2, 11776, 11864), (2, 8192, 8280), (2, 9216, 9304), (2, 10240, 10328), (2, 11264, 11352), (2, 12288, 12376), (2, 13312, 13400), (2, 14336, 14424), (2, 15360, 15448), (2, 8192, 8280), (2, 10240, 10328), (2, 12288, 12376), (2, 14336, 14424), (2, 8192, 8280), (2, 12288, 12376), (2, 8192, 8280), (3, 8019, 8107), (3, 8748, 8836), (3, 9477, 9565), (3, 10206, 10294), (3, 10935, 11023), (3, 11664, 11752), (3, 12393, 12481), (3, 13122, 13210), (3, 13851, 13939), (3, 14580, 14668), (3, 15309, 15397), (3, 8748, 8836), (3, 10935, 11023), (3, 13122, 13210), (3, 15309, 15397), (3, 13122, 13210), (5, 8125, 8213), (5, 8750, 8838), (5, 9375, 9463), (5, 10000, 10088), (5, 10625, 10713), (5, 11250, 11338), (5, 11875, 11963), (5, 12500, 12588), (5, 13125, 13213), (5, 13750, 13838), (5, 14375, 14463), (5, 9375, 9463), (5, 12500, 12588), (5, 15625, 15663), (5, 15625, 15663), (7, 7889, 7977), (7, 9604, 9692), (7, 12005, 12093), (7, 14406, 14494), (11, 7986, 8074), (11, 9317, 9405), (11, 10648, 10736), (11, 11979, 12067), (11, 13310, 13398), (11, 14641, 14729), (11, 14641, 14729), (13, 8788, 8876), (13, 10985, 11073), (13, 13182, 13270), (13, 15379, 15467), (17, 9826, 9914), (17, 14739, 14827), (19, 7942, 8030), (19, 8303, 8391), (19, 13718, 13806), (23, 7935, 8023), (23, 8464, 8552), (23, 8993, 9081), (23, 9522, 9610), (23, 10051, 10139), (23, 10580, 10668), (23, 11109, 11197), (23, 11638, 11726), (23, 12167, 12255), (23, 12167, 12255), (29, 8410, 8498), (29, 9251, 9339), (29, 10092, 10180), (29, 10933, 11021), (29, 11774, 11862), (29, 12615, 12703), (29, 13456, 13544), (29, 14297, 14385), (29, 15138, 15226), (31, 8649, 8737), (31, 9610, 9698), (31, 10571, 10659), (31, 11532, 11620), (31, 12493, 12581), (31, 13454, 13542), (31, 14415, 14503), (31, 15376, 15464), (37, 8214, 8302), (37, 9583, 9671), (37, 10952, 11040), (37, 12321, 12409), (37, 13690, 13778), (37, 15059, 15147), (41, 8405, 8493), (41, 10086, 10174), (41, 11767, 11855), (41, 13448, 13536), (41, 15129, 15217), (43, 9245, 9333), (43, 11094, 11182), (43, 12943, 13031), (43, 14792, 14880), (47, 8836, 8924), (47, 11045, 11133), (47, 13254, 13342), (47, 15463, 15551), (53, 8427, 8515), (53, 11236, 11324), (53, 14045, 14133), (59, 10443, 10531), (59, 13924, 14012), (61, 11163, 11251), (61, 14884, 14972), (67, 8978, 9066), (67, 13467, 13555), (71, 10082, 10170), (71, 15123, 15211), (73, 10658, 10746), (79, 12482, 12570), (83, 13778, 13866)]

def row089_layer000_block000 : List ColouredInterval :=
  [(2, 8192, 8280), (2, 8704, 8792), (2, 9216, 9304), (2, 9728, 9816), (2, 10240, 10328), (2, 10752, 10840), (2, 11264, 11352), (2, 11776, 11864), (2, 8192, 8280), (2, 9216, 9304), (2, 10240, 10328), (2, 11264, 11352), (2, 12288, 12376), (2, 13312, 13400), (2, 14336, 14424)]

def row089_layer000_block001 : List ColouredInterval :=
  [(2, 15360, 15448), (2, 8192, 8280), (2, 10240, 10328), (2, 12288, 12376), (2, 14336, 14424), (2, 8192, 8280), (2, 12288, 12376), (2, 8192, 8280), (3, 8019, 8107), (3, 8748, 8836), (3, 9477, 9565), (3, 10206, 10294), (3, 10935, 11023), (3, 11664, 11752), (3, 12393, 12481)]

def row089_layer000_block002 : List ColouredInterval :=
  [(3, 13122, 13210), (3, 13851, 13939), (3, 14580, 14668), (3, 15309, 15397), (3, 8748, 8836), (3, 10935, 11023), (3, 13122, 13210), (3, 15309, 15397), (3, 13122, 13210), (5, 8125, 8213), (5, 8750, 8838), (5, 9375, 9463), (5, 10000, 10088), (5, 10625, 10713), (5, 11250, 11338)]

def row089_layer000_block003 : List ColouredInterval :=
  [(5, 11875, 11963), (5, 12500, 12588), (5, 13125, 13213), (5, 13750, 13838), (5, 14375, 14463), (5, 9375, 9463), (5, 12500, 12588), (5, 15625, 15663), (5, 15625, 15663), (7, 7889, 7977), (7, 9604, 9692), (7, 12005, 12093), (7, 14406, 14494), (11, 7986, 8074), (11, 9317, 9405)]

def row089_layer000_block004 : List ColouredInterval :=
  [(11, 10648, 10736), (11, 11979, 12067), (11, 13310, 13398), (11, 14641, 14729), (11, 14641, 14729), (13, 8788, 8876), (13, 10985, 11073), (13, 13182, 13270), (13, 15379, 15467), (17, 9826, 9914), (17, 14739, 14827), (19, 7942, 8030), (19, 8303, 8391), (19, 13718, 13806), (23, 7935, 8023)]

def row089_layer000_block005 : List ColouredInterval :=
  [(23, 8464, 8552), (23, 8993, 9081), (23, 9522, 9610), (23, 10051, 10139), (23, 10580, 10668), (23, 11109, 11197), (23, 11638, 11726), (23, 12167, 12255), (23, 12167, 12255), (29, 8410, 8498), (29, 9251, 9339), (29, 10092, 10180), (29, 10933, 11021), (29, 11774, 11862), (29, 12615, 12703)]

def row089_layer000_block006 : List ColouredInterval :=
  [(29, 13456, 13544), (29, 14297, 14385), (29, 15138, 15226), (31, 8649, 8737), (31, 9610, 9698), (31, 10571, 10659), (31, 11532, 11620), (31, 12493, 12581), (31, 13454, 13542), (31, 14415, 14503), (31, 15376, 15464), (37, 8214, 8302), (37, 9583, 9671), (37, 10952, 11040), (37, 12321, 12409)]

def row089_layer000_block007 : List ColouredInterval :=
  [(37, 13690, 13778), (37, 15059, 15147), (41, 8405, 8493), (41, 10086, 10174), (41, 11767, 11855), (41, 13448, 13536), (41, 15129, 15217), (43, 9245, 9333), (43, 11094, 11182), (43, 12943, 13031), (43, 14792, 14880), (47, 8836, 8924), (47, 11045, 11133), (47, 13254, 13342), (47, 15463, 15551)]

def row089_layer000_block008 : List ColouredInterval :=
  [(53, 8427, 8515), (53, 11236, 11324), (53, 14045, 14133), (59, 10443, 10531), (59, 13924, 14012), (61, 11163, 11251), (61, 14884, 14972), (67, 8978, 9066), (67, 13467, 13555), (71, 10082, 10170), (71, 15123, 15211), (73, 10658, 10746), (79, 12482, 12570), (83, 13778, 13866)]

def row089_layer000_chunks : List (List ColouredInterval) :=
  [row089_layer000_block000, row089_layer000_block001, row089_layer000_block002, row089_layer000_block003, row089_layer000_block004, row089_layer000_block005, row089_layer000_block006, row089_layer000_block007, row089_layer000_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer000_arithmetic : LayerArithmeticValid row089.height { lower := 7832, upper := 15664, M := 23 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer000_enumeration :
    activePowerIntervalList 89 23 7832 15664 = row089_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer000_pairs000 :
    row089_layer000_block000.all (fun I => row089_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer000_pairs001 :
    row089_layer000_block001.all (fun I => row089_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer000_pairs002 :
    row089_layer000_block002.all (fun I => row089_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer000_pairs003 :
    row089_layer000_block003.all (fun I => row089_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer000_pairs004 :
    row089_layer000_block004.all (fun I => row089_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer000_pairs005 :
    row089_layer000_block005.all (fun I => row089_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer000_pairs006 :
    row089_layer000_block006.all (fun I => row089_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer000_pairs007 :
    row089_layer000_block007.all (fun I => row089_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer000_pairs008 :
    row089_layer000_block008.all (fun I => row089_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer000_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer000_chunks_eq : row089_layer000_chunks.flatten = row089_layer000_intervals := by
  rfl

theorem row089_layer000_pairs : pairCoverCheck row089_layer000_intervals row089_bounds = true := by
  apply pairCoverCheck_of_chunks row089_layer000_chunks_eq
  intro block hblock
  simp only [row089_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row089_layer000_pairs000
  · exact row089_layer000_pairs001
  · exact row089_layer000_pairs002
  · exact row089_layer000_pairs003
  · exact row089_layer000_pairs004
  · exact row089_layer000_pairs005
  · exact row089_layer000_pairs006
  · exact row089_layer000_pairs007
  · exact row089_layer000_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer000_pairs
