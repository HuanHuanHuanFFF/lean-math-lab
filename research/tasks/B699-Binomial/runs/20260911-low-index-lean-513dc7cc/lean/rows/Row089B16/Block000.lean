import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

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
