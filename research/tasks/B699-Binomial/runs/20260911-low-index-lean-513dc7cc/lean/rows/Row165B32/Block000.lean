import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row165_height : HeightCertificateDatum := { i := 165, r := 54, s := 117, n0Power10 := 7 }

def row165_goods : List GoodSegment := [
  { lower := 332, upper := 495, witness := RowWitness.topPrime 331 },
  { lower := 496, upper := 655, witness := RowWitness.topPrime 491 },
  { lower := 656, upper := 817, witness := RowWitness.topPrime 653 },
  { lower := 818, upper := 975, witness := RowWitness.topPrime 811 },
  { lower := 976, upper := 1135, witness := RowWitness.topPrime 971 },
  { lower := 1136, upper := 1293, witness := RowWitness.topPrime 1129 },
  { lower := 1294, upper := 1455, witness := RowWitness.topPrime 1291 },
  { lower := 1456, upper := 1617, witness := RowWitness.topPrime 1453 },
  { lower := 1618, upper := 1777, witness := RowWitness.topPrime 1613 },
  { lower := 1778, upper := 1941, witness := RowWitness.topPrime 1777 },
  { lower := 1942, upper := 2097, witness := RowWitness.topPrime 1933 },
  { lower := 2098, upper := 2253, witness := RowWitness.topPrime 2089 },
  { lower := 2254, upper := 2415, witness := RowWitness.topPrime 2251 },
  { lower := 2416, upper := 2575, witness := RowWitness.topPrime 2411 },
  { lower := 2576, upper := 2721, witness := RowWitness.topPrime 2557 },
  { lower := 2722, upper := 2883, witness := RowWitness.topPrime 2719 },
  { lower := 2884, upper := 3043, witness := RowWitness.topPrime 2879 },
  { lower := 3044, upper := 3205, witness := RowWitness.topPrime 3041 },
  { lower := 3206, upper := 3367, witness := RowWitness.topPrime 3203 },
  { lower := 3368, upper := 3525, witness := RowWitness.topPrime 3361 },
  { lower := 3526, upper := 3681, witness := RowWitness.topPrime 3517 },
  { lower := 3682, upper := 3841, witness := RowWitness.topPrime 3677 },
  { lower := 3842, upper := 3997, witness := RowWitness.topPrime 3833 },
  { lower := 3998, upper := 4153, witness := RowWitness.topPrime 3989 },
  { lower := 4154, upper := 4317, witness := RowWitness.topPrime 4153 },
  { lower := 4318, upper := 4461, witness := RowWitness.topPrime 4297 },
  { lower := 4462, upper := 4621, witness := RowWitness.topPrime 4457 },
  { lower := 4622, upper := 4785, witness := RowWitness.topPrime 4621 },
  { lower := 4786, upper := 4947, witness := RowWitness.topPrime 4783 },
  { lower := 4948, upper := 5107, witness := RowWitness.topPrime 4943 },
  { lower := 5108, upper := 5271, witness := RowWitness.topPrime 5107 },
  { lower := 5272, upper := 5425, witness := RowWitness.topPrime 5261 },
  { lower := 5426, upper := 5583, witness := RowWitness.topPrime 5419 },
  { lower := 5584, upper := 5745, witness := RowWitness.topPrime 5581 },
  { lower := 5746, upper := 5907, witness := RowWitness.topPrime 5743 },
  { lower := 5908, upper := 6067, witness := RowWitness.topPrime 5903 },
  { lower := 6068, upper := 6231, witness := RowWitness.topPrime 6067 },
  { lower := 6232, upper := 6393, witness := RowWitness.topPrime 6229 },
  { lower := 6394, upper := 6553, witness := RowWitness.topPrime 6389 },
  { lower := 6554, upper := 6717, witness := RowWitness.topPrime 6553 },
  { lower := 6718, upper := 6873, witness := RowWitness.topPrime 6709 },
  { lower := 6874, upper := 7035, witness := RowWitness.topPrime 6871 },
  { lower := 7036, upper := 7191, witness := RowWitness.topPrime 7027 },
  { lower := 7192, upper := 7351, witness := RowWitness.topPrime 7187 },
  { lower := 7352, upper := 7515, witness := RowWitness.topPrime 7351 },
  { lower := 7516, upper := 7671, witness := RowWitness.topPrime 7507 },
  { lower := 7672, upper := 7833, witness := RowWitness.topPrime 7669 },
  { lower := 7834, upper := 7993, witness := RowWitness.topPrime 7829 },
  { lower := 7994, upper := 8157, witness := RowWitness.topPrime 7993 },
  { lower := 8158, upper := 8311, witness := RowWitness.topPrime 8147 },
  { lower := 8312, upper := 8475, witness := RowWitness.topPrime 8311 },
  { lower := 8476, upper := 8631, witness := RowWitness.topPrime 8467 },
  { lower := 8632, upper := 8793, witness := RowWitness.topPrime 8629 },
  { lower := 8794, upper := 8947, witness := RowWitness.topPrime 8783 },
  { lower := 8948, upper := 9105, witness := RowWitness.topPrime 8941 },
  { lower := 9106, upper := 9267, witness := RowWitness.topPrime 9103 },
  { lower := 9268, upper := 9421, witness := RowWitness.topPrime 9257 },
  { lower := 9422, upper := 9585, witness := RowWitness.topPrime 9421 },
  { lower := 9586, upper := 9715, witness := RowWitness.topPrime 9551 },
  { lower := 9716, upper := 9861, witness := RowWitness.topPrime 9697 },
  { lower := 9862, upper := 10023, witness := RowWitness.topPrime 9859 },
  { lower := 10024, upper := 10173, witness := RowWitness.topPrime 10009 },
  { lower := 10174, upper := 10333, witness := RowWitness.topPrime 10169 },
  { lower := 10334, upper := 10497, witness := RowWitness.topPrime 10333 },
  { lower := 10498, upper := 10651, witness := RowWitness.topPrime 10487 },
  { lower := 10652, upper := 10815, witness := RowWitness.topPrime 10651 },
  { lower := 10816, upper := 10963, witness := RowWitness.topPrime 10799 },
  { lower := 10964, upper := 11121, witness := RowWitness.topPrime 10957 },
  { lower := 11122, upper := 11283, witness := RowWitness.topPrime 11119 },
  { lower := 11284, upper := 11443, witness := RowWitness.topPrime 11279 },
  { lower := 11444, upper := 11607, witness := RowWitness.topPrime 11443 },
  { lower := 11608, upper := 11761, witness := RowWitness.topPrime 11597 },
  { lower := 11762, upper := 11907, witness := RowWitness.topPrime 11743 },
  { lower := 11908, upper := 12067, witness := RowWitness.topPrime 11903 },
  { lower := 12068, upper := 12213, witness := RowWitness.topPrime 12049 },
  { lower := 12214, upper := 12375, witness := RowWitness.topPrime 12211 },
  { lower := 12376, upper := 12537, witness := RowWitness.topPrime 12373 },
  { lower := 12538, upper := 12691, witness := RowWitness.topPrime 12527 },
  { lower := 12692, upper := 12853, witness := RowWitness.topPrime 12689 },
  { lower := 12854, upper := 13017, witness := RowWitness.topPrime 12853 },
  { lower := 13018, upper := 13173, witness := RowWitness.topPrime 13009 },
  { lower := 13174, upper := 13335, witness := RowWitness.topPrime 13171 },
  { lower := 13336, upper := 13495, witness := RowWitness.topPrime 13331 },
  { lower := 13496, upper := 13651, witness := RowWitness.topPrime 13487 },
  { lower := 13652, upper := 13813, witness := RowWitness.topPrime 13649 },
  { lower := 13814, upper := 13971, witness := RowWitness.topPrime 13807 },
  { lower := 13972, upper := 14131, witness := RowWitness.topPrime 13967 },
  { lower := 14132, upper := 14271, witness := RowWitness.topPrime 14107 },
  { lower := 14272, upper := 14415, witness := RowWitness.topPrime 14251 },
  { lower := 14416, upper := 14575, witness := RowWitness.topPrime 14411 },
  { lower := 14576, upper := 14727, witness := RowWitness.topPrime 14563 },
  { lower := 14728, upper := 14887, witness := RowWitness.topPrime 14723 },
  { lower := 14888, upper := 15051, witness := RowWitness.topPrime 14887 },
  { lower := 15052, upper := 15195, witness := RowWitness.topPrime 15031 },
  { lower := 15196, upper := 15357, witness := RowWitness.topPrime 15193 },
  { lower := 15358, upper := 15513, witness := RowWitness.topPrime 15349 },
  { lower := 15514, upper := 15675, witness := RowWitness.topPrime 15511 },
  { lower := 15676, upper := 15835, witness := RowWitness.topPrime 15671 },
  { lower := 15836, upper := 15987, witness := RowWitness.topPrime 15823 },
  { lower := 15988, upper := 16137, witness := RowWitness.topPrime 15973 },
  { lower := 16138, upper := 16291, witness := RowWitness.topPrime 16127 },
  { lower := 16292, upper := 16437, witness := RowWitness.topPrime 16273 },
  { lower := 16438, upper := 16597, witness := RowWitness.topPrime 16433 },
  { lower := 16598, upper := 16737, witness := RowWitness.topPrime 16573 },
  { lower := 16738, upper := 16893, witness := RowWitness.topPrime 16729 },
  { lower := 16894, upper := 17053, witness := RowWitness.topPrime 16889 },
  { lower := 17054, upper := 17217, witness := RowWitness.topPrime 17053 },
  { lower := 17218, upper := 17373, witness := RowWitness.topPrime 17209 },
  { lower := 17374, upper := 17523, witness := RowWitness.topPrime 17359 },
  { lower := 17524, upper := 17683, witness := RowWitness.topPrime 17519 },
  { lower := 17684, upper := 17847, witness := RowWitness.topPrime 17683 },
  { lower := 17848, upper := 18003, witness := RowWitness.topPrime 17839 },
  { lower := 18004, upper := 18153, witness := RowWitness.topPrime 17989 },
  { lower := 18154, upper := 18313, witness := RowWitness.topPrime 18149 },
  { lower := 18314, upper := 18477, witness := RowWitness.topPrime 18313 },
  { lower := 18478, upper := 18625, witness := RowWitness.topPrime 18461 },
  { lower := 18626, upper := 18781, witness := RowWitness.topPrime 18617 },
  { lower := 18782, upper := 18937, witness := RowWitness.topPrime 18773 },
  { lower := 18938, upper := 19083, witness := RowWitness.topPrime 18919 },
  { lower := 19084, upper := 19245, witness := RowWitness.topPrime 19081 },
  { lower := 19246, upper := 19401, witness := RowWitness.topPrime 19237 },
  { lower := 19402, upper := 19555, witness := RowWitness.topPrime 19391 },
  { lower := 19556, upper := 19717, witness := RowWitness.topPrime 19553 },
  { lower := 19718, upper := 19881, witness := RowWitness.topPrime 19717 },
  { lower := 19882, upper := 20031, witness := RowWitness.topPrime 19867 },
  { lower := 20032, upper := 20193, witness := RowWitness.topPrime 20029 },
  { lower := 20194, upper := 20347, witness := RowWitness.topPrime 20183 },
  { lower := 20348, upper := 20511, witness := RowWitness.topPrime 20347 },
  { lower := 20512, upper := 20673, witness := RowWitness.topPrime 20509 },
  { lower := 20674, upper := 20827, witness := RowWitness.topPrime 20663 },
  { lower := 20828, upper := 20973, witness := RowWitness.topPrime 20809 },
  { lower := 20974, upper := 21127, witness := RowWitness.topPrime 20963 },
  { lower := 21128, upper := 21285, witness := RowWitness.topPrime 21121 },
  { lower := 21286, upper := 21447, witness := RowWitness.topPrime 21283 },
  { lower := 21448, upper := 21597, witness := RowWitness.topPrime 21433 },
  { lower := 21598, upper := 21753, witness := RowWitness.topPrime 21589 },
  { lower := 21754, upper := 21915, witness := RowWitness.topPrime 21751 },
  { lower := 21916, upper := 22075, witness := RowWitness.topPrime 21911 },
  { lower := 22076, upper := 22237, witness := RowWitness.topPrime 22073 },
  { lower := 22238, upper := 22393, witness := RowWitness.topPrime 22229 },
  { lower := 22394, upper := 22555, witness := RowWitness.topPrime 22391 },
  { lower := 22556, upper := 22713, witness := RowWitness.topPrime 22549 },
  { lower := 22714, upper := 22873, witness := RowWitness.topPrime 22709 },
  { lower := 22874, upper := 23035, witness := RowWitness.topPrime 22871 },
  { lower := 23036, upper := 23193, witness := RowWitness.topPrime 23029 },
  { lower := 23194, upper := 23353, witness := RowWitness.topPrime 23189 },
  { lower := 23354, upper := 23503, witness := RowWitness.topPrime 23339 },
  { lower := 23504, upper := 23661, witness := RowWitness.topPrime 23497 },
  { lower := 23662, upper := 23797, witness := RowWitness.topPrime 23633 },
  { lower := 23798, upper := 23953, witness := RowWitness.topPrime 23789 },
  { lower := 23954, upper := 24093, witness := RowWitness.topPrime 23929 },
  { lower := 24094, upper := 24255, witness := RowWitness.topPrime 24091 },
  { lower := 24256, upper := 24415, witness := RowWitness.topPrime 24251 },
  { lower := 24416, upper := 24577, witness := RowWitness.topPrime 24413 },
  { lower := 24578, upper := 24735, witness := RowWitness.topPrime 24571 },
  { lower := 24736, upper := 24897, witness := RowWitness.topPrime 24733 },
  { lower := 24898, upper := 25053, witness := RowWitness.topPrime 24889 },
  { lower := 25054, upper := 25201, witness := RowWitness.topPrime 25037 },
  { lower := 25202, upper := 25353, witness := RowWitness.topPrime 25189 },
  { lower := 25354, upper := 25513, witness := RowWitness.topPrime 25349 },
  { lower := 25514, upper := 25635, witness := RowWitness.topPrime 25471 },
  { lower := 25636, upper := 25797, witness := RowWitness.topPrime 25633 },
  { lower := 25798, upper := 25957, witness := RowWitness.topPrime 25793 },
  { lower := 25958, upper := 26115, witness := RowWitness.topPrime 25951 },
  { lower := 26116, upper := 26277, witness := RowWitness.topPrime 26113 },
  { lower := 26278, upper := 26431, witness := RowWitness.topPrime 26267 },
  { lower := 26432, upper := 26595, witness := RowWitness.topPrime 26431 },
  { lower := 26596, upper := 26755, witness := RowWitness.topPrime 26591 },
  { lower := 26756, upper := 26901, witness := RowWitness.topPrime 26737 },
  { lower := 26902, upper := 27057, witness := RowWitness.topPrime 26893 },
  { lower := 27058, upper := 27059, witness := RowWitness.topPrime 27043 },
  { lower := 27556, upper := 27600, witness := RowWitness.topPrime 27551 },
  { lower := 28227, upper := 28254, witness := RowWitness.topPrime 28219 },
  { lower := 28672, upper := 28833, witness := RowWitness.topPrime 28669 },
  { lower := 28834, upper := 28881, witness := RowWitness.topPrime 28817 },
  { lower := 29791, upper := 29932, witness := RowWitness.topPrime 29789 },
  { lower := 30758, upper := 30767, witness := RowWitness.topPrime 30757 },
  { lower := 30899, upper := 30922, witness := RowWitness.topPrime 30893 },
  { lower := 30926, upper := 31063, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31357, witness := RowWitness.topPrime 31193 },
  { lower := 31358, upper := 31414, witness := RowWitness.topPrime 31357 },
  { lower := 31423, upper := 31493, witness := RowWitness.topPrime 31397 },
  { lower := 31827, upper := 31848, witness := RowWitness.topPrime 31817 },
  { lower := 31974, upper := 31991, witness := RowWitness.topPrime 31973 },
  { lower := 33614, upper := 33653, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33778, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34483, witness := RowWitness.topPrime 34319 },
  { lower := 34484, upper := 34555, witness := RowWitness.topPrime 34483 },
  { lower := 36517, upper := 36661, witness := RowWitness.topPrime 36497 },
  { lower := 36662, upper := 36665, witness := RowWitness.topPrime 36653 },
  { lower := 37303, upper := 37374, witness := RowWitness.topPrime 37277 },
  { lower := 37446, upper := 37467, witness := RowWitness.topPrime 37441 },
  { lower := 37538, upper := 37610, witness := RowWitness.topPrime 37537 },
  { lower := 37636, upper := 37702, witness := RowWitness.topPrime 37633 },
  { lower := 38307, upper := 38455, witness := RowWitness.topPrime 38303 },
  { lower := 39326, upper := 39487, witness := RowWitness.topPrime 39323 },
  { lower := 39488, upper := 39490, witness := RowWitness.topPrime 39461 },
  { lower := 40401, upper := 40492, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 41091, witness := RowWitness.topPrime 40927 },
  { lower := 41092, upper := 41095, witness := RowWitness.topPrime 41081 },
  { lower := 45369, upper := 45417, witness := RowWitness.topPrime 45361 },
  { lower := 47526, upper := 47685, witness := RowWitness.topPrime 47521 },
  { lower := 47686, upper := 47688, witness := RowWitness.topPrime 47681 },
  { lower := 48013, upper := 48125, witness := RowWitness.topPrime 47981 },
  { lower := 48373, upper := 48535, witness := RowWitness.topPrime 48371 },
  { lower := 48536, upper := 48537, witness := RowWitness.topPrime 48533 },
  { lower := 48734, upper := 48897, witness := RowWitness.topPrime 48733 },
  { lower := 48898, upper := 48898, witness := RowWitness.topPrime 48889 },
  { lower := 49152, upper := 49294, witness := RowWitness.topPrime 49139 },
  { lower := 49298, upper := 49316, witness := RowWitness.topPrime 49297 },
  { lower := 49379, upper := 49462, witness := RowWitness.topPrime 49369 },
  { lower := 50421, upper := 50574, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51169, witness := RowWitness.topPrime 51071 },
  { lower := 53138, upper := 53209, witness := RowWitness.topPrime 53129 },
  { lower := 53248, upper := 53403, witness := RowWitness.topPrime 53239 },
  { lower := 53404, upper := 53412, witness := RowWitness.topPrime 53401 },
  { lower := 55451, upper := 55605, witness := RowWitness.topPrime 55441 },
  { lower := 55606, upper := 55611, witness := RowWitness.topPrime 55603 },
  { lower := 56307, upper := 56333, witness := RowWitness.topPrime 56299 },
  { lower := 56454, upper := 56471, witness := RowWitness.topPrime 56453 },
  { lower := 57245, upper := 57286, witness := RowWitness.topPrime 57241 },
  { lower := 57344, upper := 57409, witness := RowWitness.topPrime 57331 },
  { lower := 68644, upper := 68803, witness := RowWitness.topPrime 68639 },
  { lower := 68804, upper := 68815, witness := RowWitness.topPrime 68791 },
  { lower := 68921, upper := 69054, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71451, witness := RowWitness.topPrime 71287 },
  { lower := 71452, upper := 71453, witness := RowWitness.topPrime 71443 },
  { lower := 85805, upper := 85847, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89537, witness := RowWitness.topPrime 89381 },
  { lower := 102152, upper := 102174, witness := RowWitness.topPrime 102149 },
  { lower := 103041, upper := 103130, witness := RowWitness.topPrime 103007 },
  { lower := 148955, upper := 149041, witness := RowWitness.topPrime 148949 }
]

