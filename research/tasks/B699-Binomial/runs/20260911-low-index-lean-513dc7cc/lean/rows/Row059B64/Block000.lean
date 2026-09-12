import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row059_height : HeightCertificateDatum := { i := 59, r := 19, s := 41, n0Power10 := 10 }

def row059_goods : List GoodSegment := [
  { lower := 120, upper := 171, witness := RowWitness.topPrime 113 },
  { lower := 172, upper := 225, witness := RowWitness.topPrime 167 },
  { lower := 226, upper := 281, witness := RowWitness.topPrime 223 },
  { lower := 282, upper := 339, witness := RowWitness.topPrime 281 },
  { lower := 340, upper := 395, witness := RowWitness.topPrime 337 },
  { lower := 396, upper := 447, witness := RowWitness.topPrime 389 },
  { lower := 448, upper := 501, witness := RowWitness.topPrime 443 },
  { lower := 502, upper := 557, witness := RowWitness.topPrime 499 },
  { lower := 558, upper := 615, witness := RowWitness.topPrime 557 },
  { lower := 616, upper := 671, witness := RowWitness.topPrime 613 },
  { lower := 672, upper := 719, witness := RowWitness.topPrime 661 },
  { lower := 720, upper := 777, witness := RowWitness.topPrime 719 },
  { lower := 778, upper := 831, witness := RowWitness.topPrime 773 },
  { lower := 832, upper := 887, witness := RowWitness.topPrime 829 },
  { lower := 888, upper := 945, witness := RowWitness.topPrime 887 },
  { lower := 946, upper := 999, witness := RowWitness.topPrime 941 },
  { lower := 1000, upper := 1055, witness := RowWitness.topPrime 997 },
  { lower := 1056, upper := 1109, witness := RowWitness.topPrime 1051 },
  { lower := 1110, upper := 1167, witness := RowWitness.topPrime 1109 },
  { lower := 1168, upper := 1221, witness := RowWitness.topPrime 1163 },
  { lower := 1222, upper := 1275, witness := RowWitness.topPrime 1217 },
  { lower := 1276, upper := 1317, witness := RowWitness.topPrime 1259 },
  { lower := 1318, upper := 1365, witness := RowWitness.topPrime 1307 },
  { lower := 1366, upper := 1419, witness := RowWitness.topPrime 1361 },
  { lower := 1420, upper := 1467, witness := RowWitness.topPrime 1409 },
  { lower := 1468, upper := 1517, witness := RowWitness.topPrime 1459 },
  { lower := 1518, upper := 1569, witness := RowWitness.topPrime 1511 },
  { lower := 1570, upper := 1625, witness := RowWitness.topPrime 1567 },
  { lower := 1626, upper := 1679, witness := RowWitness.topPrime 1621 },
  { lower := 1680, upper := 1727, witness := RowWitness.topPrime 1669 },
  { lower := 1728, upper := 1781, witness := RowWitness.topPrime 1723 },
  { lower := 1782, upper := 1835, witness := RowWitness.topPrime 1777 },
  { lower := 1836, upper := 1889, witness := RowWitness.topPrime 1831 },
  { lower := 1890, upper := 1947, witness := RowWitness.topPrime 1889 },
  { lower := 1948, upper := 1991, witness := RowWitness.topPrime 1933 },
  { lower := 1992, upper := 2045, witness := RowWitness.topPrime 1987 },
  { lower := 2046, upper := 2097, witness := RowWitness.topPrime 2039 },
  { lower := 2098, upper := 2147, witness := RowWitness.topPrime 2089 },
  { lower := 2148, upper := 2201, witness := RowWitness.topPrime 2143 },
  { lower := 2202, upper := 2237, witness := RowWitness.topPrime 2179 },
  { lower := 2238, upper := 2295, witness := RowWitness.topPrime 2237 },
  { lower := 2296, upper := 2351, witness := RowWitness.topPrime 2293 },
  { lower := 2352, upper := 2409, witness := RowWitness.topPrime 2351 },
  { lower := 2410, upper := 2457, witness := RowWitness.topPrime 2399 },
  { lower := 2458, upper := 2505, witness := RowWitness.topPrime 2447 },
  { lower := 2506, upper := 2561, witness := RowWitness.topPrime 2503 },
  { lower := 2562, upper := 2615, witness := RowWitness.topPrime 2557 },
  { lower := 2616, upper := 2667, witness := RowWitness.topPrime 2609 },
  { lower := 2668, upper := 2721, witness := RowWitness.topPrime 2663 },
  { lower := 2722, upper := 2777, witness := RowWitness.topPrime 2719 },
  { lower := 2778, upper := 2835, witness := RowWitness.topPrime 2777 },
  { lower := 2836, upper := 2891, witness := RowWitness.topPrime 2833 },
  { lower := 2892, upper := 2945, witness := RowWitness.topPrime 2887 },
  { lower := 2946, upper := 2997, witness := RowWitness.topPrime 2939 },
  { lower := 2998, upper := 3029, witness := RowWitness.topPrime 2971 },
  { lower := 3030, upper := 3081, witness := RowWitness.topPrime 3023 },
  { lower := 3082, upper := 3137, witness := RowWitness.topPrime 3079 },
  { lower := 3138, upper := 3195, witness := RowWitness.topPrime 3137 },
  { lower := 3196, upper := 3249, witness := RowWitness.topPrime 3191 },
  { lower := 3250, upper := 3287, witness := RowWitness.topPrime 3229 },
  { lower := 3288, upper := 3329, witness := RowWitness.topPrime 3271 },
  { lower := 3330, upper := 3387, witness := RowWitness.topPrime 3329 },
  { lower := 3388, upper := 3431, witness := RowWitness.topPrime 3373 },
  { lower := 3432, upper := 3460, witness := RowWitness.topPrime 3413 },
  { lower := 3468, upper := 3488, witness := RowWitness.topPrime 3467 },
  { lower := 3584, upper := 3607, witness := RowWitness.topPrime 3583 },
  { lower := 3610, upper := 3642, witness := RowWitness.topPrime 3607 },
  { lower := 3645, upper := 3668, witness := RowWitness.topPrime 3643 },
  { lower := 3698, upper := 3755, witness := RowWitness.topPrime 3697 },
  { lower := 3756, upper := 3797, witness := RowWitness.topPrime 3739 },
  { lower := 3798, upper := 3815, witness := RowWitness.topPrime 3797 },
  { lower := 3844, upper := 3891, witness := RowWitness.topPrime 3833 },
  { lower := 3892, upper := 3945, witness := RowWitness.topPrime 3889 },
  { lower := 3993, upper := 4029, witness := RowWitness.topPrime 3989 },
  { lower := 4046, upper := 4051, witness := RowWitness.topPrime 4027 },
  { lower := 4056, upper := 4109, witness := RowWitness.topPrime 4051 },
  { lower := 4110, upper := 4157, witness := RowWitness.topPrime 4099 },
  { lower := 4158, upper := 4174, witness := RowWitness.topPrime 4157 },
  { lower := 4232, upper := 4263, witness := RowWitness.topPrime 4231 },
  { lower := 4335, upper := 4385, witness := RowWitness.topPrime 4327 },
  { lower := 4386, upper := 4431, witness := RowWitness.topPrime 4373 },
  { lower := 4432, upper := 4452, witness := RowWitness.topPrime 4423 },
  { lower := 4459, upper := 4476, witness := RowWitness.topPrime 4457 },
  { lower := 4617, upper := 4661, witness := RowWitness.topPrime 4603 },
  { lower := 4662, upper := 4675, witness := RowWitness.topPrime 4657 },
  { lower := 4802, upper := 4859, witness := RowWitness.topPrime 4801 },
  { lower := 4860, upper := 4889, witness := RowWitness.topPrime 4831 },
  { lower := 4890, upper := 4922, witness := RowWitness.topPrime 4889 },
  { lower := 5043, upper := 5097, witness := RowWitness.topPrime 5039 },
  { lower := 5098, upper := 5112, witness := RowWitness.topPrime 5087 },
  { lower := 5120, upper := 5177, witness := RowWitness.topPrime 5119 },
  { lower := 5178, upper := 5178, witness := RowWitness.topPrime 5171 },
  { lower := 5202, upper := 5203, witness := RowWitness.topPrime 5197 },
  { lower := 5324, upper := 5381, witness := RowWitness.topPrime 5323 },
  { lower := 5382, upper := 5404, witness := RowWitness.topPrime 5381 },
  { lower := 5415, upper := 5434, witness := RowWitness.topPrime 5413 },
  { lower := 5488, upper := 5541, witness := RowWitness.topPrime 5483 },
  { lower := 5542, upper := 5549, witness := RowWitness.topPrime 5531 },
  { lower := 5589, upper := 5605, witness := RowWitness.topPrime 5581 },
  { lower := 5618, upper := 5649, witness := RowWitness.topPrime 5591 },
  { lower := 5650, upper := 5683, witness := RowWitness.topPrime 5647 },
  { lower := 5776, upper := 5807, witness := RowWitness.topPrime 5749 },
  { lower := 5808, upper := 5865, witness := RowWitness.topPrime 5807 },
  { lower := 5866, upper := 5919, witness := RowWitness.topPrime 5861 },
  { lower := 5920, upper := 5945, witness := RowWitness.topPrime 5903 },
  { lower := 6144, upper := 6201, witness := RowWitness.topPrime 6143 },
  { lower := 6202, upper := 6202, witness := RowWitness.topPrime 6199 },
  { lower := 6358, upper := 6406, witness := RowWitness.topPrime 6353 },
  { lower := 6517, upper := 6549, witness := RowWitness.topPrime 6491 },
  { lower := 6550, upper := 6556, witness := RowWitness.topPrime 6547 },
  { lower := 6561, upper := 6575, witness := RowWitness.topPrime 6553 },
  { lower := 6591, upper := 6619, witness := RowWitness.topPrime 6581 },
  { lower := 6627, upper := 6677, witness := RowWitness.topPrime 6619 },
  { lower := 6678, upper := 6713, witness := RowWitness.topPrime 6673 },
  { lower := 6727, upper := 6777, witness := RowWitness.topPrime 6719 },
  { lower := 6778, upper := 6785, witness := RowWitness.topPrime 6763 },
  { lower := 6859, upper := 6915, witness := RowWitness.topPrime 6857 },
  { lower := 6916, upper := 6933, witness := RowWitness.topPrime 6911 },
  { lower := 7203, upper := 7251, witness := RowWitness.topPrime 7193 },
  { lower := 7252, upper := 7261, witness := RowWitness.topPrime 7247 },
  { lower := 7406, upper := 7451, witness := RowWitness.topPrime 7393 },
  { lower := 7452, upper := 7454, witness := RowWitness.topPrime 7451 },
  { lower := 7581, upper := 7627, witness := RowWitness.topPrime 7577 },
  { lower := 7688, upper := 7738, witness := RowWitness.topPrime 7687 },
  { lower := 7986, upper := 7993, witness := RowWitness.topPrime 7963 },
  { lower := 8019, upper := 8044, witness := RowWitness.topPrime 8017 },
  { lower := 8214, upper := 8250, witness := RowWitness.topPrime 8209 },
  { lower := 8410, upper := 8447, witness := RowWitness.topPrime 8389 },
  { lower := 8448, upper := 8485, witness := RowWitness.topPrime 8447 },
  { lower := 8704, upper := 8707, witness := RowWitness.topPrime 8699 },
  { lower := 8748, upper := 8805, witness := RowWitness.topPrime 8747 },
  { lower := 8806, upper := 8808, witness := RowWitness.topPrime 8803 },
  { lower := 8836, upper := 8846, witness := RowWitness.topPrime 8831 },
  { lower := 9245, upper := 9299, witness := RowWitness.topPrime 9241 },
  { lower := 9300, upper := 9303, witness := RowWitness.topPrime 9293 },
  { lower := 9375, upper := 9375, witness := RowWitness.topPrime 9371 },
  { lower := 9522, upper := 9535, witness := RowWitness.topPrime 9521 },
  { lower := 9604, upper := 9659, witness := RowWitness.topPrime 9601 },
  { lower := 9660, upper := 9662, witness := RowWitness.topPrime 9649 },
  { lower := 10051, upper := 10058, witness := RowWitness.topPrime 10039 },
  { lower := 10086, upper := 10137, witness := RowWitness.topPrime 10079 },
  { lower := 10138, upper := 10144, witness := RowWitness.topPrime 10133 },
  { lower := 10240, upper := 10264, witness := RowWitness.topPrime 10223 },
  { lower := 10580, upper := 10625, witness := RowWitness.topPrime 10567 },
  { lower := 10626, upper := 10638, witness := RowWitness.topPrime 10613 },
  { lower := 10648, upper := 10683, witness := RowWitness.topPrime 10639 },
  { lower := 10935, upper := 10967, witness := RowWitness.topPrime 10909 },
  { lower := 10968, upper := 11010, witness := RowWitness.topPrime 10957 },
  { lower := 11094, upper := 11103, witness := RowWitness.topPrime 11093 },
  { lower := 11109, upper := 11151, witness := RowWitness.topPrime 11093 },
  { lower := 11152, upper := 11152, witness := RowWitness.topPrime 11149 },
  { lower := 11250, upper := 11301, witness := RowWitness.topPrime 11243 },
  { lower := 11302, upper := 11308, witness := RowWitness.topPrime 11299 },
  { lower := 11774, upper := 11801, witness := RowWitness.topPrime 11743 },
  { lower := 11802, upper := 11825, witness := RowWitness.topPrime 11801 },
  { lower := 12005, upper := 12037, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12346, witness := RowWitness.topPrime 12301 },
  { lower := 12500, upper := 12551, witness := RowWitness.topPrime 12497 },
  { lower := 13125, upper := 13179, witness := RowWitness.topPrime 13121 },
  { lower := 13180, upper := 13180, witness := RowWitness.topPrime 13177 },
  { lower := 13182, upper := 13183, witness := RowWitness.topPrime 13177 },
  { lower := 13310, upper := 13367, witness := RowWitness.topPrime 13309 },
  { lower := 13368, upper := 13368, witness := RowWitness.topPrime 13367 },
  { lower := 13454, upper := 13509, witness := RowWitness.topPrime 13451 },
  { lower := 13510, upper := 13512, witness := RowWitness.topPrime 13499 },
  { lower := 13718, upper := 13748, witness := RowWitness.topPrime 13711 },
  { lower := 14336, upper := 14355, witness := RowWitness.topPrime 14327 },
  { lower := 14415, upper := 14464, witness := RowWitness.topPrime 14411 },
  { lower := 14792, upper := 14797, witness := RowWitness.topPrime 14783 },
  { lower := 15138, upper := 15187, witness := RowWitness.topPrime 15137 },
  { lower := 15360, upper := 15367, witness := RowWitness.topPrime 15359 },
  { lower := 15376, upper := 15431, witness := RowWitness.topPrime 15373 },
  { lower := 15432, upper := 15434, witness := RowWitness.topPrime 15427 },
  { lower := 16384, upper := 16395, witness := RowWitness.topPrime 16381 },
  { lower := 16428, upper := 16442, witness := RowWitness.topPrime 16427 },
  { lower := 16810, upper := 16845, witness := RowWitness.topPrime 16787 },
  { lower := 16846, upper := 16868, witness := RowWitness.topPrime 16843 },
  { lower := 17303, upper := 17356, witness := RowWitness.topPrime 17299 },
  { lower := 18490, upper := 18539, witness := RowWitness.topPrime 18481 },
  { lower := 18540, upper := 18548, witness := RowWitness.topPrime 18539 },
  { lower := 19208, upper := 19224, witness := RowWitness.topPrime 19207 },
  { lower := 19663, upper := 19719, witness := RowWitness.topPrime 19661 },
  { lower := 19720, upper := 19721, witness := RowWitness.topPrime 19717 },
  { lower := 20535, upper := 20538, witness := RowWitness.topPrime 20533 },
  { lower := 20577, upper := 20593, witness := RowWitness.topPrime 20563 },
  { lower := 21870, upper := 21921, witness := RowWitness.topPrime 21863 },
  { lower := 21922, upper := 21933, witness := RowWitness.topPrime 21911 },
  { lower := 22528, upper := 22530, witness := RowWitness.topPrime 22511 },
  { lower := 24010, upper := 24016, witness := RowWitness.topPrime 24007 },
  { lower := 24037, upper := 24087, witness := RowWitness.topPrime 24029 },
  { lower := 24088, upper := 24095, witness := RowWitness.topPrime 24083 },
  { lower := 24334, upper := 24357, witness := RowWitness.topPrime 24329 },
  { lower := 24389, upper := 24392, witness := RowWitness.topPrime 24379 },
  { lower := 24576, upper := 24623, witness := RowWitness.topPrime 24571 },
  { lower := 26411, upper := 26422, witness := RowWitness.topPrime 26407 },
  { lower := 28125, upper := 28148, witness := RowWitness.topPrime 28123 },
  { lower := 28717, upper := 28730, witness := RowWitness.topPrime 28711 },
  { lower := 30758, upper := 30778, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 30957, witness := RowWitness.topPrime 30911 },
  { lower := 31250, upper := 31271, witness := RowWitness.topPrime 31249 },
  { lower := 32805, upper := 32826, witness := RowWitness.topPrime 32803 },
  { lower := 34391, upper := 34433, witness := RowWitness.topPrime 34381 },
  { lower := 36517, upper := 36555, witness := RowWitness.topPrime 36497 },
  { lower := 36556, upper := 36559, witness := RowWitness.topPrime 36551 },
  { lower := 39326, upper := 39362, witness := RowWitness.topPrime 39323 },
  { lower := 39366, upper := 39384, witness := RowWitness.topPrime 39359 },
  { lower := 49152, upper := 49188, witness := RowWitness.topPrime 49139 },
  { lower := 73205, upper := 73225, witness := RowWitness.topPrime 73189 }
]

