import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row092_height : HeightCertificateDatum := { i := 92, r := 30, s := 64, n0Power10 := 9 }

def row092_goods : List GoodSegment := [
  { lower := 186, upper := 272, witness := RowWitness.topPrime 181 },
  { lower := 273, upper := 362, witness := RowWitness.topPrime 271 },
  { lower := 363, upper := 450, witness := RowWitness.topPrime 359 },
  { lower := 451, upper := 540, witness := RowWitness.topPrime 449 },
  { lower := 541, upper := 632, witness := RowWitness.topPrime 541 },
  { lower := 633, upper := 722, witness := RowWitness.topPrime 631 },
  { lower := 723, upper := 810, witness := RowWitness.topPrime 719 },
  { lower := 811, upper := 902, witness := RowWitness.topPrime 811 },
  { lower := 903, upper := 978, witness := RowWitness.topPrime 887 },
  { lower := 979, upper := 1068, witness := RowWitness.topPrime 977 },
  { lower := 1069, upper := 1160, witness := RowWitness.topPrime 1069 },
  { lower := 1161, upper := 1244, witness := RowWitness.topPrime 1153 },
  { lower := 1245, upper := 1328, witness := RowWitness.topPrime 1237 },
  { lower := 1329, upper := 1418, witness := RowWitness.topPrime 1327 },
  { lower := 1419, upper := 1500, witness := RowWitness.topPrime 1409 },
  { lower := 1501, upper := 1590, witness := RowWitness.topPrime 1499 },
  { lower := 1591, upper := 1674, witness := RowWitness.topPrime 1583 },
  { lower := 1675, upper := 1760, witness := RowWitness.topPrime 1669 },
  { lower := 1761, upper := 1850, witness := RowWitness.topPrime 1759 },
  { lower := 1851, upper := 1938, witness := RowWitness.topPrime 1847 },
  { lower := 1939, upper := 2024, witness := RowWitness.topPrime 1933 },
  { lower := 2025, upper := 2108, witness := RowWitness.topPrime 2017 },
  { lower := 2109, upper := 2190, witness := RowWitness.topPrime 2099 },
  { lower := 2191, upper := 2270, witness := RowWitness.topPrime 2179 },
  { lower := 2271, upper := 2360, witness := RowWitness.topPrime 2269 },
  { lower := 2361, upper := 2448, witness := RowWitness.topPrime 2357 },
  { lower := 2449, upper := 2538, witness := RowWitness.topPrime 2447 },
  { lower := 2539, upper := 2630, witness := RowWitness.topPrime 2539 },
  { lower := 2631, upper := 2712, witness := RowWitness.topPrime 2621 },
  { lower := 2713, upper := 2804, witness := RowWitness.topPrime 2713 },
  { lower := 2805, upper := 2894, witness := RowWitness.topPrime 2803 },
  { lower := 2895, upper := 2978, witness := RowWitness.topPrime 2887 },
  { lower := 2979, upper := 3062, witness := RowWitness.topPrime 2971 },
  { lower := 3063, upper := 3152, witness := RowWitness.topPrime 3061 },
  { lower := 3153, upper := 3228, witness := RowWitness.topPrime 3137 },
  { lower := 3229, upper := 3320, witness := RowWitness.topPrime 3229 },
  { lower := 3321, upper := 3410, witness := RowWitness.topPrime 3319 },
  { lower := 3411, upper := 3498, witness := RowWitness.topPrime 3407 },
  { lower := 3499, upper := 3590, witness := RowWitness.topPrime 3499 },
  { lower := 3591, upper := 3674, witness := RowWitness.topPrime 3583 },
  { lower := 3675, upper := 3764, witness := RowWitness.topPrime 3673 },
  { lower := 3765, upper := 3852, witness := RowWitness.topPrime 3761 },
  { lower := 3853, upper := 3944, witness := RowWitness.topPrime 3853 },
  { lower := 3945, upper := 4034, witness := RowWitness.topPrime 3943 },
  { lower := 4035, upper := 4118, witness := RowWitness.topPrime 4027 },
  { lower := 4119, upper := 4202, witness := RowWitness.topPrime 4111 },
  { lower := 4203, upper := 4292, witness := RowWitness.topPrime 4201 },
  { lower := 4293, upper := 4380, witness := RowWitness.topPrime 4289 },
  { lower := 4381, upper := 4464, witness := RowWitness.topPrime 4373 },
  { lower := 4465, upper := 4554, witness := RowWitness.topPrime 4463 },
  { lower := 4555, upper := 4640, witness := RowWitness.topPrime 4549 },
  { lower := 4641, upper := 4730, witness := RowWitness.topPrime 4639 },
  { lower := 4731, upper := 4820, witness := RowWitness.topPrime 4729 },
  { lower := 4821, upper := 4908, witness := RowWitness.topPrime 4817 },
  { lower := 4909, upper := 5000, witness := RowWitness.topPrime 4909 },
  { lower := 5001, upper := 5090, witness := RowWitness.topPrime 4999 },
  { lower := 5091, upper := 5178, witness := RowWitness.topPrime 5087 },
  { lower := 5179, upper := 5270, witness := RowWitness.topPrime 5179 },
  { lower := 5271, upper := 5352, witness := RowWitness.topPrime 5261 },
  { lower := 5353, upper := 5442, witness := RowWitness.topPrime 5351 },
  { lower := 5443, upper := 5534, witness := RowWitness.topPrime 5443 },
  { lower := 5535, upper := 5622, witness := RowWitness.topPrime 5531 },
  { lower := 5623, upper := 5714, witness := RowWitness.topPrime 5623 },
  { lower := 5715, upper := 5802, witness := RowWitness.topPrime 5711 },
  { lower := 5803, upper := 5892, witness := RowWitness.topPrime 5801 },
  { lower := 5893, upper := 5972, witness := RowWitness.topPrime 5881 },
  { lower := 5973, upper := 6044, witness := RowWitness.topPrime 5953 },
  { lower := 6045, upper := 6134, witness := RowWitness.topPrime 6043 },
  { lower := 6135, upper := 6224, witness := RowWitness.topPrime 6133 },
  { lower := 6225, upper := 6312, witness := RowWitness.topPrime 6221 },
  { lower := 6313, upper := 6402, witness := RowWitness.topPrime 6311 },
  { lower := 6403, upper := 6488, witness := RowWitness.topPrime 6397 },
  { lower := 6489, upper := 6572, witness := RowWitness.topPrime 6481 },
  { lower := 6573, upper := 6662, witness := RowWitness.topPrime 6571 },
  { lower := 6663, upper := 6752, witness := RowWitness.topPrime 6661 },
  { lower := 6753, upper := 6828, witness := RowWitness.topPrime 6737 },
  { lower := 6829, upper := 6920, witness := RowWitness.topPrime 6829 },
  { lower := 6921, upper := 7008, witness := RowWitness.topPrime 6917 },
  { lower := 7009, upper := 7092, witness := RowWitness.topPrime 7001 },
  { lower := 7093, upper := 7170, witness := RowWitness.topPrime 7079 },
  { lower := 7171, upper := 7250, witness := RowWitness.topPrime 7159 },
  { lower := 7251, upper := 7338, witness := RowWitness.topPrime 7247 },
  { lower := 7339, upper := 7424, witness := RowWitness.topPrime 7333 },
  { lower := 7425, upper := 7508, witness := RowWitness.topPrime 7417 },
  { lower := 7509, upper := 7598, witness := RowWitness.topPrime 7507 },
  { lower := 7599, upper := 7682, witness := RowWitness.topPrime 7591 },
  { lower := 7683, upper := 7772, witness := RowWitness.topPrime 7681 },
  { lower := 7773, upper := 7850, witness := RowWitness.topPrime 7759 },
  { lower := 7851, upper := 7932, witness := RowWitness.topPrime 7841 },
  { lower := 7933, upper := 8024, witness := RowWitness.topPrime 7933 },
  { lower := 8025, upper := 8108, witness := RowWitness.topPrime 8017 },
  { lower := 8109, upper := 8192, witness := RowWitness.topPrime 8101 },
  { lower := 8193, upper := 8282, witness := RowWitness.topPrime 8191 },
  { lower := 8283, upper := 8364, witness := RowWitness.topPrime 8273 },
  { lower := 8365, upper := 8371, witness := RowWitness.topPrime 8363 },
  { lower := 8410, upper := 8480, witness := RowWitness.topPrime 8389 },
  { lower := 8481, upper := 8501, witness := RowWitness.topPrime 8467 },
  { lower := 8649, upper := 8738, witness := RowWitness.topPrime 8647 },
  { lower := 8739, upper := 8740, witness := RowWitness.topPrime 8737 },
  { lower := 8748, upper := 8838, witness := RowWitness.topPrime 8747 },
  { lower := 8839, upper := 8879, witness := RowWitness.topPrime 8839 },
  { lower := 9025, upper := 9069, witness := RowWitness.topPrime 9013 },
  { lower := 9251, upper := 9332, witness := RowWitness.topPrime 9241 },
  { lower := 9333, upper := 9342, witness := RowWitness.topPrime 9323 },
  { lower := 9375, upper := 9408, witness := RowWitness.topPrime 9371 },
  { lower := 9604, upper := 9692, witness := RowWitness.topPrime 9601 },
  { lower := 9693, upper := 9695, witness := RowWitness.topPrime 9689 },
  { lower := 10082, upper := 10170, witness := RowWitness.topPrime 10079 },
  { lower := 10171, upper := 10177, witness := RowWitness.topPrime 10169 },
  { lower := 10240, upper := 10297, witness := RowWitness.topPrime 10223 },
  { lower := 10625, upper := 10704, witness := RowWitness.topPrime 10613 },
  { lower := 10705, upper := 10739, witness := RowWitness.topPrime 10691 },
  { lower := 10935, upper := 11000, witness := RowWitness.topPrime 10909 },
  { lower := 11001, upper := 11043, witness := RowWitness.topPrime 10993 },
  { lower := 11045, upper := 11076, witness := RowWitness.topPrime 11027 },
  { lower := 11094, upper := 11136, witness := RowWitness.topPrime 11093 },
  { lower := 11163, upper := 11185, witness := RowWitness.topPrime 11161 },
  { lower := 11236, upper := 11304, witness := RowWitness.topPrime 11213 },
  { lower := 11305, upper := 11327, witness := RowWitness.topPrime 11299 },
  { lower := 11774, upper := 11834, witness := RowWitness.topPrime 11743 },
  { lower := 11835, upper := 11858, witness := RowWitness.topPrime 11833 },
  { lower := 12005, upper := 12070, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12379, witness := RowWitness.topPrime 12301 },
  { lower := 12393, upper := 12412, witness := RowWitness.topPrime 12391 },
  { lower := 12482, upper := 12484, witness := RowWitness.topPrime 12479 },
  { lower := 12493, upper := 12582, witness := RowWitness.topPrime 12491 },
  { lower := 12583, upper := 12584, witness := RowWitness.topPrime 12583 },
  { lower := 13125, upper := 13212, witness := RowWitness.topPrime 13121 },
  { lower := 13213, upper := 13216, witness := RowWitness.topPrime 13187 },
  { lower := 13254, upper := 13273, witness := RowWitness.topPrime 13249 },
  { lower := 13310, upper := 13345, witness := RowWitness.topPrime 13309 },
  { lower := 13454, upper := 13542, witness := RowWitness.topPrime 13451 },
  { lower := 13543, upper := 13547, witness := RowWitness.topPrime 13537 },
  { lower := 13718, upper := 13802, witness := RowWitness.topPrime 13711 },
  { lower := 13803, upper := 13841, witness := RowWitness.topPrime 13799 },
  { lower := 13851, upper := 13869, witness := RowWitness.topPrime 13841 },
  { lower := 13924, upper := 13942, witness := RowWitness.topPrime 13921 },
  { lower := 14375, upper := 14388, witness := RowWitness.topPrime 14369 },
  { lower := 14406, upper := 14492, witness := RowWitness.topPrime 14401 },
  { lower := 14493, upper := 14497, witness := RowWitness.topPrime 14489 },
  { lower := 14641, upper := 14671, witness := RowWitness.topPrime 14639 },
  { lower := 14792, upper := 14830, witness := RowWitness.topPrime 14783 },
  { lower := 15059, upper := 15091, witness := RowWitness.topPrime 15053 },
  { lower := 15123, upper := 15212, witness := RowWitness.topPrime 15121 },
  { lower := 15213, upper := 15220, witness := RowWitness.topPrime 15199 },
  { lower := 15376, upper := 15464, witness := RowWitness.topPrime 15373 },
  { lower := 15465, upper := 15470, witness := RowWitness.topPrime 15461 },
  { lower := 15979, upper := 16064, witness := RowWitness.topPrime 15973 },
  { lower := 16065, upper := 16078, witness := RowWitness.topPrime 16063 },
  { lower := 16384, upper := 16472, witness := RowWitness.topPrime 16381 },
  { lower := 16473, upper := 16475, witness := RowWitness.topPrime 16453 },
  { lower := 16810, upper := 16878, witness := RowWitness.topPrime 16787 },
  { lower := 16879, upper := 16911, witness := RowWitness.topPrime 16879 },
  { lower := 17303, upper := 17389, witness := RowWitness.topPrime 17299 },
  { lower := 17496, upper := 17496, witness := RowWitness.topPrime 17491 },
  { lower := 17576, upper := 17587, witness := RowWitness.topPrime 17573 },
  { lower := 17661, upper := 17667, witness := RowWitness.topPrime 17659 },
  { lower := 17672, upper := 17752, witness := RowWitness.topPrime 17669 },
  { lower := 18491, upper := 18572, witness := RowWitness.topPrime 18481 },
  { lower := 18573, upper := 18581, witness := RowWitness.topPrime 18553 },
  { lower := 18634, upper := 18696, witness := RowWitness.topPrime 18617 },
  { lower := 18723, upper := 18725, witness := RowWitness.topPrime 18719 },
  { lower := 18750, upper := 18814, witness := RowWitness.topPrime 18749 },
  { lower := 19208, upper := 19298, witness := RowWitness.topPrime 19207 },
  { lower := 19299, upper := 19299, witness := RowWitness.topPrime 19289 },
  { lower := 19663, upper := 19752, witness := RowWitness.topPrime 19661 },
  { lower := 19753, upper := 19754, witness := RowWitness.topPrime 19753 },
  { lower := 19773, upper := 19774, witness := RowWitness.topPrime 19763 },
  { lower := 19965, upper := 19972, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20252, witness := RowWitness.topPrime 20161 },
  { lower := 20253, upper := 20263, witness := RowWitness.topPrime 20249 },
  { lower := 20535, upper := 20571, witness := RowWitness.topPrime 20533 },
  { lower := 20577, upper := 20626, witness := RowWitness.topPrime 20563 },
  { lower := 20667, upper := 20668, witness := RowWitness.topPrime 20663 },
  { lower := 21316, upper := 21387, witness := RowWitness.topPrime 21313 },
  { lower := 21870, upper := 21954, witness := RowWitness.topPrime 21863 },
  { lower := 21955, upper := 21966, witness := RowWitness.topPrime 21943 },
  { lower := 21970, upper := 21995, witness := RowWitness.topPrime 21961 },
  { lower := 22472, upper := 22536, witness := RowWitness.topPrime 22469 },
  { lower := 24010, upper := 24098, witness := RowWitness.topPrime 24007 },
  { lower := 24099, upper := 24128, witness := RowWitness.topPrime 24097 },
  { lower := 24367, upper := 24450, witness := RowWitness.topPrime 24359 },
  { lower := 24451, upper := 24458, witness := RowWitness.topPrime 24443 },
  { lower := 24576, upper := 24662, witness := RowWitness.topPrime 24571 },
  { lower := 24663, upper := 24667, witness := RowWitness.topPrime 24659 },
  { lower := 25000, upper := 25055, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25280, witness := RowWitness.topPrime 25189 },
  { lower := 25281, upper := 25352, witness := RowWitness.topPrime 25261 },
  { lower := 25353, upper := 25372, witness := RowWitness.topPrime 25349 },
  { lower := 26047, upper := 26102, witness := RowWitness.topPrime 26041 },
  { lower := 26411, upper := 26455, witness := RowWitness.topPrime 26407 },
  { lower := 26645, upper := 26711, witness := RowWitness.topPrime 26641 },
  { lower := 26934, upper := 26987, witness := RowWitness.topPrime 26927 },
  { lower := 27436, upper := 27471, witness := RowWitness.topPrime 27431 },
  { lower := 28125, upper := 28181, witness := RowWitness.topPrime 28123 },
  { lower := 28577, upper := 28652, witness := RowWitness.topPrime 28573 },
  { lower := 28749, upper := 28808, witness := RowWitness.topPrime 28729 },
  { lower := 28812, upper := 28840, witness := RowWitness.topPrime 28807 },
  { lower := 29791, upper := 29859, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30337, witness := RowWitness.topPrime 30253 },
  { lower := 30926, upper := 30990, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31284, witness := RowWitness.topPrime 31193 },
  { lower := 31285, upper := 31304, witness := RowWitness.topPrime 31277 },
  { lower := 31329, upper := 31341, witness := RowWitness.topPrime 31327 },
  { lower := 31433, upper := 31488, witness := RowWitness.topPrime 31397 },
  { lower := 31489, upper := 31514, witness := RowWitness.topPrime 31489 },
  { lower := 31974, upper := 32030, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32859, witness := RowWitness.topPrime 32803 },
  { lower := 34375, upper := 34386, witness := RowWitness.topPrime 34369 },
  { lower := 34391, upper := 34472, witness := RowWitness.topPrime 34381 },
  { lower := 34473, upper := 34482, witness := RowWitness.topPrime 34471 },
  { lower := 35344, upper := 35378, witness := RowWitness.topPrime 35339 },
  { lower := 37210, upper := 37270, witness := RowWitness.topPrime 37201 },
  { lower := 37349, upper := 37394, witness := RowWitness.topPrime 37339 },
  { lower := 37500, upper := 37537, witness := RowWitness.topPrime 37493 },
  { lower := 37553, upper := 37591, witness := RowWitness.topPrime 37549 },
  { lower := 39326, upper := 39414, witness := RowWitness.topPrime 39323 },
  { lower := 39415, upper := 39417, witness := RowWitness.topPrime 39409 },
  { lower := 40401, upper := 40419, witness := RowWitness.topPrime 40387 },
  { lower := 43750, upper := 43778, witness := RowWitness.topPrime 43721 },
  { lower := 44944, upper := 44981, witness := RowWitness.topPrime 44939 },
  { lower := 48013, upper := 48052, witness := RowWitness.topPrime 47981 },
  { lower := 48778, upper := 48825, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49221, witness := RowWitness.topPrime 49139 },
  { lower := 50000, upper := 50019, witness := RowWitness.topPrime 49999 },
  { lower := 50421, upper := 50501, witness := RowWitness.topPrime 50417 },
  { lower := 55451, upper := 55532, witness := RowWitness.topPrime 55441 },
  { lower := 55533, upper := 55538, witness := RowWitness.topPrime 55529 },
  { lower := 58619, upper := 58655, witness := RowWitness.topPrime 58613 },
  { lower := 59582, upper := 59627, witness := RowWitness.topPrime 59581 },
  { lower := 62500, upper := 62501, witness := RowWitness.topPrime 62497 },
  { lower := 63948, upper := 63960, witness := RowWitness.topPrime 63929 },
  { lower := 65536, upper := 65612, witness := RowWitness.topPrime 65521 },
  { lower := 65613, upper := 65627, witness := RowWitness.topPrime 65609 },
  { lower := 68651, upper := 68681, witness := RowWitness.topPrime 68639 },
  { lower := 68921, upper := 68981, witness := RowWitness.topPrime 68917 },
  { lower := 73205, upper := 73258, witness := RowWitness.topPrime 73189 },
  { lower := 137842, upper := 137872, witness := RowWitness.topPrime 137831 },
  { lower := 146410, upper := 146425, witness := RowWitness.topPrime 146407 },
  { lower := 148955, upper := 148968, witness := RowWitness.topPrime 148949 }
]

