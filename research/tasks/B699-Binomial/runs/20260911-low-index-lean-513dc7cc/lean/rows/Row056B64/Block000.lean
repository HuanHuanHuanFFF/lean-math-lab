import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row056_height : HeightCertificateDatum := { i := 56, r := 18, s := 38, n0Power10 := 13 }

def row056_goods : List GoodSegment := [
  { lower := 114, upper := 168, witness := RowWitness.topPrime 113 },
  { lower := 169, upper := 222, witness := RowWitness.topPrime 167 },
  { lower := 223, upper := 278, witness := RowWitness.topPrime 223 },
  { lower := 279, upper := 332, witness := RowWitness.topPrime 277 },
  { lower := 333, upper := 386, witness := RowWitness.topPrime 331 },
  { lower := 387, upper := 438, witness := RowWitness.topPrime 383 },
  { lower := 439, upper := 494, witness := RowWitness.topPrime 439 },
  { lower := 495, upper := 546, witness := RowWitness.topPrime 491 },
  { lower := 547, upper := 602, witness := RowWitness.topPrime 547 },
  { lower := 603, upper := 656, witness := RowWitness.topPrime 601 },
  { lower := 657, upper := 708, witness := RowWitness.topPrime 653 },
  { lower := 709, upper := 764, witness := RowWitness.topPrime 709 },
  { lower := 765, upper := 816, witness := RowWitness.topPrime 761 },
  { lower := 817, upper := 866, witness := RowWitness.topPrime 811 },
  { lower := 867, upper := 918, witness := RowWitness.topPrime 863 },
  { lower := 919, upper := 974, witness := RowWitness.topPrime 919 },
  { lower := 975, upper := 1026, witness := RowWitness.topPrime 971 },
  { lower := 1027, upper := 1076, witness := RowWitness.topPrime 1021 },
  { lower := 1077, upper := 1124, witness := RowWitness.topPrime 1069 },
  { lower := 1125, upper := 1178, witness := RowWitness.topPrime 1123 },
  { lower := 1179, upper := 1226, witness := RowWitness.topPrime 1171 },
  { lower := 1227, upper := 1278, witness := RowWitness.topPrime 1223 },
  { lower := 1279, upper := 1334, witness := RowWitness.topPrime 1279 },
  { lower := 1335, upper := 1382, witness := RowWitness.topPrime 1327 },
  { lower := 1383, upper := 1436, witness := RowWitness.topPrime 1381 },
  { lower := 1437, upper := 1488, witness := RowWitness.topPrime 1433 },
  { lower := 1489, upper := 1544, witness := RowWitness.topPrime 1489 },
  { lower := 1545, upper := 1598, witness := RowWitness.topPrime 1543 },
  { lower := 1599, upper := 1652, witness := RowWitness.topPrime 1597 },
  { lower := 1653, upper := 1692, witness := RowWitness.topPrime 1637 },
  { lower := 1693, upper := 1748, witness := RowWitness.topPrime 1693 },
  { lower := 1749, upper := 1802, witness := RowWitness.topPrime 1747 },
  { lower := 1803, upper := 1856, witness := RowWitness.topPrime 1801 },
  { lower := 1857, upper := 1902, witness := RowWitness.topPrime 1847 },
  { lower := 1903, upper := 1956, witness := RowWitness.topPrime 1901 },
  { lower := 1957, upper := 2006, witness := RowWitness.topPrime 1951 },
  { lower := 2007, upper := 2058, witness := RowWitness.topPrime 2003 },
  { lower := 2059, upper := 2108, witness := RowWitness.topPrime 2053 },
  { lower := 2109, upper := 2154, witness := RowWitness.topPrime 2099 },
  { lower := 2155, upper := 2208, witness := RowWitness.topPrime 2153 },
  { lower := 2209, upper := 2262, witness := RowWitness.topPrime 2207 },
  { lower := 2263, upper := 2306, witness := RowWitness.topPrime 2251 },
  { lower := 2307, upper := 2352, witness := RowWitness.topPrime 2297 },
  { lower := 2353, upper := 2406, witness := RowWitness.topPrime 2351 },
  { lower := 2407, upper := 2454, witness := RowWitness.topPrime 2399 },
  { lower := 2455, upper := 2502, witness := RowWitness.topPrime 2447 },
  { lower := 2503, upper := 2558, witness := RowWitness.topPrime 2503 },
  { lower := 2559, upper := 2612, witness := RowWitness.topPrime 2557 },
  { lower := 2613, upper := 2664, witness := RowWitness.topPrime 2609 },
  { lower := 2665, upper := 2718, witness := RowWitness.topPrime 2663 },
  { lower := 2719, upper := 2774, witness := RowWitness.topPrime 2719 },
  { lower := 2775, upper := 2822, witness := RowWitness.topPrime 2767 },
  { lower := 2823, upper := 2874, witness := RowWitness.topPrime 2819 },
  { lower := 2875, upper := 2916, witness := RowWitness.topPrime 2861 },
  { lower := 2917, upper := 2972, witness := RowWitness.topPrime 2917 },
  { lower := 2973, upper := 3026, witness := RowWitness.topPrime 2971 },
  { lower := 3027, upper := 3078, witness := RowWitness.topPrime 3023 },
  { lower := 3079, upper := 3097, witness := RowWitness.topPrime 3079 },
  { lower := 3125, upper := 3127, witness := RowWitness.topPrime 3121 },
  { lower := 3146, upper := 3192, witness := RowWitness.topPrime 3137 },
  { lower := 3193, upper := 3234, witness := RowWitness.topPrime 3191 },
  { lower := 3249, upper := 3284, witness := RowWitness.topPrime 3229 },
  { lower := 3285, upper := 3305, witness := RowWitness.topPrime 3271 },
  { lower := 3364, upper := 3416, witness := RowWitness.topPrime 3361 },
  { lower := 3417, upper := 3443, witness := RowWitness.topPrime 3413 },
  { lower := 3500, upper := 3554, witness := RowWitness.topPrime 3499 },
  { lower := 3555, upper := 3564, witness := RowWitness.topPrime 3547 },
  { lower := 3625, upper := 3678, witness := RowWitness.topPrime 3623 },
  { lower := 3679, upper := 3685, witness := RowWitness.topPrime 3677 },
  { lower := 3698, upper := 3700, witness := RowWitness.topPrime 3697 },
  { lower := 3703, upper := 3756, witness := RowWitness.topPrime 3701 },
  { lower := 3757, upper := 3794, witness := RowWitness.topPrime 3739 },
  { lower := 3795, upper := 3806, witness := RowWitness.topPrime 3793 },
  { lower := 3875, upper := 3918, witness := RowWitness.topPrime 3863 },
  { lower := 3919, upper := 3942, witness := RowWitness.topPrime 3919 },
  { lower := 3993, upper := 4026, witness := RowWitness.topPrime 3989 },
  { lower := 4046, upper := 4048, witness := RowWitness.topPrime 4027 },
  { lower := 4056, upper := 4106, witness := RowWitness.topPrime 4051 },
  { lower := 4107, upper := 4154, witness := RowWitness.topPrime 4099 },
  { lower := 4155, upper := 4162, witness := RowWitness.topPrime 4153 },
  { lower := 4225, upper := 4274, witness := RowWitness.topPrime 4219 },
  { lower := 4275, upper := 4280, witness := RowWitness.topPrime 4273 },
  { lower := 4335, upper := 4382, witness := RowWitness.topPrime 4327 },
  { lower := 4383, upper := 4428, witness := RowWitness.topPrime 4373 },
  { lower := 4429, upper := 4449, witness := RowWitness.topPrime 4423 },
  { lower := 4617, upper := 4618, witness := RowWitness.topPrime 4603 },
  { lower := 4624, upper := 4672, witness := RowWitness.topPrime 4621 },
  { lower := 4732, upper := 4748, witness := RowWitness.topPrime 4729 },
  { lower := 4761, upper := 4787, witness := RowWitness.topPrime 4759 },
  { lower := 4802, upper := 4856, witness := RowWitness.topPrime 4801 },
  { lower := 4857, upper := 4857, witness := RowWitness.topPrime 4831 },
  { lower := 4860, upper := 4860, witness := RowWitness.topPrime 4831 },
  { lower := 4901, upper := 4944, witness := RowWitness.topPrime 4889 },
  { lower := 4945, upper := 4956, witness := RowWitness.topPrime 4943 },
  { lower := 5043, upper := 5094, witness := RowWitness.topPrime 5039 },
  { lower := 5095, upper := 5125, witness := RowWitness.topPrime 5087 },
  { lower := 5239, upper := 5257, witness := RowWitness.topPrime 5237 },
  { lower := 5290, upper := 5294, witness := RowWitness.topPrime 5281 },
  { lower := 5324, upper := 5378, witness := RowWitness.topPrime 5323 },
  { lower := 5379, upper := 5379, witness := RowWitness.topPrime 5351 },
  { lower := 5491, upper := 5531, witness := RowWitness.topPrime 5483 },
  { lower := 5589, upper := 5602, witness := RowWitness.topPrime 5581 },
  { lower := 5618, upper := 5646, witness := RowWitness.topPrime 5591 },
  { lower := 5647, upper := 5673, witness := RowWitness.topPrime 5647 },
  { lower := 5776, upper := 5804, witness := RowWitness.topPrime 5749 },
  { lower := 5805, upper := 5856, witness := RowWitness.topPrime 5801 },
  { lower := 5857, upper := 5874, witness := RowWitness.topPrime 5857 },
  { lower := 5887, upper := 5887, witness := RowWitness.topPrime 5881 },
  { lower := 6075, upper := 6124, witness := RowWitness.topPrime 6073 },
  { lower := 6144, upper := 6192, witness := RowWitness.topPrime 6143 },
  { lower := 6348, upper := 6398, witness := RowWitness.topPrime 6343 },
  { lower := 6399, upper := 6403, witness := RowWitness.topPrime 6397 },
  { lower := 6591, upper := 6616, witness := RowWitness.topPrime 6581 },
  { lower := 6627, upper := 6674, witness := RowWitness.topPrime 6619 },
  { lower := 6675, upper := 6702, witness := RowWitness.topPrime 6673 },
  { lower := 6727, upper := 6774, witness := RowWitness.topPrime 6719 },
  { lower := 6775, upper := 6782, witness := RowWitness.topPrime 6763 },
  { lower := 6845, upper := 6896, witness := RowWitness.topPrime 6841 },
  { lower := 6897, upper := 6930, witness := RowWitness.topPrime 6883 },
  { lower := 7220, upper := 7274, witness := RowWitness.topPrime 7219 },
  { lower := 7275, upper := 7275, witness := RowWitness.topPrime 7253 },
  { lower := 7406, upper := 7448, witness := RowWitness.topPrime 7393 },
  { lower := 7449, upper := 7451, witness := RowWitness.topPrime 7433 },
  { lower := 7514, upper := 7555, witness := RowWitness.topPrime 7507 },
  { lower := 7569, upper := 7569, witness := RowWitness.topPrime 7561 },
  { lower := 7581, upper := 7624, witness := RowWitness.topPrime 7577 },
  { lower := 7942, upper := 7992, witness := RowWitness.topPrime 7937 },
  { lower := 7993, upper := 7997, witness := RowWitness.topPrime 7993 },
  { lower := 8019, upper := 8041, witness := RowWitness.topPrime 8017 },
  { lower := 8125, upper := 8147, witness := RowWitness.topPrime 8123 },
  { lower := 8214, upper := 8247, witness := RowWitness.topPrime 8209 },
  { lower := 8410, upper := 8444, witness := RowWitness.topPrime 8389 },
  { lower := 8445, upper := 8482, witness := RowWitness.topPrime 8443 },
  { lower := 8664, upper := 8704, witness := RowWitness.topPrime 8663 },
  { lower := 8750, upper := 8802, witness := RowWitness.topPrime 8747 },
  { lower := 8803, upper := 8805, witness := RowWitness.topPrime 8803 },
  { lower := 8836, upper := 8843, witness := RowWitness.topPrime 8831 },
  { lower := 9025, upper := 9048, witness := RowWitness.topPrime 9013 },
  { lower := 9251, upper := 9296, witness := RowWitness.topPrime 9241 },
  { lower := 9297, upper := 9300, witness := RowWitness.topPrime 9293 },
  { lower := 9386, upper := 9430, witness := RowWitness.topPrime 9377 },
  { lower := 9522, upper := 9532, witness := RowWitness.topPrime 9521 },
  { lower := 9604, upper := 9656, witness := RowWitness.topPrime 9601 },
  { lower := 9657, upper := 9659, witness := RowWitness.topPrime 9649 },
  { lower := 10051, upper := 10055, witness := RowWitness.topPrime 10039 },
  { lower := 10086, upper := 10134, witness := RowWitness.topPrime 10079 },
  { lower := 10135, upper := 10147, witness := RowWitness.topPrime 10133 },
  { lower := 10580, upper := 10622, witness := RowWitness.topPrime 10567 },
  { lower := 10623, upper := 10635, witness := RowWitness.topPrime 10613 },
  { lower := 10648, upper := 10680, witness := RowWitness.topPrime 10639 },
  { lower := 10935, upper := 10964, witness := RowWitness.topPrime 10909 },
  { lower := 10965, upper := 11007, witness := RowWitness.topPrime 10957 },
  { lower := 11094, upper := 11100, witness := RowWitness.topPrime 11093 },
  { lower := 11109, upper := 11148, witness := RowWitness.topPrime 11093 },
  { lower := 11149, upper := 11149, witness := RowWitness.topPrime 11149 },
  { lower := 11250, upper := 11291, witness := RowWitness.topPrime 11243 },
  { lower := 11664, upper := 11693, witness := RowWitness.topPrime 11657 },
  { lower := 11774, upper := 11798, witness := RowWitness.topPrime 11743 },
  { lower := 11799, upper := 11822, witness := RowWitness.topPrime 11789 },
  { lower := 12321, upper := 12343, witness := RowWitness.topPrime 12301 },
  { lower := 12500, upper := 12548, witness := RowWitness.topPrime 12497 },
  { lower := 13125, upper := 13176, witness := RowWitness.topPrime 13121 },
  { lower := 13177, upper := 13177, witness := RowWitness.topPrime 13177 },
  { lower := 13225, upper := 13237, witness := RowWitness.topPrime 13219 },
  { lower := 13254, upper := 13280, witness := RowWitness.topPrime 13249 },
  { lower := 13454, upper := 13506, witness := RowWitness.topPrime 13451 },
  { lower := 13507, upper := 13509, witness := RowWitness.topPrime 13499 },
  { lower := 13718, upper := 13745, witness := RowWitness.topPrime 13711 },
  { lower := 13750, upper := 13773, witness := RowWitness.topPrime 13729 },
  { lower := 14415, upper := 14430, witness := RowWitness.topPrime 14411 },
  { lower := 14792, upper := 14794, witness := RowWitness.topPrime 14783 },
  { lower := 15138, upper := 15184, witness := RowWitness.topPrime 15137 },
  { lower := 15379, upper := 15431, witness := RowWitness.topPrime 15377 },
  { lower := 15979, upper := 16027, witness := RowWitness.topPrime 15973 },
  { lower := 16384, upper := 16392, witness := RowWitness.topPrime 16381 },
  { lower := 16428, upper := 16439, witness := RowWitness.topPrime 16427 },
  { lower := 16807, upper := 16842, witness := RowWitness.topPrime 16787 },
  { lower := 16843, upper := 16875, witness := RowWitness.topPrime 16843 },
  { lower := 17303, upper := 17353, witness := RowWitness.topPrime 17299 },
  { lower := 17672, upper := 17716, witness := RowWitness.topPrime 17669 },
  { lower := 18259, upper := 18280, witness := RowWitness.topPrime 18257 },
  { lower := 18491, upper := 18536, witness := RowWitness.topPrime 18481 },
  { lower := 18537, upper := 18546, witness := RowWitness.topPrime 18523 },
  { lower := 19220, upper := 19221, witness := RowWitness.topPrime 19219 },
  { lower := 19663, upper := 19716, witness := RowWitness.topPrime 19661 },
  { lower := 19717, upper := 19718, witness := RowWitness.topPrime 19717 },
  { lower := 20181, upper := 20232, witness := RowWitness.topPrime 20177 },
  { lower := 20233, upper := 20236, witness := RowWitness.topPrime 20233 },
  { lower := 20577, upper := 20590, witness := RowWitness.topPrime 20563 },
  { lower := 21870, upper := 21918, witness := RowWitness.topPrime 21863 },
  { lower := 21919, upper := 21930, witness := RowWitness.topPrime 21911 },
  { lower := 22103, upper := 22145, witness := RowWitness.topPrime 22093 },
  { lower := 24037, upper := 24084, witness := RowWitness.topPrime 24029 },
  { lower := 24085, upper := 24092, witness := RowWitness.topPrime 24083 },
  { lower := 24334, upper := 24354, witness := RowWitness.topPrime 24329 },
  { lower := 24389, upper := 24389, witness := RowWitness.topPrime 24379 },
  { lower := 24576, upper := 24620, witness := RowWitness.topPrime 24571 },
  { lower := 25289, upper := 25316, witness := RowWitness.topPrime 25261 },
  { lower := 25317, upper := 25336, witness := RowWitness.topPrime 25309 },
  { lower := 28125, upper := 28145, witness := RowWitness.topPrime 28123 },
  { lower := 28577, upper := 28616, witness := RowWitness.topPrime 28573 },
  { lower := 28749, upper := 28772, witness := RowWitness.topPrime 28729 },
  { lower := 30618, upper := 30648, witness := RowWitness.topPrime 30593 },
  { lower := 30649, upper := 30668, witness := RowWitness.topPrime 30649 },
  { lower := 30926, upper := 30954, witness := RowWitness.topPrime 30911 },
  { lower := 31487, upper := 31488, witness := RowWitness.topPrime 31481 },
  { lower := 32805, upper := 32823, witness := RowWitness.topPrime 32803 },
  { lower := 33620, upper := 33669, witness := RowWitness.topPrime 33619 },
  { lower := 34391, upper := 34430, witness := RowWitness.topPrime 34381 },
  { lower := 35152, upper := 35186, witness := RowWitness.topPrime 35149 },
  { lower := 35344, upper := 35356, witness := RowWitness.topPrime 35339 },
  { lower := 36517, upper := 36552, witness := RowWitness.topPrime 36497 },
  { lower := 36553, upper := 36556, witness := RowWitness.topPrime 36551 },
  { lower := 36982, upper := 37034, witness := RowWitness.topPrime 36979 },
  { lower := 37035, upper := 37035, witness := RowWitness.topPrime 37021 },
  { lower := 37553, upper := 37555, witness := RowWitness.topPrime 37549 },
  { lower := 39326, upper := 39359, witness := RowWitness.topPrime 39323 },
  { lower := 39366, upper := 39381, witness := RowWitness.topPrime 39359 },
  { lower := 40678, upper := 40680, witness := RowWitness.topPrime 40639 },
  { lower := 43750, upper := 43776, witness := RowWitness.topPrime 43721 },
  { lower := 43777, upper := 43795, witness := RowWitness.topPrime 43777 },
  { lower := 43940, upper := 43978, witness := RowWitness.topPrime 43933 },
  { lower := 44217, upper := 44235, witness := RowWitness.topPrime 44207 },
  { lower := 58989, upper := 59011, witness := RowWitness.topPrime 58979 },
  { lower := 65625, upper := 65665, witness := RowWitness.topPrime 65617 },
  { lower := 73205, upper := 73222, witness := RowWitness.topPrime 73189 }
]