def row059_layers : List CoverLayer := [
  { lower := 3422, upper := 6844, M := 24 },
  { lower := 6844, upper := 13688, M := 21 },
  { lower := 13688, upper := 27376, M := 18 },
  { lower := 27376, upper := 54752, M := 15 },
  { lower := 54752, upper := 109504, M := 13 },
  { lower := 109504, upper := 219008, M := 11 },
  { lower := 219008, upper := 438016, M := 10 },
  { lower := 438016, upper := 876032, M := 9 },
  { lower := 876032, upper := 1752064, M := 7 },
  { lower := 1752064, upper := 3504128, M := 6 },
  { lower := 3504128, upper := 7008256, M := 6 },
  { lower := 7008256, upper := 14016512, M := 5 },
  { lower := 14016512, upper := 28033024, M := 4 },
  { lower := 28033024, upper := 56066048, M := 4 },
  { lower := 56066048, upper := 112132096, M := 3 },
  { lower := 112132096, upper := 224264192, M := 3 },
  { lower := 224264192, upper := 448528384, M := 3 },
  { lower := 448528384, upper := 897056768, M := 2 },
  { lower := 897056768, upper := 1794113536, M := 2 },
  { lower := 1794113536, upper := 3588227072, M := 2 },
  { lower := 3588227072, upper := 7176454144, M := 2 },
  { lower := 7176454144, upper := 10000000000, M := 1 }
]