def row092_layers : List CoverLayer := [
  { lower := 8372, upper := 16744, M := 25 },
  { lower := 16744, upper := 33488, M := 21 },
  { lower := 33488, upper := 66976, M := 17 },
  { lower := 66976, upper := 133952, M := 14 },
  { lower := 133952, upper := 267904, M := 12 },
  { lower := 267904, upper := 535808, M := 10 },
  { lower := 535808, upper := 1071616, M := 8 },
  { lower := 1071616, upper := 2143232, M := 7 },
  { lower := 2143232, upper := 4286464, M := 6 },
  { lower := 4286464, upper := 8572928, M := 5 },
  { lower := 8572928, upper := 17145856, M := 4 },
  { lower := 17145856, upper := 34291712, M := 4 },
  { lower := 34291712, upper := 68583424, M := 3 },
  { lower := 68583424, upper := 137166848, M := 3 },
  { lower := 137166848, upper := 274333696, M := 2 },
  { lower := 274333696, upper := 548667392, M := 2 },
  { lower := 548667392, upper := 1000000000, M := 2 }
]

def row092 : FiniteCoverRow := {
  height := row092_height,
  goods := row092_goods,
  layers := row092_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_good000_checked :
    goodSegmentCheck 92 30 64
      { lower := 186, upper := 272, witness := RowWitness.topPrime 181 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good001_checked :
    goodSegmentCheck 92 30 64
      { lower := 273, upper := 362, witness := RowWitness.topPrime 271 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good002_checked :
    goodSegmentCheck 92 30 64
      { lower := 363, upper := 450, witness := RowWitness.topPrime 359 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good003_checked :
    goodSegmentCheck 92 30 64
      { lower := 451, upper := 540, witness := RowWitness.topPrime 449 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good004_checked :
    goodSegmentCheck 92 30 64
      { lower := 541, upper := 632, witness := RowWitness.topPrime 541 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good005_checked :
    goodSegmentCheck 92 30 64
      { lower := 633, upper := 722, witness := RowWitness.topPrime 631 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good006_checked :
    goodSegmentCheck 92 30 64
      { lower := 723, upper := 810, witness := RowWitness.topPrime 719 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good007_checked :
    goodSegmentCheck 92 30 64
      { lower := 811, upper := 902, witness := RowWitness.topPrime 811 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good008_checked :
    goodSegmentCheck 92 30 64
      { lower := 903, upper := 978, witness := RowWitness.topPrime 887 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good009_checked :
    goodSegmentCheck 92 30 64
      { lower := 979, upper := 1068, witness := RowWitness.topPrime 977 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good010_checked :
    goodSegmentCheck 92 30 64
      { lower := 1069, upper := 1160, witness := RowWitness.topPrime 1069 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good011_checked :
    goodSegmentCheck 92 30 64
      { lower := 1161, upper := 1244, witness := RowWitness.topPrime 1153 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good012_checked :
    goodSegmentCheck 92 30 64
      { lower := 1245, upper := 1328, witness := RowWitness.topPrime 1237 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good013_checked :
    goodSegmentCheck 92 30 64
      { lower := 1329, upper := 1418, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good014_checked :
    goodSegmentCheck 92 30 64
      { lower := 1419, upper := 1500, witness := RowWitness.topPrime 1409 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good015_checked :
    goodSegmentCheck 92 30 64
      { lower := 1501, upper := 1590, witness := RowWitness.topPrime 1499 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_good016_checked :
    goodSegmentCheck 92 30 64
      { lower := 1591, upper := 1674, witness := RowWitness.topPrime 1583 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good017_checked :
    goodSegmentCheck 92 30 64
      { lower := 1675, upper := 1760, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good018_checked :
    goodSegmentCheck 92 30 64
      { lower := 1761, upper := 1850, witness := RowWitness.topPrime 1759 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good019_checked :
    goodSegmentCheck 92 30 64
      { lower := 1851, upper := 1938, witness := RowWitness.topPrime 1847 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good020_checked :
    goodSegmentCheck 92 30 64
      { lower := 1939, upper := 2024, witness := RowWitness.topPrime 1933 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good021_checked :
    goodSegmentCheck 92 30 64
      { lower := 2025, upper := 2108, witness := RowWitness.topPrime 2017 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good022_checked :
    goodSegmentCheck 92 30 64
      { lower := 2109, upper := 2190, witness := RowWitness.topPrime 2099 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good023_checked :
    goodSegmentCheck 92 30 64
      { lower := 2191, upper := 2270, witness := RowWitness.topPrime 2179 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good024_checked :
    goodSegmentCheck 92 30 64
      { lower := 2271, upper := 2360, witness := RowWitness.topPrime 2269 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good025_checked :
    goodSegmentCheck 92 30 64
      { lower := 2361, upper := 2448, witness := RowWitness.topPrime 2357 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good026_checked :
    goodSegmentCheck 92 30 64
      { lower := 2449, upper := 2538, witness := RowWitness.topPrime 2447 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good027_checked :
    goodSegmentCheck 92 30 64
      { lower := 2539, upper := 2630, witness := RowWitness.topPrime 2539 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good028_checked :
    goodSegmentCheck 92 30 64
      { lower := 2631, upper := 2712, witness := RowWitness.topPrime 2621 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good029_checked :
    goodSegmentCheck 92 30 64
      { lower := 2713, upper := 2804, witness := RowWitness.topPrime 2713 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good030_checked :
    goodSegmentCheck 92 30 64
      { lower := 2805, upper := 2894, witness := RowWitness.topPrime 2803 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good031_checked :
    goodSegmentCheck 92 30 64
      { lower := 2895, upper := 2978, witness := RowWitness.topPrime 2887 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_good032_checked :
    goodSegmentCheck 92 30 64
      { lower := 2979, upper := 3062, witness := RowWitness.topPrime 2971 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good033_checked :
    goodSegmentCheck 92 30 64
      { lower := 3063, upper := 3152, witness := RowWitness.topPrime 3061 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good034_checked :
    goodSegmentCheck 92 30 64
      { lower := 3153, upper := 3228, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good035_checked :
    goodSegmentCheck 92 30 64
      { lower := 3229, upper := 3320, witness := RowWitness.topPrime 3229 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good036_checked :
    goodSegmentCheck 92 30 64
      { lower := 3321, upper := 3410, witness := RowWitness.topPrime 3319 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good037_checked :
    goodSegmentCheck 92 30 64
      { lower := 3411, upper := 3498, witness := RowWitness.topPrime 3407 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good038_checked :
    goodSegmentCheck 92 30 64
      { lower := 3499, upper := 3590, witness := RowWitness.topPrime 3499 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good039_checked :
    goodSegmentCheck 92 30 64
      { lower := 3591, upper := 3674, witness := RowWitness.topPrime 3583 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good040_checked :
    goodSegmentCheck 92 30 64
      { lower := 3675, upper := 3764, witness := RowWitness.topPrime 3673 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good041_checked :
    goodSegmentCheck 92 30 64
      { lower := 3765, upper := 3852, witness := RowWitness.topPrime 3761 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good042_checked :
    goodSegmentCheck 92 30 64
      { lower := 3853, upper := 3944, witness := RowWitness.topPrime 3853 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good043_checked :
    goodSegmentCheck 92 30 64
      { lower := 3945, upper := 4034, witness := RowWitness.topPrime 3943 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good044_checked :
    goodSegmentCheck 92 30 64
      { lower := 4035, upper := 4118, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good045_checked :
    goodSegmentCheck 92 30 64
      { lower := 4119, upper := 4202, witness := RowWitness.topPrime 4111 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good046_checked :
    goodSegmentCheck 92 30 64
      { lower := 4203, upper := 4292, witness := RowWitness.topPrime 4201 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good047_checked :
    goodSegmentCheck 92 30 64
      { lower := 4293, upper := 4380, witness := RowWitness.topPrime 4289 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_good048_checked :
    goodSegmentCheck 92 30 64
      { lower := 4381, upper := 4464, witness := RowWitness.topPrime 4373 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good049_checked :
    goodSegmentCheck 92 30 64
      { lower := 4465, upper := 4554, witness := RowWitness.topPrime 4463 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good050_checked :
    goodSegmentCheck 92 30 64
      { lower := 4555, upper := 4640, witness := RowWitness.topPrime 4549 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good051_checked :
    goodSegmentCheck 92 30 64
      { lower := 4641, upper := 4730, witness := RowWitness.topPrime 4639 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good052_checked :
    goodSegmentCheck 92 30 64
      { lower := 4731, upper := 4820, witness := RowWitness.topPrime 4729 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good053_checked :
    goodSegmentCheck 92 30 64
      { lower := 4821, upper := 4908, witness := RowWitness.topPrime 4817 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good054_checked :
    goodSegmentCheck 92 30 64
      { lower := 4909, upper := 5000, witness := RowWitness.topPrime 4909 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good055_checked :
    goodSegmentCheck 92 30 64
      { lower := 5001, upper := 5090, witness := RowWitness.topPrime 4999 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good056_checked :
    goodSegmentCheck 92 30 64
      { lower := 5091, upper := 5178, witness := RowWitness.topPrime 5087 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good057_checked :
    goodSegmentCheck 92 30 64
      { lower := 5179, upper := 5270, witness := RowWitness.topPrime 5179 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good058_checked :
    goodSegmentCheck 92 30 64
      { lower := 5271, upper := 5352, witness := RowWitness.topPrime 5261 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good059_checked :
    goodSegmentCheck 92 30 64
      { lower := 5353, upper := 5442, witness := RowWitness.topPrime 5351 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good060_checked :
    goodSegmentCheck 92 30 64
      { lower := 5443, upper := 5534, witness := RowWitness.topPrime 5443 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good061_checked :
    goodSegmentCheck 92 30 64
      { lower := 5535, upper := 5622, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good062_checked :
    goodSegmentCheck 92 30 64
      { lower := 5623, upper := 5714, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good063_checked :
    goodSegmentCheck 92 30 64
      { lower := 5715, upper := 5802, witness := RowWitness.topPrime 5711 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_good064_checked :
    goodSegmentCheck 92 30 64
      { lower := 5803, upper := 5892, witness := RowWitness.topPrime 5801 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good065_checked :
    goodSegmentCheck 92 30 64
      { lower := 5893, upper := 5972, witness := RowWitness.topPrime 5881 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good066_checked :
    goodSegmentCheck 92 30 64
      { lower := 5973, upper := 6044, witness := RowWitness.topPrime 5953 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good067_checked :
    goodSegmentCheck 92 30 64
      { lower := 6045, upper := 6134, witness := RowWitness.topPrime 6043 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good068_checked :
    goodSegmentCheck 92 30 64
      { lower := 6135, upper := 6224, witness := RowWitness.topPrime 6133 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good069_checked :
    goodSegmentCheck 92 30 64
      { lower := 6225, upper := 6312, witness := RowWitness.topPrime 6221 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good070_checked :
    goodSegmentCheck 92 30 64
      { lower := 6313, upper := 6402, witness := RowWitness.topPrime 6311 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good071_checked :
    goodSegmentCheck 92 30 64
      { lower := 6403, upper := 6488, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good072_checked :
    goodSegmentCheck 92 30 64
      { lower := 6489, upper := 6572, witness := RowWitness.topPrime 6481 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good073_checked :
    goodSegmentCheck 92 30 64
      { lower := 6573, upper := 6662, witness := RowWitness.topPrime 6571 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good074_checked :
    goodSegmentCheck 92 30 64
      { lower := 6663, upper := 6752, witness := RowWitness.topPrime 6661 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good075_checked :
    goodSegmentCheck 92 30 64
      { lower := 6753, upper := 6828, witness := RowWitness.topPrime 6737 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good076_checked :
    goodSegmentCheck 92 30 64
      { lower := 6829, upper := 6920, witness := RowWitness.topPrime 6829 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good077_checked :
    goodSegmentCheck 92 30 64
      { lower := 6921, upper := 7008, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good078_checked :
    goodSegmentCheck 92 30 64
      { lower := 7009, upper := 7092, witness := RowWitness.topPrime 7001 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good079_checked :
    goodSegmentCheck 92 30 64
      { lower := 7093, upper := 7170, witness := RowWitness.topPrime 7079 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_good080_checked :
    goodSegmentCheck 92 30 64
      { lower := 7171, upper := 7250, witness := RowWitness.topPrime 7159 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good081_checked :
    goodSegmentCheck 92 30 64
      { lower := 7251, upper := 7338, witness := RowWitness.topPrime 7247 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good082_checked :
    goodSegmentCheck 92 30 64
      { lower := 7339, upper := 7424, witness := RowWitness.topPrime 7333 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good083_checked :
    goodSegmentCheck 92 30 64
      { lower := 7425, upper := 7508, witness := RowWitness.topPrime 7417 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good084_checked :
    goodSegmentCheck 92 30 64
      { lower := 7509, upper := 7598, witness := RowWitness.topPrime 7507 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good085_checked :
    goodSegmentCheck 92 30 64
      { lower := 7599, upper := 7682, witness := RowWitness.topPrime 7591 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good086_checked :
    goodSegmentCheck 92 30 64
      { lower := 7683, upper := 7772, witness := RowWitness.topPrime 7681 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good087_checked :
    goodSegmentCheck 92 30 64
      { lower := 7773, upper := 7850, witness := RowWitness.topPrime 7759 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good088_checked :
    goodSegmentCheck 92 30 64
      { lower := 7851, upper := 7932, witness := RowWitness.topPrime 7841 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good089_checked :
    goodSegmentCheck 92 30 64
      { lower := 7933, upper := 8024, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good090_checked :
    goodSegmentCheck 92 30 64
      { lower := 8025, upper := 8108, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good091_checked :
    goodSegmentCheck 92 30 64
      { lower := 8109, upper := 8192, witness := RowWitness.topPrime 8101 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good092_checked :
    goodSegmentCheck 92 30 64
      { lower := 8193, upper := 8282, witness := RowWitness.topPrime 8191 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good093_checked :
    goodSegmentCheck 92 30 64
      { lower := 8283, upper := 8364, witness := RowWitness.topPrime 8273 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good094_checked :
    goodSegmentCheck 92 30 64
      { lower := 8365, upper := 8371, witness := RowWitness.topPrime 8363 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good095_checked :
    goodSegmentCheck 92 30 64
      { lower := 8410, upper := 8480, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_good096_checked :
    goodSegmentCheck 92 30 64
      { lower := 8481, upper := 8501, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good097_checked :
    goodSegmentCheck 92 30 64
      { lower := 8649, upper := 8738, witness := RowWitness.topPrime 8647 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good098_checked :
    goodSegmentCheck 92 30 64
      { lower := 8739, upper := 8740, witness := RowWitness.topPrime 8737 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good099_checked :
    goodSegmentCheck 92 30 64
      { lower := 8748, upper := 8838, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good100_checked :
    goodSegmentCheck 92 30 64
      { lower := 8839, upper := 8879, witness := RowWitness.topPrime 8839 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good101_checked :
    goodSegmentCheck 92 30 64
      { lower := 9025, upper := 9069, witness := RowWitness.topPrime 9013 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good102_checked :
    goodSegmentCheck 92 30 64
      { lower := 9251, upper := 9332, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good103_checked :
    goodSegmentCheck 92 30 64
      { lower := 9333, upper := 9342, witness := RowWitness.topPrime 9323 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good104_checked :
    goodSegmentCheck 92 30 64
      { lower := 9375, upper := 9408, witness := RowWitness.topPrime 9371 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good105_checked :
    goodSegmentCheck 92 30 64
      { lower := 9604, upper := 9692, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good106_checked :
    goodSegmentCheck 92 30 64
      { lower := 9693, upper := 9695, witness := RowWitness.topPrime 9689 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good107_checked :
    goodSegmentCheck 92 30 64
      { lower := 10082, upper := 10170, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good108_checked :
    goodSegmentCheck 92 30 64
      { lower := 10171, upper := 10177, witness := RowWitness.topPrime 10169 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good109_checked :
    goodSegmentCheck 92 30 64
      { lower := 10240, upper := 10297, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good110_checked :
    goodSegmentCheck 92 30 64
      { lower := 10625, upper := 10704, witness := RowWitness.topPrime 10613 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good111_checked :
    goodSegmentCheck 92 30 64
      { lower := 10705, upper := 10739, witness := RowWitness.topPrime 10691 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_good112_checked :
    goodSegmentCheck 92 30 64
      { lower := 10935, upper := 11000, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good113_checked :
    goodSegmentCheck 92 30 64
      { lower := 11001, upper := 11043, witness := RowWitness.topPrime 10993 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good114_checked :
    goodSegmentCheck 92 30 64
      { lower := 11045, upper := 11076, witness := RowWitness.topPrime 11027 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good115_checked :
    goodSegmentCheck 92 30 64
      { lower := 11094, upper := 11136, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good116_checked :
    goodSegmentCheck 92 30 64
      { lower := 11163, upper := 11185, witness := RowWitness.topPrime 11161 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good117_checked :
    goodSegmentCheck 92 30 64
      { lower := 11236, upper := 11304, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good118_checked :
    goodSegmentCheck 92 30 64
      { lower := 11305, upper := 11327, witness := RowWitness.topPrime 11299 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good119_checked :
    goodSegmentCheck 92 30 64
      { lower := 11774, upper := 11834, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good120_checked :
    goodSegmentCheck 92 30 64
      { lower := 11835, upper := 11858, witness := RowWitness.topPrime 11833 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good121_checked :
    goodSegmentCheck 92 30 64
      { lower := 12005, upper := 12070, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good122_checked :
    goodSegmentCheck 92 30 64
      { lower := 12321, upper := 12379, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good123_checked :
    goodSegmentCheck 92 30 64
      { lower := 12393, upper := 12412, witness := RowWitness.topPrime 12391 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good124_checked :
    goodSegmentCheck 92 30 64
      { lower := 12482, upper := 12484, witness := RowWitness.topPrime 12479 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good125_checked :
    goodSegmentCheck 92 30 64
      { lower := 12493, upper := 12582, witness := RowWitness.topPrime 12491 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good126_checked :
    goodSegmentCheck 92 30 64
      { lower := 12583, upper := 12584, witness := RowWitness.topPrime 12583 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good127_checked :
    goodSegmentCheck 92 30 64
      { lower := 13125, upper := 13212, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_good128_checked :
    goodSegmentCheck 92 30 64
      { lower := 13213, upper := 13216, witness := RowWitness.topPrime 13187 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good129_checked :
    goodSegmentCheck 92 30 64
      { lower := 13254, upper := 13273, witness := RowWitness.topPrime 13249 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good130_checked :
    goodSegmentCheck 92 30 64
      { lower := 13310, upper := 13345, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good131_checked :
    goodSegmentCheck 92 30 64
      { lower := 13454, upper := 13542, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good132_checked :
    goodSegmentCheck 92 30 64
      { lower := 13543, upper := 13547, witness := RowWitness.topPrime 13537 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good133_checked :
    goodSegmentCheck 92 30 64
      { lower := 13718, upper := 13802, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good134_checked :
    goodSegmentCheck 92 30 64
      { lower := 13803, upper := 13841, witness := RowWitness.topPrime 13799 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good135_checked :
    goodSegmentCheck 92 30 64
      { lower := 13851, upper := 13869, witness := RowWitness.topPrime 13841 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good136_checked :
    goodSegmentCheck 92 30 64
      { lower := 13924, upper := 13942, witness := RowWitness.topPrime 13921 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good137_checked :
    goodSegmentCheck 92 30 64
      { lower := 14375, upper := 14388, witness := RowWitness.topPrime 14369 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good138_checked :
    goodSegmentCheck 92 30 64
      { lower := 14406, upper := 14492, witness := RowWitness.topPrime 14401 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good139_checked :
    goodSegmentCheck 92 30 64
      { lower := 14493, upper := 14497, witness := RowWitness.topPrime 14489 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good140_checked :
    goodSegmentCheck 92 30 64
      { lower := 14641, upper := 14671, witness := RowWitness.topPrime 14639 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good141_checked :
    goodSegmentCheck 92 30 64
      { lower := 14792, upper := 14830, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good142_checked :
    goodSegmentCheck 92 30 64
      { lower := 15059, upper := 15091, witness := RowWitness.topPrime 15053 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good143_checked :
    goodSegmentCheck 92 30 64
      { lower := 15123, upper := 15212, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_good144_checked :
    goodSegmentCheck 92 30 64
      { lower := 15213, upper := 15220, witness := RowWitness.topPrime 15199 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good145_checked :
    goodSegmentCheck 92 30 64
      { lower := 15376, upper := 15464, witness := RowWitness.topPrime 15373 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good146_checked :
    goodSegmentCheck 92 30 64
      { lower := 15465, upper := 15470, witness := RowWitness.topPrime 15461 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good147_checked :
    goodSegmentCheck 92 30 64
      { lower := 15979, upper := 16064, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good148_checked :
    goodSegmentCheck 92 30 64
      { lower := 16065, upper := 16078, witness := RowWitness.topPrime 16063 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good149_checked :
    goodSegmentCheck 92 30 64
      { lower := 16384, upper := 16472, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good150_checked :
    goodSegmentCheck 92 30 64
      { lower := 16473, upper := 16475, witness := RowWitness.topPrime 16453 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good151_checked :
    goodSegmentCheck 92 30 64
      { lower := 16810, upper := 16878, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good152_checked :
    goodSegmentCheck 92 30 64
      { lower := 16879, upper := 16911, witness := RowWitness.topPrime 16879 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good153_checked :
    goodSegmentCheck 92 30 64
      { lower := 17303, upper := 17389, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good154_checked :
    goodSegmentCheck 92 30 64
      { lower := 17496, upper := 17496, witness := RowWitness.topPrime 17491 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good155_checked :
    goodSegmentCheck 92 30 64
      { lower := 17576, upper := 17587, witness := RowWitness.topPrime 17573 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good156_checked :
    goodSegmentCheck 92 30 64
      { lower := 17661, upper := 17667, witness := RowWitness.topPrime 17659 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good157_checked :
    goodSegmentCheck 92 30 64
      { lower := 17672, upper := 17752, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good158_checked :
    goodSegmentCheck 92 30 64
      { lower := 18491, upper := 18572, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good159_checked :
    goodSegmentCheck 92 30 64
      { lower := 18573, upper := 18581, witness := RowWitness.topPrime 18553 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_good160_checked :
    goodSegmentCheck 92 30 64
      { lower := 18634, upper := 18696, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good161_checked :
    goodSegmentCheck 92 30 64
      { lower := 18723, upper := 18725, witness := RowWitness.topPrime 18719 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good162_checked :
    goodSegmentCheck 92 30 64
      { lower := 18750, upper := 18814, witness := RowWitness.topPrime 18749 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good163_checked :
    goodSegmentCheck 92 30 64
      { lower := 19208, upper := 19298, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good164_checked :
    goodSegmentCheck 92 30 64
      { lower := 19299, upper := 19299, witness := RowWitness.topPrime 19289 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good165_checked :
    goodSegmentCheck 92 30 64
      { lower := 19663, upper := 19752, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good166_checked :
    goodSegmentCheck 92 30 64
      { lower := 19753, upper := 19754, witness := RowWitness.topPrime 19753 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good167_checked :
    goodSegmentCheck 92 30 64
      { lower := 19773, upper := 19774, witness := RowWitness.topPrime 19763 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good168_checked :
    goodSegmentCheck 92 30 64
      { lower := 19965, upper := 19972, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good169_checked :
    goodSegmentCheck 92 30 64
      { lower := 20172, upper := 20252, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good170_checked :
    goodSegmentCheck 92 30 64
      { lower := 20253, upper := 20263, witness := RowWitness.topPrime 20249 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good171_checked :
    goodSegmentCheck 92 30 64
      { lower := 20535, upper := 20571, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good172_checked :
    goodSegmentCheck 92 30 64
      { lower := 20577, upper := 20626, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good173_checked :
    goodSegmentCheck 92 30 64
      { lower := 20667, upper := 20668, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good174_checked :
    goodSegmentCheck 92 30 64
      { lower := 21316, upper := 21387, witness := RowWitness.topPrime 21313 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good175_checked :
    goodSegmentCheck 92 30 64
      { lower := 21870, upper := 21954, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_good176_checked :
    goodSegmentCheck 92 30 64
      { lower := 21955, upper := 21966, witness := RowWitness.topPrime 21943 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good177_checked :
    goodSegmentCheck 92 30 64
      { lower := 21970, upper := 21995, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good178_checked :
    goodSegmentCheck 92 30 64
      { lower := 22472, upper := 22536, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good179_checked :
    goodSegmentCheck 92 30 64
      { lower := 24010, upper := 24098, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good180_checked :
    goodSegmentCheck 92 30 64
      { lower := 24099, upper := 24128, witness := RowWitness.topPrime 24097 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good181_checked :
    goodSegmentCheck 92 30 64
      { lower := 24367, upper := 24450, witness := RowWitness.topPrime 24359 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good182_checked :
    goodSegmentCheck 92 30 64
      { lower := 24451, upper := 24458, witness := RowWitness.topPrime 24443 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good183_checked :
    goodSegmentCheck 92 30 64
      { lower := 24576, upper := 24662, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good184_checked :
    goodSegmentCheck 92 30 64
      { lower := 24663, upper := 24667, witness := RowWitness.topPrime 24659 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good185_checked :
    goodSegmentCheck 92 30 64
      { lower := 25000, upper := 25055, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good186_checked :
    goodSegmentCheck 92 30 64
      { lower := 25215, upper := 25280, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good187_checked :
    goodSegmentCheck 92 30 64
      { lower := 25281, upper := 25352, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good188_checked :
    goodSegmentCheck 92 30 64
      { lower := 25353, upper := 25372, witness := RowWitness.topPrime 25349 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good189_checked :
    goodSegmentCheck 92 30 64
      { lower := 26047, upper := 26102, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good190_checked :
    goodSegmentCheck 92 30 64
      { lower := 26411, upper := 26455, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good191_checked :
    goodSegmentCheck 92 30 64
      { lower := 26645, upper := 26711, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_good192_checked :
    goodSegmentCheck 92 30 64
      { lower := 26934, upper := 26987, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good193_checked :
    goodSegmentCheck 92 30 64
      { lower := 27436, upper := 27471, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good194_checked :
    goodSegmentCheck 92 30 64
      { lower := 28125, upper := 28181, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good195_checked :
    goodSegmentCheck 92 30 64
      { lower := 28577, upper := 28652, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good196_checked :
    goodSegmentCheck 92 30 64
      { lower := 28749, upper := 28808, witness := RowWitness.topPrime 28729 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good197_checked :
    goodSegmentCheck 92 30 64
      { lower := 28812, upper := 28840, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good198_checked :
    goodSegmentCheck 92 30 64
      { lower := 29791, upper := 29859, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good199_checked :
    goodSegmentCheck 92 30 64
      { lower := 30258, upper := 30337, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good200_checked :
    goodSegmentCheck 92 30 64
      { lower := 30926, upper := 30990, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good201_checked :
    goodSegmentCheck 92 30 64
      { lower := 31213, upper := 31284, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good202_checked :
    goodSegmentCheck 92 30 64
      { lower := 31285, upper := 31304, witness := RowWitness.topPrime 31277 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good203_checked :
    goodSegmentCheck 92 30 64
      { lower := 31329, upper := 31341, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good204_checked :
    goodSegmentCheck 92 30 64
      { lower := 31433, upper := 31488, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good205_checked :
    goodSegmentCheck 92 30 64
      { lower := 31489, upper := 31514, witness := RowWitness.topPrime 31489 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good206_checked :
    goodSegmentCheck 92 30 64
      { lower := 31974, upper := 32030, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good207_checked :
    goodSegmentCheck 92 30 64
      { lower := 32805, upper := 32859, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_good208_checked :
    goodSegmentCheck 92 30 64
      { lower := 34375, upper := 34386, witness := RowWitness.topPrime 34369 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good209_checked :
    goodSegmentCheck 92 30 64
      { lower := 34391, upper := 34472, witness := RowWitness.topPrime 34381 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good210_checked :
    goodSegmentCheck 92 30 64
      { lower := 34473, upper := 34482, witness := RowWitness.topPrime 34471 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good211_checked :
    goodSegmentCheck 92 30 64
      { lower := 35344, upper := 35378, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good212_checked :
    goodSegmentCheck 92 30 64
      { lower := 37210, upper := 37270, witness := RowWitness.topPrime 37201 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good213_checked :
    goodSegmentCheck 92 30 64
      { lower := 37349, upper := 37394, witness := RowWitness.topPrime 37339 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good214_checked :
    goodSegmentCheck 92 30 64
      { lower := 37500, upper := 37537, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good215_checked :
    goodSegmentCheck 92 30 64
      { lower := 37553, upper := 37591, witness := RowWitness.topPrime 37549 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good216_checked :
    goodSegmentCheck 92 30 64
      { lower := 39326, upper := 39414, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good217_checked :
    goodSegmentCheck 92 30 64
      { lower := 39415, upper := 39417, witness := RowWitness.topPrime 39409 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good218_checked :
    goodSegmentCheck 92 30 64
      { lower := 40401, upper := 40419, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good219_checked :
    goodSegmentCheck 92 30 64
      { lower := 43750, upper := 43778, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good220_checked :
    goodSegmentCheck 92 30 64
      { lower := 44944, upper := 44981, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good221_checked :
    goodSegmentCheck 92 30 64
      { lower := 48013, upper := 48052, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good222_checked :
    goodSegmentCheck 92 30 64
      { lower := 48778, upper := 48825, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good223_checked :
    goodSegmentCheck 92 30 64
      { lower := 49152, upper := 49221, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_good224_checked :
    goodSegmentCheck 92 30 64
      { lower := 50000, upper := 50019, witness := RowWitness.topPrime 49999 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good225_checked :
    goodSegmentCheck 92 30 64
      { lower := 50421, upper := 50501, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good226_checked :
    goodSegmentCheck 92 30 64
      { lower := 55451, upper := 55532, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good227_checked :
    goodSegmentCheck 92 30 64
      { lower := 55533, upper := 55538, witness := RowWitness.topPrime 55529 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good228_checked :
    goodSegmentCheck 92 30 64
      { lower := 58619, upper := 58655, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good229_checked :
    goodSegmentCheck 92 30 64
      { lower := 59582, upper := 59627, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good230_checked :
    goodSegmentCheck 92 30 64
      { lower := 62500, upper := 62501, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good231_checked :
    goodSegmentCheck 92 30 64
      { lower := 63948, upper := 63960, witness := RowWitness.topPrime 63929 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good232_checked :
    goodSegmentCheck 92 30 64
      { lower := 65536, upper := 65612, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good233_checked :
    goodSegmentCheck 92 30 64
      { lower := 65613, upper := 65627, witness := RowWitness.topPrime 65609 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good234_checked :
    goodSegmentCheck 92 30 64
      { lower := 68651, upper := 68681, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good235_checked :
    goodSegmentCheck 92 30 64
      { lower := 68921, upper := 68981, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good236_checked :
    goodSegmentCheck 92 30 64
      { lower := 73205, upper := 73258, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good237_checked :
    goodSegmentCheck 92 30 64
      { lower := 137842, upper := 137872, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good238_checked :
    goodSegmentCheck 92 30 64
      { lower := 146410, upper := 146425, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row092_good239_checked :
    goodSegmentCheck 92 30 64
      { lower := 148955, upper := 148968, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 92) (r := 30) (s := 64) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_goods_checked :
    row092.goods.all (goodSegmentCheck row092.height.i row092.height.r row092.height.s) = true := by
  change row092_goods.all (goodSegmentCheck 92 30 64) = true
  simp only [row092_goods, List.all_cons, List.all_nil,
    row092_good000_checked,
    row092_good001_checked,
    row092_good002_checked,
    row092_good003_checked,
    row092_good004_checked,
    row092_good005_checked,
    row092_good006_checked,
    row092_good007_checked,
    row092_good008_checked,
    row092_good009_checked,
    row092_good010_checked,
    row092_good011_checked,
    row092_good012_checked,
    row092_good013_checked,
    row092_good014_checked,
    row092_good015_checked,
    row092_good016_checked,
    row092_good017_checked,
    row092_good018_checked,
    row092_good019_checked,
    row092_good020_checked,
    row092_good021_checked,
    row092_good022_checked,
    row092_good023_checked,
    row092_good024_checked,
    row092_good025_checked,
    row092_good026_checked,
    row092_good027_checked,
    row092_good028_checked,
    row092_good029_checked,
    row092_good030_checked,
    row092_good031_checked,
    row092_good032_checked,
    row092_good033_checked,
    row092_good034_checked,
    row092_good035_checked,
    row092_good036_checked,
    row092_good037_checked,
    row092_good038_checked,
    row092_good039_checked,
    row092_good040_checked,
    row092_good041_checked,
    row092_good042_checked,
    row092_good043_checked,
    row092_good044_checked,
    row092_good045_checked,
    row092_good046_checked,
    row092_good047_checked,
    row092_good048_checked,
    row092_good049_checked,
    row092_good050_checked,
    row092_good051_checked,
    row092_good052_checked,
    row092_good053_checked,
    row092_good054_checked,
    row092_good055_checked,
    row092_good056_checked,
    row092_good057_checked,
    row092_good058_checked,
    row092_good059_checked,
    row092_good060_checked,
    row092_good061_checked,
    row092_good062_checked,
    row092_good063_checked,
    row092_good064_checked,
    row092_good065_checked,
    row092_good066_checked,
    row092_good067_checked,
    row092_good068_checked,
    row092_good069_checked,
    row092_good070_checked,
    row092_good071_checked,
    row092_good072_checked,
    row092_good073_checked,
    row092_good074_checked,
    row092_good075_checked,
    row092_good076_checked,
    row092_good077_checked,
    row092_good078_checked,
    row092_good079_checked,
    row092_good080_checked,
    row092_good081_checked,
    row092_good082_checked,
    row092_good083_checked,
    row092_good084_checked,
    row092_good085_checked,
    row092_good086_checked,
    row092_good087_checked,
    row092_good088_checked,
    row092_good089_checked,
    row092_good090_checked,
    row092_good091_checked,
    row092_good092_checked,
    row092_good093_checked,
    row092_good094_checked,
    row092_good095_checked,
    row092_good096_checked,
    row092_good097_checked,
    row092_good098_checked,
    row092_good099_checked,
    row092_good100_checked,
    row092_good101_checked,
    row092_good102_checked,
    row092_good103_checked,
    row092_good104_checked,
    row092_good105_checked,
    row092_good106_checked,
    row092_good107_checked,
    row092_good108_checked,
    row092_good109_checked,
    row092_good110_checked,
    row092_good111_checked,
    row092_good112_checked,
    row092_good113_checked,
    row092_good114_checked,
    row092_good115_checked,
    row092_good116_checked,
    row092_good117_checked,
    row092_good118_checked,
    row092_good119_checked,
    row092_good120_checked,
    row092_good121_checked,
    row092_good122_checked,
    row092_good123_checked,
    row092_good124_checked,
    row092_good125_checked,
    row092_good126_checked,
    row092_good127_checked,
    row092_good128_checked,
    row092_good129_checked,
    row092_good130_checked,
    row092_good131_checked,
    row092_good132_checked,
    row092_good133_checked,
    row092_good134_checked,
    row092_good135_checked,
    row092_good136_checked,
    row092_good137_checked,
    row092_good138_checked,
    row092_good139_checked,
    row092_good140_checked,
    row092_good141_checked,
    row092_good142_checked,
    row092_good143_checked,
    row092_good144_checked,
    row092_good145_checked,
    row092_good146_checked,
    row092_good147_checked,
    row092_good148_checked,
    row092_good149_checked,
    row092_good150_checked,
    row092_good151_checked,
    row092_good152_checked,
    row092_good153_checked,
    row092_good154_checked,
    row092_good155_checked,
    row092_good156_checked,
    row092_good157_checked,
    row092_good158_checked,
    row092_good159_checked,
    row092_good160_checked,
    row092_good161_checked,
    row092_good162_checked,
    row092_good163_checked,
    row092_good164_checked,
    row092_good165_checked,
    row092_good166_checked,
    row092_good167_checked,
    row092_good168_checked,
    row092_good169_checked,
    row092_good170_checked,
    row092_good171_checked,
    row092_good172_checked,
    row092_good173_checked,
    row092_good174_checked,
    row092_good175_checked,
    row092_good176_checked,
    row092_good177_checked,
    row092_good178_checked,
    row092_good179_checked,
    row092_good180_checked,
    row092_good181_checked,
    row092_good182_checked,
    row092_good183_checked,
    row092_good184_checked,
    row092_good185_checked,
    row092_good186_checked,
    row092_good187_checked,
    row092_good188_checked,
    row092_good189_checked,
    row092_good190_checked,
    row092_good191_checked,
    row092_good192_checked,
    row092_good193_checked,
    row092_good194_checked,
    row092_good195_checked,
    row092_good196_checked,
    row092_good197_checked,
    row092_good198_checked,
    row092_good199_checked,
    row092_good200_checked,
    row092_good201_checked,
    row092_good202_checked,
    row092_good203_checked,
    row092_good204_checked,
    row092_good205_checked,
    row092_good206_checked,
    row092_good207_checked,
    row092_good208_checked,
    row092_good209_checked,
    row092_good210_checked,
    row092_good211_checked,
    row092_good212_checked,
    row092_good213_checked,
    row092_good214_checked,
    row092_good215_checked,
    row092_good216_checked,
    row092_good217_checked,
    row092_good218_checked,
    row092_good219_checked,
    row092_good220_checked,
    row092_good221_checked,
    row092_good222_checked,
    row092_good223_checked,
    row092_good224_checked,
    row092_good225_checked,
    row092_good226_checked,
    row092_good227_checked,
    row092_good228_checked,
    row092_good229_checked,
    row092_good230_checked,
    row092_good231_checked,
    row092_good232_checked,
    row092_good233_checked,
    row092_good234_checked,
    row092_good235_checked,
    row092_good236_checked,
    row092_good237_checked,
    row092_good238_checked,
    row092_good239_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_registered :
    decide (row092.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row092_small_checked :
    coverCheck (2 * row092.height.i + 2) (row092.height.i * (row092.height.i - 1) - 1)
      (row092.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row092_layerCover_checked :
    coverCheck (row092.height.i * (row092.height.i - 1)) (row092.height.n0 - 1)
      (row092.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row092_bounds : List NatInterval :=
  [(186, 272), (273, 362), (363, 450), (451, 540), (541, 632), (633, 722), (723, 810), (811, 902), (903, 978), (979, 1068), (1069, 1160), (1161, 1244), (1245, 1328), (1329, 1418), (1419, 1500), (1501, 1590), (1591, 1674), (1675, 1760), (1761, 1850), (1851, 1938), (1939, 2024), (2025, 2108), (2109, 2190), (2191, 2270), (2271, 2360), (2361, 2448), (2449, 2538), (2539, 2630), (2631, 2712), (2713, 2804), (2805, 2894), (2895, 2978), (2979, 3062), (3063, 3152), (3153, 3228), (3229, 3320), (3321, 3410), (3411, 3498), (3499, 3590), (3591, 3674), (3675, 3764), (3765, 3852), (3853, 3944), (3945, 4034), (4035, 4118), (4119, 4202), (4203, 4292), (4293, 4380), (4381, 4464), (4465, 4554), (4555, 4640), (4641, 4730), (4731, 4820), (4821, 4908), (4909, 5000), (5001, 5090), (5091, 5178), (5179, 5270), (5271, 5352), (5353, 5442), (5443, 5534), (5535, 5622), (5623, 5714), (5715, 5802), (5803, 5892), (5893, 5972), (5973, 6044), (6045, 6134), (6135, 6224), (6225, 6312), (6313, 6402), (6403, 6488), (6489, 6572), (6573, 6662), (6663, 6752), (6753, 6828), (6829, 6920), (6921, 7008), (7009, 7092), (7093, 7170), (7171, 7250), (7251, 7338), (7339, 7424), (7425, 7508), (7509, 7598), (7599, 7682), (7683, 7772), (7773, 7850), (7851, 7932), (7933, 8024), (8025, 8108), (8109, 8192), (8193, 8282), (8283, 8364), (8365, 8371), (8410, 8480), (8481, 8501), (8649, 8738), (8739, 8740), (8748, 8838), (8839, 8879), (9025, 9069), (9251, 9332), (9333, 9342), (9375, 9408), (9604, 9692), (9693, 9695), (10082, 10170), (10171, 10177), (10240, 10297), (10625, 10704), (10705, 10739), (10935, 11000), (11001, 11043), (11045, 11076), (11094, 11136), (11163, 11185), (11236, 11304), (11305, 11327), (11774, 11834), (11835, 11858), (12005, 12070), (12321, 12379), (12393, 12412), (12482, 12484), (12493, 12582), (12583, 12584), (13125, 13212), (13213, 13216), (13254, 13273), (13310, 13345), (13454, 13542), (13543, 13547), (13718, 13802), (13803, 13841), (13851, 13869), (13924, 13942), (14375, 14388), (14406, 14492), (14493, 14497), (14641, 14671), (14792, 14830), (15059, 15091), (15123, 15212), (15213, 15220), (15376, 15464), (15465, 15470), (15979, 16064), (16065, 16078), (16384, 16472), (16473, 16475), (16810, 16878), (16879, 16911), (17303, 17389), (17496, 17496), (17576, 17587), (17661, 17667), (17672, 17752), (18491, 18572), (18573, 18581), (18634, 18696), (18723, 18725), (18750, 18814), (19208, 19298), (19299, 19299), (19663, 19752), (19753, 19754), (19773, 19774), (19965, 19972), (20172, 20252), (20253, 20263), (20535, 20571), (20577, 20626), (20667, 20668), (21316, 21387), (21870, 21954), (21955, 21966), (21970, 21995), (22472, 22536), (24010, 24098), (24099, 24128), (24367, 24450), (24451, 24458), (24576, 24662), (24663, 24667), (25000, 25055), (25215, 25280), (25281, 25352), (25353, 25372), (26047, 26102), (26411, 26455), (26645, 26711), (26934, 26987), (27436, 27471), (28125, 28181), (28577, 28652), (28749, 28808), (28812, 28840), (29791, 29859), (30258, 30337), (30926, 30990), (31213, 31284), (31285, 31304), (31329, 31341), (31433, 31488), (31489, 31514), (31974, 32030), (32805, 32859), (34375, 34386), (34391, 34472), (34473, 34482), (35344, 35378), (37210, 37270), (37349, 37394), (37500, 37537), (37553, 37591), (39326, 39414), (39415, 39417), (40401, 40419), (43750, 43778), (44944, 44981), (48013, 48052), (48778, 48825), (49152, 49221), (50000, 50019), (50421, 50501), (55451, 55532), (55533, 55538), (58619, 58655), (59582, 59627), (62500, 62501), (63948, 63960), (65536, 65612), (65613, 65627), (68651, 68681), (68921, 68981), (73205, 73258), (137842, 137872), (146410, 146425), (148955, 148968)]

theorem row092_bounds_eq : row092.goods.map goodSegmentBounds = row092_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row092_layer000_intervals : List ColouredInterval :=
  [(2, 10240, 10331), (2, 12288, 12379), (2, 12288, 12379), (2, 16384, 16475), (2, 16384, 16475), (2, 16384, 16475), (3, 8748, 8839), (3, 9477, 9568), (3, 10206, 10297), (3, 10935, 11026), (3, 11664, 11755), (3, 12393, 12484), (3, 13122, 13213), (3, 13851, 13942), (3, 14580, 14671), (3, 15309, 15400), (3, 16038, 16129), (3, 8748, 8839), (3, 10935, 11026), (3, 13122, 13213), (3, 15309, 15400), (3, 13122, 13213), (5, 8750, 8841), (5, 9375, 9466), (5, 10000, 10091), (5, 10625, 10716), (5, 11250, 11341), (5, 11875, 11966), (5, 12500, 12591), (5, 13125, 13216), (5, 13750, 13841), (5, 14375, 14466), (5, 15000, 15091), (5, 15625, 15716), (5, 9375, 9466), (5, 12500, 12591), (5, 15625, 15716), (5, 15625, 15716), (7, 8575, 8666), (7, 9604, 9695), (7, 12005, 12096), (7, 14406, 14497), (11, 9317, 9408), (11, 10648, 10739), (11, 11979, 12070), (11, 13310, 13401), (11, 14641, 14732), (11, 15972, 16063), (11, 14641, 14732), (13, 8788, 8879), (13, 10985, 11076), (13, 13182, 13273), (13, 15379, 15470), (17, 9826, 9917), (17, 14739, 14830), (19, 8372, 8394), (19, 8664, 8755), (19, 9025, 9116), (19, 13718, 13809), (23, 12167, 12258), (29, 8410, 8501), (29, 9251, 9342), (29, 10092, 10183), (29, 10933, 11024), (29, 11774, 11865), (29, 12615, 12706), (29, 13456, 13547), (29, 14297, 14388), (29, 15138, 15229), (29, 15979, 16070), (31, 8649, 8740), (31, 9610, 9701), (31, 10571, 10662), (31, 11532, 11623), (31, 12493, 12584), (31, 13454, 13545), (31, 14415, 14506), (31, 15376, 15467), (31, 16337, 16428), (37, 9583, 9674), (37, 10952, 11043), (37, 12321, 12412), (37, 13690, 13781), (37, 15059, 15150), (37, 16428, 16519), (41, 8405, 8496), (41, 10086, 10177), (41, 11767, 11858), (41, 13448, 13539), (41, 15129, 15220), (43, 9245, 9336), (43, 11094, 11185), (43, 12943, 13034), (43, 14792, 14883), (43, 16641, 16732), (47, 8836, 8927), (47, 11045, 11136), (47, 13254, 13345), (47, 15463, 15554), (53, 8427, 8518), (53, 11236, 11327), (53, 14045, 14136), (59, 10443, 10534), (59, 13924, 14015), (61, 11163, 11254), (61, 14884, 14975), (67, 8978, 9069), (67, 13467, 13558), (71, 10082, 10173), (71, 15123, 15214), (73, 10658, 10749), (73, 15987, 16078), (79, 12482, 12573), (83, 13778, 13869), (89, 15842, 15933)]

def row092_layer000_block000 : List ColouredInterval :=
  [(2, 10240, 10331), (2, 12288, 12379), (2, 12288, 12379), (2, 16384, 16475), (2, 16384, 16475), (2, 16384, 16475), (3, 8748, 8839), (3, 9477, 9568), (3, 10206, 10297), (3, 10935, 11026), (3, 11664, 11755), (3, 12393, 12484), (3, 13122, 13213), (3, 13851, 13942), (3, 14580, 14671), (3, 15309, 15400)]

def row092_layer000_block001 : List ColouredInterval :=
  [(3, 16038, 16129), (3, 8748, 8839), (3, 10935, 11026), (3, 13122, 13213), (3, 15309, 15400), (3, 13122, 13213), (5, 8750, 8841), (5, 9375, 9466), (5, 10000, 10091), (5, 10625, 10716), (5, 11250, 11341), (5, 11875, 11966), (5, 12500, 12591), (5, 13125, 13216), (5, 13750, 13841), (5, 14375, 14466)]

def row092_layer000_block002 : List ColouredInterval :=
  [(5, 15000, 15091), (5, 15625, 15716), (5, 9375, 9466), (5, 12500, 12591), (5, 15625, 15716), (5, 15625, 15716), (7, 8575, 8666), (7, 9604, 9695), (7, 12005, 12096), (7, 14406, 14497), (11, 9317, 9408), (11, 10648, 10739), (11, 11979, 12070), (11, 13310, 13401), (11, 14641, 14732), (11, 15972, 16063)]

def row092_layer000_block003 : List ColouredInterval :=
  [(11, 14641, 14732), (13, 8788, 8879), (13, 10985, 11076), (13, 13182, 13273), (13, 15379, 15470), (17, 9826, 9917), (17, 14739, 14830), (19, 8372, 8394), (19, 8664, 8755), (19, 9025, 9116), (19, 13718, 13809), (23, 12167, 12258), (29, 8410, 8501), (29, 9251, 9342), (29, 10092, 10183), (29, 10933, 11024)]

def row092_layer000_block004 : List ColouredInterval :=
  [(29, 11774, 11865), (29, 12615, 12706), (29, 13456, 13547), (29, 14297, 14388), (29, 15138, 15229), (29, 15979, 16070), (31, 8649, 8740), (31, 9610, 9701), (31, 10571, 10662), (31, 11532, 11623), (31, 12493, 12584), (31, 13454, 13545), (31, 14415, 14506), (31, 15376, 15467), (31, 16337, 16428), (37, 9583, 9674)]

def row092_layer000_block005 : List ColouredInterval :=
  [(37, 10952, 11043), (37, 12321, 12412), (37, 13690, 13781), (37, 15059, 15150), (37, 16428, 16519), (41, 8405, 8496), (41, 10086, 10177), (41, 11767, 11858), (41, 13448, 13539), (41, 15129, 15220), (43, 9245, 9336), (43, 11094, 11185), (43, 12943, 13034), (43, 14792, 14883), (43, 16641, 16732), (47, 8836, 8927)]

def row092_layer000_block006 : List ColouredInterval :=
  [(47, 11045, 11136), (47, 13254, 13345), (47, 15463, 15554), (53, 8427, 8518), (53, 11236, 11327), (53, 14045, 14136), (59, 10443, 10534), (59, 13924, 14015), (61, 11163, 11254), (61, 14884, 14975), (67, 8978, 9069), (67, 13467, 13558), (71, 10082, 10173), (71, 15123, 15214), (73, 10658, 10749), (73, 15987, 16078)]

def row092_layer000_block007 : List ColouredInterval :=
  [(79, 12482, 12573), (83, 13778, 13869), (89, 15842, 15933)]

def row092_layer000_chunks : List (List ColouredInterval) :=
  [row092_layer000_block000, row092_layer000_block001, row092_layer000_block002, row092_layer000_block003, row092_layer000_block004, row092_layer000_block005, row092_layer000_block006, row092_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer000_arithmetic : LayerArithmeticValid row092.height { lower := 8372, upper := 16744, M := 25 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer000_enumeration :
    activePowerIntervalList 92 25 8372 16744 = row092_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer000_pairs000 :
    row092_layer000_block000.all (fun I => row092_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row092_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer000_pairs001 :
    row092_layer000_block001.all (fun I => row092_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row092_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer000_pairs002 :
    row092_layer000_block002.all (fun I => row092_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row092_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer000_pairs003 :
    row092_layer000_block003.all (fun I => row092_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row092_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer000_pairs004 :
    row092_layer000_block004.all (fun I => row092_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row092_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer000_pairs005 :
    row092_layer000_block005.all (fun I => row092_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row092_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer000_pairs006 :
    row092_layer000_block006.all (fun I => row092_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row092_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer000_pairs007 :
    row092_layer000_block007.all (fun I => row092_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row092_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer000_chunks_eq : row092_layer000_chunks.flatten = row092_layer000_intervals := by
  rfl

theorem row092_layer000_pairs : pairCoverCheck row092_layer000_intervals row092_bounds = true := by
  apply pairCoverCheck_of_chunks row092_layer000_chunks_eq
  intro block hblock
  simp only [row092_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row092_layer000_pairs000
  · exact row092_layer000_pairs001
  · exact row092_layer000_pairs002
  · exact row092_layer000_pairs003
  · exact row092_layer000_pairs004
  · exact row092_layer000_pairs005
  · exact row092_layer000_pairs006
  · exact row092_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer000_checked :
    coverLayerCheck row092.height row092.goods { lower := 8372, upper := 16744, M := 25 } = true := by
  exact coverLayerCheck_of_parts row092_layer000_arithmetic row092_layer000_enumeration row092_bounds_eq row092_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer000_checked