def row056_layers : List CoverLayer := [
  { lower := 3080, upper := 6160, M := 31 },
  { lower := 6160, upper := 12320, M := 28 },
  { lower := 12320, upper := 24640, M := 25 },
  { lower := 24640, upper := 49280, M := 23 },
  { lower := 49280, upper := 98560, M := 21 },
  { lower := 98560, upper := 197120, M := 19 },
  { lower := 197120, upper := 394240, M := 17 },
  { lower := 394240, upper := 788480, M := 15 },
  { lower := 788480, upper := 1576960, M := 14 },
  { lower := 1576960, upper := 3153920, M := 12 },
  { lower := 3153920, upper := 6307840, M := 11 },
  { lower := 6307840, upper := 12615680, M := 10 },
  { lower := 12615680, upper := 25231360, M := 9 },
  { lower := 25231360, upper := 50462720, M := 8 },
  { lower := 50462720, upper := 100925440, M := 7 },
  { lower := 100925440, upper := 201850880, M := 7 },
  { lower := 201850880, upper := 403701760, M := 6 },
  { lower := 403701760, upper := 807403520, M := 5 },
  { lower := 807403520, upper := 1614807040, M := 5 },
  { lower := 1614807040, upper := 3229614080, M := 5 },
  { lower := 3229614080, upper := 6459228160, M := 4 },
  { lower := 6459228160, upper := 12918456320, M := 4 },
  { lower := 12918456320, upper := 25836912640, M := 3 },
  { lower := 25836912640, upper := 51673825280, M := 3 },
  { lower := 51673825280, upper := 103347650560, M := 3 },
  { lower := 103347650560, upper := 206695301120, M := 3 },
  { lower := 206695301120, upper := 413390602240, M := 2 },
  { lower := 413390602240, upper := 826781204480, M := 2 },
  { lower := 826781204480, upper := 1653562408960, M := 2 },
  { lower := 1653562408960, upper := 3307124817920, M := 2 },
  { lower := 3307124817920, upper := 6614249635840, M := 2 },
  { lower := 6614249635840, upper := 10000000000000, M := 2 }
]