def row059 : FiniteCoverRow := {
  height := row059_height,
  goods := row059_goods,
  layers := row059_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_good000_checked :
    goodSegmentCheck 59 19 41
      { lower := 120, upper := 171, witness := RowWitness.topPrime 113 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good001_checked :
    goodSegmentCheck 59 19 41
      { lower := 172, upper := 225, witness := RowWitness.topPrime 167 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good002_checked :
    goodSegmentCheck 59 19 41
      { lower := 226, upper := 281, witness := RowWitness.topPrime 223 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good003_checked :
    goodSegmentCheck 59 19 41
      { lower := 282, upper := 339, witness := RowWitness.topPrime 281 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good004_checked :
    goodSegmentCheck 59 19 41
      { lower := 340, upper := 395, witness := RowWitness.topPrime 337 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good005_checked :
    goodSegmentCheck 59 19 41
      { lower := 396, upper := 447, witness := RowWitness.topPrime 389 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good006_checked :
    goodSegmentCheck 59 19 41
      { lower := 448, upper := 501, witness := RowWitness.topPrime 443 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good007_checked :
    goodSegmentCheck 59 19 41
      { lower := 502, upper := 557, witness := RowWitness.topPrime 499 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good008_checked :
    goodSegmentCheck 59 19 41
      { lower := 558, upper := 615, witness := RowWitness.topPrime 557 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good009_checked :
    goodSegmentCheck 59 19 41
      { lower := 616, upper := 671, witness := RowWitness.topPrime 613 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good010_checked :
    goodSegmentCheck 59 19 41
      { lower := 672, upper := 719, witness := RowWitness.topPrime 661 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good011_checked :
    goodSegmentCheck 59 19 41
      { lower := 720, upper := 777, witness := RowWitness.topPrime 719 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good012_checked :
    goodSegmentCheck 59 19 41
      { lower := 778, upper := 831, witness := RowWitness.topPrime 773 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good013_checked :
    goodSegmentCheck 59 19 41
      { lower := 832, upper := 887, witness := RowWitness.topPrime 829 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good014_checked :
    goodSegmentCheck 59 19 41
      { lower := 888, upper := 945, witness := RowWitness.topPrime 887 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good015_checked :
    goodSegmentCheck 59 19 41
      { lower := 946, upper := 999, witness := RowWitness.topPrime 941 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_good016_checked :
    goodSegmentCheck 59 19 41
      { lower := 1000, upper := 1055, witness := RowWitness.topPrime 997 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good017_checked :
    goodSegmentCheck 59 19 41
      { lower := 1056, upper := 1109, witness := RowWitness.topPrime 1051 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good018_checked :
    goodSegmentCheck 59 19 41
      { lower := 1110, upper := 1167, witness := RowWitness.topPrime 1109 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good019_checked :
    goodSegmentCheck 59 19 41
      { lower := 1168, upper := 1221, witness := RowWitness.topPrime 1163 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good020_checked :
    goodSegmentCheck 59 19 41
      { lower := 1222, upper := 1275, witness := RowWitness.topPrime 1217 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good021_checked :
    goodSegmentCheck 59 19 41
      { lower := 1276, upper := 1317, witness := RowWitness.topPrime 1259 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good022_checked :
    goodSegmentCheck 59 19 41
      { lower := 1318, upper := 1365, witness := RowWitness.topPrime 1307 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good023_checked :
    goodSegmentCheck 59 19 41
      { lower := 1366, upper := 1419, witness := RowWitness.topPrime 1361 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good024_checked :
    goodSegmentCheck 59 19 41
      { lower := 1420, upper := 1467, witness := RowWitness.topPrime 1409 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good025_checked :
    goodSegmentCheck 59 19 41
      { lower := 1468, upper := 1517, witness := RowWitness.topPrime 1459 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good026_checked :
    goodSegmentCheck 59 19 41
      { lower := 1518, upper := 1569, witness := RowWitness.topPrime 1511 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good027_checked :
    goodSegmentCheck 59 19 41
      { lower := 1570, upper := 1625, witness := RowWitness.topPrime 1567 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good028_checked :
    goodSegmentCheck 59 19 41
      { lower := 1626, upper := 1679, witness := RowWitness.topPrime 1621 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good029_checked :
    goodSegmentCheck 59 19 41
      { lower := 1680, upper := 1727, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good030_checked :
    goodSegmentCheck 59 19 41
      { lower := 1728, upper := 1781, witness := RowWitness.topPrime 1723 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good031_checked :
    goodSegmentCheck 59 19 41
      { lower := 1782, upper := 1835, witness := RowWitness.topPrime 1777 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_good032_checked :
    goodSegmentCheck 59 19 41
      { lower := 1836, upper := 1889, witness := RowWitness.topPrime 1831 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good033_checked :
    goodSegmentCheck 59 19 41
      { lower := 1890, upper := 1947, witness := RowWitness.topPrime 1889 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good034_checked :
    goodSegmentCheck 59 19 41
      { lower := 1948, upper := 1991, witness := RowWitness.topPrime 1933 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good035_checked :
    goodSegmentCheck 59 19 41
      { lower := 1992, upper := 2045, witness := RowWitness.topPrime 1987 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good036_checked :
    goodSegmentCheck 59 19 41
      { lower := 2046, upper := 2097, witness := RowWitness.topPrime 2039 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good037_checked :
    goodSegmentCheck 59 19 41
      { lower := 2098, upper := 2147, witness := RowWitness.topPrime 2089 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good038_checked :
    goodSegmentCheck 59 19 41
      { lower := 2148, upper := 2201, witness := RowWitness.topPrime 2143 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good039_checked :
    goodSegmentCheck 59 19 41
      { lower := 2202, upper := 2237, witness := RowWitness.topPrime 2179 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good040_checked :
    goodSegmentCheck 59 19 41
      { lower := 2238, upper := 2295, witness := RowWitness.topPrime 2237 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good041_checked :
    goodSegmentCheck 59 19 41
      { lower := 2296, upper := 2351, witness := RowWitness.topPrime 2293 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good042_checked :
    goodSegmentCheck 59 19 41
      { lower := 2352, upper := 2409, witness := RowWitness.topPrime 2351 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good043_checked :
    goodSegmentCheck 59 19 41
      { lower := 2410, upper := 2457, witness := RowWitness.topPrime 2399 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good044_checked :
    goodSegmentCheck 59 19 41
      { lower := 2458, upper := 2505, witness := RowWitness.topPrime 2447 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good045_checked :
    goodSegmentCheck 59 19 41
      { lower := 2506, upper := 2561, witness := RowWitness.topPrime 2503 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good046_checked :
    goodSegmentCheck 59 19 41
      { lower := 2562, upper := 2615, witness := RowWitness.topPrime 2557 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good047_checked :
    goodSegmentCheck 59 19 41
      { lower := 2616, upper := 2667, witness := RowWitness.topPrime 2609 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_good048_checked :
    goodSegmentCheck 59 19 41
      { lower := 2668, upper := 2721, witness := RowWitness.topPrime 2663 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good049_checked :
    goodSegmentCheck 59 19 41
      { lower := 2722, upper := 2777, witness := RowWitness.topPrime 2719 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good050_checked :
    goodSegmentCheck 59 19 41
      { lower := 2778, upper := 2835, witness := RowWitness.topPrime 2777 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good051_checked :
    goodSegmentCheck 59 19 41
      { lower := 2836, upper := 2891, witness := RowWitness.topPrime 2833 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good052_checked :
    goodSegmentCheck 59 19 41
      { lower := 2892, upper := 2945, witness := RowWitness.topPrime 2887 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good053_checked :
    goodSegmentCheck 59 19 41
      { lower := 2946, upper := 2997, witness := RowWitness.topPrime 2939 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good054_checked :
    goodSegmentCheck 59 19 41
      { lower := 2998, upper := 3029, witness := RowWitness.topPrime 2971 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good055_checked :
    goodSegmentCheck 59 19 41
      { lower := 3030, upper := 3081, witness := RowWitness.topPrime 3023 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good056_checked :
    goodSegmentCheck 59 19 41
      { lower := 3082, upper := 3137, witness := RowWitness.topPrime 3079 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good057_checked :
    goodSegmentCheck 59 19 41
      { lower := 3138, upper := 3195, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good058_checked :
    goodSegmentCheck 59 19 41
      { lower := 3196, upper := 3249, witness := RowWitness.topPrime 3191 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good059_checked :
    goodSegmentCheck 59 19 41
      { lower := 3250, upper := 3287, witness := RowWitness.topPrime 3229 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good060_checked :
    goodSegmentCheck 59 19 41
      { lower := 3288, upper := 3329, witness := RowWitness.topPrime 3271 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good061_checked :
    goodSegmentCheck 59 19 41
      { lower := 3330, upper := 3387, witness := RowWitness.topPrime 3329 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good062_checked :
    goodSegmentCheck 59 19 41
      { lower := 3388, upper := 3431, witness := RowWitness.topPrime 3373 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good063_checked :
    goodSegmentCheck 59 19 41
      { lower := 3432, upper := 3460, witness := RowWitness.topPrime 3413 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_good064_checked :
    goodSegmentCheck 59 19 41
      { lower := 3468, upper := 3488, witness := RowWitness.topPrime 3467 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good065_checked :
    goodSegmentCheck 59 19 41
      { lower := 3584, upper := 3607, witness := RowWitness.topPrime 3583 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good066_checked :
    goodSegmentCheck 59 19 41
      { lower := 3610, upper := 3642, witness := RowWitness.topPrime 3607 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good067_checked :
    goodSegmentCheck 59 19 41
      { lower := 3645, upper := 3668, witness := RowWitness.topPrime 3643 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good068_checked :
    goodSegmentCheck 59 19 41
      { lower := 3698, upper := 3755, witness := RowWitness.topPrime 3697 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good069_checked :
    goodSegmentCheck 59 19 41
      { lower := 3756, upper := 3797, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good070_checked :
    goodSegmentCheck 59 19 41
      { lower := 3798, upper := 3815, witness := RowWitness.topPrime 3797 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good071_checked :
    goodSegmentCheck 59 19 41
      { lower := 3844, upper := 3891, witness := RowWitness.topPrime 3833 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good072_checked :
    goodSegmentCheck 59 19 41
      { lower := 3892, upper := 3945, witness := RowWitness.topPrime 3889 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good073_checked :
    goodSegmentCheck 59 19 41
      { lower := 3993, upper := 4029, witness := RowWitness.topPrime 3989 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good074_checked :
    goodSegmentCheck 59 19 41
      { lower := 4046, upper := 4051, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good075_checked :
    goodSegmentCheck 59 19 41
      { lower := 4056, upper := 4109, witness := RowWitness.topPrime 4051 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good076_checked :
    goodSegmentCheck 59 19 41
      { lower := 4110, upper := 4157, witness := RowWitness.topPrime 4099 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good077_checked :
    goodSegmentCheck 59 19 41
      { lower := 4158, upper := 4174, witness := RowWitness.topPrime 4157 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good078_checked :
    goodSegmentCheck 59 19 41
      { lower := 4232, upper := 4263, witness := RowWitness.topPrime 4231 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good079_checked :
    goodSegmentCheck 59 19 41
      { lower := 4335, upper := 4385, witness := RowWitness.topPrime 4327 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_good080_checked :
    goodSegmentCheck 59 19 41
      { lower := 4386, upper := 4431, witness := RowWitness.topPrime 4373 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good081_checked :
    goodSegmentCheck 59 19 41
      { lower := 4432, upper := 4452, witness := RowWitness.topPrime 4423 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good082_checked :
    goodSegmentCheck 59 19 41
      { lower := 4459, upper := 4476, witness := RowWitness.topPrime 4457 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good083_checked :
    goodSegmentCheck 59 19 41
      { lower := 4617, upper := 4661, witness := RowWitness.topPrime 4603 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good084_checked :
    goodSegmentCheck 59 19 41
      { lower := 4662, upper := 4675, witness := RowWitness.topPrime 4657 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good085_checked :
    goodSegmentCheck 59 19 41
      { lower := 4802, upper := 4859, witness := RowWitness.topPrime 4801 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good086_checked :
    goodSegmentCheck 59 19 41
      { lower := 4860, upper := 4889, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good087_checked :
    goodSegmentCheck 59 19 41
      { lower := 4890, upper := 4922, witness := RowWitness.topPrime 4889 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good088_checked :
    goodSegmentCheck 59 19 41
      { lower := 5043, upper := 5097, witness := RowWitness.topPrime 5039 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good089_checked :
    goodSegmentCheck 59 19 41
      { lower := 5098, upper := 5112, witness := RowWitness.topPrime 5087 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good090_checked :
    goodSegmentCheck 59 19 41
      { lower := 5120, upper := 5177, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good091_checked :
    goodSegmentCheck 59 19 41
      { lower := 5178, upper := 5178, witness := RowWitness.topPrime 5171 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good092_checked :
    goodSegmentCheck 59 19 41
      { lower := 5202, upper := 5203, witness := RowWitness.topPrime 5197 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good093_checked :
    goodSegmentCheck 59 19 41
      { lower := 5324, upper := 5381, witness := RowWitness.topPrime 5323 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good094_checked :
    goodSegmentCheck 59 19 41
      { lower := 5382, upper := 5404, witness := RowWitness.topPrime 5381 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good095_checked :
    goodSegmentCheck 59 19 41
      { lower := 5415, upper := 5434, witness := RowWitness.topPrime 5413 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_good096_checked :
    goodSegmentCheck 59 19 41
      { lower := 5488, upper := 5541, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good097_checked :
    goodSegmentCheck 59 19 41
      { lower := 5542, upper := 5549, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good098_checked :
    goodSegmentCheck 59 19 41
      { lower := 5589, upper := 5605, witness := RowWitness.topPrime 5581 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good099_checked :
    goodSegmentCheck 59 19 41
      { lower := 5618, upper := 5649, witness := RowWitness.topPrime 5591 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good100_checked :
    goodSegmentCheck 59 19 41
      { lower := 5650, upper := 5683, witness := RowWitness.topPrime 5647 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good101_checked :
    goodSegmentCheck 59 19 41
      { lower := 5776, upper := 5807, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good102_checked :
    goodSegmentCheck 59 19 41
      { lower := 5808, upper := 5865, witness := RowWitness.topPrime 5807 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good103_checked :
    goodSegmentCheck 59 19 41
      { lower := 5866, upper := 5919, witness := RowWitness.topPrime 5861 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good104_checked :
    goodSegmentCheck 59 19 41
      { lower := 5920, upper := 5945, witness := RowWitness.topPrime 5903 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good105_checked :
    goodSegmentCheck 59 19 41
      { lower := 6144, upper := 6201, witness := RowWitness.topPrime 6143 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good106_checked :
    goodSegmentCheck 59 19 41
      { lower := 6202, upper := 6202, witness := RowWitness.topPrime 6199 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good107_checked :
    goodSegmentCheck 59 19 41
      { lower := 6358, upper := 6406, witness := RowWitness.topPrime 6353 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good108_checked :
    goodSegmentCheck 59 19 41
      { lower := 6517, upper := 6549, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good109_checked :
    goodSegmentCheck 59 19 41
      { lower := 6550, upper := 6556, witness := RowWitness.topPrime 6547 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good110_checked :
    goodSegmentCheck 59 19 41
      { lower := 6561, upper := 6575, witness := RowWitness.topPrime 6553 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good111_checked :
    goodSegmentCheck 59 19 41
      { lower := 6591, upper := 6619, witness := RowWitness.topPrime 6581 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_good112_checked :
    goodSegmentCheck 59 19 41
      { lower := 6627, upper := 6677, witness := RowWitness.topPrime 6619 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good113_checked :
    goodSegmentCheck 59 19 41
      { lower := 6678, upper := 6713, witness := RowWitness.topPrime 6673 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good114_checked :
    goodSegmentCheck 59 19 41
      { lower := 6727, upper := 6777, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good115_checked :
    goodSegmentCheck 59 19 41
      { lower := 6778, upper := 6785, witness := RowWitness.topPrime 6763 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good116_checked :
    goodSegmentCheck 59 19 41
      { lower := 6859, upper := 6915, witness := RowWitness.topPrime 6857 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good117_checked :
    goodSegmentCheck 59 19 41
      { lower := 6916, upper := 6933, witness := RowWitness.topPrime 6911 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good118_checked :
    goodSegmentCheck 59 19 41
      { lower := 7203, upper := 7251, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good119_checked :
    goodSegmentCheck 59 19 41
      { lower := 7252, upper := 7261, witness := RowWitness.topPrime 7247 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good120_checked :
    goodSegmentCheck 59 19 41
      { lower := 7406, upper := 7451, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good121_checked :
    goodSegmentCheck 59 19 41
      { lower := 7452, upper := 7454, witness := RowWitness.topPrime 7451 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good122_checked :
    goodSegmentCheck 59 19 41
      { lower := 7581, upper := 7627, witness := RowWitness.topPrime 7577 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good123_checked :
    goodSegmentCheck 59 19 41
      { lower := 7688, upper := 7738, witness := RowWitness.topPrime 7687 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good124_checked :
    goodSegmentCheck 59 19 41
      { lower := 7986, upper := 7993, witness := RowWitness.topPrime 7963 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good125_checked :
    goodSegmentCheck 59 19 41
      { lower := 8019, upper := 8044, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good126_checked :
    goodSegmentCheck 59 19 41
      { lower := 8214, upper := 8250, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good127_checked :
    goodSegmentCheck 59 19 41
      { lower := 8410, upper := 8447, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_good128_checked :
    goodSegmentCheck 59 19 41
      { lower := 8448, upper := 8485, witness := RowWitness.topPrime 8447 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good129_checked :
    goodSegmentCheck 59 19 41
      { lower := 8704, upper := 8707, witness := RowWitness.topPrime 8699 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good130_checked :
    goodSegmentCheck 59 19 41
      { lower := 8748, upper := 8805, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good131_checked :
    goodSegmentCheck 59 19 41
      { lower := 8806, upper := 8808, witness := RowWitness.topPrime 8803 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good132_checked :
    goodSegmentCheck 59 19 41
      { lower := 8836, upper := 8846, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good133_checked :
    goodSegmentCheck 59 19 41
      { lower := 9245, upper := 9299, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good134_checked :
    goodSegmentCheck 59 19 41
      { lower := 9300, upper := 9303, witness := RowWitness.topPrime 9293 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good135_checked :
    goodSegmentCheck 59 19 41
      { lower := 9375, upper := 9375, witness := RowWitness.topPrime 9371 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good136_checked :
    goodSegmentCheck 59 19 41
      { lower := 9522, upper := 9535, witness := RowWitness.topPrime 9521 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good137_checked :
    goodSegmentCheck 59 19 41
      { lower := 9604, upper := 9659, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good138_checked :
    goodSegmentCheck 59 19 41
      { lower := 9660, upper := 9662, witness := RowWitness.topPrime 9649 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good139_checked :
    goodSegmentCheck 59 19 41
      { lower := 10051, upper := 10058, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good140_checked :
    goodSegmentCheck 59 19 41
      { lower := 10086, upper := 10137, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good141_checked :
    goodSegmentCheck 59 19 41
      { lower := 10138, upper := 10144, witness := RowWitness.topPrime 10133 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good142_checked :
    goodSegmentCheck 59 19 41
      { lower := 10240, upper := 10264, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good143_checked :
    goodSegmentCheck 59 19 41
      { lower := 10580, upper := 10625, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_good144_checked :
    goodSegmentCheck 59 19 41
      { lower := 10626, upper := 10638, witness := RowWitness.topPrime 10613 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good145_checked :
    goodSegmentCheck 59 19 41
      { lower := 10648, upper := 10683, witness := RowWitness.topPrime 10639 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good146_checked :
    goodSegmentCheck 59 19 41
      { lower := 10935, upper := 10967, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good147_checked :
    goodSegmentCheck 59 19 41
      { lower := 10968, upper := 11010, witness := RowWitness.topPrime 10957 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good148_checked :
    goodSegmentCheck 59 19 41
      { lower := 11094, upper := 11103, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good149_checked :
    goodSegmentCheck 59 19 41
      { lower := 11109, upper := 11151, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good150_checked :
    goodSegmentCheck 59 19 41
      { lower := 11152, upper := 11152, witness := RowWitness.topPrime 11149 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good151_checked :
    goodSegmentCheck 59 19 41
      { lower := 11250, upper := 11301, witness := RowWitness.topPrime 11243 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good152_checked :
    goodSegmentCheck 59 19 41
      { lower := 11302, upper := 11308, witness := RowWitness.topPrime 11299 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good153_checked :
    goodSegmentCheck 59 19 41
      { lower := 11774, upper := 11801, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good154_checked :
    goodSegmentCheck 59 19 41
      { lower := 11802, upper := 11825, witness := RowWitness.topPrime 11801 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good155_checked :
    goodSegmentCheck 59 19 41
      { lower := 12005, upper := 12037, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good156_checked :
    goodSegmentCheck 59 19 41
      { lower := 12321, upper := 12346, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good157_checked :
    goodSegmentCheck 59 19 41
      { lower := 12500, upper := 12551, witness := RowWitness.topPrime 12497 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good158_checked :
    goodSegmentCheck 59 19 41
      { lower := 13125, upper := 13179, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good159_checked :
    goodSegmentCheck 59 19 41
      { lower := 13180, upper := 13180, witness := RowWitness.topPrime 13177 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_good160_checked :
    goodSegmentCheck 59 19 41
      { lower := 13182, upper := 13183, witness := RowWitness.topPrime 13177 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good161_checked :
    goodSegmentCheck 59 19 41
      { lower := 13310, upper := 13367, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good162_checked :
    goodSegmentCheck 59 19 41
      { lower := 13368, upper := 13368, witness := RowWitness.topPrime 13367 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good163_checked :
    goodSegmentCheck 59 19 41
      { lower := 13454, upper := 13509, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good164_checked :
    goodSegmentCheck 59 19 41
      { lower := 13510, upper := 13512, witness := RowWitness.topPrime 13499 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good165_checked :
    goodSegmentCheck 59 19 41
      { lower := 13718, upper := 13748, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good166_checked :
    goodSegmentCheck 59 19 41
      { lower := 14336, upper := 14355, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good167_checked :
    goodSegmentCheck 59 19 41
      { lower := 14415, upper := 14464, witness := RowWitness.topPrime 14411 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good168_checked :
    goodSegmentCheck 59 19 41
      { lower := 14792, upper := 14797, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good169_checked :
    goodSegmentCheck 59 19 41
      { lower := 15138, upper := 15187, witness := RowWitness.topPrime 15137 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good170_checked :
    goodSegmentCheck 59 19 41
      { lower := 15360, upper := 15367, witness := RowWitness.topPrime 15359 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good171_checked :
    goodSegmentCheck 59 19 41
      { lower := 15376, upper := 15431, witness := RowWitness.topPrime 15373 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good172_checked :
    goodSegmentCheck 59 19 41
      { lower := 15432, upper := 15434, witness := RowWitness.topPrime 15427 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good173_checked :
    goodSegmentCheck 59 19 41
      { lower := 16384, upper := 16395, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good174_checked :
    goodSegmentCheck 59 19 41
      { lower := 16428, upper := 16442, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good175_checked :
    goodSegmentCheck 59 19 41
      { lower := 16810, upper := 16845, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_good176_checked :
    goodSegmentCheck 59 19 41
      { lower := 16846, upper := 16868, witness := RowWitness.topPrime 16843 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good177_checked :
    goodSegmentCheck 59 19 41
      { lower := 17303, upper := 17356, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good178_checked :
    goodSegmentCheck 59 19 41
      { lower := 18490, upper := 18539, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good179_checked :
    goodSegmentCheck 59 19 41
      { lower := 18540, upper := 18548, witness := RowWitness.topPrime 18539 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good180_checked :
    goodSegmentCheck 59 19 41
      { lower := 19208, upper := 19224, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good181_checked :
    goodSegmentCheck 59 19 41
      { lower := 19663, upper := 19719, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good182_checked :
    goodSegmentCheck 59 19 41
      { lower := 19720, upper := 19721, witness := RowWitness.topPrime 19717 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good183_checked :
    goodSegmentCheck 59 19 41
      { lower := 20535, upper := 20538, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good184_checked :
    goodSegmentCheck 59 19 41
      { lower := 20577, upper := 20593, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good185_checked :
    goodSegmentCheck 59 19 41
      { lower := 21870, upper := 21921, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good186_checked :
    goodSegmentCheck 59 19 41
      { lower := 21922, upper := 21933, witness := RowWitness.topPrime 21911 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good187_checked :
    goodSegmentCheck 59 19 41
      { lower := 22528, upper := 22530, witness := RowWitness.topPrime 22511 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good188_checked :
    goodSegmentCheck 59 19 41
      { lower := 24010, upper := 24016, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good189_checked :
    goodSegmentCheck 59 19 41
      { lower := 24037, upper := 24087, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good190_checked :
    goodSegmentCheck 59 19 41
      { lower := 24088, upper := 24095, witness := RowWitness.topPrime 24083 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good191_checked :
    goodSegmentCheck 59 19 41
      { lower := 24334, upper := 24357, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_good192_checked :
    goodSegmentCheck 59 19 41
      { lower := 24389, upper := 24392, witness := RowWitness.topPrime 24379 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good193_checked :
    goodSegmentCheck 59 19 41
      { lower := 24576, upper := 24623, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good194_checked :
    goodSegmentCheck 59 19 41
      { lower := 26411, upper := 26422, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good195_checked :
    goodSegmentCheck 59 19 41
      { lower := 28125, upper := 28148, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good196_checked :
    goodSegmentCheck 59 19 41
      { lower := 28717, upper := 28730, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good197_checked :
    goodSegmentCheck 59 19 41
      { lower := 30758, upper := 30778, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good198_checked :
    goodSegmentCheck 59 19 41
      { lower := 30926, upper := 30957, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good199_checked :
    goodSegmentCheck 59 19 41
      { lower := 31250, upper := 31271, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good200_checked :
    goodSegmentCheck 59 19 41
      { lower := 32805, upper := 32826, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good201_checked :
    goodSegmentCheck 59 19 41
      { lower := 34391, upper := 34433, witness := RowWitness.topPrime 34381 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good202_checked :
    goodSegmentCheck 59 19 41
      { lower := 36517, upper := 36555, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good203_checked :
    goodSegmentCheck 59 19 41
      { lower := 36556, upper := 36559, witness := RowWitness.topPrime 36551 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good204_checked :
    goodSegmentCheck 59 19 41
      { lower := 39326, upper := 39362, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good205_checked :
    goodSegmentCheck 59 19 41
      { lower := 39366, upper := 39384, witness := RowWitness.topPrime 39359 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good206_checked :
    goodSegmentCheck 59 19 41
      { lower := 49152, upper := 49188, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row059_good207_checked :
    goodSegmentCheck 59 19 41
      { lower := 73205, upper := 73225, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 59) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_goods_checked :
    row059.goods.all (goodSegmentCheck row059.height.i row059.height.r row059.height.s) = true := by
  change row059_goods.all (goodSegmentCheck 59 19 41) = true
  simp only [row059_goods, List.all_cons, List.all_nil,
    row059_good000_checked,
    row059_good001_checked,
    row059_good002_checked,
    row059_good003_checked,
    row059_good004_checked,
    row059_good005_checked,
    row059_good006_checked,
    row059_good007_checked,
    row059_good008_checked,
    row059_good009_checked,
    row059_good010_checked,
    row059_good011_checked,
    row059_good012_checked,
    row059_good013_checked,
    row059_good014_checked,
    row059_good015_checked,
    row059_good016_checked,
    row059_good017_checked,
    row059_good018_checked,
    row059_good019_checked,
    row059_good020_checked,
    row059_good021_checked,
    row059_good022_checked,
    row059_good023_checked,
    row059_good024_checked,
    row059_good025_checked,
    row059_good026_checked,
    row059_good027_checked,
    row059_good028_checked,
    row059_good029_checked,
    row059_good030_checked,
    row059_good031_checked,
    row059_good032_checked,
    row059_good033_checked,
    row059_good034_checked,
    row059_good035_checked,
    row059_good036_checked,
    row059_good037_checked,
    row059_good038_checked,
    row059_good039_checked,
    row059_good040_checked,
    row059_good041_checked,
    row059_good042_checked,
    row059_good043_checked,
    row059_good044_checked,
    row059_good045_checked,
    row059_good046_checked,
    row059_good047_checked,
    row059_good048_checked,
    row059_good049_checked,
    row059_good050_checked,
    row059_good051_checked,
    row059_good052_checked,
    row059_good053_checked,
    row059_good054_checked,
    row059_good055_checked,
    row059_good056_checked,
    row059_good057_checked,
    row059_good058_checked,
    row059_good059_checked,
    row059_good060_checked,
    row059_good061_checked,
    row059_good062_checked,
    row059_good063_checked,
    row059_good064_checked,
    row059_good065_checked,
    row059_good066_checked,
    row059_good067_checked,
    row059_good068_checked,
    row059_good069_checked,
    row059_good070_checked,
    row059_good071_checked,
    row059_good072_checked,
    row059_good073_checked,
    row059_good074_checked,
    row059_good075_checked,
    row059_good076_checked,
    row059_good077_checked,
    row059_good078_checked,
    row059_good079_checked,
    row059_good080_checked,
    row059_good081_checked,
    row059_good082_checked,
    row059_good083_checked,
    row059_good084_checked,
    row059_good085_checked,
    row059_good086_checked,
    row059_good087_checked,
    row059_good088_checked,
    row059_good089_checked,
    row059_good090_checked,
    row059_good091_checked,
    row059_good092_checked,
    row059_good093_checked,
    row059_good094_checked,
    row059_good095_checked,
    row059_good096_checked,
    row059_good097_checked,
    row059_good098_checked,
    row059_good099_checked,
    row059_good100_checked,
    row059_good101_checked,
    row059_good102_checked,
    row059_good103_checked,
    row059_good104_checked,
    row059_good105_checked,
    row059_good106_checked,
    row059_good107_checked,
    row059_good108_checked,
    row059_good109_checked,
    row059_good110_checked,
    row059_good111_checked,
    row059_good112_checked,
    row059_good113_checked,
    row059_good114_checked,
    row059_good115_checked,
    row059_good116_checked,
    row059_good117_checked,
    row059_good118_checked,
    row059_good119_checked,
    row059_good120_checked,
    row059_good121_checked,
    row059_good122_checked,
    row059_good123_checked,
    row059_good124_checked,
    row059_good125_checked,
    row059_good126_checked,
    row059_good127_checked,
    row059_good128_checked,
    row059_good129_checked,
    row059_good130_checked,
    row059_good131_checked,
    row059_good132_checked,
    row059_good133_checked,
    row059_good134_checked,
    row059_good135_checked,
    row059_good136_checked,
    row059_good137_checked,
    row059_good138_checked,
    row059_good139_checked,
    row059_good140_checked,
    row059_good141_checked,
    row059_good142_checked,
    row059_good143_checked,
    row059_good144_checked,
    row059_good145_checked,
    row059_good146_checked,
    row059_good147_checked,
    row059_good148_checked,
    row059_good149_checked,
    row059_good150_checked,
    row059_good151_checked,
    row059_good152_checked,
    row059_good153_checked,
    row059_good154_checked,
    row059_good155_checked,
    row059_good156_checked,
    row059_good157_checked,
    row059_good158_checked,
    row059_good159_checked,
    row059_good160_checked,
    row059_good161_checked,
    row059_good162_checked,
    row059_good163_checked,
    row059_good164_checked,
    row059_good165_checked,
    row059_good166_checked,
    row059_good167_checked,
    row059_good168_checked,
    row059_good169_checked,
    row059_good170_checked,
    row059_good171_checked,
    row059_good172_checked,
    row059_good173_checked,
    row059_good174_checked,
    row059_good175_checked,
    row059_good176_checked,
    row059_good177_checked,
    row059_good178_checked,
    row059_good179_checked,
    row059_good180_checked,
    row059_good181_checked,
    row059_good182_checked,
    row059_good183_checked,
    row059_good184_checked,
    row059_good185_checked,
    row059_good186_checked,
    row059_good187_checked,
    row059_good188_checked,
    row059_good189_checked,
    row059_good190_checked,
    row059_good191_checked,
    row059_good192_checked,
    row059_good193_checked,
    row059_good194_checked,
    row059_good195_checked,
    row059_good196_checked,
    row059_good197_checked,
    row059_good198_checked,
    row059_good199_checked,
    row059_good200_checked,
    row059_good201_checked,
    row059_good202_checked,
    row059_good203_checked,
    row059_good204_checked,
    row059_good205_checked,
    row059_good206_checked,
    row059_good207_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_registered :
    decide (row059.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row059_small_checked :
    coverCheck (2 * row059.height.i + 2) (row059.height.i * (row059.height.i - 1) - 1)
      (row059.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row059_layerCover_checked :
    coverCheck (row059.height.i * (row059.height.i - 1)) (row059.height.n0 - 1)
      (row059.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row059_bounds : List NatInterval :=
  [(120, 171), (172, 225), (226, 281), (282, 339), (340, 395), (396, 447), (448, 501), (502, 557), (558, 615), (616, 671), (672, 719), (720, 777), (778, 831), (832, 887), (888, 945), (946, 999), (1000, 1055), (1056, 1109), (1110, 1167), (1168, 1221), (1222, 1275), (1276, 1317), (1318, 1365), (1366, 1419), (1420, 1467), (1468, 1517), (1518, 1569), (1570, 1625), (1626, 1679), (1680, 1727), (1728, 1781), (1782, 1835), (1836, 1889), (1890, 1947), (1948, 1991), (1992, 2045), (2046, 2097), (2098, 2147), (2148, 2201), (2202, 2237), (2238, 2295), (2296, 2351), (2352, 2409), (2410, 2457), (2458, 2505), (2506, 2561), (2562, 2615), (2616, 2667), (2668, 2721), (2722, 2777), (2778, 2835), (2836, 2891), (2892, 2945), (2946, 2997), (2998, 3029), (3030, 3081), (3082, 3137), (3138, 3195), (3196, 3249), (3250, 3287), (3288, 3329), (3330, 3387), (3388, 3431), (3432, 3460), (3468, 3488), (3584, 3607), (3610, 3642), (3645, 3668), (3698, 3755), (3756, 3797), (3798, 3815), (3844, 3891), (3892, 3945), (3993, 4029), (4046, 4051), (4056, 4109), (4110, 4157), (4158, 4174), (4232, 4263), (4335, 4385), (4386, 4431), (4432, 4452), (4459, 4476), (4617, 4661), (4662, 4675), (4802, 4859), (4860, 4889), (4890, 4922), (5043, 5097), (5098, 5112), (5120, 5177), (5178, 5178), (5202, 5203), (5324, 5381), (5382, 5404), (5415, 5434), (5488, 5541), (5542, 5549), (5589, 5605), (5618, 5649), (5650, 5683), (5776, 5807), (5808, 5865), (5866, 5919), (5920, 5945), (6144, 6201), (6202, 6202), (6358, 6406), (6517, 6549), (6550, 6556), (6561, 6575), (6591, 6619), (6627, 6677), (6678, 6713), (6727, 6777), (6778, 6785), (6859, 6915), (6916, 6933), (7203, 7251), (7252, 7261), (7406, 7451), (7452, 7454), (7581, 7627), (7688, 7738), (7986, 7993), (8019, 8044), (8214, 8250), (8410, 8447), (8448, 8485), (8704, 8707), (8748, 8805), (8806, 8808), (8836, 8846), (9245, 9299), (9300, 9303), (9375, 9375), (9522, 9535), (9604, 9659), (9660, 9662), (10051, 10058), (10086, 10137), (10138, 10144), (10240, 10264), (10580, 10625), (10626, 10638), (10648, 10683), (10935, 10967), (10968, 11010), (11094, 11103), (11109, 11151), (11152, 11152), (11250, 11301), (11302, 11308), (11774, 11801), (11802, 11825), (12005, 12037), (12321, 12346), (12500, 12551), (13125, 13179), (13180, 13180), (13182, 13183), (13310, 13367), (13368, 13368), (13454, 13509), (13510, 13512), (13718, 13748), (14336, 14355), (14415, 14464), (14792, 14797), (15138, 15187), (15360, 15367), (15376, 15431), (15432, 15434), (16384, 16395), (16428, 16442), (16810, 16845), (16846, 16868), (17303, 17356), (18490, 18539), (18540, 18548), (19208, 19224), (19663, 19719), (19720, 19721), (20535, 20538), (20577, 20593), (21870, 21921), (21922, 21933), (22528, 22530), (24010, 24016), (24037, 24087), (24088, 24095), (24334, 24357), (24389, 24392), (24576, 24623), (26411, 26422), (28125, 28148), (28717, 28730), (30758, 30778), (30926, 30957), (31250, 31271), (32805, 32826), (34391, 34433), (36517, 36555), (36556, 36559), (39326, 39362), (39366, 39384), (49152, 49188), (73205, 73225)]

theorem row059_bounds_eq : row059.goods.map goodSegmentBounds = row059_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row059_layer000_intervals : List ColouredInterval :=
  [(2, 3584, 3642), (2, 3840, 3898), (2, 4096, 4154), (2, 4352, 4410), (2, 4608, 4666), (2, 4864, 4922), (2, 5120, 5178), (2, 5376, 5434), (2, 5632, 5690), (2, 5888, 5946), (2, 6144, 6202), (2, 3584, 3642), (2, 4096, 4154), (2, 4608, 4666), (2, 5120, 5178), (2, 5632, 5690), (2, 6144, 6202), (2, 6656, 6714), (2, 4096, 4154), (2, 5120, 5178), (2, 6144, 6202), (2, 4096, 4154), (2, 6144, 6202), (2, 4096, 4154), (3, 3422, 3460), (3, 3645, 3703), (3, 3888, 3946), (3, 4131, 4189), (3, 4374, 4432), (3, 4617, 4675), (3, 4860, 4918), (3, 5103, 5161), (3, 5346, 5404), (3, 5589, 5647), (3, 5832, 5890), (3, 3645, 3703), (3, 4374, 4432), (3, 5103, 5161), (3, 5832, 5890), (3, 6561, 6619), (3, 4374, 4432), (3, 6561, 6619), (3, 6561, 6619), (5, 3750, 3808), (5, 4375, 4433), (5, 5000, 5058), (5, 5625, 5683), (5, 6250, 6308), (5, 6250, 6308), (7, 3430, 3488), (7, 3773, 3831), (7, 4116, 4174), (7, 4459, 4517), (7, 4802, 4860), (7, 5145, 5203), (7, 5488, 5546), (7, 5831, 5889), (7, 6174, 6232), (7, 6517, 6575), (7, 4802, 4860), (11, 3993, 4051), (11, 5324, 5382), (11, 6655, 6713), (13, 3422, 3438), (13, 3549, 3607), (13, 3718, 3776), (13, 3887, 3945), (13, 4056, 4114), (13, 4394, 4452), (13, 6591, 6649), (17, 3468, 3526), (17, 3757, 3815), (17, 4046, 4104), (17, 4335, 4393), (17, 4624, 4682), (17, 4913, 4971), (17, 5202, 5260), (17, 5491, 5549), (17, 5780, 5838), (17, 6069, 6127), (17, 6358, 6416), (17, 6647, 6705), (17, 4913, 4971), (19, 3610, 3668), (19, 3971, 4029), (19, 4332, 4390), (19, 4693, 4751), (19, 5054, 5112), (19, 5415, 5473), (19, 5776, 5834), (19, 6137, 6195), (19, 6498, 6556), (23, 3703, 3761), (23, 4232, 4290), (23, 4761, 4819), (23, 5290, 5348), (23, 5819, 5877), (23, 6348, 6406), (29, 3422, 3422), (29, 4205, 4263), (29, 5046, 5104), (29, 5887, 5945), (29, 6728, 6786), (31, 3844, 3902), (31, 4805, 4863), (31, 5766, 5824), (31, 6727, 6785), (37, 4107, 4165), (37, 5476, 5534), (41, 5043, 5101), (41, 6724, 6782), (43, 3698, 3756), (43, 5547, 5605), (47, 4418, 4476), (47, 6627, 6685), (53, 5618, 5676)]

def row059_layer000_block000 : List ColouredInterval :=
  [(2, 3584, 3642), (2, 3840, 3898), (2, 4096, 4154), (2, 4352, 4410), (2, 4608, 4666), (2, 4864, 4922), (2, 5120, 5178), (2, 5376, 5434), (2, 5632, 5690), (2, 5888, 5946), (2, 6144, 6202), (2, 3584, 3642), (2, 4096, 4154), (2, 4608, 4666), (2, 5120, 5178), (2, 5632, 5690)]

def row059_layer000_block001 : List ColouredInterval :=
  [(2, 6144, 6202), (2, 6656, 6714), (2, 4096, 4154), (2, 5120, 5178), (2, 6144, 6202), (2, 4096, 4154), (2, 6144, 6202), (2, 4096, 4154), (3, 3422, 3460), (3, 3645, 3703), (3, 3888, 3946), (3, 4131, 4189), (3, 4374, 4432), (3, 4617, 4675), (3, 4860, 4918), (3, 5103, 5161)]

def row059_layer000_block002 : List ColouredInterval :=
  [(3, 5346, 5404), (3, 5589, 5647), (3, 5832, 5890), (3, 3645, 3703), (3, 4374, 4432), (3, 5103, 5161), (3, 5832, 5890), (3, 6561, 6619), (3, 4374, 4432), (3, 6561, 6619), (3, 6561, 6619), (5, 3750, 3808), (5, 4375, 4433), (5, 5000, 5058), (5, 5625, 5683), (5, 6250, 6308)]

def row059_layer000_block003 : List ColouredInterval :=
  [(5, 6250, 6308), (7, 3430, 3488), (7, 3773, 3831), (7, 4116, 4174), (7, 4459, 4517), (7, 4802, 4860), (7, 5145, 5203), (7, 5488, 5546), (7, 5831, 5889), (7, 6174, 6232), (7, 6517, 6575), (7, 4802, 4860), (11, 3993, 4051), (11, 5324, 5382), (11, 6655, 6713), (13, 3422, 3438)]

def row059_layer000_block004 : List ColouredInterval :=
  [(13, 3549, 3607), (13, 3718, 3776), (13, 3887, 3945), (13, 4056, 4114), (13, 4394, 4452), (13, 6591, 6649), (17, 3468, 3526), (17, 3757, 3815), (17, 4046, 4104), (17, 4335, 4393), (17, 4624, 4682), (17, 4913, 4971), (17, 5202, 5260), (17, 5491, 5549), (17, 5780, 5838), (17, 6069, 6127)]

def row059_layer000_block005 : List ColouredInterval :=
  [(17, 6358, 6416), (17, 6647, 6705), (17, 4913, 4971), (19, 3610, 3668), (19, 3971, 4029), (19, 4332, 4390), (19, 4693, 4751), (19, 5054, 5112), (19, 5415, 5473), (19, 5776, 5834), (19, 6137, 6195), (19, 6498, 6556), (23, 3703, 3761), (23, 4232, 4290), (23, 4761, 4819), (23, 5290, 5348)]

def row059_layer000_block006 : List ColouredInterval :=
  [(23, 5819, 5877), (23, 6348, 6406), (29, 3422, 3422), (29, 4205, 4263), (29, 5046, 5104), (29, 5887, 5945), (29, 6728, 6786), (31, 3844, 3902), (31, 4805, 4863), (31, 5766, 5824), (31, 6727, 6785), (37, 4107, 4165), (37, 5476, 5534), (41, 5043, 5101), (41, 6724, 6782), (43, 3698, 3756)]

def row059_layer000_block007 : List ColouredInterval :=
  [(43, 5547, 5605), (47, 4418, 4476), (47, 6627, 6685), (53, 5618, 5676)]

def row059_layer000_chunks : List (List ColouredInterval) :=
  [row059_layer000_block000, row059_layer000_block001, row059_layer000_block002, row059_layer000_block003, row059_layer000_block004, row059_layer000_block005, row059_layer000_block006, row059_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer000_arithmetic : LayerArithmeticValid row059.height { lower := 3422, upper := 6844, M := 24 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer000_enumeration :
    activePowerIntervalList 59 24 3422 6844 = row059_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer000_pairs000 :
    row059_layer000_block000.all (fun I => row059_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row059_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer000_pairs001 :
    row059_layer000_block001.all (fun I => row059_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row059_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer000_pairs002 :
    row059_layer000_block002.all (fun I => row059_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row059_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer000_pairs003 :
    row059_layer000_block003.all (fun I => row059_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row059_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer000_pairs004 :
    row059_layer000_block004.all (fun I => row059_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row059_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer000_pairs005 :
    row059_layer000_block005.all (fun I => row059_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row059_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer000_pairs006 :
    row059_layer000_block006.all (fun I => row059_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row059_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer000_pairs007 :
    row059_layer000_block007.all (fun I => row059_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row059_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer000_chunks_eq : row059_layer000_chunks.flatten = row059_layer000_intervals := by
  rfl

theorem row059_layer000_pairs : pairCoverCheck row059_layer000_intervals row059_bounds = true := by
  apply pairCoverCheck_of_chunks row059_layer000_chunks_eq
  intro block hblock
  simp only [row059_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row059_layer000_pairs000
  · exact row059_layer000_pairs001
  · exact row059_layer000_pairs002
  · exact row059_layer000_pairs003
  · exact row059_layer000_pairs004
  · exact row059_layer000_pairs005
  · exact row059_layer000_pairs006
  · exact row059_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer000_checked :
    coverLayerCheck row059.height row059.goods { lower := 3422, upper := 6844, M := 24 } = true := by
  exact coverLayerCheck_of_parts row059_layer000_arithmetic row059_layer000_enumeration row059_bounds_eq row059_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row059_layer001_intervals : List ColouredInterval :=
  [(2, 7168, 7226), (2, 7680, 7738), (2, 8192, 8250), (2, 8704, 8762), (2, 9216, 9274), (2, 9728, 9786), (2, 10240, 10298), (2, 10752, 10810), (2, 7168, 7226), (2, 8192, 8250), (2, 9216, 9274), (2, 10240, 10298), (2, 11264, 11322), (2, 12288, 12346), (2, 13312, 13370), (2, 8192, 8250), (2, 10240, 10298), (2, 12288, 12346), (2, 8192, 8250), (2, 12288, 12346), (2, 8192, 8250), (3, 7290, 7348), (3, 8019, 8077), (3, 8748, 8806), (3, 9477, 9535), (3, 10206, 10264), (3, 10935, 10993), (3, 11664, 11722), (3, 12393, 12451), (3, 13122, 13180), (3, 8748, 8806), (3, 10935, 10993), (3, 13122, 13180), (3, 13122, 13180), (5, 6875, 6933), (5, 7500, 7558), (5, 8125, 8183), (5, 8750, 8808), (5, 9375, 9433), (5, 10000, 10058), (5, 10625, 10683), (5, 11250, 11308), (5, 11875, 11933), (5, 12500, 12558), (5, 13125, 13183), (5, 9375, 9433), (5, 12500, 12558), (7, 6860, 6918), (7, 7203, 7261), (7, 7203, 7261), (7, 9604, 9662), (7, 12005, 12063), (11, 7986, 8044), (11, 9317, 9375), (11, 10648, 10706), (11, 11979, 12037), (11, 13310, 13368), (13, 8788, 8846), (13, 10985, 11043), (13, 13182, 13240), (17, 9826, 9884), (19, 6859, 6917), (19, 7220, 7278), (19, 7581, 7639), (19, 6859, 6917), (23, 6877, 6935), (23, 7406, 7464), (23, 7935, 7993), (23, 8464, 8522), (23, 8993, 9051), (23, 9522, 9580), (23, 10051, 10109), (23, 10580, 10638), (23, 11109, 11167), (23, 12167, 12225), (29, 7569, 7627), (29, 8410, 8468), (29, 9251, 9309), (29, 10092, 10150), (29, 10933, 10991), (29, 11774, 11832), (29, 12615, 12673), (29, 13456, 13514), (31, 7688, 7746), (31, 8649, 8707), (31, 9610, 9668), (31, 10571, 10629), (31, 11532, 11590), (31, 12493, 12551), (31, 13454, 13512), (37, 6845, 6903), (37, 8214, 8272), (37, 9583, 9641), (37, 10952, 11010), (37, 12321, 12379), (41, 8405, 8463), (41, 10086, 10144), (41, 11767, 11825), (41, 13448, 13506), (43, 7396, 7454), (43, 9245, 9303), (43, 11094, 11152), (43, 12943, 13001), (47, 8836, 8894), (47, 11045, 11103), (47, 13254, 13312), (53, 8427, 8485), (53, 11236, 11294)]

def row059_layer001_block000 : List ColouredInterval :=
  [(2, 7168, 7226), (2, 7680, 7738), (2, 8192, 8250), (2, 8704, 8762), (2, 9216, 9274), (2, 9728, 9786), (2, 10240, 10298), (2, 10752, 10810), (2, 7168, 7226), (2, 8192, 8250), (2, 9216, 9274), (2, 10240, 10298), (2, 11264, 11322), (2, 12288, 12346), (2, 13312, 13370), (2, 8192, 8250)]

def row059_layer001_block001 : List ColouredInterval :=
  [(2, 10240, 10298), (2, 12288, 12346), (2, 8192, 8250), (2, 12288, 12346), (2, 8192, 8250), (3, 7290, 7348), (3, 8019, 8077), (3, 8748, 8806), (3, 9477, 9535), (3, 10206, 10264), (3, 10935, 10993), (3, 11664, 11722), (3, 12393, 12451), (3, 13122, 13180), (3, 8748, 8806), (3, 10935, 10993)]

def row059_layer001_block002 : List ColouredInterval :=
  [(3, 13122, 13180), (3, 13122, 13180), (5, 6875, 6933), (5, 7500, 7558), (5, 8125, 8183), (5, 8750, 8808), (5, 9375, 9433), (5, 10000, 10058), (5, 10625, 10683), (5, 11250, 11308), (5, 11875, 11933), (5, 12500, 12558), (5, 13125, 13183), (5, 9375, 9433), (5, 12500, 12558), (7, 6860, 6918)]

def row059_layer001_block003 : List ColouredInterval :=
  [(7, 7203, 7261), (7, 7203, 7261), (7, 9604, 9662), (7, 12005, 12063), (11, 7986, 8044), (11, 9317, 9375), (11, 10648, 10706), (11, 11979, 12037), (11, 13310, 13368), (13, 8788, 8846), (13, 10985, 11043), (13, 13182, 13240), (17, 9826, 9884), (19, 6859, 6917), (19, 7220, 7278), (19, 7581, 7639)]

def row059_layer001_block004 : List ColouredInterval :=
  [(19, 6859, 6917), (23, 6877, 6935), (23, 7406, 7464), (23, 7935, 7993), (23, 8464, 8522), (23, 8993, 9051), (23, 9522, 9580), (23, 10051, 10109), (23, 10580, 10638), (23, 11109, 11167), (23, 12167, 12225), (29, 7569, 7627), (29, 8410, 8468), (29, 9251, 9309), (29, 10092, 10150), (29, 10933, 10991)]

def row059_layer001_block005 : List ColouredInterval :=
  [(29, 11774, 11832), (29, 12615, 12673), (29, 13456, 13514), (31, 7688, 7746), (31, 8649, 8707), (31, 9610, 9668), (31, 10571, 10629), (31, 11532, 11590), (31, 12493, 12551), (31, 13454, 13512), (37, 6845, 6903), (37, 8214, 8272), (37, 9583, 9641), (37, 10952, 11010), (37, 12321, 12379), (41, 8405, 8463)]

def row059_layer001_block006 : List ColouredInterval :=
  [(41, 10086, 10144), (41, 11767, 11825), (41, 13448, 13506), (43, 7396, 7454), (43, 9245, 9303), (43, 11094, 11152), (43, 12943, 13001), (47, 8836, 8894), (47, 11045, 11103), (47, 13254, 13312), (53, 8427, 8485), (53, 11236, 11294)]

def row059_layer001_chunks : List (List ColouredInterval) :=
  [row059_layer001_block000, row059_layer001_block001, row059_layer001_block002, row059_layer001_block003, row059_layer001_block004, row059_layer001_block005, row059_layer001_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer001_arithmetic : LayerArithmeticValid row059.height { lower := 6844, upper := 13688, M := 21 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer001_enumeration :
    activePowerIntervalList 59 21 6844 13688 = row059_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer001_pairs000 :
    row059_layer001_block000.all (fun I => row059_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row059_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer001_pairs001 :
    row059_layer001_block001.all (fun I => row059_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row059_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer001_pairs002 :
    row059_layer001_block002.all (fun I => row059_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row059_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer001_pairs003 :
    row059_layer001_block003.all (fun I => row059_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row059_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer001_pairs004 :
    row059_layer001_block004.all (fun I => row059_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row059_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer001_pairs005 :
    row059_layer001_block005.all (fun I => row059_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row059_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer001_pairs006 :
    row059_layer001_block006.all (fun I => row059_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row059_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer001_chunks_eq : row059_layer001_chunks.flatten = row059_layer001_intervals := by
  rfl

theorem row059_layer001_pairs : pairCoverCheck row059_layer001_intervals row059_bounds = true := by
  apply pairCoverCheck_of_chunks row059_layer001_chunks_eq
  intro block hblock
  simp only [row059_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row059_layer001_pairs000
  · exact row059_layer001_pairs001
  · exact row059_layer001_pairs002
  · exact row059_layer001_pairs003
  · exact row059_layer001_pairs004
  · exact row059_layer001_pairs005
  · exact row059_layer001_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer001_checked :
    coverLayerCheck row059.height row059.goods { lower := 6844, upper := 13688, M := 21 } = true := by
  exact coverLayerCheck_of_parts row059_layer001_arithmetic row059_layer001_enumeration row059_bounds_eq row059_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row059_layer002_intervals : List ColouredInterval :=
  [(2, 14336, 14394), (2, 15360, 15418), (2, 16384, 16442), (2, 17408, 17466), (2, 18432, 18490), (2, 14336, 14394), (2, 16384, 16442), (2, 18432, 18490), (2, 20480, 20538), (2, 22528, 22586), (2, 24576, 24634), (2, 26624, 26682), (2, 16384, 16442), (2, 20480, 20538), (2, 24576, 24634), (2, 16384, 16442), (2, 24576, 24634), (2, 16384, 16442), (3, 15309, 15367), (3, 17496, 17554), (3, 19683, 19741), (3, 21870, 21928), (3, 24057, 24115), (3, 26244, 26302), (3, 19683, 19741), (3, 26244, 26302), (3, 19683, 19741), (5, 15625, 15683), (5, 18750, 18808), (5, 21875, 21933), (5, 25000, 25058), (5, 15625, 15683), (7, 14406, 14464), (7, 16807, 16865), (7, 19208, 19266), (7, 21609, 21667), (7, 24010, 24068), (7, 26411, 26469), (7, 16807, 16865), (11, 14641, 14699), (11, 15972, 16030), (11, 17303, 17361), (11, 18634, 18692), (11, 19965, 20023), (11, 21296, 21354), (11, 22627, 22685), (11, 23958, 24016), (11, 14641, 14699), (13, 15379, 15437), (13, 17576, 17634), (13, 19773, 19831), (13, 21970, 22028), (13, 24167, 24225), (13, 26364, 26422), (17, 14739, 14797), (17, 19652, 19710), (17, 24565, 24623), (19, 13718, 13776), (19, 20577, 20635), (23, 24334, 24392), (29, 14297, 14355), (29, 15138, 15196), (29, 24389, 24447), (31, 14415, 14473), (31, 15376, 15434), (31, 16337, 16395), (31, 17298, 17356), (37, 13690, 13748), (37, 15059, 15117), (37, 16428, 16486), (37, 17797, 17855), (37, 19166, 19224), (37, 20535, 20593), (37, 21904, 21962), (37, 23273, 23331), (37, 24642, 24700), (41, 15129, 15187), (41, 16810, 16868), (41, 18491, 18549), (41, 20172, 20230), (41, 21853, 21911), (41, 23534, 23592), (41, 25215, 25273), (41, 26896, 26954), (43, 14792, 14850), (43, 16641, 16699), (43, 18490, 18548), (43, 20339, 20397), (43, 22188, 22246), (43, 24037, 24095), (43, 25886, 25944), (47, 15463, 15521), (47, 17672, 17730), (47, 19881, 19939), (47, 22090, 22148), (47, 24299, 24357), (47, 26508, 26566), (53, 14045, 14103), (53, 16854, 16912), (53, 19663, 19721), (53, 22472, 22530), (53, 25281, 25339)]

def row059_layer002_block000 : List ColouredInterval :=
  [(2, 14336, 14394), (2, 15360, 15418), (2, 16384, 16442), (2, 17408, 17466), (2, 18432, 18490), (2, 14336, 14394), (2, 16384, 16442), (2, 18432, 18490), (2, 20480, 20538), (2, 22528, 22586), (2, 24576, 24634), (2, 26624, 26682), (2, 16384, 16442), (2, 20480, 20538), (2, 24576, 24634), (2, 16384, 16442)]

def row059_layer002_block001 : List ColouredInterval :=
  [(2, 24576, 24634), (2, 16384, 16442), (3, 15309, 15367), (3, 17496, 17554), (3, 19683, 19741), (3, 21870, 21928), (3, 24057, 24115), (3, 26244, 26302), (3, 19683, 19741), (3, 26244, 26302), (3, 19683, 19741), (5, 15625, 15683), (5, 18750, 18808), (5, 21875, 21933), (5, 25000, 25058), (5, 15625, 15683)]

def row059_layer002_block002 : List ColouredInterval :=
  [(7, 14406, 14464), (7, 16807, 16865), (7, 19208, 19266), (7, 21609, 21667), (7, 24010, 24068), (7, 26411, 26469), (7, 16807, 16865), (11, 14641, 14699), (11, 15972, 16030), (11, 17303, 17361), (11, 18634, 18692), (11, 19965, 20023), (11, 21296, 21354), (11, 22627, 22685), (11, 23958, 24016), (11, 14641, 14699)]

def row059_layer002_block003 : List ColouredInterval :=
  [(13, 15379, 15437), (13, 17576, 17634), (13, 19773, 19831), (13, 21970, 22028), (13, 24167, 24225), (13, 26364, 26422), (17, 14739, 14797), (17, 19652, 19710), (17, 24565, 24623), (19, 13718, 13776), (19, 20577, 20635), (23, 24334, 24392), (29, 14297, 14355), (29, 15138, 15196), (29, 24389, 24447), (31, 14415, 14473)]

def row059_layer002_block004 : List ColouredInterval :=
  [(31, 15376, 15434), (31, 16337, 16395), (31, 17298, 17356), (37, 13690, 13748), (37, 15059, 15117), (37, 16428, 16486), (37, 17797, 17855), (37, 19166, 19224), (37, 20535, 20593), (37, 21904, 21962), (37, 23273, 23331), (37, 24642, 24700), (41, 15129, 15187), (41, 16810, 16868), (41, 18491, 18549), (41, 20172, 20230)]

def row059_layer002_block005 : List ColouredInterval :=
  [(41, 21853, 21911), (41, 23534, 23592), (41, 25215, 25273), (41, 26896, 26954), (43, 14792, 14850), (43, 16641, 16699), (43, 18490, 18548), (43, 20339, 20397), (43, 22188, 22246), (43, 24037, 24095), (43, 25886, 25944), (47, 15463, 15521), (47, 17672, 17730), (47, 19881, 19939), (47, 22090, 22148), (47, 24299, 24357)]

def row059_layer002_block006 : List ColouredInterval :=
  [(47, 26508, 26566), (53, 14045, 14103), (53, 16854, 16912), (53, 19663, 19721), (53, 22472, 22530), (53, 25281, 25339)]

def row059_layer002_chunks : List (List ColouredInterval) :=
  [row059_layer002_block000, row059_layer002_block001, row059_layer002_block002, row059_layer002_block003, row059_layer002_block004, row059_layer002_block005, row059_layer002_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer002_arithmetic : LayerArithmeticValid row059.height { lower := 13688, upper := 27376, M := 18 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer002_enumeration :
    activePowerIntervalList 59 18 13688 27376 = row059_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer002_pairs000 :
    row059_layer002_block000.all (fun I => row059_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row059_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer002_pairs001 :
    row059_layer002_block001.all (fun I => row059_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row059_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer002_pairs002 :
    row059_layer002_block002.all (fun I => row059_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row059_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer002_pairs003 :
    row059_layer002_block003.all (fun I => row059_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row059_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer002_pairs004 :
    row059_layer002_block004.all (fun I => row059_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row059_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer002_pairs005 :
    row059_layer002_block005.all (fun I => row059_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row059_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer002_pairs006 :
    row059_layer002_block006.all (fun I => row059_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row059_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer002_chunks_eq : row059_layer002_chunks.flatten = row059_layer002_intervals := by
  rfl

theorem row059_layer002_pairs : pairCoverCheck row059_layer002_intervals row059_bounds = true := by
  apply pairCoverCheck_of_chunks row059_layer002_chunks_eq
  intro block hblock
  simp only [row059_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row059_layer002_pairs000
  · exact row059_layer002_pairs001
  · exact row059_layer002_pairs002
  · exact row059_layer002_pairs003
  · exact row059_layer002_pairs004
  · exact row059_layer002_pairs005
  · exact row059_layer002_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer002_checked :
    coverLayerCheck row059.height row059.goods { lower := 13688, upper := 27376, M := 18 } = true := by
  exact coverLayerCheck_of_parts row059_layer002_arithmetic row059_layer002_enumeration row059_bounds_eq row059_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row059_layer003_intervals : List ColouredInterval :=
  [(2, 28672, 28730), (2, 30720, 30778), (2, 28672, 28730), (2, 32768, 32826), (2, 36864, 36922), (2, 40960, 41018), (2, 45056, 45114), (2, 49152, 49210), (2, 53248, 53306), (2, 32768, 32826), (2, 40960, 41018), (2, 49152, 49210), (2, 32768, 32826), (2, 49152, 49210), (2, 32768, 32826), (3, 28431, 28489), (3, 30618, 30676), (3, 32805, 32863), (3, 32805, 32863), (3, 39366, 39424), (3, 45927, 45985), (3, 52488, 52546), (3, 39366, 39424), (5, 28125, 28183), (5, 31250, 31308), (5, 34375, 34433), (5, 37500, 37558), (5, 40625, 40683), (5, 43750, 43808), (5, 46875, 46933), (5, 31250, 31308), (5, 46875, 46933), (7, 28812, 28870), (7, 31213, 31271), (7, 33614, 33672), (7, 36015, 36073), (7, 33614, 33672), (7, 50421, 50479), (11, 29282, 29340), (11, 43923, 43981), (13, 28561, 28619), (13, 30758, 30816), (13, 32955, 33013), (13, 28561, 28619), (17, 29478, 29536), (17, 34391, 34449), (17, 39304, 39362), (17, 44217, 44275), (17, 49130, 49188), (17, 54043, 54101), (19, 27436, 27494), (19, 34295, 34353), (19, 41154, 41212), (19, 48013, 48071), (23, 36501, 36559), (23, 48668, 48726), (29, 48778, 48836), (31, 29791, 29849), (37, 50653, 50711), (43, 27735, 27793), (47, 28717, 28775), (47, 30926, 30984), (47, 33135, 33193), (53, 28090, 28148), (53, 30899, 30957), (53, 33708, 33766), (53, 36517, 36575), (53, 39326, 39384), (53, 42135, 42193)]

def row059_layer003_block000 : List ColouredInterval :=
  [(2, 28672, 28730), (2, 30720, 30778), (2, 28672, 28730), (2, 32768, 32826), (2, 36864, 36922), (2, 40960, 41018), (2, 45056, 45114), (2, 49152, 49210), (2, 53248, 53306), (2, 32768, 32826), (2, 40960, 41018), (2, 49152, 49210), (2, 32768, 32826), (2, 49152, 49210), (2, 32768, 32826), (3, 28431, 28489)]

def row059_layer003_block001 : List ColouredInterval :=
  [(3, 30618, 30676), (3, 32805, 32863), (3, 32805, 32863), (3, 39366, 39424), (3, 45927, 45985), (3, 52488, 52546), (3, 39366, 39424), (5, 28125, 28183), (5, 31250, 31308), (5, 34375, 34433), (5, 37500, 37558), (5, 40625, 40683), (5, 43750, 43808), (5, 46875, 46933), (5, 31250, 31308), (5, 46875, 46933)]

def row059_layer003_block002 : List ColouredInterval :=
  [(7, 28812, 28870), (7, 31213, 31271), (7, 33614, 33672), (7, 36015, 36073), (7, 33614, 33672), (7, 50421, 50479), (11, 29282, 29340), (11, 43923, 43981), (13, 28561, 28619), (13, 30758, 30816), (13, 32955, 33013), (13, 28561, 28619), (17, 29478, 29536), (17, 34391, 34449), (17, 39304, 39362), (17, 44217, 44275)]

def row059_layer003_block003 : List ColouredInterval :=
  [(17, 49130, 49188), (17, 54043, 54101), (19, 27436, 27494), (19, 34295, 34353), (19, 41154, 41212), (19, 48013, 48071), (23, 36501, 36559), (23, 48668, 48726), (29, 48778, 48836), (31, 29791, 29849), (37, 50653, 50711), (43, 27735, 27793), (47, 28717, 28775), (47, 30926, 30984), (47, 33135, 33193), (53, 28090, 28148)]

def row059_layer003_block004 : List ColouredInterval :=
  [(53, 30899, 30957), (53, 33708, 33766), (53, 36517, 36575), (53, 39326, 39384), (53, 42135, 42193)]

def row059_layer003_chunks : List (List ColouredInterval) :=
  [row059_layer003_block000, row059_layer003_block001, row059_layer003_block002, row059_layer003_block003, row059_layer003_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer003_arithmetic : LayerArithmeticValid row059.height { lower := 27376, upper := 54752, M := 15 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer003_enumeration :
    activePowerIntervalList 59 15 27376 54752 = row059_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer003_pairs000 :
    row059_layer003_block000.all (fun I => row059_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row059_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer003_pairs001 :
    row059_layer003_block001.all (fun I => row059_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row059_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer003_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer003_pairs002 :
    row059_layer003_block002.all (fun I => row059_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row059_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer003_pairs003 :
    row059_layer003_block003.all (fun I => row059_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row059_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer003_pairs004 :
    row059_layer003_block004.all (fun I => row059_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row059_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer003_chunks_eq : row059_layer003_chunks.flatten = row059_layer003_intervals := by
  rfl

theorem row059_layer003_pairs : pairCoverCheck row059_layer003_intervals row059_bounds = true := by
  apply pairCoverCheck_of_chunks row059_layer003_chunks_eq
  intro block hblock
  simp only [row059_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row059_layer003_pairs000
  · exact row059_layer003_pairs001
  · exact row059_layer003_pairs002
  · exact row059_layer003_pairs003
  · exact row059_layer003_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer003_checked :
    coverLayerCheck row059.height row059.goods { lower := 27376, upper := 54752, M := 15 } = true := by
  exact coverLayerCheck_of_parts row059_layer003_arithmetic row059_layer003_enumeration row059_bounds_eq row059_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer003_checked