def row165_layers : List CoverLayer := [
  { lower := 27060, upper := 54120, M := 14 },
  { lower := 54120, upper := 108240, M := 11 },
  { lower := 108240, upper := 216480, M := 8 },
  { lower := 216480, upper := 432960, M := 6 },
  { lower := 432960, upper := 865920, M := 4 },
  { lower := 865920, upper := 1731840, M := 3 },
  { lower := 1731840, upper := 3463680, M := 3 },
  { lower := 3463680, upper := 6927360, M := 2 },
  { lower := 6927360, upper := 10000000, M := 2 }
]

def row165 : FiniteCoverRow := {
  height := row165_height,
  goods := row165_goods,
  layers := row165_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row165

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row165_good000_checked :
    goodSegmentCheck 165 54 117
      { lower := 332, upper := 495, witness := RowWitness.topPrime 331 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good001_checked :
    goodSegmentCheck 165 54 117
      { lower := 496, upper := 655, witness := RowWitness.topPrime 491 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good002_checked :
    goodSegmentCheck 165 54 117
      { lower := 656, upper := 817, witness := RowWitness.topPrime 653 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good003_checked :
    goodSegmentCheck 165 54 117
      { lower := 818, upper := 975, witness := RowWitness.topPrime 811 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good004_checked :
    goodSegmentCheck 165 54 117
      { lower := 976, upper := 1135, witness := RowWitness.topPrime 971 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good005_checked :
    goodSegmentCheck 165 54 117
      { lower := 1136, upper := 1293, witness := RowWitness.topPrime 1129 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good006_checked :
    goodSegmentCheck 165 54 117
      { lower := 1294, upper := 1455, witness := RowWitness.topPrime 1291 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good007_checked :
    goodSegmentCheck 165 54 117
      { lower := 1456, upper := 1617, witness := RowWitness.topPrime 1453 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good008_checked :
    goodSegmentCheck 165 54 117
      { lower := 1618, upper := 1777, witness := RowWitness.topPrime 1613 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good009_checked :
    goodSegmentCheck 165 54 117
      { lower := 1778, upper := 1941, witness := RowWitness.topPrime 1777 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good010_checked :
    goodSegmentCheck 165 54 117
      { lower := 1942, upper := 2097, witness := RowWitness.topPrime 1933 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good011_checked :
    goodSegmentCheck 165 54 117
      { lower := 2098, upper := 2253, witness := RowWitness.topPrime 2089 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good012_checked :
    goodSegmentCheck 165 54 117
      { lower := 2254, upper := 2415, witness := RowWitness.topPrime 2251 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good013_checked :
    goodSegmentCheck 165 54 117
      { lower := 2416, upper := 2575, witness := RowWitness.topPrime 2411 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good014_checked :
    goodSegmentCheck 165 54 117
      { lower := 2576, upper := 2721, witness := RowWitness.topPrime 2557 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good015_checked :
    goodSegmentCheck 165 54 117
      { lower := 2722, upper := 2883, witness := RowWitness.topPrime 2719 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row165_good016_checked :
    goodSegmentCheck 165 54 117
      { lower := 2884, upper := 3043, witness := RowWitness.topPrime 2879 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good017_checked :
    goodSegmentCheck 165 54 117
      { lower := 3044, upper := 3205, witness := RowWitness.topPrime 3041 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good018_checked :
    goodSegmentCheck 165 54 117
      { lower := 3206, upper := 3367, witness := RowWitness.topPrime 3203 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good019_checked :
    goodSegmentCheck 165 54 117
      { lower := 3368, upper := 3525, witness := RowWitness.topPrime 3361 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good020_checked :
    goodSegmentCheck 165 54 117
      { lower := 3526, upper := 3681, witness := RowWitness.topPrime 3517 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good021_checked :
    goodSegmentCheck 165 54 117
      { lower := 3682, upper := 3841, witness := RowWitness.topPrime 3677 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good022_checked :
    goodSegmentCheck 165 54 117
      { lower := 3842, upper := 3997, witness := RowWitness.topPrime 3833 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good023_checked :
    goodSegmentCheck 165 54 117
      { lower := 3998, upper := 4153, witness := RowWitness.topPrime 3989 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good024_checked :
    goodSegmentCheck 165 54 117
      { lower := 4154, upper := 4317, witness := RowWitness.topPrime 4153 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good025_checked :
    goodSegmentCheck 165 54 117
      { lower := 4318, upper := 4461, witness := RowWitness.topPrime 4297 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good026_checked :
    goodSegmentCheck 165 54 117
      { lower := 4462, upper := 4621, witness := RowWitness.topPrime 4457 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good027_checked :
    goodSegmentCheck 165 54 117
      { lower := 4622, upper := 4785, witness := RowWitness.topPrime 4621 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good028_checked :
    goodSegmentCheck 165 54 117
      { lower := 4786, upper := 4947, witness := RowWitness.topPrime 4783 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good029_checked :
    goodSegmentCheck 165 54 117
      { lower := 4948, upper := 5107, witness := RowWitness.topPrime 4943 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good030_checked :
    goodSegmentCheck 165 54 117
      { lower := 5108, upper := 5271, witness := RowWitness.topPrime 5107 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good031_checked :
    goodSegmentCheck 165 54 117
      { lower := 5272, upper := 5425, witness := RowWitness.topPrime 5261 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row165_good032_checked :
    goodSegmentCheck 165 54 117
      { lower := 5426, upper := 5583, witness := RowWitness.topPrime 5419 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good033_checked :
    goodSegmentCheck 165 54 117
      { lower := 5584, upper := 5745, witness := RowWitness.topPrime 5581 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good034_checked :
    goodSegmentCheck 165 54 117
      { lower := 5746, upper := 5907, witness := RowWitness.topPrime 5743 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good035_checked :
    goodSegmentCheck 165 54 117
      { lower := 5908, upper := 6067, witness := RowWitness.topPrime 5903 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good036_checked :
    goodSegmentCheck 165 54 117
      { lower := 6068, upper := 6231, witness := RowWitness.topPrime 6067 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good037_checked :
    goodSegmentCheck 165 54 117
      { lower := 6232, upper := 6393, witness := RowWitness.topPrime 6229 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good038_checked :
    goodSegmentCheck 165 54 117
      { lower := 6394, upper := 6553, witness := RowWitness.topPrime 6389 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good039_checked :
    goodSegmentCheck 165 54 117
      { lower := 6554, upper := 6717, witness := RowWitness.topPrime 6553 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good040_checked :
    goodSegmentCheck 165 54 117
      { lower := 6718, upper := 6873, witness := RowWitness.topPrime 6709 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good041_checked :
    goodSegmentCheck 165 54 117
      { lower := 6874, upper := 7035, witness := RowWitness.topPrime 6871 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good042_checked :
    goodSegmentCheck 165 54 117
      { lower := 7036, upper := 7191, witness := RowWitness.topPrime 7027 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good043_checked :
    goodSegmentCheck 165 54 117
      { lower := 7192, upper := 7351, witness := RowWitness.topPrime 7187 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good044_checked :
    goodSegmentCheck 165 54 117
      { lower := 7352, upper := 7515, witness := RowWitness.topPrime 7351 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good045_checked :
    goodSegmentCheck 165 54 117
      { lower := 7516, upper := 7671, witness := RowWitness.topPrime 7507 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good046_checked :
    goodSegmentCheck 165 54 117
      { lower := 7672, upper := 7833, witness := RowWitness.topPrime 7669 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good047_checked :
    goodSegmentCheck 165 54 117
      { lower := 7834, upper := 7993, witness := RowWitness.topPrime 7829 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row165_good048_checked :
    goodSegmentCheck 165 54 117
      { lower := 7994, upper := 8157, witness := RowWitness.topPrime 7993 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good049_checked :
    goodSegmentCheck 165 54 117
      { lower := 8158, upper := 8311, witness := RowWitness.topPrime 8147 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good050_checked :
    goodSegmentCheck 165 54 117
      { lower := 8312, upper := 8475, witness := RowWitness.topPrime 8311 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good051_checked :
    goodSegmentCheck 165 54 117
      { lower := 8476, upper := 8631, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good052_checked :
    goodSegmentCheck 165 54 117
      { lower := 8632, upper := 8793, witness := RowWitness.topPrime 8629 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good053_checked :
    goodSegmentCheck 165 54 117
      { lower := 8794, upper := 8947, witness := RowWitness.topPrime 8783 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good054_checked :
    goodSegmentCheck 165 54 117
      { lower := 8948, upper := 9105, witness := RowWitness.topPrime 8941 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good055_checked :
    goodSegmentCheck 165 54 117
      { lower := 9106, upper := 9267, witness := RowWitness.topPrime 9103 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good056_checked :
    goodSegmentCheck 165 54 117
      { lower := 9268, upper := 9421, witness := RowWitness.topPrime 9257 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good057_checked :
    goodSegmentCheck 165 54 117
      { lower := 9422, upper := 9585, witness := RowWitness.topPrime 9421 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good058_checked :
    goodSegmentCheck 165 54 117
      { lower := 9586, upper := 9715, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good059_checked :
    goodSegmentCheck 165 54 117
      { lower := 9716, upper := 9861, witness := RowWitness.topPrime 9697 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good060_checked :
    goodSegmentCheck 165 54 117
      { lower := 9862, upper := 10023, witness := RowWitness.topPrime 9859 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good061_checked :
    goodSegmentCheck 165 54 117
      { lower := 10024, upper := 10173, witness := RowWitness.topPrime 10009 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good062_checked :
    goodSegmentCheck 165 54 117
      { lower := 10174, upper := 10333, witness := RowWitness.topPrime 10169 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good063_checked :
    goodSegmentCheck 165 54 117
      { lower := 10334, upper := 10497, witness := RowWitness.topPrime 10333 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row165_good064_checked :
    goodSegmentCheck 165 54 117
      { lower := 10498, upper := 10651, witness := RowWitness.topPrime 10487 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good065_checked :
    goodSegmentCheck 165 54 117
      { lower := 10652, upper := 10815, witness := RowWitness.topPrime 10651 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good066_checked :
    goodSegmentCheck 165 54 117
      { lower := 10816, upper := 10963, witness := RowWitness.topPrime 10799 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good067_checked :
    goodSegmentCheck 165 54 117
      { lower := 10964, upper := 11121, witness := RowWitness.topPrime 10957 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good068_checked :
    goodSegmentCheck 165 54 117
      { lower := 11122, upper := 11283, witness := RowWitness.topPrime 11119 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good069_checked :
    goodSegmentCheck 165 54 117
      { lower := 11284, upper := 11443, witness := RowWitness.topPrime 11279 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good070_checked :
    goodSegmentCheck 165 54 117
      { lower := 11444, upper := 11607, witness := RowWitness.topPrime 11443 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good071_checked :
    goodSegmentCheck 165 54 117
      { lower := 11608, upper := 11761, witness := RowWitness.topPrime 11597 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good072_checked :
    goodSegmentCheck 165 54 117
      { lower := 11762, upper := 11907, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good073_checked :
    goodSegmentCheck 165 54 117
      { lower := 11908, upper := 12067, witness := RowWitness.topPrime 11903 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good074_checked :
    goodSegmentCheck 165 54 117
      { lower := 12068, upper := 12213, witness := RowWitness.topPrime 12049 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good075_checked :
    goodSegmentCheck 165 54 117
      { lower := 12214, upper := 12375, witness := RowWitness.topPrime 12211 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good076_checked :
    goodSegmentCheck 165 54 117
      { lower := 12376, upper := 12537, witness := RowWitness.topPrime 12373 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good077_checked :
    goodSegmentCheck 165 54 117
      { lower := 12538, upper := 12691, witness := RowWitness.topPrime 12527 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good078_checked :
    goodSegmentCheck 165 54 117
      { lower := 12692, upper := 12853, witness := RowWitness.topPrime 12689 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good079_checked :
    goodSegmentCheck 165 54 117
      { lower := 12854, upper := 13017, witness := RowWitness.topPrime 12853 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row165_good080_checked :
    goodSegmentCheck 165 54 117
      { lower := 13018, upper := 13173, witness := RowWitness.topPrime 13009 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good081_checked :
    goodSegmentCheck 165 54 117
      { lower := 13174, upper := 13335, witness := RowWitness.topPrime 13171 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good082_checked :
    goodSegmentCheck 165 54 117
      { lower := 13336, upper := 13495, witness := RowWitness.topPrime 13331 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good083_checked :
    goodSegmentCheck 165 54 117
      { lower := 13496, upper := 13651, witness := RowWitness.topPrime 13487 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good084_checked :
    goodSegmentCheck 165 54 117
      { lower := 13652, upper := 13813, witness := RowWitness.topPrime 13649 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good085_checked :
    goodSegmentCheck 165 54 117
      { lower := 13814, upper := 13971, witness := RowWitness.topPrime 13807 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good086_checked :
    goodSegmentCheck 165 54 117
      { lower := 13972, upper := 14131, witness := RowWitness.topPrime 13967 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good087_checked :
    goodSegmentCheck 165 54 117
      { lower := 14132, upper := 14271, witness := RowWitness.topPrime 14107 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good088_checked :
    goodSegmentCheck 165 54 117
      { lower := 14272, upper := 14415, witness := RowWitness.topPrime 14251 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good089_checked :
    goodSegmentCheck 165 54 117
      { lower := 14416, upper := 14575, witness := RowWitness.topPrime 14411 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good090_checked :
    goodSegmentCheck 165 54 117
      { lower := 14576, upper := 14727, witness := RowWitness.topPrime 14563 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good091_checked :
    goodSegmentCheck 165 54 117
      { lower := 14728, upper := 14887, witness := RowWitness.topPrime 14723 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good092_checked :
    goodSegmentCheck 165 54 117
      { lower := 14888, upper := 15051, witness := RowWitness.topPrime 14887 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good093_checked :
    goodSegmentCheck 165 54 117
      { lower := 15052, upper := 15195, witness := RowWitness.topPrime 15031 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good094_checked :
    goodSegmentCheck 165 54 117
      { lower := 15196, upper := 15357, witness := RowWitness.topPrime 15193 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good095_checked :
    goodSegmentCheck 165 54 117
      { lower := 15358, upper := 15513, witness := RowWitness.topPrime 15349 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row165_good096_checked :
    goodSegmentCheck 165 54 117
      { lower := 15514, upper := 15675, witness := RowWitness.topPrime 15511 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good097_checked :
    goodSegmentCheck 165 54 117
      { lower := 15676, upper := 15835, witness := RowWitness.topPrime 15671 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good098_checked :
    goodSegmentCheck 165 54 117
      { lower := 15836, upper := 15987, witness := RowWitness.topPrime 15823 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good099_checked :
    goodSegmentCheck 165 54 117
      { lower := 15988, upper := 16137, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good100_checked :
    goodSegmentCheck 165 54 117
      { lower := 16138, upper := 16291, witness := RowWitness.topPrime 16127 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good101_checked :
    goodSegmentCheck 165 54 117
      { lower := 16292, upper := 16437, witness := RowWitness.topPrime 16273 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good102_checked :
    goodSegmentCheck 165 54 117
      { lower := 16438, upper := 16597, witness := RowWitness.topPrime 16433 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good103_checked :
    goodSegmentCheck 165 54 117
      { lower := 16598, upper := 16737, witness := RowWitness.topPrime 16573 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good104_checked :
    goodSegmentCheck 165 54 117
      { lower := 16738, upper := 16893, witness := RowWitness.topPrime 16729 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good105_checked :
    goodSegmentCheck 165 54 117
      { lower := 16894, upper := 17053, witness := RowWitness.topPrime 16889 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good106_checked :
    goodSegmentCheck 165 54 117
      { lower := 17054, upper := 17217, witness := RowWitness.topPrime 17053 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good107_checked :
    goodSegmentCheck 165 54 117
      { lower := 17218, upper := 17373, witness := RowWitness.topPrime 17209 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good108_checked :
    goodSegmentCheck 165 54 117
      { lower := 17374, upper := 17523, witness := RowWitness.topPrime 17359 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good109_checked :
    goodSegmentCheck 165 54 117
      { lower := 17524, upper := 17683, witness := RowWitness.topPrime 17519 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good110_checked :
    goodSegmentCheck 165 54 117
      { lower := 17684, upper := 17847, witness := RowWitness.topPrime 17683 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good111_checked :
    goodSegmentCheck 165 54 117
      { lower := 17848, upper := 18003, witness := RowWitness.topPrime 17839 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row165_good112_checked :
    goodSegmentCheck 165 54 117
      { lower := 18004, upper := 18153, witness := RowWitness.topPrime 17989 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good113_checked :
    goodSegmentCheck 165 54 117
      { lower := 18154, upper := 18313, witness := RowWitness.topPrime 18149 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good114_checked :
    goodSegmentCheck 165 54 117
      { lower := 18314, upper := 18477, witness := RowWitness.topPrime 18313 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good115_checked :
    goodSegmentCheck 165 54 117
      { lower := 18478, upper := 18625, witness := RowWitness.topPrime 18461 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good116_checked :
    goodSegmentCheck 165 54 117
      { lower := 18626, upper := 18781, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good117_checked :
    goodSegmentCheck 165 54 117
      { lower := 18782, upper := 18937, witness := RowWitness.topPrime 18773 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good118_checked :
    goodSegmentCheck 165 54 117
      { lower := 18938, upper := 19083, witness := RowWitness.topPrime 18919 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good119_checked :
    goodSegmentCheck 165 54 117
      { lower := 19084, upper := 19245, witness := RowWitness.topPrime 19081 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good120_checked :
    goodSegmentCheck 165 54 117
      { lower := 19246, upper := 19401, witness := RowWitness.topPrime 19237 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good121_checked :
    goodSegmentCheck 165 54 117
      { lower := 19402, upper := 19555, witness := RowWitness.topPrime 19391 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good122_checked :
    goodSegmentCheck 165 54 117
      { lower := 19556, upper := 19717, witness := RowWitness.topPrime 19553 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good123_checked :
    goodSegmentCheck 165 54 117
      { lower := 19718, upper := 19881, witness := RowWitness.topPrime 19717 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good124_checked :
    goodSegmentCheck 165 54 117
      { lower := 19882, upper := 20031, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good125_checked :
    goodSegmentCheck 165 54 117
      { lower := 20032, upper := 20193, witness := RowWitness.topPrime 20029 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good126_checked :
    goodSegmentCheck 165 54 117
      { lower := 20194, upper := 20347, witness := RowWitness.topPrime 20183 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good127_checked :
    goodSegmentCheck 165 54 117
      { lower := 20348, upper := 20511, witness := RowWitness.topPrime 20347 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row165_good128_checked :
    goodSegmentCheck 165 54 117
      { lower := 20512, upper := 20673, witness := RowWitness.topPrime 20509 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good129_checked :
    goodSegmentCheck 165 54 117
      { lower := 20674, upper := 20827, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good130_checked :
    goodSegmentCheck 165 54 117
      { lower := 20828, upper := 20973, witness := RowWitness.topPrime 20809 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good131_checked :
    goodSegmentCheck 165 54 117
      { lower := 20974, upper := 21127, witness := RowWitness.topPrime 20963 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good132_checked :
    goodSegmentCheck 165 54 117
      { lower := 21128, upper := 21285, witness := RowWitness.topPrime 21121 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good133_checked :
    goodSegmentCheck 165 54 117
      { lower := 21286, upper := 21447, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good134_checked :
    goodSegmentCheck 165 54 117
      { lower := 21448, upper := 21597, witness := RowWitness.topPrime 21433 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good135_checked :
    goodSegmentCheck 165 54 117
      { lower := 21598, upper := 21753, witness := RowWitness.topPrime 21589 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good136_checked :
    goodSegmentCheck 165 54 117
      { lower := 21754, upper := 21915, witness := RowWitness.topPrime 21751 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good137_checked :
    goodSegmentCheck 165 54 117
      { lower := 21916, upper := 22075, witness := RowWitness.topPrime 21911 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good138_checked :
    goodSegmentCheck 165 54 117
      { lower := 22076, upper := 22237, witness := RowWitness.topPrime 22073 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good139_checked :
    goodSegmentCheck 165 54 117
      { lower := 22238, upper := 22393, witness := RowWitness.topPrime 22229 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good140_checked :
    goodSegmentCheck 165 54 117
      { lower := 22394, upper := 22555, witness := RowWitness.topPrime 22391 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good141_checked :
    goodSegmentCheck 165 54 117
      { lower := 22556, upper := 22713, witness := RowWitness.topPrime 22549 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good142_checked :
    goodSegmentCheck 165 54 117
      { lower := 22714, upper := 22873, witness := RowWitness.topPrime 22709 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good143_checked :
    goodSegmentCheck 165 54 117
      { lower := 22874, upper := 23035, witness := RowWitness.topPrime 22871 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row165_good144_checked :
    goodSegmentCheck 165 54 117
      { lower := 23036, upper := 23193, witness := RowWitness.topPrime 23029 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good145_checked :
    goodSegmentCheck 165 54 117
      { lower := 23194, upper := 23353, witness := RowWitness.topPrime 23189 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good146_checked :
    goodSegmentCheck 165 54 117
      { lower := 23354, upper := 23503, witness := RowWitness.topPrime 23339 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good147_checked :
    goodSegmentCheck 165 54 117
      { lower := 23504, upper := 23661, witness := RowWitness.topPrime 23497 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good148_checked :
    goodSegmentCheck 165 54 117
      { lower := 23662, upper := 23797, witness := RowWitness.topPrime 23633 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good149_checked :
    goodSegmentCheck 165 54 117
      { lower := 23798, upper := 23953, witness := RowWitness.topPrime 23789 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good150_checked :
    goodSegmentCheck 165 54 117
      { lower := 23954, upper := 24093, witness := RowWitness.topPrime 23929 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good151_checked :
    goodSegmentCheck 165 54 117
      { lower := 24094, upper := 24255, witness := RowWitness.topPrime 24091 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good152_checked :
    goodSegmentCheck 165 54 117
      { lower := 24256, upper := 24415, witness := RowWitness.topPrime 24251 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good153_checked :
    goodSegmentCheck 165 54 117
      { lower := 24416, upper := 24577, witness := RowWitness.topPrime 24413 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good154_checked :
    goodSegmentCheck 165 54 117
      { lower := 24578, upper := 24735, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good155_checked :
    goodSegmentCheck 165 54 117
      { lower := 24736, upper := 24897, witness := RowWitness.topPrime 24733 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good156_checked :
    goodSegmentCheck 165 54 117
      { lower := 24898, upper := 25053, witness := RowWitness.topPrime 24889 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good157_checked :
    goodSegmentCheck 165 54 117
      { lower := 25054, upper := 25201, witness := RowWitness.topPrime 25037 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good158_checked :
    goodSegmentCheck 165 54 117
      { lower := 25202, upper := 25353, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good159_checked :
    goodSegmentCheck 165 54 117
      { lower := 25354, upper := 25513, witness := RowWitness.topPrime 25349 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row165_good160_checked :
    goodSegmentCheck 165 54 117
      { lower := 25514, upper := 25635, witness := RowWitness.topPrime 25471 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good161_checked :
    goodSegmentCheck 165 54 117
      { lower := 25636, upper := 25797, witness := RowWitness.topPrime 25633 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good162_checked :
    goodSegmentCheck 165 54 117
      { lower := 25798, upper := 25957, witness := RowWitness.topPrime 25793 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good163_checked :
    goodSegmentCheck 165 54 117
      { lower := 25958, upper := 26115, witness := RowWitness.topPrime 25951 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good164_checked :
    goodSegmentCheck 165 54 117
      { lower := 26116, upper := 26277, witness := RowWitness.topPrime 26113 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good165_checked :
    goodSegmentCheck 165 54 117
      { lower := 26278, upper := 26431, witness := RowWitness.topPrime 26267 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good166_checked :
    goodSegmentCheck 165 54 117
      { lower := 26432, upper := 26595, witness := RowWitness.topPrime 26431 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good167_checked :
    goodSegmentCheck 165 54 117
      { lower := 26596, upper := 26755, witness := RowWitness.topPrime 26591 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good168_checked :
    goodSegmentCheck 165 54 117
      { lower := 26756, upper := 26901, witness := RowWitness.topPrime 26737 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good169_checked :
    goodSegmentCheck 165 54 117
      { lower := 26902, upper := 27057, witness := RowWitness.topPrime 26893 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good170_checked :
    goodSegmentCheck 165 54 117
      { lower := 27058, upper := 27059, witness := RowWitness.topPrime 27043 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good171_checked :
    goodSegmentCheck 165 54 117
      { lower := 27556, upper := 27600, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good172_checked :
    goodSegmentCheck 165 54 117
      { lower := 28227, upper := 28254, witness := RowWitness.topPrime 28219 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good173_checked :
    goodSegmentCheck 165 54 117
      { lower := 28672, upper := 28833, witness := RowWitness.topPrime 28669 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good174_checked :
    goodSegmentCheck 165 54 117
      { lower := 28834, upper := 28881, witness := RowWitness.topPrime 28817 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good175_checked :
    goodSegmentCheck 165 54 117
      { lower := 29791, upper := 29932, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row165_good176_checked :
    goodSegmentCheck 165 54 117
      { lower := 30758, upper := 30767, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good177_checked :
    goodSegmentCheck 165 54 117
      { lower := 30899, upper := 30922, witness := RowWitness.topPrime 30893 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good178_checked :
    goodSegmentCheck 165 54 117
      { lower := 30926, upper := 31063, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good179_checked :
    goodSegmentCheck 165 54 117
      { lower := 31213, upper := 31357, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good180_checked :
    goodSegmentCheck 165 54 117
      { lower := 31358, upper := 31414, witness := RowWitness.topPrime 31357 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good181_checked :
    goodSegmentCheck 165 54 117
      { lower := 31423, upper := 31493, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good182_checked :
    goodSegmentCheck 165 54 117
      { lower := 31827, upper := 31848, witness := RowWitness.topPrime 31817 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good183_checked :
    goodSegmentCheck 165 54 117
      { lower := 31974, upper := 31991, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good184_checked :
    goodSegmentCheck 165 54 117
      { lower := 33614, upper := 33653, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good185_checked :
    goodSegmentCheck 165 54 117
      { lower := 33708, upper := 33778, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good186_checked :
    goodSegmentCheck 165 54 117
      { lower := 34322, upper := 34483, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good187_checked :
    goodSegmentCheck 165 54 117
      { lower := 34484, upper := 34555, witness := RowWitness.topPrime 34483 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good188_checked :
    goodSegmentCheck 165 54 117
      { lower := 36517, upper := 36661, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good189_checked :
    goodSegmentCheck 165 54 117
      { lower := 36662, upper := 36665, witness := RowWitness.topPrime 36653 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good190_checked :
    goodSegmentCheck 165 54 117
      { lower := 37303, upper := 37374, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good191_checked :
    goodSegmentCheck 165 54 117
      { lower := 37446, upper := 37467, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row165_good192_checked :
    goodSegmentCheck 165 54 117
      { lower := 37538, upper := 37610, witness := RowWitness.topPrime 37537 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good193_checked :
    goodSegmentCheck 165 54 117
      { lower := 37636, upper := 37702, witness := RowWitness.topPrime 37633 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good194_checked :
    goodSegmentCheck 165 54 117
      { lower := 38307, upper := 38455, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good195_checked :
    goodSegmentCheck 165 54 117
      { lower := 39326, upper := 39487, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good196_checked :
    goodSegmentCheck 165 54 117
      { lower := 39488, upper := 39490, witness := RowWitness.topPrime 39461 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good197_checked :
    goodSegmentCheck 165 54 117
      { lower := 40401, upper := 40492, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good198_checked :
    goodSegmentCheck 165 54 117
      { lower := 40931, upper := 41091, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good199_checked :
    goodSegmentCheck 165 54 117
      { lower := 41092, upper := 41095, witness := RowWitness.topPrime 41081 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good200_checked :
    goodSegmentCheck 165 54 117
      { lower := 45369, upper := 45417, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good201_checked :
    goodSegmentCheck 165 54 117
      { lower := 47526, upper := 47685, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good202_checked :
    goodSegmentCheck 165 54 117
      { lower := 47686, upper := 47688, witness := RowWitness.topPrime 47681 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good203_checked :
    goodSegmentCheck 165 54 117
      { lower := 48013, upper := 48125, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good204_checked :
    goodSegmentCheck 165 54 117
      { lower := 48373, upper := 48535, witness := RowWitness.topPrime 48371 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good205_checked :
    goodSegmentCheck 165 54 117
      { lower := 48536, upper := 48537, witness := RowWitness.topPrime 48533 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good206_checked :
    goodSegmentCheck 165 54 117
      { lower := 48734, upper := 48897, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good207_checked :
    goodSegmentCheck 165 54 117
      { lower := 48898, upper := 48898, witness := RowWitness.topPrime 48889 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row165_good208_checked :
    goodSegmentCheck 165 54 117
      { lower := 49152, upper := 49294, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good209_checked :
    goodSegmentCheck 165 54 117
      { lower := 49298, upper := 49316, witness := RowWitness.topPrime 49297 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good210_checked :
    goodSegmentCheck 165 54 117
      { lower := 49379, upper := 49462, witness := RowWitness.topPrime 49369 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good211_checked :
    goodSegmentCheck 165 54 117
      { lower := 50421, upper := 50574, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good212_checked :
    goodSegmentCheck 165 54 117
      { lower := 51076, upper := 51169, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good213_checked :
    goodSegmentCheck 165 54 117
      { lower := 53138, upper := 53209, witness := RowWitness.topPrime 53129 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good214_checked :
    goodSegmentCheck 165 54 117
      { lower := 53248, upper := 53403, witness := RowWitness.topPrime 53239 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good215_checked :
    goodSegmentCheck 165 54 117
      { lower := 53404, upper := 53412, witness := RowWitness.topPrime 53401 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good216_checked :
    goodSegmentCheck 165 54 117
      { lower := 55451, upper := 55605, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good217_checked :
    goodSegmentCheck 165 54 117
      { lower := 55606, upper := 55611, witness := RowWitness.topPrime 55603 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good218_checked :
    goodSegmentCheck 165 54 117
      { lower := 56307, upper := 56333, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good219_checked :
    goodSegmentCheck 165 54 117
      { lower := 56454, upper := 56471, witness := RowWitness.topPrime 56453 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good220_checked :
    goodSegmentCheck 165 54 117
      { lower := 57245, upper := 57286, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good221_checked :
    goodSegmentCheck 165 54 117
      { lower := 57344, upper := 57409, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good222_checked :
    goodSegmentCheck 165 54 117
      { lower := 68644, upper := 68803, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good223_checked :
    goodSegmentCheck 165 54 117
      { lower := 68804, upper := 68815, witness := RowWitness.topPrime 68791 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row165_good224_checked :
    goodSegmentCheck 165 54 117
      { lower := 68921, upper := 69054, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good225_checked :
    goodSegmentCheck 165 54 117
      { lower := 71289, upper := 71451, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good226_checked :
    goodSegmentCheck 165 54 117
      { lower := 71452, upper := 71453, witness := RowWitness.topPrime 71443 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good227_checked :
    goodSegmentCheck 165 54 117
      { lower := 85805, upper := 85847, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good228_checked :
    goodSegmentCheck 165 54 117
      { lower := 89383, upper := 89537, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good229_checked :
    goodSegmentCheck 165 54 117
      { lower := 102152, upper := 102174, witness := RowWitness.topPrime 102149 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good230_checked :
    goodSegmentCheck 165 54 117
      { lower := 103041, upper := 103130, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row165_good231_checked :
    goodSegmentCheck 165 54 117
      { lower := 148955, upper := 149041, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 165) (r := 54) (s := 117) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_good231_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row165_goods_checked :
    row165.goods.all (goodSegmentCheck row165.height.i row165.height.r row165.height.s) = true := by
  change row165_goods.all (goodSegmentCheck 165 54 117) = true
  simp only [row165_goods, List.all_cons, List.all_nil,
    row165_good000_checked,
    row165_good001_checked,
    row165_good002_checked,
    row165_good003_checked,
    row165_good004_checked,
    row165_good005_checked,
    row165_good006_checked,
    row165_good007_checked,
    row165_good008_checked,
    row165_good009_checked,
    row165_good010_checked,
    row165_good011_checked,
    row165_good012_checked,
    row165_good013_checked,
    row165_good014_checked,
    row165_good015_checked,
    row165_good016_checked,
    row165_good017_checked,
    row165_good018_checked,
    row165_good019_checked,
    row165_good020_checked,
    row165_good021_checked,
    row165_good022_checked,
    row165_good023_checked,
    row165_good024_checked,
    row165_good025_checked,
    row165_good026_checked,
    row165_good027_checked,
    row165_good028_checked,
    row165_good029_checked,
    row165_good030_checked,
    row165_good031_checked,
    row165_good032_checked,
    row165_good033_checked,
    row165_good034_checked,
    row165_good035_checked,
    row165_good036_checked,
    row165_good037_checked,
    row165_good038_checked,
    row165_good039_checked,
    row165_good040_checked,
    row165_good041_checked,
    row165_good042_checked,
    row165_good043_checked,
    row165_good044_checked,
    row165_good045_checked,
    row165_good046_checked,
    row165_good047_checked,
    row165_good048_checked,
    row165_good049_checked,
    row165_good050_checked,
    row165_good051_checked,
    row165_good052_checked,
    row165_good053_checked,
    row165_good054_checked,
    row165_good055_checked,
    row165_good056_checked,
    row165_good057_checked,
    row165_good058_checked,
    row165_good059_checked,
    row165_good060_checked,
    row165_good061_checked,
    row165_good062_checked,
    row165_good063_checked,
    row165_good064_checked,
    row165_good065_checked,
    row165_good066_checked,
    row165_good067_checked,
    row165_good068_checked,
    row165_good069_checked,
    row165_good070_checked,
    row165_good071_checked,
    row165_good072_checked,
    row165_good073_checked,
    row165_good074_checked,
    row165_good075_checked,
    row165_good076_checked,
    row165_good077_checked,
    row165_good078_checked,
    row165_good079_checked,
    row165_good080_checked,
    row165_good081_checked,
    row165_good082_checked,
    row165_good083_checked,
    row165_good084_checked,
    row165_good085_checked,
    row165_good086_checked,
    row165_good087_checked,
    row165_good088_checked,
    row165_good089_checked,
    row165_good090_checked,
    row165_good091_checked,
    row165_good092_checked,
    row165_good093_checked,
    row165_good094_checked,
    row165_good095_checked,
    row165_good096_checked,
    row165_good097_checked,
    row165_good098_checked,
    row165_good099_checked,
    row165_good100_checked,
    row165_good101_checked,
    row165_good102_checked,
    row165_good103_checked,
    row165_good104_checked,
    row165_good105_checked,
    row165_good106_checked,
    row165_good107_checked,
    row165_good108_checked,
    row165_good109_checked,
    row165_good110_checked,
    row165_good111_checked,
    row165_good112_checked,
    row165_good113_checked,
    row165_good114_checked,
    row165_good115_checked,
    row165_good116_checked,
    row165_good117_checked,
    row165_good118_checked,
    row165_good119_checked,
    row165_good120_checked,
    row165_good121_checked,
    row165_good122_checked,
    row165_good123_checked,
    row165_good124_checked,
    row165_good125_checked,
    row165_good126_checked,
    row165_good127_checked,
    row165_good128_checked,
    row165_good129_checked,
    row165_good130_checked,
    row165_good131_checked,
    row165_good132_checked,
    row165_good133_checked,
    row165_good134_checked,
    row165_good135_checked,
    row165_good136_checked,
    row165_good137_checked,
    row165_good138_checked,
    row165_good139_checked,
    row165_good140_checked,
    row165_good141_checked,
    row165_good142_checked,
    row165_good143_checked,
    row165_good144_checked,
    row165_good145_checked,
    row165_good146_checked,
    row165_good147_checked,
    row165_good148_checked,
    row165_good149_checked,
    row165_good150_checked,
    row165_good151_checked,
    row165_good152_checked,
    row165_good153_checked,
    row165_good154_checked,
    row165_good155_checked,
    row165_good156_checked,
    row165_good157_checked,
    row165_good158_checked,
    row165_good159_checked,
    row165_good160_checked,
    row165_good161_checked,
    row165_good162_checked,
    row165_good163_checked,
    row165_good164_checked,
    row165_good165_checked,
    row165_good166_checked,
    row165_good167_checked,
    row165_good168_checked,
    row165_good169_checked,
    row165_good170_checked,
    row165_good171_checked,
    row165_good172_checked,
    row165_good173_checked,
    row165_good174_checked,
    row165_good175_checked,
    row165_good176_checked,
    row165_good177_checked,
    row165_good178_checked,
    row165_good179_checked,
    row165_good180_checked,
    row165_good181_checked,
    row165_good182_checked,
    row165_good183_checked,
    row165_good184_checked,
    row165_good185_checked,
    row165_good186_checked,
    row165_good187_checked,
    row165_good188_checked,
    row165_good189_checked,
    row165_good190_checked,
    row165_good191_checked,
    row165_good192_checked,
    row165_good193_checked,
    row165_good194_checked,
    row165_good195_checked,
    row165_good196_checked,
    row165_good197_checked,
    row165_good198_checked,
    row165_good199_checked,
    row165_good200_checked,
    row165_good201_checked,
    row165_good202_checked,
    row165_good203_checked,
    row165_good204_checked,
    row165_good205_checked,
    row165_good206_checked,
    row165_good207_checked,
    row165_good208_checked,
    row165_good209_checked,
    row165_good210_checked,
    row165_good211_checked,
    row165_good212_checked,
    row165_good213_checked,
    row165_good214_checked,
    row165_good215_checked,
    row165_good216_checked,
    row165_good217_checked,
    row165_good218_checked,
    row165_good219_checked,
    row165_good220_checked,
    row165_good221_checked,
    row165_good222_checked,
    row165_good223_checked,
    row165_good224_checked,
    row165_good225_checked,
    row165_good226_checked,
    row165_good227_checked,
    row165_good228_checked,
    row165_good229_checked,
    row165_good230_checked,
    row165_good231_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row165_registered :
    decide (row165.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row165_small_checked :
    coverCheck (2 * row165.height.i + 2) (row165.height.i * (row165.height.i - 1) - 1)
      (row165.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row165_layerCover_checked :
    coverCheck (row165.height.i * (row165.height.i - 1)) (row165.height.n0 - 1)
      (row165.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row165_bounds : List NatInterval :=
  [(332, 495), (496, 655), (656, 817), (818, 975), (976, 1135), (1136, 1293), (1294, 1455), (1456, 1617), (1618, 1777), (1778, 1941), (1942, 2097), (2098, 2253), (2254, 2415), (2416, 2575), (2576, 2721), (2722, 2883), (2884, 3043), (3044, 3205), (3206, 3367), (3368, 3525), (3526, 3681), (3682, 3841), (3842, 3997), (3998, 4153), (4154, 4317), (4318, 4461), (4462, 4621), (4622, 4785), (4786, 4947), (4948, 5107), (5108, 5271), (5272, 5425), (5426, 5583), (5584, 5745), (5746, 5907), (5908, 6067), (6068, 6231), (6232, 6393), (6394, 6553), (6554, 6717), (6718, 6873), (6874, 7035), (7036, 7191), (7192, 7351), (7352, 7515), (7516, 7671), (7672, 7833), (7834, 7993), (7994, 8157), (8158, 8311), (8312, 8475), (8476, 8631), (8632, 8793), (8794, 8947), (8948, 9105), (9106, 9267), (9268, 9421), (9422, 9585), (9586, 9715), (9716, 9861), (9862, 10023), (10024, 10173), (10174, 10333), (10334, 10497), (10498, 10651), (10652, 10815), (10816, 10963), (10964, 11121), (11122, 11283), (11284, 11443), (11444, 11607), (11608, 11761), (11762, 11907), (11908, 12067), (12068, 12213), (12214, 12375), (12376, 12537), (12538, 12691), (12692, 12853), (12854, 13017), (13018, 13173), (13174, 13335), (13336, 13495), (13496, 13651), (13652, 13813), (13814, 13971), (13972, 14131), (14132, 14271), (14272, 14415), (14416, 14575), (14576, 14727), (14728, 14887), (14888, 15051), (15052, 15195), (15196, 15357), (15358, 15513), (15514, 15675), (15676, 15835), (15836, 15987), (15988, 16137), (16138, 16291), (16292, 16437), (16438, 16597), (16598, 16737), (16738, 16893), (16894, 17053), (17054, 17217), (17218, 17373), (17374, 17523), (17524, 17683), (17684, 17847), (17848, 18003), (18004, 18153), (18154, 18313), (18314, 18477), (18478, 18625), (18626, 18781), (18782, 18937), (18938, 19083), (19084, 19245), (19246, 19401), (19402, 19555), (19556, 19717), (19718, 19881), (19882, 20031), (20032, 20193), (20194, 20347), (20348, 20511), (20512, 20673), (20674, 20827), (20828, 20973), (20974, 21127), (21128, 21285), (21286, 21447), (21448, 21597), (21598, 21753), (21754, 21915), (21916, 22075), (22076, 22237), (22238, 22393), (22394, 22555), (22556, 22713), (22714, 22873), (22874, 23035), (23036, 23193), (23194, 23353), (23354, 23503), (23504, 23661), (23662, 23797), (23798, 23953), (23954, 24093), (24094, 24255), (24256, 24415), (24416, 24577), (24578, 24735), (24736, 24897), (24898, 25053), (25054, 25201), (25202, 25353), (25354, 25513), (25514, 25635), (25636, 25797), (25798, 25957), (25958, 26115), (26116, 26277), (26278, 26431), (26432, 26595), (26596, 26755), (26756, 26901), (26902, 27057), (27058, 27059), (27556, 27600), (28227, 28254), (28672, 28833), (28834, 28881), (29791, 29932), (30758, 30767), (30899, 30922), (30926, 31063), (31213, 31357), (31358, 31414), (31423, 31493), (31827, 31848), (31974, 31991), (33614, 33653), (33708, 33778), (34322, 34483), (34484, 34555), (36517, 36661), (36662, 36665), (37303, 37374), (37446, 37467), (37538, 37610), (37636, 37702), (38307, 38455), (39326, 39487), (39488, 39490), (40401, 40492), (40931, 41091), (41092, 41095), (45369, 45417), (47526, 47685), (47686, 47688), (48013, 48125), (48373, 48535), (48536, 48537), (48734, 48897), (48898, 48898), (49152, 49294), (49298, 49316), (49379, 49462), (50421, 50574), (51076, 51169), (53138, 53209), (53248, 53403), (53404, 53412), (55451, 55605), (55606, 55611), (56307, 56333), (56454, 56471), (57245, 57286), (57344, 57409), (68644, 68803), (68804, 68815), (68921, 69054), (71289, 71451), (71452, 71453), (85805, 85847), (89383, 89537), (102152, 102174), (103041, 103130), (148955, 149041)]

theorem row165_bounds_eq : row165.goods.map goodSegmentBounds = row165_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row165_layer000_intervals : List ColouredInterval :=
  [(2, 28672, 28836), (2, 28672, 28836), (2, 32768, 32932), (2, 36864, 37028), (2, 40960, 41124), (2, 45056, 45220), (2, 49152, 49316), (2, 53248, 53412), (2, 32768, 32932), (2, 40960, 41124), (2, 49152, 49316), (2, 32768, 32932), (2, 49152, 49316), (2, 32768, 32932), (3, 39366, 39530), (5, 31250, 31414), (7, 28812, 28976), (7, 31213, 31377), (7, 33614, 33778), (7, 33614, 33778), (7, 50421, 50585), (13, 28561, 28725), (13, 30758, 30922), (13, 28561, 28725), (17, 29478, 29642), (17, 34391, 34555), (17, 39304, 39468), (17, 44217, 44381), (17, 49130, 49294), (17, 54043, 54119), (19, 27436, 27600), (19, 34295, 34459), (19, 41154, 41318), (19, 48013, 48177), (23, 36501, 36665), (23, 48668, 48832), (29, 48778, 48942), (31, 29791, 29955), (37, 50653, 50817), (47, 28717, 28881), (47, 30926, 31090), (53, 28090, 28254), (53, 30899, 31063), (53, 33708, 33872), (53, 36517, 36681), (53, 39326, 39490), (59, 27848, 28012), (59, 31329, 31493), (59, 34810, 34974), (59, 38291, 38455), (59, 41772, 41936), (59, 45253, 45417), (59, 48734, 48898), (61, 29768, 29932), (61, 33489, 33653), (61, 37210, 37374), (61, 40931, 41095), (61, 44652, 44816), (61, 48373, 48537), (61, 52094, 52258), (67, 27060, 27098), (67, 31423, 31587), (67, 35912, 36076), (67, 40401, 40565), (67, 44890, 45054), (67, 49379, 49543), (67, 53868, 54032), (71, 30246, 30410), (71, 35287, 35451), (71, 40328, 40492), (71, 45369, 45533), (71, 50410, 50574), (73, 31974, 32138), (73, 37303, 37467), (73, 42632, 42796), (73, 47961, 48125), (73, 53290, 53454), (79, 31205, 31369), (79, 37446, 37610), (79, 43687, 43851), (79, 49928, 50092), (83, 27556, 27720), (83, 34445, 34609), (83, 41334, 41498), (83, 48223, 48387), (89, 31684, 31848), (89, 39605, 39769), (89, 47526, 47690), (97, 28227, 28391), (97, 37636, 37800), (97, 47045, 47209), (101, 30603, 30767), (101, 40804, 40968), (101, 51005, 51169), (103, 31827, 31991), (103, 42436, 42600), (103, 53045, 53209), (107, 34347, 34511), (107, 45796, 45960), (109, 35643, 35807), (109, 47524, 47688), (113, 38307, 38471), (113, 51076, 51240), (127, 32258, 32422), (127, 48387, 48551), (131, 34322, 34486), (131, 51483, 51647), (137, 37538, 37702), (139, 38642, 38806), (149, 44402, 44566), (151, 45602, 45766), (157, 49298, 49462), (163, 53138, 53302)]

def row165_layer000_block000 : List ColouredInterval :=
  [(2, 28672, 28836), (2, 28672, 28836), (2, 32768, 32932), (2, 36864, 37028), (2, 40960, 41124), (2, 45056, 45220), (2, 49152, 49316), (2, 53248, 53412), (2, 32768, 32932), (2, 40960, 41124), (2, 49152, 49316), (2, 32768, 32932), (2, 49152, 49316), (2, 32768, 32932), (3, 39366, 39530), (5, 31250, 31414)]

def row165_layer000_block001 : List ColouredInterval :=
  [(7, 28812, 28976), (7, 31213, 31377), (7, 33614, 33778), (7, 33614, 33778), (7, 50421, 50585), (13, 28561, 28725), (13, 30758, 30922), (13, 28561, 28725), (17, 29478, 29642), (17, 34391, 34555), (17, 39304, 39468), (17, 44217, 44381), (17, 49130, 49294), (17, 54043, 54119), (19, 27436, 27600), (19, 34295, 34459)]

def row165_layer000_block002 : List ColouredInterval :=
  [(19, 41154, 41318), (19, 48013, 48177), (23, 36501, 36665), (23, 48668, 48832), (29, 48778, 48942), (31, 29791, 29955), (37, 50653, 50817), (47, 28717, 28881), (47, 30926, 31090), (53, 28090, 28254), (53, 30899, 31063), (53, 33708, 33872), (53, 36517, 36681), (53, 39326, 39490), (59, 27848, 28012), (59, 31329, 31493)]

def row165_layer000_block003 : List ColouredInterval :=
  [(59, 34810, 34974), (59, 38291, 38455), (59, 41772, 41936), (59, 45253, 45417), (59, 48734, 48898), (61, 29768, 29932), (61, 33489, 33653), (61, 37210, 37374), (61, 40931, 41095), (61, 44652, 44816), (61, 48373, 48537), (61, 52094, 52258), (67, 27060, 27098), (67, 31423, 31587), (67, 35912, 36076), (67, 40401, 40565)]

def row165_layer000_block004 : List ColouredInterval :=
  [(67, 44890, 45054), (67, 49379, 49543), (67, 53868, 54032), (71, 30246, 30410), (71, 35287, 35451), (71, 40328, 40492), (71, 45369, 45533), (71, 50410, 50574), (73, 31974, 32138), (73, 37303, 37467), (73, 42632, 42796), (73, 47961, 48125), (73, 53290, 53454), (79, 31205, 31369), (79, 37446, 37610), (79, 43687, 43851)]

def row165_layer000_block005 : List ColouredInterval :=
  [(79, 49928, 50092), (83, 27556, 27720), (83, 34445, 34609), (83, 41334, 41498), (83, 48223, 48387), (89, 31684, 31848), (89, 39605, 39769), (89, 47526, 47690), (97, 28227, 28391), (97, 37636, 37800), (97, 47045, 47209), (101, 30603, 30767), (101, 40804, 40968), (101, 51005, 51169), (103, 31827, 31991), (103, 42436, 42600)]

def row165_layer000_block006 : List ColouredInterval :=
  [(103, 53045, 53209), (107, 34347, 34511), (107, 45796, 45960), (109, 35643, 35807), (109, 47524, 47688), (113, 38307, 38471), (113, 51076, 51240), (127, 32258, 32422), (127, 48387, 48551), (131, 34322, 34486), (131, 51483, 51647), (137, 37538, 37702), (139, 38642, 38806), (149, 44402, 44566), (151, 45602, 45766), (157, 49298, 49462)]

def row165_layer000_block007 : List ColouredInterval :=
  [(163, 53138, 53302)]

def row165_layer000_chunks : List (List ColouredInterval) :=
  [row165_layer000_block000, row165_layer000_block001, row165_layer000_block002, row165_layer000_block003, row165_layer000_block004, row165_layer000_block005, row165_layer000_block006, row165_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row165_layer000_arithmetic : LayerArithmeticValid row165.height { lower := 27060, upper := 54120, M := 14 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row165_layer000_enumeration :
    activePowerIntervalList 165 14 27060 54120 = row165_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row165_layer000_pairs000 :
    row165_layer000_block000.all (fun I => row165_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row165_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row165_layer000_pairs001 :
    row165_layer000_block001.all (fun I => row165_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row165_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row165_layer000_pairs002 :
    row165_layer000_block002.all (fun I => row165_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row165_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row165_layer000_pairs003 :
    row165_layer000_block003.all (fun I => row165_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row165_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row165_layer000_pairs004 :
    row165_layer000_block004.all (fun I => row165_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row165_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row165_layer000_pairs005 :
    row165_layer000_block005.all (fun I => row165_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row165_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row165_layer000_pairs006 :
    row165_layer000_block006.all (fun I => row165_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row165_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row165_layer000_pairs007 :
    row165_layer000_block007.all (fun I => row165_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row165_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row165_layer000_chunks_eq : row165_layer000_chunks.flatten = row165_layer000_intervals := by
  rfl

theorem row165_layer000_pairs : pairCoverCheck row165_layer000_intervals row165_bounds = true := by
  apply pairCoverCheck_of_chunks row165_layer000_chunks_eq
  intro block hblock
  simp only [row165_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row165_layer000_pairs000
  · exact row165_layer000_pairs001
  · exact row165_layer000_pairs002
  · exact row165_layer000_pairs003
  · exact row165_layer000_pairs004
  · exact row165_layer000_pairs005
  · exact row165_layer000_pairs006
  · exact row165_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row165_layer000_checked :
    coverLayerCheck row165.height row165.goods { lower := 27060, upper := 54120, M := 14 } = true := by
  exact coverLayerCheck_of_parts row165_layer000_arithmetic row165_layer000_enumeration row165_bounds_eq row165_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_layer000_checked