def row056 : FiniteCoverRow := {
  height := row056_height,
  goods := row056_goods,
  layers := row056_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_good000_checked :
    goodSegmentCheck 56 18 38
      { lower := 114, upper := 168, witness := RowWitness.topPrime 113 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good001_checked :
    goodSegmentCheck 56 18 38
      { lower := 169, upper := 222, witness := RowWitness.topPrime 167 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good002_checked :
    goodSegmentCheck 56 18 38
      { lower := 223, upper := 278, witness := RowWitness.topPrime 223 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good003_checked :
    goodSegmentCheck 56 18 38
      { lower := 279, upper := 332, witness := RowWitness.topPrime 277 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good004_checked :
    goodSegmentCheck 56 18 38
      { lower := 333, upper := 386, witness := RowWitness.topPrime 331 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good005_checked :
    goodSegmentCheck 56 18 38
      { lower := 387, upper := 438, witness := RowWitness.topPrime 383 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good006_checked :
    goodSegmentCheck 56 18 38
      { lower := 439, upper := 494, witness := RowWitness.topPrime 439 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good007_checked :
    goodSegmentCheck 56 18 38
      { lower := 495, upper := 546, witness := RowWitness.topPrime 491 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good008_checked :
    goodSegmentCheck 56 18 38
      { lower := 547, upper := 602, witness := RowWitness.topPrime 547 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good009_checked :
    goodSegmentCheck 56 18 38
      { lower := 603, upper := 656, witness := RowWitness.topPrime 601 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good010_checked :
    goodSegmentCheck 56 18 38
      { lower := 657, upper := 708, witness := RowWitness.topPrime 653 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good011_checked :
    goodSegmentCheck 56 18 38
      { lower := 709, upper := 764, witness := RowWitness.topPrime 709 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good012_checked :
    goodSegmentCheck 56 18 38
      { lower := 765, upper := 816, witness := RowWitness.topPrime 761 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good013_checked :
    goodSegmentCheck 56 18 38
      { lower := 817, upper := 866, witness := RowWitness.topPrime 811 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good014_checked :
    goodSegmentCheck 56 18 38
      { lower := 867, upper := 918, witness := RowWitness.topPrime 863 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good015_checked :
    goodSegmentCheck 56 18 38
      { lower := 919, upper := 974, witness := RowWitness.topPrime 919 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_good016_checked :
    goodSegmentCheck 56 18 38
      { lower := 975, upper := 1026, witness := RowWitness.topPrime 971 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good017_checked :
    goodSegmentCheck 56 18 38
      { lower := 1027, upper := 1076, witness := RowWitness.topPrime 1021 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good018_checked :
    goodSegmentCheck 56 18 38
      { lower := 1077, upper := 1124, witness := RowWitness.topPrime 1069 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good019_checked :
    goodSegmentCheck 56 18 38
      { lower := 1125, upper := 1178, witness := RowWitness.topPrime 1123 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good020_checked :
    goodSegmentCheck 56 18 38
      { lower := 1179, upper := 1226, witness := RowWitness.topPrime 1171 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good021_checked :
    goodSegmentCheck 56 18 38
      { lower := 1227, upper := 1278, witness := RowWitness.topPrime 1223 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good022_checked :
    goodSegmentCheck 56 18 38
      { lower := 1279, upper := 1334, witness := RowWitness.topPrime 1279 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good023_checked :
    goodSegmentCheck 56 18 38
      { lower := 1335, upper := 1382, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good024_checked :
    goodSegmentCheck 56 18 38
      { lower := 1383, upper := 1436, witness := RowWitness.topPrime 1381 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good025_checked :
    goodSegmentCheck 56 18 38
      { lower := 1437, upper := 1488, witness := RowWitness.topPrime 1433 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good026_checked :
    goodSegmentCheck 56 18 38
      { lower := 1489, upper := 1544, witness := RowWitness.topPrime 1489 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good027_checked :
    goodSegmentCheck 56 18 38
      { lower := 1545, upper := 1598, witness := RowWitness.topPrime 1543 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good028_checked :
    goodSegmentCheck 56 18 38
      { lower := 1599, upper := 1652, witness := RowWitness.topPrime 1597 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good029_checked :
    goodSegmentCheck 56 18 38
      { lower := 1653, upper := 1692, witness := RowWitness.topPrime 1637 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good030_checked :
    goodSegmentCheck 56 18 38
      { lower := 1693, upper := 1748, witness := RowWitness.topPrime 1693 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good031_checked :
    goodSegmentCheck 56 18 38
      { lower := 1749, upper := 1802, witness := RowWitness.topPrime 1747 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_good032_checked :
    goodSegmentCheck 56 18 38
      { lower := 1803, upper := 1856, witness := RowWitness.topPrime 1801 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good033_checked :
    goodSegmentCheck 56 18 38
      { lower := 1857, upper := 1902, witness := RowWitness.topPrime 1847 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good034_checked :
    goodSegmentCheck 56 18 38
      { lower := 1903, upper := 1956, witness := RowWitness.topPrime 1901 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good035_checked :
    goodSegmentCheck 56 18 38
      { lower := 1957, upper := 2006, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good036_checked :
    goodSegmentCheck 56 18 38
      { lower := 2007, upper := 2058, witness := RowWitness.topPrime 2003 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good037_checked :
    goodSegmentCheck 56 18 38
      { lower := 2059, upper := 2108, witness := RowWitness.topPrime 2053 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good038_checked :
    goodSegmentCheck 56 18 38
      { lower := 2109, upper := 2154, witness := RowWitness.topPrime 2099 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good039_checked :
    goodSegmentCheck 56 18 38
      { lower := 2155, upper := 2208, witness := RowWitness.topPrime 2153 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good040_checked :
    goodSegmentCheck 56 18 38
      { lower := 2209, upper := 2262, witness := RowWitness.topPrime 2207 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good041_checked :
    goodSegmentCheck 56 18 38
      { lower := 2263, upper := 2306, witness := RowWitness.topPrime 2251 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good042_checked :
    goodSegmentCheck 56 18 38
      { lower := 2307, upper := 2352, witness := RowWitness.topPrime 2297 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good043_checked :
    goodSegmentCheck 56 18 38
      { lower := 2353, upper := 2406, witness := RowWitness.topPrime 2351 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good044_checked :
    goodSegmentCheck 56 18 38
      { lower := 2407, upper := 2454, witness := RowWitness.topPrime 2399 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good045_checked :
    goodSegmentCheck 56 18 38
      { lower := 2455, upper := 2502, witness := RowWitness.topPrime 2447 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good046_checked :
    goodSegmentCheck 56 18 38
      { lower := 2503, upper := 2558, witness := RowWitness.topPrime 2503 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good047_checked :
    goodSegmentCheck 56 18 38
      { lower := 2559, upper := 2612, witness := RowWitness.topPrime 2557 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_good048_checked :
    goodSegmentCheck 56 18 38
      { lower := 2613, upper := 2664, witness := RowWitness.topPrime 2609 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good049_checked :
    goodSegmentCheck 56 18 38
      { lower := 2665, upper := 2718, witness := RowWitness.topPrime 2663 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good050_checked :
    goodSegmentCheck 56 18 38
      { lower := 2719, upper := 2774, witness := RowWitness.topPrime 2719 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good051_checked :
    goodSegmentCheck 56 18 38
      { lower := 2775, upper := 2822, witness := RowWitness.topPrime 2767 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good052_checked :
    goodSegmentCheck 56 18 38
      { lower := 2823, upper := 2874, witness := RowWitness.topPrime 2819 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good053_checked :
    goodSegmentCheck 56 18 38
      { lower := 2875, upper := 2916, witness := RowWitness.topPrime 2861 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good054_checked :
    goodSegmentCheck 56 18 38
      { lower := 2917, upper := 2972, witness := RowWitness.topPrime 2917 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good055_checked :
    goodSegmentCheck 56 18 38
      { lower := 2973, upper := 3026, witness := RowWitness.topPrime 2971 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good056_checked :
    goodSegmentCheck 56 18 38
      { lower := 3027, upper := 3078, witness := RowWitness.topPrime 3023 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good057_checked :
    goodSegmentCheck 56 18 38
      { lower := 3079, upper := 3097, witness := RowWitness.topPrime 3079 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good058_checked :
    goodSegmentCheck 56 18 38
      { lower := 3125, upper := 3127, witness := RowWitness.topPrime 3121 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good059_checked :
    goodSegmentCheck 56 18 38
      { lower := 3146, upper := 3192, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good060_checked :
    goodSegmentCheck 56 18 38
      { lower := 3193, upper := 3234, witness := RowWitness.topPrime 3191 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good061_checked :
    goodSegmentCheck 56 18 38
      { lower := 3249, upper := 3284, witness := RowWitness.topPrime 3229 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good062_checked :
    goodSegmentCheck 56 18 38
      { lower := 3285, upper := 3305, witness := RowWitness.topPrime 3271 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good063_checked :
    goodSegmentCheck 56 18 38
      { lower := 3364, upper := 3416, witness := RowWitness.topPrime 3361 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_good064_checked :
    goodSegmentCheck 56 18 38
      { lower := 3417, upper := 3443, witness := RowWitness.topPrime 3413 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good065_checked :
    goodSegmentCheck 56 18 38
      { lower := 3500, upper := 3554, witness := RowWitness.topPrime 3499 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good066_checked :
    goodSegmentCheck 56 18 38
      { lower := 3555, upper := 3564, witness := RowWitness.topPrime 3547 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good067_checked :
    goodSegmentCheck 56 18 38
      { lower := 3625, upper := 3678, witness := RowWitness.topPrime 3623 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good068_checked :
    goodSegmentCheck 56 18 38
      { lower := 3679, upper := 3685, witness := RowWitness.topPrime 3677 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good069_checked :
    goodSegmentCheck 56 18 38
      { lower := 3698, upper := 3700, witness := RowWitness.topPrime 3697 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good070_checked :
    goodSegmentCheck 56 18 38
      { lower := 3703, upper := 3756, witness := RowWitness.topPrime 3701 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good071_checked :
    goodSegmentCheck 56 18 38
      { lower := 3757, upper := 3794, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good072_checked :
    goodSegmentCheck 56 18 38
      { lower := 3795, upper := 3806, witness := RowWitness.topPrime 3793 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good073_checked :
    goodSegmentCheck 56 18 38
      { lower := 3875, upper := 3918, witness := RowWitness.topPrime 3863 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good074_checked :
    goodSegmentCheck 56 18 38
      { lower := 3919, upper := 3942, witness := RowWitness.topPrime 3919 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good075_checked :
    goodSegmentCheck 56 18 38
      { lower := 3993, upper := 4026, witness := RowWitness.topPrime 3989 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good076_checked :
    goodSegmentCheck 56 18 38
      { lower := 4046, upper := 4048, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good077_checked :
    goodSegmentCheck 56 18 38
      { lower := 4056, upper := 4106, witness := RowWitness.topPrime 4051 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good078_checked :
    goodSegmentCheck 56 18 38
      { lower := 4107, upper := 4154, witness := RowWitness.topPrime 4099 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good079_checked :
    goodSegmentCheck 56 18 38
      { lower := 4155, upper := 4162, witness := RowWitness.topPrime 4153 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_good080_checked :
    goodSegmentCheck 56 18 38
      { lower := 4225, upper := 4274, witness := RowWitness.topPrime 4219 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good081_checked :
    goodSegmentCheck 56 18 38
      { lower := 4275, upper := 4280, witness := RowWitness.topPrime 4273 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good082_checked :
    goodSegmentCheck 56 18 38
      { lower := 4335, upper := 4382, witness := RowWitness.topPrime 4327 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good083_checked :
    goodSegmentCheck 56 18 38
      { lower := 4383, upper := 4428, witness := RowWitness.topPrime 4373 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good084_checked :
    goodSegmentCheck 56 18 38
      { lower := 4429, upper := 4449, witness := RowWitness.topPrime 4423 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good085_checked :
    goodSegmentCheck 56 18 38
      { lower := 4617, upper := 4618, witness := RowWitness.topPrime 4603 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good086_checked :
    goodSegmentCheck 56 18 38
      { lower := 4624, upper := 4672, witness := RowWitness.topPrime 4621 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good087_checked :
    goodSegmentCheck 56 18 38
      { lower := 4732, upper := 4748, witness := RowWitness.topPrime 4729 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good088_checked :
    goodSegmentCheck 56 18 38
      { lower := 4761, upper := 4787, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good089_checked :
    goodSegmentCheck 56 18 38
      { lower := 4802, upper := 4856, witness := RowWitness.topPrime 4801 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good090_checked :
    goodSegmentCheck 56 18 38
      { lower := 4857, upper := 4857, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good091_checked :
    goodSegmentCheck 56 18 38
      { lower := 4860, upper := 4860, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good092_checked :
    goodSegmentCheck 56 18 38
      { lower := 4901, upper := 4944, witness := RowWitness.topPrime 4889 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good093_checked :
    goodSegmentCheck 56 18 38
      { lower := 4945, upper := 4956, witness := RowWitness.topPrime 4943 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good094_checked :
    goodSegmentCheck 56 18 38
      { lower := 5043, upper := 5094, witness := RowWitness.topPrime 5039 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good095_checked :
    goodSegmentCheck 56 18 38
      { lower := 5095, upper := 5125, witness := RowWitness.topPrime 5087 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_good096_checked :
    goodSegmentCheck 56 18 38
      { lower := 5239, upper := 5257, witness := RowWitness.topPrime 5237 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good097_checked :
    goodSegmentCheck 56 18 38
      { lower := 5290, upper := 5294, witness := RowWitness.topPrime 5281 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good098_checked :
    goodSegmentCheck 56 18 38
      { lower := 5324, upper := 5378, witness := RowWitness.topPrime 5323 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good099_checked :
    goodSegmentCheck 56 18 38
      { lower := 5379, upper := 5379, witness := RowWitness.topPrime 5351 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good100_checked :
    goodSegmentCheck 56 18 38
      { lower := 5491, upper := 5531, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good101_checked :
    goodSegmentCheck 56 18 38
      { lower := 5589, upper := 5602, witness := RowWitness.topPrime 5581 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good102_checked :
    goodSegmentCheck 56 18 38
      { lower := 5618, upper := 5646, witness := RowWitness.topPrime 5591 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good103_checked :
    goodSegmentCheck 56 18 38
      { lower := 5647, upper := 5673, witness := RowWitness.topPrime 5647 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good104_checked :
    goodSegmentCheck 56 18 38
      { lower := 5776, upper := 5804, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good105_checked :
    goodSegmentCheck 56 18 38
      { lower := 5805, upper := 5856, witness := RowWitness.topPrime 5801 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good106_checked :
    goodSegmentCheck 56 18 38
      { lower := 5857, upper := 5874, witness := RowWitness.topPrime 5857 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good107_checked :
    goodSegmentCheck 56 18 38
      { lower := 5887, upper := 5887, witness := RowWitness.topPrime 5881 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good108_checked :
    goodSegmentCheck 56 18 38
      { lower := 6075, upper := 6124, witness := RowWitness.topPrime 6073 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good109_checked :
    goodSegmentCheck 56 18 38
      { lower := 6144, upper := 6192, witness := RowWitness.topPrime 6143 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good110_checked :
    goodSegmentCheck 56 18 38
      { lower := 6348, upper := 6398, witness := RowWitness.topPrime 6343 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good111_checked :
    goodSegmentCheck 56 18 38
      { lower := 6399, upper := 6403, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_good112_checked :
    goodSegmentCheck 56 18 38
      { lower := 6591, upper := 6616, witness := RowWitness.topPrime 6581 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good113_checked :
    goodSegmentCheck 56 18 38
      { lower := 6627, upper := 6674, witness := RowWitness.topPrime 6619 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good114_checked :
    goodSegmentCheck 56 18 38
      { lower := 6675, upper := 6702, witness := RowWitness.topPrime 6673 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good115_checked :
    goodSegmentCheck 56 18 38
      { lower := 6727, upper := 6774, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good116_checked :
    goodSegmentCheck 56 18 38
      { lower := 6775, upper := 6782, witness := RowWitness.topPrime 6763 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good117_checked :
    goodSegmentCheck 56 18 38
      { lower := 6845, upper := 6896, witness := RowWitness.topPrime 6841 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good118_checked :
    goodSegmentCheck 56 18 38
      { lower := 6897, upper := 6930, witness := RowWitness.topPrime 6883 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good119_checked :
    goodSegmentCheck 56 18 38
      { lower := 7220, upper := 7274, witness := RowWitness.topPrime 7219 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good120_checked :
    goodSegmentCheck 56 18 38
      { lower := 7275, upper := 7275, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good121_checked :
    goodSegmentCheck 56 18 38
      { lower := 7406, upper := 7448, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good122_checked :
    goodSegmentCheck 56 18 38
      { lower := 7449, upper := 7451, witness := RowWitness.topPrime 7433 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good123_checked :
    goodSegmentCheck 56 18 38
      { lower := 7514, upper := 7555, witness := RowWitness.topPrime 7507 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good124_checked :
    goodSegmentCheck 56 18 38
      { lower := 7569, upper := 7569, witness := RowWitness.topPrime 7561 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good125_checked :
    goodSegmentCheck 56 18 38
      { lower := 7581, upper := 7624, witness := RowWitness.topPrime 7577 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good126_checked :
    goodSegmentCheck 56 18 38
      { lower := 7942, upper := 7992, witness := RowWitness.topPrime 7937 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good127_checked :
    goodSegmentCheck 56 18 38
      { lower := 7993, upper := 7997, witness := RowWitness.topPrime 7993 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_good128_checked :
    goodSegmentCheck 56 18 38
      { lower := 8019, upper := 8041, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good129_checked :
    goodSegmentCheck 56 18 38
      { lower := 8125, upper := 8147, witness := RowWitness.topPrime 8123 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good130_checked :
    goodSegmentCheck 56 18 38
      { lower := 8214, upper := 8247, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good131_checked :
    goodSegmentCheck 56 18 38
      { lower := 8410, upper := 8444, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good132_checked :
    goodSegmentCheck 56 18 38
      { lower := 8445, upper := 8482, witness := RowWitness.topPrime 8443 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good133_checked :
    goodSegmentCheck 56 18 38
      { lower := 8664, upper := 8704, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good134_checked :
    goodSegmentCheck 56 18 38
      { lower := 8750, upper := 8802, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good135_checked :
    goodSegmentCheck 56 18 38
      { lower := 8803, upper := 8805, witness := RowWitness.topPrime 8803 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good136_checked :
    goodSegmentCheck 56 18 38
      { lower := 8836, upper := 8843, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good137_checked :
    goodSegmentCheck 56 18 38
      { lower := 9025, upper := 9048, witness := RowWitness.topPrime 9013 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good138_checked :
    goodSegmentCheck 56 18 38
      { lower := 9251, upper := 9296, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good139_checked :
    goodSegmentCheck 56 18 38
      { lower := 9297, upper := 9300, witness := RowWitness.topPrime 9293 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good140_checked :
    goodSegmentCheck 56 18 38
      { lower := 9386, upper := 9430, witness := RowWitness.topPrime 9377 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good141_checked :
    goodSegmentCheck 56 18 38
      { lower := 9522, upper := 9532, witness := RowWitness.topPrime 9521 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good142_checked :
    goodSegmentCheck 56 18 38
      { lower := 9604, upper := 9656, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good143_checked :
    goodSegmentCheck 56 18 38
      { lower := 9657, upper := 9659, witness := RowWitness.topPrime 9649 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_good144_checked :
    goodSegmentCheck 56 18 38
      { lower := 10051, upper := 10055, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good145_checked :
    goodSegmentCheck 56 18 38
      { lower := 10086, upper := 10134, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good146_checked :
    goodSegmentCheck 56 18 38
      { lower := 10135, upper := 10147, witness := RowWitness.topPrime 10133 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good147_checked :
    goodSegmentCheck 56 18 38
      { lower := 10580, upper := 10622, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good148_checked :
    goodSegmentCheck 56 18 38
      { lower := 10623, upper := 10635, witness := RowWitness.topPrime 10613 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good149_checked :
    goodSegmentCheck 56 18 38
      { lower := 10648, upper := 10680, witness := RowWitness.topPrime 10639 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good150_checked :
    goodSegmentCheck 56 18 38
      { lower := 10935, upper := 10964, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good151_checked :
    goodSegmentCheck 56 18 38
      { lower := 10965, upper := 11007, witness := RowWitness.topPrime 10957 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good152_checked :
    goodSegmentCheck 56 18 38
      { lower := 11094, upper := 11100, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good153_checked :
    goodSegmentCheck 56 18 38
      { lower := 11109, upper := 11148, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good154_checked :
    goodSegmentCheck 56 18 38
      { lower := 11149, upper := 11149, witness := RowWitness.topPrime 11149 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good155_checked :
    goodSegmentCheck 56 18 38
      { lower := 11250, upper := 11291, witness := RowWitness.topPrime 11243 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good156_checked :
    goodSegmentCheck 56 18 38
      { lower := 11664, upper := 11693, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good157_checked :
    goodSegmentCheck 56 18 38
      { lower := 11774, upper := 11798, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good158_checked :
    goodSegmentCheck 56 18 38
      { lower := 11799, upper := 11822, witness := RowWitness.topPrime 11789 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good159_checked :
    goodSegmentCheck 56 18 38
      { lower := 12321, upper := 12343, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_good160_checked :
    goodSegmentCheck 56 18 38
      { lower := 12500, upper := 12548, witness := RowWitness.topPrime 12497 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good161_checked :
    goodSegmentCheck 56 18 38
      { lower := 13125, upper := 13176, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good162_checked :
    goodSegmentCheck 56 18 38
      { lower := 13177, upper := 13177, witness := RowWitness.topPrime 13177 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good163_checked :
    goodSegmentCheck 56 18 38
      { lower := 13225, upper := 13237, witness := RowWitness.topPrime 13219 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good164_checked :
    goodSegmentCheck 56 18 38
      { lower := 13254, upper := 13280, witness := RowWitness.topPrime 13249 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good165_checked :
    goodSegmentCheck 56 18 38
      { lower := 13454, upper := 13506, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good166_checked :
    goodSegmentCheck 56 18 38
      { lower := 13507, upper := 13509, witness := RowWitness.topPrime 13499 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good167_checked :
    goodSegmentCheck 56 18 38
      { lower := 13718, upper := 13745, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good168_checked :
    goodSegmentCheck 56 18 38
      { lower := 13750, upper := 13773, witness := RowWitness.topPrime 13729 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good169_checked :
    goodSegmentCheck 56 18 38
      { lower := 14415, upper := 14430, witness := RowWitness.topPrime 14411 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good170_checked :
    goodSegmentCheck 56 18 38
      { lower := 14792, upper := 14794, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good171_checked :
    goodSegmentCheck 56 18 38
      { lower := 15138, upper := 15184, witness := RowWitness.topPrime 15137 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good172_checked :
    goodSegmentCheck 56 18 38
      { lower := 15379, upper := 15431, witness := RowWitness.topPrime 15377 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good173_checked :
    goodSegmentCheck 56 18 38
      { lower := 15979, upper := 16027, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good174_checked :
    goodSegmentCheck 56 18 38
      { lower := 16384, upper := 16392, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good175_checked :
    goodSegmentCheck 56 18 38
      { lower := 16428, upper := 16439, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_good176_checked :
    goodSegmentCheck 56 18 38
      { lower := 16807, upper := 16842, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good177_checked :
    goodSegmentCheck 56 18 38
      { lower := 16843, upper := 16875, witness := RowWitness.topPrime 16843 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good178_checked :
    goodSegmentCheck 56 18 38
      { lower := 17303, upper := 17353, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good179_checked :
    goodSegmentCheck 56 18 38
      { lower := 17672, upper := 17716, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good180_checked :
    goodSegmentCheck 56 18 38
      { lower := 18259, upper := 18280, witness := RowWitness.topPrime 18257 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good181_checked :
    goodSegmentCheck 56 18 38
      { lower := 18491, upper := 18536, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good182_checked :
    goodSegmentCheck 56 18 38
      { lower := 18537, upper := 18546, witness := RowWitness.topPrime 18523 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good183_checked :
    goodSegmentCheck 56 18 38
      { lower := 19220, upper := 19221, witness := RowWitness.topPrime 19219 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good184_checked :
    goodSegmentCheck 56 18 38
      { lower := 19663, upper := 19716, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good185_checked :
    goodSegmentCheck 56 18 38
      { lower := 19717, upper := 19718, witness := RowWitness.topPrime 19717 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good186_checked :
    goodSegmentCheck 56 18 38
      { lower := 20181, upper := 20232, witness := RowWitness.topPrime 20177 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good187_checked :
    goodSegmentCheck 56 18 38
      { lower := 20233, upper := 20236, witness := RowWitness.topPrime 20233 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good188_checked :
    goodSegmentCheck 56 18 38
      { lower := 20577, upper := 20590, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good189_checked :
    goodSegmentCheck 56 18 38
      { lower := 21870, upper := 21918, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good190_checked :
    goodSegmentCheck 56 18 38
      { lower := 21919, upper := 21930, witness := RowWitness.topPrime 21911 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good191_checked :
    goodSegmentCheck 56 18 38
      { lower := 22103, upper := 22145, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_good192_checked :
    goodSegmentCheck 56 18 38
      { lower := 24037, upper := 24084, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good193_checked :
    goodSegmentCheck 56 18 38
      { lower := 24085, upper := 24092, witness := RowWitness.topPrime 24083 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good194_checked :
    goodSegmentCheck 56 18 38
      { lower := 24334, upper := 24354, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good195_checked :
    goodSegmentCheck 56 18 38
      { lower := 24389, upper := 24389, witness := RowWitness.topPrime 24379 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good196_checked :
    goodSegmentCheck 56 18 38
      { lower := 24576, upper := 24620, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good197_checked :
    goodSegmentCheck 56 18 38
      { lower := 25289, upper := 25316, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good198_checked :
    goodSegmentCheck 56 18 38
      { lower := 25317, upper := 25336, witness := RowWitness.topPrime 25309 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good199_checked :
    goodSegmentCheck 56 18 38
      { lower := 28125, upper := 28145, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good200_checked :
    goodSegmentCheck 56 18 38
      { lower := 28577, upper := 28616, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good201_checked :
    goodSegmentCheck 56 18 38
      { lower := 28749, upper := 28772, witness := RowWitness.topPrime 28729 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good202_checked :
    goodSegmentCheck 56 18 38
      { lower := 30618, upper := 30648, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good203_checked :
    goodSegmentCheck 56 18 38
      { lower := 30649, upper := 30668, witness := RowWitness.topPrime 30649 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good204_checked :
    goodSegmentCheck 56 18 38
      { lower := 30926, upper := 30954, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good205_checked :
    goodSegmentCheck 56 18 38
      { lower := 31487, upper := 31488, witness := RowWitness.topPrime 31481 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good206_checked :
    goodSegmentCheck 56 18 38
      { lower := 32805, upper := 32823, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good207_checked :
    goodSegmentCheck 56 18 38
      { lower := 33620, upper := 33669, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_good208_checked :
    goodSegmentCheck 56 18 38
      { lower := 34391, upper := 34430, witness := RowWitness.topPrime 34381 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good209_checked :
    goodSegmentCheck 56 18 38
      { lower := 35152, upper := 35186, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good210_checked :
    goodSegmentCheck 56 18 38
      { lower := 35344, upper := 35356, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good211_checked :
    goodSegmentCheck 56 18 38
      { lower := 36517, upper := 36552, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good212_checked :
    goodSegmentCheck 56 18 38
      { lower := 36553, upper := 36556, witness := RowWitness.topPrime 36551 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good213_checked :
    goodSegmentCheck 56 18 38
      { lower := 36982, upper := 37034, witness := RowWitness.topPrime 36979 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good214_checked :
    goodSegmentCheck 56 18 38
      { lower := 37035, upper := 37035, witness := RowWitness.topPrime 37021 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good215_checked :
    goodSegmentCheck 56 18 38
      { lower := 37553, upper := 37555, witness := RowWitness.topPrime 37549 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good216_checked :
    goodSegmentCheck 56 18 38
      { lower := 39326, upper := 39359, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good217_checked :
    goodSegmentCheck 56 18 38
      { lower := 39366, upper := 39381, witness := RowWitness.topPrime 39359 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good218_checked :
    goodSegmentCheck 56 18 38
      { lower := 40678, upper := 40680, witness := RowWitness.topPrime 40639 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good219_checked :
    goodSegmentCheck 56 18 38
      { lower := 43750, upper := 43776, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good220_checked :
    goodSegmentCheck 56 18 38
      { lower := 43777, upper := 43795, witness := RowWitness.topPrime 43777 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good221_checked :
    goodSegmentCheck 56 18 38
      { lower := 43940, upper := 43978, witness := RowWitness.topPrime 43933 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good222_checked :
    goodSegmentCheck 56 18 38
      { lower := 44217, upper := 44235, witness := RowWitness.topPrime 44207 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good223_checked :
    goodSegmentCheck 56 18 38
      { lower := 58989, upper := 59011, witness := RowWitness.topPrime 58979 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_good224_checked :
    goodSegmentCheck 56 18 38
      { lower := 65625, upper := 65665, witness := RowWitness.topPrime 65617 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good225_checked :
    goodSegmentCheck 56 18 38
      { lower := 73205, upper := 73222, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good225_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_goods_checked :
    row056.goods.all (goodSegmentCheck row056.height.i row056.height.r row056.height.s) = true := by
  change row056_goods.all (goodSegmentCheck 56 18 38) = true
  simp only [row056_goods, List.all_cons, List.all_nil,
    row056_good000_checked,
    row056_good001_checked,
    row056_good002_checked,
    row056_good003_checked,
    row056_good004_checked,
    row056_good005_checked,
    row056_good006_checked,
    row056_good007_checked,
    row056_good008_checked,
    row056_good009_checked,
    row056_good010_checked,
    row056_good011_checked,
    row056_good012_checked,
    row056_good013_checked,
    row056_good014_checked,
    row056_good015_checked,
    row056_good016_checked,
    row056_good017_checked,
    row056_good018_checked,
    row056_good019_checked,
    row056_good020_checked,
    row056_good021_checked,
    row056_good022_checked,
    row056_good023_checked,
    row056_good024_checked,
    row056_good025_checked,
    row056_good026_checked,
    row056_good027_checked,
    row056_good028_checked,
    row056_good029_checked,
    row056_good030_checked,
    row056_good031_checked,
    row056_good032_checked,
    row056_good033_checked,
    row056_good034_checked,
    row056_good035_checked,
    row056_good036_checked,
    row056_good037_checked,
    row056_good038_checked,
    row056_good039_checked,
    row056_good040_checked,
    row056_good041_checked,
    row056_good042_checked,
    row056_good043_checked,
    row056_good044_checked,
    row056_good045_checked,
    row056_good046_checked,
    row056_good047_checked,
    row056_good048_checked,
    row056_good049_checked,
    row056_good050_checked,
    row056_good051_checked,
    row056_good052_checked,
    row056_good053_checked,
    row056_good054_checked,
    row056_good055_checked,
    row056_good056_checked,
    row056_good057_checked,
    row056_good058_checked,
    row056_good059_checked,
    row056_good060_checked,
    row056_good061_checked,
    row056_good062_checked,
    row056_good063_checked,
    row056_good064_checked,
    row056_good065_checked,
    row056_good066_checked,
    row056_good067_checked,
    row056_good068_checked,
    row056_good069_checked,
    row056_good070_checked,
    row056_good071_checked,
    row056_good072_checked,
    row056_good073_checked,
    row056_good074_checked,
    row056_good075_checked,
    row056_good076_checked,
    row056_good077_checked,
    row056_good078_checked,
    row056_good079_checked,
    row056_good080_checked,
    row056_good081_checked,
    row056_good082_checked,
    row056_good083_checked,
    row056_good084_checked,
    row056_good085_checked,
    row056_good086_checked,
    row056_good087_checked,
    row056_good088_checked,
    row056_good089_checked,
    row056_good090_checked,
    row056_good091_checked,
    row056_good092_checked,
    row056_good093_checked,
    row056_good094_checked,
    row056_good095_checked,
    row056_good096_checked,
    row056_good097_checked,
    row056_good098_checked,
    row056_good099_checked,
    row056_good100_checked,
    row056_good101_checked,
    row056_good102_checked,
    row056_good103_checked,
    row056_good104_checked,
    row056_good105_checked,
    row056_good106_checked,
    row056_good107_checked,
    row056_good108_checked,
    row056_good109_checked,
    row056_good110_checked,
    row056_good111_checked,
    row056_good112_checked,
    row056_good113_checked,
    row056_good114_checked,
    row056_good115_checked,
    row056_good116_checked,
    row056_good117_checked,
    row056_good118_checked,
    row056_good119_checked,
    row056_good120_checked,
    row056_good121_checked,
    row056_good122_checked,
    row056_good123_checked,
    row056_good124_checked,
    row056_good125_checked,
    row056_good126_checked,
    row056_good127_checked,
    row056_good128_checked,
    row056_good129_checked,
    row056_good130_checked,
    row056_good131_checked,
    row056_good132_checked,
    row056_good133_checked,
    row056_good134_checked,
    row056_good135_checked,
    row056_good136_checked,
    row056_good137_checked,
    row056_good138_checked,
    row056_good139_checked,
    row056_good140_checked,
    row056_good141_checked,
    row056_good142_checked,
    row056_good143_checked,
    row056_good144_checked,
    row056_good145_checked,
    row056_good146_checked,
    row056_good147_checked,
    row056_good148_checked,
    row056_good149_checked,
    row056_good150_checked,
    row056_good151_checked,
    row056_good152_checked,
    row056_good153_checked,
    row056_good154_checked,
    row056_good155_checked,
    row056_good156_checked,
    row056_good157_checked,
    row056_good158_checked,
    row056_good159_checked,
    row056_good160_checked,
    row056_good161_checked,
    row056_good162_checked,
    row056_good163_checked,
    row056_good164_checked,
    row056_good165_checked,
    row056_good166_checked,
    row056_good167_checked,
    row056_good168_checked,
    row056_good169_checked,
    row056_good170_checked,
    row056_good171_checked,
    row056_good172_checked,
    row056_good173_checked,
    row056_good174_checked,
    row056_good175_checked,
    row056_good176_checked,
    row056_good177_checked,
    row056_good178_checked,
    row056_good179_checked,
    row056_good180_checked,
    row056_good181_checked,
    row056_good182_checked,
    row056_good183_checked,
    row056_good184_checked,
    row056_good185_checked,
    row056_good186_checked,
    row056_good187_checked,
    row056_good188_checked,
    row056_good189_checked,
    row056_good190_checked,
    row056_good191_checked,
    row056_good192_checked,
    row056_good193_checked,
    row056_good194_checked,
    row056_good195_checked,
    row056_good196_checked,
    row056_good197_checked,
    row056_good198_checked,
    row056_good199_checked,
    row056_good200_checked,
    row056_good201_checked,
    row056_good202_checked,
    row056_good203_checked,
    row056_good204_checked,
    row056_good205_checked,
    row056_good206_checked,
    row056_good207_checked,
    row056_good208_checked,
    row056_good209_checked,
    row056_good210_checked,
    row056_good211_checked,
    row056_good212_checked,
    row056_good213_checked,
    row056_good214_checked,
    row056_good215_checked,
    row056_good216_checked,
    row056_good217_checked,
    row056_good218_checked,
    row056_good219_checked,
    row056_good220_checked,
    row056_good221_checked,
    row056_good222_checked,
    row056_good223_checked,
    row056_good224_checked,
    row056_good225_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_registered :
    decide (row056.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row056_small_checked :
    coverCheck (2 * row056.height.i + 2) (row056.height.i * (row056.height.i - 1) - 1)
      (row056.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row056_layerCover_checked :
    coverCheck (row056.height.i * (row056.height.i - 1)) (row056.height.n0 - 1)
      (row056.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row056_bounds : List NatInterval :=
  [(114, 168), (169, 222), (223, 278), (279, 332), (333, 386), (387, 438), (439, 494), (495, 546), (547, 602), (603, 656), (657, 708), (709, 764), (765, 816), (817, 866), (867, 918), (919, 974), (975, 1026), (1027, 1076), (1077, 1124), (1125, 1178), (1179, 1226), (1227, 1278), (1279, 1334), (1335, 1382), (1383, 1436), (1437, 1488), (1489, 1544), (1545, 1598), (1599, 1652), (1653, 1692), (1693, 1748), (1749, 1802), (1803, 1856), (1857, 1902), (1903, 1956), (1957, 2006), (2007, 2058), (2059, 2108), (2109, 2154), (2155, 2208), (2209, 2262), (2263, 2306), (2307, 2352), (2353, 2406), (2407, 2454), (2455, 2502), (2503, 2558), (2559, 2612), (2613, 2664), (2665, 2718), (2719, 2774), (2775, 2822), (2823, 2874), (2875, 2916), (2917, 2972), (2973, 3026), (3027, 3078), (3079, 3097), (3125, 3127), (3146, 3192), (3193, 3234), (3249, 3284), (3285, 3305), (3364, 3416), (3417, 3443), (3500, 3554), (3555, 3564), (3625, 3678), (3679, 3685), (3698, 3700), (3703, 3756), (3757, 3794), (3795, 3806), (3875, 3918), (3919, 3942), (3993, 4026), (4046, 4048), (4056, 4106), (4107, 4154), (4155, 4162), (4225, 4274), (4275, 4280), (4335, 4382), (4383, 4428), (4429, 4449), (4617, 4618), (4624, 4672), (4732, 4748), (4761, 4787), (4802, 4856), (4857, 4857), (4860, 4860), (4901, 4944), (4945, 4956), (5043, 5094), (5095, 5125), (5239, 5257), (5290, 5294), (5324, 5378), (5379, 5379), (5491, 5531), (5589, 5602), (5618, 5646), (5647, 5673), (5776, 5804), (5805, 5856), (5857, 5874), (5887, 5887), (6075, 6124), (6144, 6192), (6348, 6398), (6399, 6403), (6591, 6616), (6627, 6674), (6675, 6702), (6727, 6774), (6775, 6782), (6845, 6896), (6897, 6930), (7220, 7274), (7275, 7275), (7406, 7448), (7449, 7451), (7514, 7555), (7569, 7569), (7581, 7624), (7942, 7992), (7993, 7997), (8019, 8041), (8125, 8147), (8214, 8247), (8410, 8444), (8445, 8482), (8664, 8704), (8750, 8802), (8803, 8805), (8836, 8843), (9025, 9048), (9251, 9296), (9297, 9300), (9386, 9430), (9522, 9532), (9604, 9656), (9657, 9659), (10051, 10055), (10086, 10134), (10135, 10147), (10580, 10622), (10623, 10635), (10648, 10680), (10935, 10964), (10965, 11007), (11094, 11100), (11109, 11148), (11149, 11149), (11250, 11291), (11664, 11693), (11774, 11798), (11799, 11822), (12321, 12343), (12500, 12548), (13125, 13176), (13177, 13177), (13225, 13237), (13254, 13280), (13454, 13506), (13507, 13509), (13718, 13745), (13750, 13773), (14415, 14430), (14792, 14794), (15138, 15184), (15379, 15431), (15979, 16027), (16384, 16392), (16428, 16439), (16807, 16842), (16843, 16875), (17303, 17353), (17672, 17716), (18259, 18280), (18491, 18536), (18537, 18546), (19220, 19221), (19663, 19716), (19717, 19718), (20181, 20232), (20233, 20236), (20577, 20590), (21870, 21918), (21919, 21930), (22103, 22145), (24037, 24084), (24085, 24092), (24334, 24354), (24389, 24389), (24576, 24620), (25289, 25316), (25317, 25336), (28125, 28145), (28577, 28616), (28749, 28772), (30618, 30648), (30649, 30668), (30926, 30954), (31487, 31488), (32805, 32823), (33620, 33669), (34391, 34430), (35152, 35186), (35344, 35356), (36517, 36552), (36553, 36556), (36982, 37034), (37035, 37035), (37553, 37555), (39326, 39359), (39366, 39381), (40678, 40680), (43750, 43776), (43777, 43795), (43940, 43978), (44217, 44235), (58989, 59011), (65625, 65665), (73205, 73222)]

theorem row056_bounds_eq : row056.goods.map goodSegmentBounds = row056_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row056_layer000_intervals : List ColouredInterval :=
  [(2, 3080, 3127), (2, 4096, 4151), (2, 6144, 6159), (2, 4096, 4151), (3, 3159, 3214), (3, 3402, 3457), (3, 3645, 3700), (3, 3888, 3943), (3, 4131, 4186), (3, 4374, 4429), (3, 4617, 4672), (3, 4860, 4915), (3, 5103, 5158), (3, 5346, 5401), (3, 5589, 5644), (3, 5832, 5887), (3, 6075, 6130), (3, 3645, 3700), (3, 4374, 4429), (3, 5103, 5158), (3, 5832, 5887), (3, 4374, 4429), (5, 3125, 3180), (5, 3250, 3305), (5, 3375, 3430), (5, 3500, 3555), (5, 3625, 3680), (5, 3750, 3805), (5, 3875, 3930), (5, 3125, 3180), (5, 3750, 3805), (5, 4375, 4430), (5, 5000, 5055), (5, 5625, 5680), (5, 3125, 3180), (7, 4802, 4857), (11, 3080, 3080), (11, 3146, 3201), (11, 3267, 3322), (11, 3388, 3443), (11, 3509, 3564), (11, 3630, 3685), (11, 3751, 3806), (11, 3993, 4048), (11, 5324, 5379), (13, 3080, 3097), (13, 3211, 3266), (13, 3380, 3435), (13, 3549, 3604), (13, 3718, 3773), (13, 3887, 3942), (13, 4056, 4111), (13, 4225, 4280), (13, 4394, 4449), (13, 4563, 4618), (13, 4732, 4787), (13, 4901, 4956), (13, 5070, 5125), (13, 5239, 5294), (13, 4394, 4449), (17, 3179, 3234), (17, 3468, 3523), (17, 3757, 3812), (17, 4046, 4101), (17, 4335, 4390), (17, 4624, 4679), (17, 4913, 4968), (17, 5202, 5257), (17, 5491, 5546), (17, 5780, 5835), (17, 6069, 6124), (17, 4913, 4968), (19, 3249, 3304), (19, 3610, 3665), (19, 3971, 4026), (19, 4332, 4387), (19, 4693, 4748), (19, 5054, 5109), (19, 5415, 5470), (19, 5776, 5831), (19, 6137, 6159), (23, 3174, 3229), (23, 3703, 3758), (23, 4232, 4287), (23, 4761, 4816), (23, 5290, 5345), (23, 5819, 5874), (29, 3364, 3419), (29, 4205, 4260), (29, 5046, 5101), (29, 5887, 5942), (31, 3844, 3899), (31, 4805, 4860), (31, 5766, 5821), (37, 4107, 4162), (37, 5476, 5531), (41, 3362, 3417), (41, 5043, 5098), (43, 3698, 3753), (43, 5547, 5602), (47, 4418, 4473), (53, 5618, 5673)]

def row056_layer000_block000 : List ColouredInterval :=
  [(2, 3080, 3127), (2, 4096, 4151), (2, 6144, 6159), (2, 4096, 4151), (3, 3159, 3214), (3, 3402, 3457), (3, 3645, 3700), (3, 3888, 3943), (3, 4131, 4186), (3, 4374, 4429), (3, 4617, 4672), (3, 4860, 4915), (3, 5103, 5158), (3, 5346, 5401), (3, 5589, 5644), (3, 5832, 5887)]

def row056_layer000_block001 : List ColouredInterval :=
  [(3, 6075, 6130), (3, 3645, 3700), (3, 4374, 4429), (3, 5103, 5158), (3, 5832, 5887), (3, 4374, 4429), (5, 3125, 3180), (5, 3250, 3305), (5, 3375, 3430), (5, 3500, 3555), (5, 3625, 3680), (5, 3750, 3805), (5, 3875, 3930), (5, 3125, 3180), (5, 3750, 3805), (5, 4375, 4430)]

def row056_layer000_block002 : List ColouredInterval :=
  [(5, 5000, 5055), (5, 5625, 5680), (5, 3125, 3180), (7, 4802, 4857), (11, 3080, 3080), (11, 3146, 3201), (11, 3267, 3322), (11, 3388, 3443), (11, 3509, 3564), (11, 3630, 3685), (11, 3751, 3806), (11, 3993, 4048), (11, 5324, 5379), (13, 3080, 3097), (13, 3211, 3266), (13, 3380, 3435)]

def row056_layer000_block003 : List ColouredInterval :=
  [(13, 3549, 3604), (13, 3718, 3773), (13, 3887, 3942), (13, 4056, 4111), (13, 4225, 4280), (13, 4394, 4449), (13, 4563, 4618), (13, 4732, 4787), (13, 4901, 4956), (13, 5070, 5125), (13, 5239, 5294), (13, 4394, 4449), (17, 3179, 3234), (17, 3468, 3523), (17, 3757, 3812), (17, 4046, 4101)]

def row056_layer000_block004 : List ColouredInterval :=
  [(17, 4335, 4390), (17, 4624, 4679), (17, 4913, 4968), (17, 5202, 5257), (17, 5491, 5546), (17, 5780, 5835), (17, 6069, 6124), (17, 4913, 4968), (19, 3249, 3304), (19, 3610, 3665), (19, 3971, 4026), (19, 4332, 4387), (19, 4693, 4748), (19, 5054, 5109), (19, 5415, 5470), (19, 5776, 5831)]

def row056_layer000_block005 : List ColouredInterval :=
  [(19, 6137, 6159), (23, 3174, 3229), (23, 3703, 3758), (23, 4232, 4287), (23, 4761, 4816), (23, 5290, 5345), (23, 5819, 5874), (29, 3364, 3419), (29, 4205, 4260), (29, 5046, 5101), (29, 5887, 5942), (31, 3844, 3899), (31, 4805, 4860), (31, 5766, 5821), (37, 4107, 4162), (37, 5476, 5531)]

def row056_layer000_block006 : List ColouredInterval :=
  [(41, 3362, 3417), (41, 5043, 5098), (43, 3698, 3753), (43, 5547, 5602), (47, 4418, 4473), (53, 5618, 5673)]

def row056_layer000_chunks : List (List ColouredInterval) :=
  [row056_layer000_block000, row056_layer000_block001, row056_layer000_block002, row056_layer000_block003, row056_layer000_block004, row056_layer000_block005, row056_layer000_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer000_arithmetic : LayerArithmeticValid row056.height { lower := 3080, upper := 6160, M := 31 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer000_enumeration :
    activePowerIntervalList 56 31 3080 6160 = row056_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer000_pairs000 :
    row056_layer000_block000.all (fun I => row056_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row056_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer000_pairs001 :
    row056_layer000_block001.all (fun I => row056_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row056_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer000_pairs002 :
    row056_layer000_block002.all (fun I => row056_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row056_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer000_pairs003 :
    row056_layer000_block003.all (fun I => row056_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row056_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer000_pairs004 :
    row056_layer000_block004.all (fun I => row056_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row056_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer000_pairs005 :
    row056_layer000_block005.all (fun I => row056_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row056_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer000_pairs006 :
    row056_layer000_block006.all (fun I => row056_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row056_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer000_chunks_eq : row056_layer000_chunks.flatten = row056_layer000_intervals := by
  rfl

theorem row056_layer000_pairs : pairCoverCheck row056_layer000_intervals row056_bounds = true := by
  apply pairCoverCheck_of_chunks row056_layer000_chunks_eq
  intro block hblock
  simp only [row056_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row056_layer000_pairs000
  · exact row056_layer000_pairs001
  · exact row056_layer000_pairs002
  · exact row056_layer000_pairs003
  · exact row056_layer000_pairs004
  · exact row056_layer000_pairs005
  · exact row056_layer000_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer000_checked :
    coverLayerCheck row056.height row056.goods { lower := 3080, upper := 6160, M := 31 } = true := by
  exact coverLayerCheck_of_parts row056_layer000_arithmetic row056_layer000_enumeration row056_bounds_eq row056_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row056_layer001_intervals : List ColouredInterval :=
  [(2, 6160, 6199), (2, 8192, 8247), (2, 12288, 12319), (2, 8192, 8247), (3, 6318, 6373), (3, 6561, 6616), (3, 6804, 6859), (3, 6561, 6616), (3, 7290, 7345), (3, 8019, 8074), (3, 8748, 8803), (3, 9477, 9532), (3, 10206, 10261), (3, 10935, 10990), (3, 11664, 11719), (3, 6561, 6616), (3, 8748, 8803), (3, 10935, 10990), (3, 6561, 6616), (5, 6250, 6305), (5, 6875, 6930), (5, 7500, 7555), (5, 8125, 8180), (5, 8750, 8805), (5, 9375, 9430), (5, 10000, 10055), (5, 10625, 10680), (5, 11250, 11305), (5, 11875, 11930), (5, 6250, 6305), (5, 9375, 9430), (7, 7203, 7258), (7, 9604, 9659), (11, 6655, 6710), (11, 7986, 8041), (11, 9317, 9372), (11, 10648, 10703), (11, 11979, 12034), (13, 6591, 6646), (13, 8788, 8843), (13, 10985, 11040), (17, 6358, 6413), (17, 6647, 6702), (17, 6936, 6991), (17, 7225, 7280), (17, 7514, 7569), (17, 7803, 7858), (17, 8092, 8147), (17, 9826, 9881), (19, 6160, 6192), (19, 6498, 6553), (19, 6859, 6914), (19, 7220, 7275), (19, 7581, 7636), (19, 7942, 7997), (19, 8303, 8358), (19, 8664, 8719), (19, 9025, 9080), (19, 9386, 9441), (19, 9747, 9802), (19, 10108, 10163), (19, 6859, 6914), (23, 6348, 6403), (23, 6877, 6932), (23, 7406, 7461), (23, 7935, 7990), (23, 8464, 8519), (23, 8993, 9048), (23, 9522, 9577), (23, 10051, 10106), (23, 10580, 10635), (23, 11109, 11164), (23, 11638, 11693), (23, 12167, 12222), (23, 12167, 12222), (29, 6728, 6783), (29, 7569, 7624), (29, 8410, 8465), (29, 9251, 9306), (29, 10092, 10147), (29, 10933, 10988), (29, 11774, 11829), (31, 6727, 6782), (31, 7688, 7743), (31, 8649, 8704), (31, 9610, 9665), (31, 10571, 10626), (31, 11532, 11587), (37, 6845, 6900), (37, 8214, 8269), (37, 9583, 9638), (37, 10952, 11007), (41, 6724, 6779), (41, 8405, 8460), (41, 10086, 10141), (41, 11767, 11822), (43, 7396, 7451), (43, 9245, 9300), (43, 11094, 11149), (47, 6627, 6682), (47, 8836, 8891), (47, 11045, 11100), (53, 8427, 8482), (53, 11236, 11291)]

def row056_layer001_block000 : List ColouredInterval :=
  [(2, 6160, 6199), (2, 8192, 8247), (2, 12288, 12319), (2, 8192, 8247), (3, 6318, 6373), (3, 6561, 6616), (3, 6804, 6859), (3, 6561, 6616), (3, 7290, 7345), (3, 8019, 8074), (3, 8748, 8803), (3, 9477, 9532), (3, 10206, 10261), (3, 10935, 10990), (3, 11664, 11719), (3, 6561, 6616)]

def row056_layer001_block001 : List ColouredInterval :=
  [(3, 8748, 8803), (3, 10935, 10990), (3, 6561, 6616), (5, 6250, 6305), (5, 6875, 6930), (5, 7500, 7555), (5, 8125, 8180), (5, 8750, 8805), (5, 9375, 9430), (5, 10000, 10055), (5, 10625, 10680), (5, 11250, 11305), (5, 11875, 11930), (5, 6250, 6305), (5, 9375, 9430), (7, 7203, 7258)]

def row056_layer001_block002 : List ColouredInterval :=
  [(7, 9604, 9659), (11, 6655, 6710), (11, 7986, 8041), (11, 9317, 9372), (11, 10648, 10703), (11, 11979, 12034), (13, 6591, 6646), (13, 8788, 8843), (13, 10985, 11040), (17, 6358, 6413), (17, 6647, 6702), (17, 6936, 6991), (17, 7225, 7280), (17, 7514, 7569), (17, 7803, 7858), (17, 8092, 8147)]

def row056_layer001_block003 : List ColouredInterval :=
  [(17, 9826, 9881), (19, 6160, 6192), (19, 6498, 6553), (19, 6859, 6914), (19, 7220, 7275), (19, 7581, 7636), (19, 7942, 7997), (19, 8303, 8358), (19, 8664, 8719), (19, 9025, 9080), (19, 9386, 9441), (19, 9747, 9802), (19, 10108, 10163), (19, 6859, 6914), (23, 6348, 6403), (23, 6877, 6932)]

def row056_layer001_block004 : List ColouredInterval :=
  [(23, 7406, 7461), (23, 7935, 7990), (23, 8464, 8519), (23, 8993, 9048), (23, 9522, 9577), (23, 10051, 10106), (23, 10580, 10635), (23, 11109, 11164), (23, 11638, 11693), (23, 12167, 12222), (23, 12167, 12222), (29, 6728, 6783), (29, 7569, 7624), (29, 8410, 8465), (29, 9251, 9306), (29, 10092, 10147)]

def row056_layer001_block005 : List ColouredInterval :=
  [(29, 10933, 10988), (29, 11774, 11829), (31, 6727, 6782), (31, 7688, 7743), (31, 8649, 8704), (31, 9610, 9665), (31, 10571, 10626), (31, 11532, 11587), (37, 6845, 6900), (37, 8214, 8269), (37, 9583, 9638), (37, 10952, 11007), (41, 6724, 6779), (41, 8405, 8460), (41, 10086, 10141), (41, 11767, 11822)]

def row056_layer001_block006 : List ColouredInterval :=
  [(43, 7396, 7451), (43, 9245, 9300), (43, 11094, 11149), (47, 6627, 6682), (47, 8836, 8891), (47, 11045, 11100), (53, 8427, 8482), (53, 11236, 11291)]

def row056_layer001_chunks : List (List ColouredInterval) :=
  [row056_layer001_block000, row056_layer001_block001, row056_layer001_block002, row056_layer001_block003, row056_layer001_block004, row056_layer001_block005, row056_layer001_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer001_arithmetic : LayerArithmeticValid row056.height { lower := 6160, upper := 12320, M := 28 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer001_enumeration :
    activePowerIntervalList 56 28 6160 12320 = row056_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer001_pairs000 :
    row056_layer001_block000.all (fun I => row056_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row056_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer001_pairs001 :
    row056_layer001_block001.all (fun I => row056_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row056_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer001_pairs002 :
    row056_layer001_block002.all (fun I => row056_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row056_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer001_pairs003 :
    row056_layer001_block003.all (fun I => row056_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row056_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer001_pairs004 :
    row056_layer001_block004.all (fun I => row056_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row056_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer001_pairs005 :
    row056_layer001_block005.all (fun I => row056_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row056_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer001_pairs006 :
    row056_layer001_block006.all (fun I => row056_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row056_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer001_chunks_eq : row056_layer001_chunks.flatten = row056_layer001_intervals := by
  rfl

theorem row056_layer001_pairs : pairCoverCheck row056_layer001_intervals row056_bounds = true := by
  apply pairCoverCheck_of_chunks row056_layer001_chunks_eq
  intro block hblock
  simp only [row056_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row056_layer001_pairs000
  · exact row056_layer001_pairs001
  · exact row056_layer001_pairs002
  · exact row056_layer001_pairs003
  · exact row056_layer001_pairs004
  · exact row056_layer001_pairs005
  · exact row056_layer001_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer001_checked :
    coverLayerCheck row056.height row056.goods { lower := 6160, upper := 12320, M := 28 } = true := by
  exact coverLayerCheck_of_parts row056_layer001_arithmetic row056_layer001_enumeration row056_bounds_eq row056_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row056_layer002_intervals : List ColouredInterval :=
  [(2, 12320, 12343), (2, 16384, 16439), (2, 24576, 24631), (2, 16384, 16439), (3, 12393, 12448), (3, 13122, 13177), (3, 13851, 13906), (3, 14580, 14635), (3, 15309, 15364), (3, 16038, 16093), (3, 16767, 16822), (3, 17496, 17551), (3, 18225, 18280), (3, 13122, 13177), (3, 15309, 15364), (3, 17496, 17551), (3, 19683, 19738), (3, 21870, 21925), (3, 24057, 24112), (3, 13122, 13177), (3, 19683, 19738), (3, 19683, 19738), (5, 12500, 12555), (5, 13125, 13180), (5, 13750, 13805), (5, 14375, 14430), (5, 15000, 15055), (5, 15625, 15680), (5, 12500, 12555), (5, 15625, 15680), (5, 18750, 18805), (5, 21875, 21930), (5, 15625, 15680), (7, 16807, 16862), (11, 13310, 13365), (11, 14641, 14696), (11, 15972, 16027), (11, 17303, 17358), (11, 18634, 18689), (11, 19965, 20020), (11, 21296, 21351), (11, 22627, 22682), (11, 23958, 24013), (11, 14641, 14696), (13, 13182, 13237), (13, 15379, 15434), (13, 17576, 17631), (13, 19773, 19828), (13, 21970, 22025), (13, 24167, 24222), (17, 14739, 14794), (17, 19652, 19707), (17, 24565, 24620), (19, 13718, 13773), (19, 20577, 20632), (23, 12696, 12751), (23, 13225, 13280), (23, 24334, 24389), (29, 12615, 12670), (29, 13456, 13511), (29, 14297, 14352), (29, 15138, 15193), (29, 15979, 16034), (29, 16820, 16875), (29, 17661, 17716), (29, 18502, 18557), (29, 19343, 19398), (29, 20184, 20239), (29, 21025, 21080), (29, 24389, 24444), (31, 12493, 12548), (31, 13454, 13509), (31, 14415, 14470), (31, 15376, 15431), (31, 16337, 16392), (31, 17298, 17353), (31, 18259, 18314), (31, 19220, 19275), (31, 20181, 20236), (31, 21142, 21197), (31, 22103, 22158), (31, 23064, 23119), (31, 24025, 24080), (37, 12321, 12376), (37, 13690, 13745), (37, 15059, 15114), (37, 16428, 16483), (37, 17797, 17852), (37, 19166, 19221), (37, 20535, 20590), (37, 21904, 21959), (37, 23273, 23328), (41, 13448, 13503), (41, 15129, 15184), (41, 16810, 16865), (41, 18491, 18546), (41, 20172, 20227), (41, 21853, 21908), (41, 23534, 23589), (43, 12943, 12998), (43, 14792, 14847), (43, 16641, 16696), (43, 18490, 18545), (43, 20339, 20394), (43, 22188, 22243), (43, 24037, 24092), (47, 13254, 13309), (47, 15463, 15518), (47, 17672, 17727), (47, 19881, 19936), (47, 22090, 22145), (47, 24299, 24354), (53, 14045, 14100), (53, 16854, 16909), (53, 19663, 19718), (53, 22472, 22527)]

def row056_layer002_block000 : List ColouredInterval :=
  [(2, 12320, 12343), (2, 16384, 16439), (2, 24576, 24631), (2, 16384, 16439), (3, 12393, 12448), (3, 13122, 13177), (3, 13851, 13906), (3, 14580, 14635), (3, 15309, 15364), (3, 16038, 16093), (3, 16767, 16822), (3, 17496, 17551), (3, 18225, 18280), (3, 13122, 13177), (3, 15309, 15364), (3, 17496, 17551)]

def row056_layer002_block001 : List ColouredInterval :=
  [(3, 19683, 19738), (3, 21870, 21925), (3, 24057, 24112), (3, 13122, 13177), (3, 19683, 19738), (3, 19683, 19738), (5, 12500, 12555), (5, 13125, 13180), (5, 13750, 13805), (5, 14375, 14430), (5, 15000, 15055), (5, 15625, 15680), (5, 12500, 12555), (5, 15625, 15680), (5, 18750, 18805), (5, 21875, 21930)]

def row056_layer002_block002 : List ColouredInterval :=
  [(5, 15625, 15680), (7, 16807, 16862), (11, 13310, 13365), (11, 14641, 14696), (11, 15972, 16027), (11, 17303, 17358), (11, 18634, 18689), (11, 19965, 20020), (11, 21296, 21351), (11, 22627, 22682), (11, 23958, 24013), (11, 14641, 14696), (13, 13182, 13237), (13, 15379, 15434), (13, 17576, 17631), (13, 19773, 19828)]

def row056_layer002_block003 : List ColouredInterval :=
  [(13, 21970, 22025), (13, 24167, 24222), (17, 14739, 14794), (17, 19652, 19707), (17, 24565, 24620), (19, 13718, 13773), (19, 20577, 20632), (23, 12696, 12751), (23, 13225, 13280), (23, 24334, 24389), (29, 12615, 12670), (29, 13456, 13511), (29, 14297, 14352), (29, 15138, 15193), (29, 15979, 16034), (29, 16820, 16875)]

def row056_layer002_block004 : List ColouredInterval :=
  [(29, 17661, 17716), (29, 18502, 18557), (29, 19343, 19398), (29, 20184, 20239), (29, 21025, 21080), (29, 24389, 24444), (31, 12493, 12548), (31, 13454, 13509), (31, 14415, 14470), (31, 15376, 15431), (31, 16337, 16392), (31, 17298, 17353), (31, 18259, 18314), (31, 19220, 19275), (31, 20181, 20236), (31, 21142, 21197)]

def row056_layer002_block005 : List ColouredInterval :=
  [(31, 22103, 22158), (31, 23064, 23119), (31, 24025, 24080), (37, 12321, 12376), (37, 13690, 13745), (37, 15059, 15114), (37, 16428, 16483), (37, 17797, 17852), (37, 19166, 19221), (37, 20535, 20590), (37, 21904, 21959), (37, 23273, 23328), (41, 13448, 13503), (41, 15129, 15184), (41, 16810, 16865), (41, 18491, 18546)]

def row056_layer002_block006 : List ColouredInterval :=
  [(41, 20172, 20227), (41, 21853, 21908), (41, 23534, 23589), (43, 12943, 12998), (43, 14792, 14847), (43, 16641, 16696), (43, 18490, 18545), (43, 20339, 20394), (43, 22188, 22243), (43, 24037, 24092), (47, 13254, 13309), (47, 15463, 15518), (47, 17672, 17727), (47, 19881, 19936), (47, 22090, 22145), (47, 24299, 24354)]

def row056_layer002_block007 : List ColouredInterval :=
  [(53, 14045, 14100), (53, 16854, 16909), (53, 19663, 19718), (53, 22472, 22527)]

def row056_layer002_chunks : List (List ColouredInterval) :=
  [row056_layer002_block000, row056_layer002_block001, row056_layer002_block002, row056_layer002_block003, row056_layer002_block004, row056_layer002_block005, row056_layer002_block006, row056_layer002_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer002_arithmetic : LayerArithmeticValid row056.height { lower := 12320, upper := 24640, M := 25 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer002_enumeration :
    activePowerIntervalList 56 25 12320 24640 = row056_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer002_pairs000 :
    row056_layer002_block000.all (fun I => row056_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row056_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer002_pairs001 :
    row056_layer002_block001.all (fun I => row056_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row056_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer002_pairs002 :
    row056_layer002_block002.all (fun I => row056_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row056_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer002_pairs003 :
    row056_layer002_block003.all (fun I => row056_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row056_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer002_pairs004 :
    row056_layer002_block004.all (fun I => row056_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row056_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer002_pairs005 :
    row056_layer002_block005.all (fun I => row056_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row056_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer002_pairs006 :
    row056_layer002_block006.all (fun I => row056_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row056_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer002_pairs007 :
    row056_layer002_block007.all (fun I => row056_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row056_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer002_chunks_eq : row056_layer002_chunks.flatten = row056_layer002_intervals := by
  rfl

theorem row056_layer002_pairs : pairCoverCheck row056_layer002_intervals row056_bounds = true := by
  apply pairCoverCheck_of_chunks row056_layer002_chunks_eq
  intro block hblock
  simp only [row056_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row056_layer002_pairs000
  · exact row056_layer002_pairs001
  · exact row056_layer002_pairs002
  · exact row056_layer002_pairs003
  · exact row056_layer002_pairs004
  · exact row056_layer002_pairs005
  · exact row056_layer002_pairs006
  · exact row056_layer002_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer002_checked :
    coverLayerCheck row056.height row056.goods { lower := 12320, upper := 24640, M := 25 } = true := by
  exact coverLayerCheck_of_parts row056_layer002_arithmetic row056_layer002_enumeration row056_bounds_eq row056_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row056_layer003_intervals : List ColouredInterval :=
  [(2, 32768, 32823), (2, 32768, 32823), (3, 26244, 26299), (3, 28431, 28486), (3, 30618, 30673), (3, 32805, 32860), (3, 34992, 35047), (3, 37179, 37234), (3, 39366, 39421), (3, 41553, 41608), (3, 43740, 43795), (3, 45927, 45982), (3, 48114, 48169), (3, 26244, 26299), (3, 32805, 32860), (3, 39366, 39421), (3, 45927, 45982), (3, 39366, 39421), (5, 25000, 25055), (5, 28125, 28180), (5, 31250, 31305), (5, 34375, 34430), (5, 37500, 37555), (5, 40625, 40680), (5, 43750, 43805), (5, 46875, 46930), (5, 31250, 31305), (5, 46875, 46930), (7, 33614, 33669), (11, 25289, 25344), (11, 26620, 26675), (11, 27951, 28006), (11, 29282, 29337), (11, 30613, 30668), (11, 29282, 29337), (11, 43923, 43978), (13, 26364, 26419), (13, 28561, 28616), (13, 30758, 30813), (13, 32955, 33010), (13, 35152, 35207), (13, 37349, 37404), (13, 39546, 39601), (13, 41743, 41798), (13, 43940, 43995), (13, 46137, 46192), (13, 48334, 48389), (13, 28561, 28616), (17, 29478, 29533), (17, 34391, 34446), (17, 39304, 39359), (17, 44217, 44272), (17, 49130, 49185), (19, 27436, 27491), (19, 34295, 34350), (19, 41154, 41209), (19, 48013, 48068), (23, 36501, 36556), (23, 48668, 48723), (29, 48778, 48833), (31, 29791, 29846), (37, 24642, 24697), (37, 26011, 26066), (37, 27380, 27435), (37, 28749, 28804), (37, 30118, 30173), (37, 31487, 31542), (41, 25215, 25270), (41, 26896, 26951), (41, 28577, 28632), (41, 30258, 30313), (41, 31939, 31994), (41, 33620, 33675), (41, 35301, 35356), (41, 36982, 37037), (41, 38663, 38718), (43, 25886, 25941), (43, 27735, 27790), (43, 29584, 29639), (43, 31433, 31488), (43, 33282, 33337), (43, 35131, 35186), (43, 36980, 37035), (43, 38829, 38884), (43, 40678, 40733), (43, 42527, 42582), (47, 26508, 26563), (47, 28717, 28772), (47, 30926, 30981), (47, 33135, 33190), (47, 35344, 35399), (47, 37553, 37608), (47, 39762, 39817), (47, 41971, 42026), (47, 44180, 44235), (47, 46389, 46444), (47, 48598, 48653), (53, 25281, 25336), (53, 28090, 28145), (53, 30899, 30954), (53, 33708, 33763), (53, 36517, 36572), (53, 39326, 39381), (53, 42135, 42190), (53, 44944, 44999), (53, 47753, 47808)]

def row056_layer003_block000 : List ColouredInterval :=
  [(2, 32768, 32823), (2, 32768, 32823), (3, 26244, 26299), (3, 28431, 28486), (3, 30618, 30673), (3, 32805, 32860), (3, 34992, 35047), (3, 37179, 37234), (3, 39366, 39421), (3, 41553, 41608), (3, 43740, 43795), (3, 45927, 45982), (3, 48114, 48169), (3, 26244, 26299), (3, 32805, 32860), (3, 39366, 39421)]

def row056_layer003_block001 : List ColouredInterval :=
  [(3, 45927, 45982), (3, 39366, 39421), (5, 25000, 25055), (5, 28125, 28180), (5, 31250, 31305), (5, 34375, 34430), (5, 37500, 37555), (5, 40625, 40680), (5, 43750, 43805), (5, 46875, 46930), (5, 31250, 31305), (5, 46875, 46930), (7, 33614, 33669), (11, 25289, 25344), (11, 26620, 26675), (11, 27951, 28006)]

def row056_layer003_block002 : List ColouredInterval :=
  [(11, 29282, 29337), (11, 30613, 30668), (11, 29282, 29337), (11, 43923, 43978), (13, 26364, 26419), (13, 28561, 28616), (13, 30758, 30813), (13, 32955, 33010), (13, 35152, 35207), (13, 37349, 37404), (13, 39546, 39601), (13, 41743, 41798), (13, 43940, 43995), (13, 46137, 46192), (13, 48334, 48389), (13, 28561, 28616)]

def row056_layer003_block003 : List ColouredInterval :=
  [(17, 29478, 29533), (17, 34391, 34446), (17, 39304, 39359), (17, 44217, 44272), (17, 49130, 49185), (19, 27436, 27491), (19, 34295, 34350), (19, 41154, 41209), (19, 48013, 48068), (23, 36501, 36556), (23, 48668, 48723), (29, 48778, 48833), (31, 29791, 29846), (37, 24642, 24697), (37, 26011, 26066), (37, 27380, 27435)]

def row056_layer003_block004 : List ColouredInterval :=
  [(37, 28749, 28804), (37, 30118, 30173), (37, 31487, 31542), (41, 25215, 25270), (41, 26896, 26951), (41, 28577, 28632), (41, 30258, 30313), (41, 31939, 31994), (41, 33620, 33675), (41, 35301, 35356), (41, 36982, 37037), (41, 38663, 38718), (43, 25886, 25941), (43, 27735, 27790), (43, 29584, 29639), (43, 31433, 31488)]

def row056_layer003_block005 : List ColouredInterval :=
  [(43, 33282, 33337), (43, 35131, 35186), (43, 36980, 37035), (43, 38829, 38884), (43, 40678, 40733), (43, 42527, 42582), (47, 26508, 26563), (47, 28717, 28772), (47, 30926, 30981), (47, 33135, 33190), (47, 35344, 35399), (47, 37553, 37608), (47, 39762, 39817), (47, 41971, 42026), (47, 44180, 44235), (47, 46389, 46444)]

def row056_layer003_block006 : List ColouredInterval :=
  [(47, 48598, 48653), (53, 25281, 25336), (53, 28090, 28145), (53, 30899, 30954), (53, 33708, 33763), (53, 36517, 36572), (53, 39326, 39381), (53, 42135, 42190), (53, 44944, 44999), (53, 47753, 47808)]

def row056_layer003_chunks : List (List ColouredInterval) :=
  [row056_layer003_block000, row056_layer003_block001, row056_layer003_block002, row056_layer003_block003, row056_layer003_block004, row056_layer003_block005, row056_layer003_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer003_arithmetic : LayerArithmeticValid row056.height { lower := 24640, upper := 49280, M := 23 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer003_enumeration :
    activePowerIntervalList 56 23 24640 49280 = row056_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer003_pairs000 :
    row056_layer003_block000.all (fun I => row056_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row056_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer003_pairs001 :
    row056_layer003_block001.all (fun I => row056_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row056_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer003_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer003_pairs002 :
    row056_layer003_block002.all (fun I => row056_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row056_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer003_pairs003 :
    row056_layer003_block003.all (fun I => row056_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row056_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer003_pairs004 :
    row056_layer003_block004.all (fun I => row056_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row056_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer003_pairs004
